Imports System.IO.Ports
Imports System.Text
Imports System.Threading

Public Class Form1

    ' 步驟與超時管理
    Private stepIndex As Integer = 0
    Private responseBuffer As String = ""
    Private StepTimer As New System.Windows.Forms.Timer()
    Private waitCounter As Integer = 0 ' 增加等待計數器

    ' Wi-Fi 與 Server 設定 (AP 模式)
    Private TargetSSID As String = "WiFi_FPGA"
    Private TargetPWD As String = "048778414"
    Private ServerPort As String = "80"

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        SerialPort1.PortName = "COM4"
        SerialPort1.BaudRate = 115200
        SerialPort1.DataBits = 8
        SerialPort1.StopBits = StopBits.One
        SerialPort1.Parity = Parity.None
        SerialPort1.Encoding = Encoding.ASCII
        SerialPort1.NewLine = vbCrLf

        SerialPort1.Open()

        RX.Text = "0000"

        StepTimer.Interval = 200 ' 200ms/0.2s 檢查一次
        AddHandler StepTimer.Tick, AddressOf StepTimer_Tick
    End Sub

    Private Sub connect_Click(ByVal sender As Object, ByVal e As EventArgs) Handles connect.Click
        Try
            connect.Enabled = False
            SerialPort1.DiscardInBuffer()
            responseBuffer = ""

            stepIndex = 1
            StepTimer.Start()

        Catch ex As Exception
            AppendLog(vbCrLf & "[錯誤] 開啟串口失敗：" & ex.Message & vbCrLf)
            connect.Enabled = True
        End Try
    End Sub

    '=========================================
    ' AP 模式狀態機 (自動建立熱點與伺服器)
    '=========================================
    Private Sub StepTimer_Tick(ByVal sender As Object, ByVal e As EventArgs)
        Try
            Select Case stepIndex
                Case 1
                    responseBuffer = ""
                    SerialPort1.WriteLine("AT+RST") ' 重啟 ESP8266 晶片
                    stepIndex = 101

                Case 101
                    waitCounter += 1
                    If waitCounter > 5 Then
                        waitCounter = 0
                        stepIndex = 2
                    End If

                Case 2
                    responseBuffer = ""
                    SerialPort1.WriteLine("AT+RFPOWER=0") ' 設定 RF 發射功率
                    stepIndex = 102

                Case 102
                    If responseBuffer.Contains("OK") Then
                        stepIndex = 3
                    ElseIf responseBuffer.Contains("ERROR") Then
                        FailAndStop("AT+RFPOWER=0 失敗")
                    End If

                Case 3
                    responseBuffer = ""
                    SerialPort1.WriteLine("AT+CWMODE=2") ' 設定為 AP 模式 (SoftAP)
                    stepIndex = 103

                Case 103
                    If responseBuffer.Contains("OK") Then
                        stepIndex = 4
                    ElseIf responseBuffer.Contains("ERROR") Then
                        FailAndStop("AT+CWMODE=2 失敗")
                    End If

                Case 4
                    responseBuffer = ""
                    waitCounter = 0
                    ' 設定熱點 SSID, 密碼, 頻道(1), 加密方式(4: WPA2_PSK)
                    SerialPort1.WriteLine("AT+CWSAP=""" & TargetSSID & """,""" & TargetPWD & """,1,4")
                    stepIndex = 104

                Case 104
                    If responseBuffer.Contains("OK") Then
                        stepIndex = 5
                    ElseIf responseBuffer.Contains("ERROR") OrElse responseBuffer.Contains("FAIL") Then
                        FailAndStop("熱點 (CWSAP) 建立失敗")
                    Else
                        waitCounter += 1
                        If waitCounter > 50 Then FailAndStop("熱點建立超時")
                    End If

                Case 5
                    responseBuffer = ""
                    waitCounter = 0
                    SerialPort1.WriteLine("AT+CIPMUX=1") ' 開啟多連線模式 (Server 必須開啟)
                    stepIndex = 105

                Case 105
                    If responseBuffer.Contains("OK") Then
                        stepIndex = 6
                    ElseIf responseBuffer.Contains("ERROR") Then
                        FailAndStop("AT+CIPMUX=1 設定失敗")
                    End If

                Case 6
                    responseBuffer = ""
                    waitCounter = 0
                    SerialPort1.WriteLine("AT+CIPSERVER=1," & ServerPort) ' 啟動 TCP Server
                    stepIndex = 106

                Case 106
                    If responseBuffer.Contains("OK") Then
                        StepTimer.Stop()
                        AppendLog(vbCrLf & "[系統提示] Wi-Fi Server 啟動成功，等待 Client 連線..." & vbCrLf)
                        connect.Enabled = True
                    ElseIf responseBuffer.Contains("ERROR") Then
                        FailAndStop("啟動 TCP Server 失敗")
                    Else
                        waitCounter += 1
                        If waitCounter > 25 Then FailAndStop("啟動 Server 超時")
                    End If

            End Select
        Catch ex As Exception
            FailAndStop("硬體通訊異常或已斷線：" & ex.Message)
        End Try
    End Sub

    ' =========================================================================
    ' 【送出按鈕邏輯】(send_Click)
    ' 說明：當點擊「send」按鈕時，將 TX 欄位的資料透過 Wi-Fi 傳送出去
    ' =========================================================================
    Private Sub send_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles send.Click
        Try
            ' 1. 安全防呆判斷：檢查序列埠是否已經開啟
            If Not SerialPort1.IsOpen Then
                AppendLog(vbCrLf & "[提示] 請先執行連線！" & vbCrLf)
                Return
            End If

            ' 2. 取得 TX 欄位的文字
            Dim rawID As String = TX.Text.Trim()

            ' 3. 防呆檢核：檢查是否為空
            If rawID = "" Then
                AppendLog(vbCrLf & "[提示] 請輸入要傳送的資料！" & vbCrLf)
                Return
            End If

            ' 4. 組合要傳送的資料封包格式
            Dim packet As String = "Data:" & rawID & vbCrLf

            ' 5. 發送資料 (預設透過連線 ID = 0 的 Client 傳送)
            If Not SendSinglePacket(0, packet) Then Return

            AppendLog(vbCrLf & "[系統提示] 資料已成功透過 Wi-Fi 傳送至 FPGA！" & vbCrLf)

        Catch ex As Exception
            AppendLog(vbCrLf & "[傳送失敗錯誤] " & ex.Message & vbCrLf)
        End Try
    End Sub

    ' =========================================================================
    ' 【輔助運算函式】單一封包發送子程序 (SendSinglePacket)
    ' 修正重點：因為開啟了 CIPMUX=1，AT+CIPSEND 必須加上連線 ID (例如 0)
    ' =========================================================================
    Private Function SendSinglePacket(ByVal linkId As Integer, ByVal dataStr As String) As Boolean
        Try
            ' 1. 組合多連線發送指令：AT+CIPSEND=<ID>,<Length>
            Dim cmd As String = "AT+CIPSEND=" & linkId.ToString() & "," & dataStr.Length.ToString()

            responseBuffer = ""
            SerialPort1.WriteLine(cmd)

            ' 2. 等待 ESP8266 回覆 '>' 提示符號
            Dim ready As Boolean = False
            For i As Integer = 1 To 10
                Thread.Sleep(50)
                Application.DoEvents()
                If responseBuffer.Contains(">") Then
                    ready = True
                    Exit For
                End If
            Next

            ' 3. 如果收到準備就緒訊號，則正式將資料寫入序列埠
            If ready Then
                responseBuffer = ""
                SerialPort1.Write(dataStr)
                Return True
            Else
                AppendLog(vbCrLf & "[傳送失敗] ESP8266 未就緒 (未收到 '>' 提示符號，請確認 Client 是否已連線)" & vbCrLf)
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
    ' 資料判別與運算解析區塊 (ProcessAllPackets)
    ' =========================================================================
    Private Sub ProcessAllPackets()
        Dim pattern As String = "(Back:|FPGA:|Data:)([0-9a-zA-Z#\$]+)"
        Dim matches As System.Text.RegularExpressions.MatchCollection = System.Text.RegularExpressions.Regex.Matches(responseBuffer, pattern)

        If matches.Count > 0 Then
            For Each m As System.Text.RegularExpressions.Match In matches
                Dim prefix As String = m.Groups(1).Value
                Dim val As String = m.Groups(2).Value

                Select Case prefix
                    Case "Back:"
                        RX.Text = val
                End Select
            Next
            responseBuffer = ""
        End If
    End Sub

    Private Sub FailAndStop(ByVal reason As String)
        StepTimer.Stop()
        AppendLog(vbCrLf & "[設定失敗] " & reason & vbCrLf)
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
        TX.Clear()
        RX.Clear()
    End Sub

    ' =========================================================================
    ' 按鍵判斷與輸入區塊 (NumButton_Click)
    ' =========================================================================
    Private Sub NumButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles _
        Button0.Click, Button1.Click, Button2.Click, Button3.Click, Button4.Click,
        Button5.Click, Button6.Click, Button7.Click, Button8.Click, Button9.Click

        Dim btn As Button = CType(sender, Button)
        Dim numStr As String = btn.Text

        If TX.Focused Then
            TX.AppendText(numStr)
        Else
            TX.AppendText(numStr)
        End If
    End Sub

End Class