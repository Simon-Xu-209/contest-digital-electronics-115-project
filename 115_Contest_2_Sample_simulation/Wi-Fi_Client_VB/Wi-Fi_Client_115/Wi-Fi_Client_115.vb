Imports System.IO.Ports
Imports System.Text
Imports System.Threading

Public Class Form1

    ' 步驟與超時管理
    Private stepIndex As Integer = 0
    Private responseBuffer As String = ""
    Private StepTimer As New System.Windows.Forms.Timer()
    Private waitCounter As Integer = 0 ' 增加等待計數器

    ' 在 Form1 類別開頭宣告一個變數記錄最後點選的文字框
    Private lastSelectedBox As TextBox = Nothing

    ' Wi-Fi 與 Server 設定
    Private TargetSSID As String = "WiFi_FPGA"
    Private TargetPWD As String = "048778414"
    Private ServerIP As String = "192.168.4.1"
    Private ServerPort As String = "80"

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        ' 自動偵測電腦上所有可用的序列埠並填入 ComboBoxPorts
        ComboBoxPorts.Items.Clear()
        For Each sp As String In SerialPort.GetPortNames()
            ComboBoxPorts.Items.Add(sp)
        Next

        If ComboBoxPorts.Items.Count > 0 Then
            ComboBoxPorts.SelectedIndex = 0 ' 預設選擇第一個
        End If

        quotasAndTotalPaymentAmounts.Text = "0000"

        StepTimer.Interval = 200 ' 200ms/0.2s 檢查一次
        AddHandler StepTimer.Tick, AddressOf StepTimer_Tick
    End Sub

    '=========================================
    ' [WiFi_initial] 按鈕邏輯 (負責硬體初始化與 TCP 連線)
    '=========================================
    Private Sub WiFi_initial_Click(ByVal sender As Object, ByVal e As EventArgs) Handles WiFi_initial.Click
        Try
            If SerialPort1.IsOpen Then
                SerialPort1.Close()
            End If

            ' 檢查是否有選擇序列埠
            If ComboBoxPorts.SelectedItem Is Nothing Then
                MessageBox.Show("請先選擇序列埠（ComPort）！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            ' 設定使用者自行選擇的序列埠
            SerialPort1.PortName = ComboBoxPorts.SelectedItem.ToString()
            SerialPort1.BaudRate = 115200
            SerialPort1.DataBits = 8
            SerialPort1.StopBits = StopBits.One
            SerialPort1.Parity = Parity.None
            SerialPort1.Encoding = Encoding.ASCII
            SerialPort1.NewLine = vbCrLf

            SerialPort1.Open()
            WiFi_initial.Enabled = False
            SerialPort1.DiscardInBuffer()
            responseBuffer = ""

            stepIndex = 1
            StepTimer.Start()

        Catch ex As Exception
            AppendLog(vbCrLf & "[錯誤] 開啟串口或初始化失敗：" & ex.Message & vbCrLf)
            WiFi_initial.Enabled = True
        End Try
    End Sub

    '=========================================
    ' [connect] 按鈕邏輯 (現在僅負責傳送 "Done" 提示給 FPGA)
    '=========================================
    Private Sub connect_Click(ByVal sender As Object, ByVal e As EventArgs) Handles connect.Click
        Try
            If Not SerialPort1.IsOpen Then
                AppendLog(vbCrLf & "[提示] 請先執行 Wi-Fi 初始化並開啟序列埠！" & vbCrLf)
                Return
            End If

            ' 透過共用函式傳送 "Done"
            If SendSinglePacket("Done") Then
                AppendLog(vbCrLf & "[系統提示] 已成功發送 Done 提示給 FPGA！" & vbCrLf)
            Else
                AppendLog(vbCrLf & "[錯誤] 發送 Done 失敗！" & vbCrLf)
            End If

        Catch ex As Exception
            AppendLog(vbCrLf & "[傳送異常] " & ex.Message & vbCrLf)
        End Try
    End Sub

    '=========================================
    ' Client 狀態機 (自動連線與設定)
    '=========================================
    Private Sub StepTimer_Tick(ByVal sender As Object, ByVal e As EventArgs)
        Try
            Select Case stepIndex
                Case 1
                    responseBuffer = ""
                    SerialPort1.WriteLine("AT+RST")
                    stepIndex = 101

                Case 101
                    waitCounter += 1
                    If waitCounter > 5 Then
                        waitCounter = 0
                        stepIndex = 2
                    End If

                Case 2
                    responseBuffer = ""
                    SerialPort1.WriteLine("AT+CWMODE=1")
                    stepIndex = 102

                Case 102
                    If responseBuffer.Contains("OK") Then
                        waitCounter = 0
                        stepIndex = 3
                    ElseIf responseBuffer.Contains("ERROR") Then
                        FailAndStop("AT+CWMODE=1 失敗")
                    Else
                        waitCounter += 1
                        If waitCounter > 15 Then
                            FailAndStop("AT+CWMODE回應超時 (硬體可能未連接)")
                        End If
                    End If

                Case 3
                    responseBuffer = ""
                    waitCounter = 0
                    SerialPort1.WriteLine("AT+CWJAP=""" & TargetSSID & """,""" & TargetPWD & """")
                    stepIndex = 103

                Case 103
                    If responseBuffer.Contains("OK") OrElse responseBuffer.Contains("WIFI GOT IP") Then
                        waitCounter = 0
                        stepIndex = 4
                    ElseIf responseBuffer.Contains("FAIL") OrElse responseBuffer.Contains("ERROR") Then
                        FailAndStop("Wi-Fi 連線失敗 (請檢查 SSID/密碼)")
                    Else
                        waitCounter += 1
                        If waitCounter > 50 Then
                            FailAndStop("Wi-Fi 連線超時 (約10秒)")
                        End If
                    End If

                Case 4
                    responseBuffer = ""
                    waitCounter = 0
                    SerialPort1.WriteLine("AT+CIPSTART=""TCP"",""" & ServerIP & """," & ServerPort)
                    stepIndex = 104

                Case 104
                    If responseBuffer.Contains("OK") OrElse responseBuffer.Contains("CONNECT") Then
                        StepTimer.Stop()
                        WiFi_initial.Enabled = True
                        connect.Enabled = True
                        waitCounter = 0
                        AppendLog(vbCrLf & "[系統提示] Wi-Fi 初始化與 TCP 連線成功！現在可點擊連線按鍵傳送 Done。" & vbCrLf)
                    ElseIf responseBuffer.Contains("ERROR") OrElse responseBuffer.Contains("CLOSED") Then
                        FailAndStop("無法連線至目標 TCP Server")
                    Else
                        waitCounter += 1
                        If waitCounter > 25 Then FailAndStop("TCP 連線超時")
                    End If

            End Select
        Catch ex As Exception
            FailAndStop("硬體通訊異常或已斷線：" & ex.Message)
        End Try
    End Sub

    '=========================================
    ' [查詢] 按鈕邏輯
    '=========================================
    Private Sub search_Click(ByVal sender As Object, ByVal e As EventArgs) Handles search.Click
        Try
            If Not SerialPort1.IsOpen Then
                AppendLog(vbCrLf & "[提示] 請先執行初始化！" & vbCrLf)
                Return
            End If

            Dim rawID As String = orderID.Text.Trim()
            If rawID = "" Then
                AppendLog(vbCrLf & "[提示] 請輸入訂單 ID！" & vbCrLf)
                Return
            End If

            quantityAndPrice.Clear()
            quotasAndTotalPaymentAmounts.Clear()

            Dim sendData As String = "ID:" & rawID & vbCrLf
            Dim cmd As String = "AT+CIPSEND=" & sendData.Length.ToString()

            responseBuffer = ""
            SerialPort1.WriteLine(cmd)

            Dim ready As Boolean = False
            For i As Integer = 1 To 10
                Thread.Sleep(50)
                Application.DoEvents()
                If responseBuffer.Contains(">") Then
                    ready = True
                    Exit For
                End If
            Next

            If ready Then
                SerialPort1.Write(sendData)
            Else
                AppendLog(vbCrLf & "[傳送失敗] ESP8266 未就緒或未連接 (未收到 '>' 提示符號)" & vbCrLf)
            End If

        Catch ex As Exception
            AppendLog(vbCrLf & "[傳送失敗錯誤] " & ex.Message & vbCrLf)
        End Try
    End Sub

    ' =========================================================================
    ' 【重要】訂單按鈕邏輯 (order_Click)
    ' =========================================================================
    Private Sub order_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles order.Click
        Try
            If Not SerialPort1.IsOpen Then
                AppendLog(vbCrLf & "[提示] 請先執行初始化！" & vbCrLf)
                Return
            End If

            Dim rawID As String = orderID.Text.Trim()
            Dim rawQA As String = quantityAndPrice.Text.Trim()

            If rawID = "" Then
                AppendLog(vbCrLf & "[提示] 請輸入訂單 ID！" & vbCrLf)
                Return
            End If

            ' 將兩筆資料合併成一包傳送
            Dim combinedPacket As String = "NewID:" & rawID & vbCrLf &
                                           "NewQA:" & (If(rawQA = "", "00000000", rawQA)) & vbCrLf

            If SendSinglePacket(combinedPacket) Then
                AppendLog(vbCrLf & "[系統提示] 完整訂單資料已一次發送完成！" & vbCrLf)
            End If

        Catch ex As Exception
            AppendLog(vbCrLf & "[傳送失敗錯誤] " & ex.Message & vbCrLf)
        End Try
    End Sub

    ' =========================================================================
    ' 【輔助運算函式】單一封包發送子程序 (SendSinglePacket)
    ' =========================================================================
    Private Function SendSinglePacket(ByVal dataStr As String) As Boolean
        Try
            Dim cmd As String = "AT+CIPSEND=" & dataStr.Length.ToString()

            responseBuffer = ""
            SerialPort1.WriteLine(cmd)

            Dim ready As Boolean = False
            For i As Integer = 1 To 10
                Thread.Sleep(50)
                Application.DoEvents()
                If responseBuffer.Contains(">") Then
                    ready = True
                    Exit For
                End If
            Next

            If ready Then
                responseBuffer = ""
                SerialPort1.Write(dataStr)
                Return True
            Else
                AppendLog(vbCrLf & "[傳送失敗] ESP8266 未就緒 (未收到 '>' 提示符號)" & vbCrLf)
                Return False
            End If

        Catch ex As Exception
            AppendLog(vbCrLf & "[單一封包傳送異常] " & ex.Message & vbCrLf)
            Return False
        End Try
    End Function

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
                          ProcessAllPackets()
                      End Sub)
        Catch ex As Exception
        End Try
    End Sub

    ' =========================================================================
    ' 【重要】資料判別與運算解析區塊 (ProcessAllPackets)
    ' =========================================================================
    Private Sub ProcessAllPackets()
        Try
            If responseBuffer.Contains("ID:") Then
                Dim idx As Integer = responseBuffer.IndexOf("ID:")
                If responseBuffer.Length >= idx + 7 Then
                    orderID.Text = responseBuffer.Substring(idx + 3, 4)
                End If
            End If

            If responseBuffer.Contains("QA:") Then
                Dim idx As Integer = responseBuffer.IndexOf("QA:")
                Dim subStr As String = responseBuffer.Substring(idx + 3)
                Dim endIdx As Integer = subStr.IndexOfAny(New Char() {vbCr, vbLf})
                If endIdx > 0 Then
                    quantityAndPrice.Text = subStr.Substring(0, endIdx).Trim()
                Else
                    quantityAndPrice.Text = subStr.Trim()
                End If
            End If

            If responseBuffer.Contains("QT:") Then
                Dim idx As Integer = responseBuffer.IndexOf("QT:")
                Dim subStr As String = responseBuffer.Substring(idx + 3)
                Dim endIdx As Integer = subStr.IndexOfAny(New Char() {vbCr, vbLf})

                Dim qtVal As String = ""
                If endIdx > 0 Then
                    qtVal = subStr.Substring(0, endIdx).Trim()
                Else
                    qtVal = subStr.Trim()
                End If

                quotasAndTotalPaymentAmounts.Text = qtVal
            End If

            If responseBuffer.Length > 1000 Then
                responseBuffer = ""
            End If

        Catch ex As Exception
        End Try
    End Sub

    Private Sub FailAndStop(ByVal reason As String)
        StepTimer.Stop()
        AppendLog(vbCrLf & "[設定失敗] " & reason & vbCrLf)
        WiFi_initial.Enabled = True
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

    ' =========================================================================
    ' 虛擬數字按鍵 (0~9)
    ' =========================================================================
    Private Sub NumButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles _
        Button0.Click, Button1.Click, Button2.Click, Button3.Click, Button4.Click,
        Button5.Click, Button6.Click, Button7.Click, Button8.Click, Button9.Click

        Dim btn As Button = CType(sender, Button)

        ' 【修正】將 C# 的變數宣告格式 "String numStr = ..." 改為 VB.NET 的 "Dim numStr As String = ..."
        Dim numStr As String = btn.Text

        If lastSelectedBox IsNot Nothing Then
            lastSelectedBox.AppendText(numStr)
        Else
            orderID.AppendText(numStr)
        End If
    End Sub

    Private Sub orderID_Enter(ByVal sender As Object, ByVal e As EventArgs) Handles orderID.Enter
        lastSelectedBox = orderID
    End Sub

    Private Sub quantityAndPrice_Enter(ByVal sender As Object, ByVal e As EventArgs) Handles quantityAndPrice.Enter
        lastSelectedBox = quantityAndPrice
    End Sub

End Class