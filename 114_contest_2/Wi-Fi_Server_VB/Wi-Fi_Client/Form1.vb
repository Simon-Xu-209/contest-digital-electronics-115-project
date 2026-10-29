Imports System.IO.Ports
Imports System.Text
Imports System.Threading

Public Class Form1

    ' 步驟與超時管理
    Private stepIndex As Integer = 0
    Private responseBuffer As String = ""
    Private StepTimer As New System.Windows.Forms.Timer()
    Private waitCounter As Integer = 0

    ' Wi-Fi AP 與 Server 設定 (對應 FPGA WiFi_Controller 設定)
    Private AP_SSID As String = "WiFi_FPGA"
    Private AP_PWD As String = "048778414"
    Private ServerPort As String = "80"

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        SerialPort1.PortName = "COM4"
        SerialPort1.BaudRate = 115200
        SerialPort1.DataBits = 8
        SerialPort1.StopBits = StopBits.One
        SerialPort1.Parity = Parity.None
        SerialPort1.Encoding = Encoding.ASCII
        SerialPort1.NewLine = vbCrLf

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
    ' AP / Server 狀態機初始化 (同步 FPGA 設定，包含 RF 功率)
    '=========================================
    Private Sub StepTimer_Tick(ByVal sender As Object, ByVal e As EventArgs)
        Select Case stepIndex
            Case 1
                responseBuffer = ""
                SerialPort1.WriteLine("AT+RST")
                stepIndex = 101

            Case 101
                waitCounter += 1
                If waitCounter > 10 Then ' 等待重啟完成
                    waitCounter = 0
                    stepIndex = 2
                End If

            Case 2
                responseBuffer = ""
                SerialPort1.WriteLine("AT+RFPOWER=0") ' 設定 RF 發射功率 (對應 FPGA 中的 AT+RFPOWER=0)
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
                SerialPort1.WriteLine("AT+CWSAP=""" & AP_SSID & """,""" & AP_PWD & """,1,4")
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
                SerialPort1.WriteLine("AT+CIPMUX=1") ' 開啟多連線模式
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
                    MessageBox.Show("Wi-Fi 熱點建立、功率設定完成並成功啟動 TCP Server！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    connect.Enabled = True
                ElseIf responseBuffer.Contains("ERROR") Then
                    FailAndStop("啟動 TCP Server 失敗")
                Else
                    waitCounter += 1
                    If waitCounter > 25 Then FailAndStop("啟動 Server 超時")
                End If
        End Select
    End Sub

    '=========================================
    ' [送出] 按鈕邏輯 (多連線模式需指定 Client ID，預設傳給 ID 0)
    '=========================================
    Private Sub send_Click(ByVal sender As Object, ByVal e As EventArgs) Handles send.Click
        Try
            If Not SerialPort1.IsOpen Then
                MessageBox.Show("請先執行連線！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            Dim rawID As String = TX.Text.Trim()
            Dim idVal As Integer = 0
            Integer.TryParse(rawID, idVal)
            Dim formattedID As String = idVal.ToString("D1")

            RX.Clear()

            Dim sendData As String = "Data:" & formattedID & vbCrLf
            ' 多連線 Server 傳送格式：AT+CIPSEND=<id>,<length> (此處預設傳給連線 ID 0 的 FPGA 客戶端)
            Dim targetID As Integer = 0
            Dim cmd As String = "AT+CIPSEND=" & targetID & "," & sendData.Length.ToString()

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
    ' Log 與資料接收
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

        If payload.StartsWith("Data:") Then
            Dim idValue As String = payload.Substring(3).Trim()
            TX.Text = idValue
        ElseIf payload.StartsWith("QA:") Then
            Dim qaValue As String = payload.Substring(3).Trim()
            RX.Text = qaValue
        ElseIf payload.StartsWith("QT:") Then
            Dim qtValue As String = payload.Substring(3).Trim()
        ElseIf payload.StartsWith("QP:") Then
            RX.Text = payload.Substring(3).Trim()
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
        TX.Clear()
        RX.Clear()
    End Sub

    Private Sub NumButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles _
        Button0.Click, Button1.Click, Button2.Click, Button3.Click, Button4.Click,
        Button5.Click, Button6.Click, Button7.Click, Button8.Click, Button9.Click

        Dim btn As Button = CType(sender, Button)
        Dim numStr As String = btn.Text

        If TX.Focused Then
            TX.AppendText(numStr)
        ElseIf RX.Focused Then
            RX.AppendText(numStr)
        Else
            TX.AppendText(numStr)
        End If
    End Sub

End Class