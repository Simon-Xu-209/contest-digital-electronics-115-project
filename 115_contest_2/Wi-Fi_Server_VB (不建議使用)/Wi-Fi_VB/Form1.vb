Imports System.IO.Ports
Imports System.Text
Imports System.Threading

Public Class Form1

    ' 步驟管理狀態
    Private stepIndex As Integer = 0
    Private responseBuffer As String = ""
    Private StepTimer As New System.Windows.Forms.Timer()

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        ' 初始化 SerialPort
        SerialPort1.PortName = "COM4"
        SerialPort1.BaudRate = 115200
        SerialPort1.DataBits = 8
        SerialPort1.StopBits = StopBits.One
        SerialPort1.Parity = Parity.None
        SerialPort1.Encoding = Encoding.ASCII
        SerialPort1.NewLine = vbCrLf

        ' 初始化 StepTimer (每 100ms 檢查一次狀態)
        StepTimer.Interval = 100
        AddHandler StepTimer.Tick, AddressOf StepTimer_Tick
    End Sub

    '=========================================
    ' [連線] 按鈕：啟動初始化流程
    '=========================================
    Private Sub connect_Click(ByVal sender As Object, ByVal e As EventArgs) Handles connect.Click
        Try
            If Not SerialPort1.IsOpen Then
                SerialPort1.Open()
            End If

            connect.Enabled = False
            SerialPort1.DiscardInBuffer()
            responseBuffer = ""

            AppendLog(">>> 正在開啟 Serial Port 並設定 Wi-Fi 模組..." & vbCrLf)

            ' 開啟 Timer 啟動第一個步驟
            stepIndex = 1
            StepTimer.Start()

        Catch ex As Exception
            MessageBox.Show("開啟串口失敗：" & ex.Message, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error)
            connect.Enabled = True
        End Try
    End Sub

    '=========================================
    ' 狀態機核心：不卡 UI 的步進控制器
    '=========================================
    Private Sub StepTimer_Tick(ByVal sender As Object, ByVal e As EventArgs)
        Select Case stepIndex
            Case 1
                responseBuffer = ""
                SerialPort1.WriteLine("AT+CWMODE=2")
                stepIndex = 101

            Case 101
                If responseBuffer.Contains("OK") Then
                    stepIndex = 2
                ElseIf responseBuffer.Contains("ERROR") Then
                    FailAndStop("AT+CWMODE=2 失敗")
                End If

            Case 2
                responseBuffer = ""
                SerialPort1.WriteLine("AT+CWSAP=""MyAP"",""12345678"",1,4")
                stepIndex = 102

            Case 102
                If responseBuffer.Contains("OK") Then
                    stepIndex = 3
                ElseIf responseBuffer.Contains("ERROR") Then
                    FailAndStop("AT+CWSAP 失敗")
                End If

            Case 3
                responseBuffer = ""
                SerialPort1.WriteLine("AT+CIPMUX=1")
                stepIndex = 103

            Case 103
                If responseBuffer.Contains("OK") Then
                    stepIndex = 4
                ElseIf responseBuffer.Contains("ERROR") Then
                    FailAndStop("AT+CIPMUX 失敗")
                End If

            Case 4
                responseBuffer = ""
                SerialPort1.WriteLine("AT+CIPSERVER=0")
                stepIndex = 104

            Case 104
                If responseBuffer.Contains("OK") OrElse responseBuffer.Contains("ERROR") Then
                    stepIndex = 5
                End If

            Case 5
                responseBuffer = ""
                SerialPort1.WriteLine("AT+CIPSERVER=1,80")
                stepIndex = 105

            Case 105
                If responseBuffer.Contains("OK") Then
                    StepTimer.Stop()
                    AppendLog(">>> TCP Server 啟動完成！(Port: 80)" & vbCrLf)
                    MessageBox.Show("Server 啟動完成", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    connect.Enabled = True
                ElseIf responseBuffer.Contains("ERROR") Then
                    FailAndStop("AT+CIPSERVER 啟動失敗")
                    orderID.Clear()
                    quantityAndPrice.Clear()
                    quotasAndTotalPaymentAmounts.Text = "9999"
                End If
        End Select
    End Sub

    '=========================================
    ' 失敗處理工具
    '=========================================
    Private Sub FailAndStop(ByVal reason As String)
        StepTimer.Stop()
        AppendLog(">>> " & reason & vbCrLf)
        MessageBox.Show("設定失敗：" & reason, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error)
        connect.Enabled = True
    End Sub

    '=========================================
    ' [查詢] 按鈕：發送 ID:0000 到 FPGA，並清空接收欄位
    '=========================================
    Private Sub search_Click(ByVal sender As Object, ByVal e As EventArgs) Handles search.Click
        Try
            If Not SerialPort1.IsOpen Then
                MessageBox.Show("請先連線並啟動 TCP Server！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            Dim rawID As String = orderID.Text.Trim()
            If rawID = "" Then
                MessageBox.Show("請輸入訂單 ID！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            ' 格式化為 4 位數 (例如 5 -> 0005)
            Dim idVal As Integer = 0
            Integer.TryParse(rawID, idVal)
            Dim formattedID As String = idVal.ToString("D4")

            ' 清空舊的接收欄位資料，準備迎接 FPGA 回傳結果
            quantityAndPrice.Clear()
            quotasAndTotalPaymentAmounts.Clear()

            ' ⭐ 使用精簡格式 "ID:0000" (長度固定 7 個字元)
            Dim sendData As String = "ID:" & formattedID
            Dim cmd As String = "AT+CIPSEND=0," & sendData.Length.ToString()

            AppendLog(">>> 發送查詢至 FPGA: " & sendData & vbCrLf)

            SerialPort1.WriteLine(cmd)
            Thread.Sleep(100)
            SerialPort1.Write(sendData)

        Catch ex As Exception
            MessageBox.Show("傳送失敗：" & ex.Message, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try
    End Sub

    '=========================================
    ' 背景監聽：接收串口資料，解析來自 FPGA 的訊息
    '=========================================
    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Try
            ' 延遲 50ms 確保 UART 接收封包完整
            Thread.Sleep(50)
            Dim raw As String = SerialPort1.ReadExisting()

            ' 累加至 responseBuffer 提供 Timer 判斷初始化狀態
            responseBuffer &= raw

            Me.Invoke(Sub()
                          AppendLog("[RX] " & raw)

                          ' 解析是否有收到 Client 端的資料 (+IPD)
                          If raw.Contains("+IPD") Then
                              Dim parsed As String = ParseIPD(raw)
                              If parsed <> "" Then
                                  AppendLog(vbCrLf & "【收到 Client 資料】: " & parsed & vbCrLf)
                                  ' 將解析後的資料送去 UI 更新欄位
                                  ProcessClientData(parsed)
                              End If
                          End If
                      End Sub)
        Catch ex As Exception
        End Try
    End Sub

    '=========================================
    ' 解析 FPGA 資料並填入相對應的 UI 控制項
    '=========================================
    Private Sub ProcessClientData(ByVal payload As String)
        ' 移除可能多餘的換行或空白
        payload = payload.Trim()

        ' 判斷前綴是 QP (Quantity & Price) 還是 PA (Quota & Amount)
        If payload.StartsWith("QP:") Then
            ' 範例：QP:00020050 -> 擷取冒號後面的 "00020050"
            Dim dataVal As String = payload.Substring(3).Trim()
            quantityAndPrice.Text = dataVal

        ElseIf payload.StartsWith("PA:") Then
            ' 範例：PA:#05$0500 -> 擷取冒號後面的 "#05$0500"
            Dim dataVal As String = payload.Substring(3).Trim()
            quotasAndTotalPaymentAmounts.Text = dataVal
        End If
    End Sub

    '=========================================
    ' 安全更新 Log 並自動捲動
    '=========================================
    Private Sub AppendLog(ByVal text As String)
        If log.InvokeRequired Then
            log.Invoke(Sub() AppendLog(text))
        Else
            log.AppendText(text)
            log.SelectionStart = log.TextLength
            log.ScrollToCaret()
        End If
    End Sub

    '=========================================
    ' 解析 ESP8266 +IPD,0,X:Data 格式
    '=========================================
    Private Function ParseIPD(ByVal raw As String) As String
        Try
            Dim idx As Integer = raw.IndexOf("+IPD")
            If idx = -1 Then Return ""

            Dim colon As Integer = raw.IndexOf(":", idx)
            If colon = -1 Then Return ""

            Return raw.Substring(colon + 1).Trim()
        Catch
            Return ""
        End Try
    End Function

    '=========================================
    ' 清除按鈕功能
    '=========================================
    Private Sub clear_Click(ByVal sender As Object, ByVal e As EventArgs) Handles clear.Click
        orderID.Clear()
        quantityAndPrice.Clear()
        quotasAndTotalPaymentAmounts.Clear()
    End Sub

    '=========================================
    ' 數字鍵盤輸入處理
    '=========================================
    Private Sub NumButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles _
        Button0.Click, Button1.Click, Button2.Click, Button3.Click, Button4.Click,
        Button5.Click, Button6.Click, Button7.Click, Button8.Click, Button9.Click

        Dim btn As Button = CType(sender, Button)
        Dim numStr As String = btn.Text

        If orderID.Focused Then
            orderID.AppendText(numStr)
        ElseIf quantityAndPrice.Focused Then
            quantityAndPrice.AppendText(numStr)
        Else
            orderID.AppendText(numStr)
        End If
    End Sub

End Class