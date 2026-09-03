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
        SerialPort1.PortName = "COM4"
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

            stepIndex = 1
            StepTimer.Start()

        Catch ex As Exception
            MessageBox.Show("開啟串口失敗：" & ex.Message, "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error)
            connect.Enabled = True
        End Try
    End Sub

    '=========================================
    ' Client 狀態機 (自動連線與設定)
    '=========================================
    Private Sub StepTimer_Tick(ByVal sender As Object, ByVal e As EventArgs)
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
                    stepIndex = 3
                ElseIf responseBuffer.Contains("ERROR") Then
                    FailAndStop("AT+CWMODE=1 失敗")
                End If

            Case 3
                responseBuffer = ""
                waitCounter = 0
                SerialPort1.WriteLine("AT+CWJAP=""" & TargetSSID & """,""" & TargetPWD & """")
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
                responseBuffer = ""
                waitCounter = 0
                SerialPort1.WriteLine("AT+CIPSTART=""TCP"",""" & ServerIP & """," & ServerPort)
                stepIndex = 104

            Case 104
                If responseBuffer.Contains("OK") OrElse responseBuffer.Contains("CONNECT") Then
                    StepTimer.Stop()
                    MessageBox.Show("TCP Client 連線成功！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    connect.Enabled = True
                ElseIf responseBuffer.Contains("ERROR") OrElse responseBuffer.Contains("CLOSED") Then
                    FailAndStop("無法連線至目標 TCP Server")
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
    ' [查詢] 按鈕邏輯
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

            Dim sendData As String = "ID:" & formattedID & vbCrLf
            Dim cmd As String = "AT+CIPSEND=" & sendData.Length.ToString()

            responseBuffer = ""
            SerialPort1.WriteLine(cmd)

            Dim ready As Boolean = False
            For i As Integer = 1 To 20
                Thread.Sleep(100)
                If responseBuffer.Contains(">") Then
                    ready = True
                    Exit For
                End If
            Next

            If ready Then
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
    ' 只保留 UART2USB RX 資料於 Log 中
    '=========================================
    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Try
            Thread.Sleep(50)
            Dim raw As String = SerialPort1.ReadExisting()
            responseBuffer &= raw

            Me.Invoke(Sub()
                          ' 僅保留原始 RX 資料輸出，不額外添加除錯字串
                          AppendLog(raw)

                          If raw.Contains("+IPD") Then
                              Dim parsed As String = ParseIPD(raw)
                              If parsed <> "" Then
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

            Dim result As String = raw.Substring(colon + 1)
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

            ' 2. 當接收到 數量 (例如 "QA:00650040")
        ElseIf payload.StartsWith("QA:") Then
            Dim qaValue As String = payload.Substring(3).Trim()
            quantityAndPrice.Text = qaValue

            ' 3. 當接收到 配額與總額 (例如 "QT:#XX$XXXX" 或 "QT:0000")
        ElseIf payload.StartsWith("QT:") Then
            Dim qtValue As String = payload.Substring(3).Trim()
            quotasAndTotalPaymentAmounts.Text = qtValue

            ' 保留相容性解析 (QP / PA)
        ElseIf payload.StartsWith("QP:") Then
            quantityAndPrice.Text = payload.Substring(3).Trim()
        ElseIf payload.StartsWith("PA:") Then
            quotasAndTotalPaymentAmounts.Text = payload.Substring(3).Trim()
        End If
    End Sub

    Private Sub FailAndStop(ByVal reason As String)
        StepTimer.Stop()
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