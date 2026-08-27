Imports System.IO.Ports
Imports System.Text
Imports System.Threading

Public Class Form1

    ' 步驟與超時管理
    Private stepIndex As Integer = 0
    Private responseBuffer As String = ""
    Private StepTimer As New System.Windows.Forms.Timer()
    Private waitCounter As Integer = 0 ' 增加等待計數器

    ' Wi-Fi 與 Server 設定
    Private TargetSSID As String = "WiFi_FPGA"
    Private TargetPWD As String = "048778414"
    Private ServerIP As String = "192.168.4.1"
    Private ServerPort As String = "80"
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        SerialPort1.PortName = "COM3"
        SerialPort1.BaudRate = 115200
        SerialPort1.DataBits = 8
        SerialPort1.StopBits = StopBits.One
        SerialPort1.Parity = Parity.None
        SerialPort1.Encoding = Encoding.ASCII
        SerialPort1.NewLine = vbCrLf

        quotasAndTotalPaymentAmounts.Text = "0000"

        StepTimer.Interval = 200 ' 200ms 檢查一次
        AddHandler StepTimer.Tick, AddressOf StepTimer_Tick
    End Sub

    Private Sub connect_Click(ByVal sender As Object, ByVal e As EventArgs) Handles connect.Click
        Try
            If Not SerialPort1.IsOpen Then
                SerialPort1.Open()
            End If

            connect.Enabled = False
            SerialPort1.DiscardInBuffer()
            responseBuffer = ""

            AppendLog(">>> 開始 Client 連線設定..." & vbCrLf)

            stepIndex = 1
            StepTimer.Start()

        Catch ex As Exception
            MessageBox.Show("開啟串口失敗：" & ex.Message, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error)
            connect.Enabled = True
        End Try
    End Sub

    '=========================================
    ' 修正後的 Client 狀態機 (參考 FPGA 流程)
    '=========================================
    Private Sub StepTimer_Tick(ByVal sender As Object, ByVal e As EventArgs)
        Select Case stepIndex
            Case 1
                ' 步驟 1：先發送 AT+RST 徹底重置模組
                responseBuffer = ""
                SerialPort1.WriteLine("AT+RST")
                stepIndex = 101

            Case 101
                ' 等待 ESP8266 重置完成 (約等 1 秒)
                waitCounter += 1
                If waitCounter > 5 Then
                    waitCounter = 0
                    stepIndex = 2
                End If

            Case 2
                ' 步驟 2：設定為 Station 模式
                responseBuffer = ""
                SerialPort1.WriteLine("AT+CWMODE=1")
                stepIndex = 102

            Case 102
                If responseBuffer.Contains("OK") Then
                    stepIndex = 3
                ElseIf responseBuffer.Contains("ERROR") Then
                    FailAndStop("AT+CWMODE=1 失敗")
                End If

            Case 3
                ' 步驟 3：加入熱點
                responseBuffer = ""
                waitCounter = 0
                SerialPort1.WriteLine("AT+CWJAP=""WiFi_FPGA"",""048778414""")
                stepIndex = 103

            Case 103
                If responseBuffer.Contains("OK") OrElse responseBuffer.Contains("WIFI GOT IP") Then
                    stepIndex = 4
                ElseIf responseBuffer.Contains("FAIL") OrElse responseBuffer.Contains("ERROR") Then
                    FailAndStop("Wi-Fi 連線失敗 (請檢查 SSID/密碼)")
                Else
                    waitCounter += 1
                    If waitCounter > 200 Then FailAndStop("Wi-Fi 連線超時")
                End If

            Case 4
                ' 步驟 4：建立 TCP Client 連線
                responseBuffer = ""
                waitCounter = 0
                SerialPort1.WriteLine("AT+CIPSTART=""TCP"",""192.168.4.1"",80")
                stepIndex = 104

            Case 104
                If responseBuffer.Contains("OK") OrElse responseBuffer.Contains("CONNECT") Then
                    StepTimer.Stop()
                    AppendLog(">>> 成功連線至 Server！" & vbCrLf)
                    MessageBox.Show("TCP Client 連線成功！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    connect.Enabled = True
                ElseIf responseBuffer.Contains("ERROR") OrElse responseBuffer.Contains("CLOSED") Then
                    FailAndStop("無法連線至目標 TCP Server (請確認 Server 端已開啟)")
                    orderID.Text = ""
                    quantityAndPrice.Text = ""
                    quotasAndTotalPaymentAmounts.Text = "9999"
                Else
                    waitCounter += 1
                    If waitCounter > 25 Then FailAndStop("TCP 連線超時")
                End If
        End Select
    End Sub

    '=========================================
    ' [查詢] 按鈕：自動帶換行 (\r\n) 並調整 CIPSEND 長度
    '=========================================
    Private Sub search_Click(ByVal sender As Object, ByVal e As EventArgs) Handles search.Click
        Try
            If Not SerialPort1.IsOpen Then
                MessageBox.Show("請先執行連線！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            Dim rawID As String = orderID.Text.Trim()
            If rawID = "" Then
                MessageBox.Show("請輸入訂單 ID！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            Dim idVal As Integer = 0
            Integer.TryParse(rawID, idVal)
            Dim formattedID As String = idVal.ToString("D4")

            quantityAndPrice.Clear()
            quotasAndTotalPaymentAmounts.Clear()

            ' ⭐ 關鍵修改 1：末端自動加上 vbCrLf (\r\n)
            ' 例如 "ID:0001" 長度為 7，加上 \r\n 後長度變為 9
            Dim sendData As String = "ID:" & formattedID & vbCrLf

            ' ⭐ 關鍵修改 2：sendData.Length 會自動算出包含 \r\n (2 Bytes) 的正確長度
            Dim cmd As String = "AT+CIPSEND=" & sendData.Length.ToString()

            AppendLog(">>> 發送查詢至 Server: " & "ID:" & formattedID & "\r\n" & vbCrLf)

            ' 清空 responseBuffer 準備接收 CIPSEND 的回應
            responseBuffer = ""
            SerialPort1.WriteLine(cmd)

            ' 輪詢等待 ESP8266 回傳 '>' 符號 (最多等待 2 秒)
            Dim ready As Boolean = False
            For i As Integer = 1 To 20
                Thread.Sleep(100)
                If responseBuffer.Contains(">") Then
                    ready = True
                    Exit For
                End If
            Next

            ' 收到 '>' 提示符號後才發送實際數據
            If ready Then
                ' ⭐ 關鍵修改 3：使用 Write 發送已含 vbCrLf 的字串 (長度完全符合 AT+CIPSEND)
                SerialPort1.Write(sendData)
            Else
                MessageBox.Show("ESP8266 未就緒 (未收到 '>' 提示符號)", "傳送失敗", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If

        Catch ex As Exception
            MessageBox.Show("傳送失敗：" & ex.Message, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try
    End Sub

    '=========================================
    ' 背景監聽：接收串口資料
    '=========================================
    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Try
            Thread.Sleep(50)
            Dim raw As String = SerialPort1.ReadExisting()
            responseBuffer &= raw

            Me.Invoke(Sub()
                          AppendLog(raw)
                          If raw.Contains("+IPD") Then
                              Dim parsed As String = ParseIPD(raw)
                              If parsed <> "" Then
                                  AppendLog(vbCrLf & "【收到 Server 回傳】: " & parsed & vbCrLf)
                                  ProcessClientData(parsed)
                              End If
                          End If
                      End Sub)
        Catch ex As Exception
        End Try
    End Sub

    Private Function ParseIPD(ByVal raw As String) As String
        Try
            Dim idx As Integer = raw.IndexOf("+IPD,")
            If idx = -1 Then Return ""

            Dim colon As Integer = raw.IndexOf(":", idx)
            If colon = -1 Then Return ""

            ' 截取冒號後的實際 Payload 數據
            Dim result As String = raw.Substring(colon + 1)

            ' 移除尾部的 \r 與 \n 換行字元，保留乾淨的數據內容
            Return result.Replace(vbCr, "").Replace(vbLf, "").Trim()
        Catch
            Return ""
        End Try
    End Function

    Private Sub ProcessClientData(ByVal payload As String)
        payload = payload.Trim()

        ' 1. 當接收到 ID (例如 "ID:0102")
        If payload.StartsWith("ID:") Then
            Dim idValue As String = payload.Substring(3).Trim()
            orderID.Text = idValue

            ' 2. 當接收到 數量 (例如 "QA:00650040" 或 "QA:00400065")
        ElseIf payload.StartsWith("QA:") Then
            Dim qaValue As String = payload.Substring(3).Trim()
            quantityAndPrice.Text = qaValue

            ' 3. 保留原本的解析相容性 (QP / PA)
        ElseIf payload.StartsWith("QP:") Then
            quantityAndPrice.Text = payload.Substring(3).Trim()
        ElseIf payload.StartsWith("PA:") Then
            quotasAndTotalPaymentAmounts.Text = payload.Substring(3).Trim()
        End If
    End Sub

    Private Sub FailAndStop(ByVal reason As String)
        StepTimer.Stop()
        AppendLog(">>> " & reason & vbCrLf)
        MessageBox.Show("設定失敗：" & reason, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error)
        connect.Enabled = True
    End Sub

    Private Sub AppendLog(ByVal text As String)
        If log.InvokeRequired Then
            log.Invoke(Sub() AppendLog(text))
        Else
            log.AppendText(text)
            log.SelectionStart = log.TextLength
            log.ScrollToCaret()
        End If
    End Sub

    Private Sub clear_Click(ByVal sender As Object, ByVal e As EventArgs) Handles clear.Click
        orderID.Clear()
        quantityAndPrice.Clear()
        quotasAndTotalPaymentAmounts.Clear()
    End Sub

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