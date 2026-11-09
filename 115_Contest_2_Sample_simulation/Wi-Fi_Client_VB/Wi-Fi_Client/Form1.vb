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

        SerialPort1.Open()

        quotasAndTotalPaymentAmounts.Text = "0000"

        StepTimer.Interval = 200 ' 200ms/0.2s 檢查一次 (VB 最小等待時間單位)
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
                        If waitCounter > 15 Then FailAndStop("AT+CWMODE回應超時 (硬體可能未連接)")
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
                        If waitCounter > 50 Then FailAndStop("Wi-Fi 連線超時 (約10秒)")
                    End If

                Case 4
                    responseBuffer = ""
                    waitCounter = 0
                    SerialPort1.WriteLine("AT+CIPSTART=""TCP"",""" & ServerIP & """," & ServerPort)
                    stepIndex = 104

                Case 104
                    If responseBuffer.Contains("OK") OrElse responseBuffer.Contains("CONNECT") Then
                        connect.Enabled = True
                        waitCounter = 0
                        stepIndex = 5
                    ElseIf responseBuffer.Contains("ERROR") OrElse responseBuffer.Contains("CLOSED") Then
                        FailAndStop("無法連線至目標 TCP Server")
                        orderID.Text = ""
                        quantityAndPrice.Text = ""
                        quotasAndTotalPaymentAmounts.Text = "9595"
                    Else
                        waitCounter += 1
                        If waitCounter > 25 Then FailAndStop("TCP 連線超時")
                    End If

                Case 5
                    responseBuffer = ""
                    waitCounter = 0
                    SerialPort1.WriteLine("AT+CIPSEND=6")
                    stepIndex = 105

                Case 105
                    If responseBuffer.Contains(">") Then
                        waitCounter = 0
                        stepIndex = 6
                    ElseIf responseBuffer.Contains("FAIL") OrElse responseBuffer.Contains("ERROR") Then
                        FailAndStop("Wi-Fi 連線失敗")
                    Else
                        waitCounter += 1
                        If waitCounter > 25 Then FailAndStop("CIPSEND 等待超時")
                    End If

                Case 6
                    responseBuffer = ""
                    waitCounter = 0
                    SerialPort1.WriteLine("Done")
                    stepIndex = 106

                Case 106
                    If responseBuffer.Contains("SEND OK") OrElse responseBuffer.Contains(" ") Then
                        StepTimer.Stop()
                        AppendLog(vbCrLf & "[系統提示] TCP Client 連線成功！" & vbCrLf)
                    ElseIf responseBuffer.Contains("FAIL") OrElse responseBuffer.Contains("ERROR") Then
                        FailAndStop("傳送 Done 失敗")
                    Else
                        waitCounter += 1
                        If waitCounter > 25 Then FailAndStop("SEND OK 等待超時")
                    End If

            End Select
        Catch ex As Exception
            ' 當硬體被拔掉導致 SerialPort 寫入失敗時，安全攔截並恢復按鈕功能
            FailAndStop("硬體通訊異常或已斷線：" & ex.Message)
        End Try
    End Sub

    '=========================================
    ' [查詢] 按鈕邏輯
    '=========================================
    Private Sub search_Click(ByVal sender As Object, ByVal e As EventArgs) Handles search.Click
        Try
            If Not SerialPort1.IsOpen Then
                AppendLog(vbCrLf & "[提示] 請先執行連線！" & vbCrLf)
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
            ' 使用較短且安全的迴圈防呆，避免硬體拔除時計畫面完全凍結
            For i As Integer = 1 To 10
                Thread.Sleep(50)
                Application.DoEvents() ' 保持介面順暢，不卡死
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
                          ProcessAllPackets() ' 呼叫運算解析區塊
                      End Sub)
        Catch ex As Exception
        End Try
    End Sub

    ' =========================================================================
    ' 【重要】資料判別與運算解析區塊 (ProcessAllPackets)
    ' 說明：利用規則表達式 (Regex) 解析接收緩衝區內的黏包資料，並進行邏輯派發
    ' =========================================================================
    Private Sub ProcessAllPackets()
        ' ---------------------------------------------------------------------
        ' 1. 定義規則表達式 (Regex) 樣式：
        '    "(ID:|QA:|QT:)([0-9a-zA-Z]+)"
        '    - "(ID:|QA:|QT:)" 為第 1 個捕捉群組 (Group 1)：比對資料的標頭類型。
        '    - "([0-9a-zA-Z]+)" 為第 2 個捕捉群組 (Group 2)：比對該標頭後方的實際數值內容。
        ' ---------------------------------------------------------------------
        Dim pattern As String = "(ID:|QA:|QT:)([0-9a-zA-Z]+)"

        ' 2. 執行運算：在 responseBuffer 中找出所有符合 pattern 的配對集合
        Dim matches As System.Text.RegularExpressions.MatchCollection = System.Text.RegularExpressions.Regex.Matches(responseBuffer, pattern)

        ' 3. 判斷運算結果：若找到一個以上的有效封包
        If matches.Count > 0 Then
            ' 迴圈遍歷所有被抓出來的獨立資料片段
            For Each m As System.Text.RegularExpressions.Match In matches
                ' 取得前綴標頭 (例如 "ID:", "QA:", "QT:")
                Dim prefix As String = m.Groups(1).Value

                ' 取得對應的實際數值字串 (例如 "0302", "00550030", "0000")
                Dim val As String = m.Groups(2).Value

                ' 【欄位顯示區塊】依照前綴標頭的運算結果，派發並更新至對應的 UI 文字框
                Select Case prefix
                    Case "ID:"
                        orderID.Text = val                  ' 更新「訂單 ID」欄位
                    Case "QA:"
                        quantityAndPrice.Text = val         ' 更新「數量與價格」欄位
                    Case "QT:"
                        quotasAndTotalPaymentAmounts.Text = val ' 更新「配額與總額」欄位
                End Select
            Next

            ' 4. 運算完成後清理：清空暫存緩衝區，避免重複運算或處理舊資料
            responseBuffer = ""
        End If
    End Sub

    Private Sub FailAndStop(ByVal reason As String)
        StepTimer.Stop()
        AppendLog(vbCrLf & "[設定失敗] " & reason & vbCrLf)
        connect.Enabled = True ' 確保連線按鈕重新解鎖
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
    ' 【重要】按鍵判斷與輸入區塊 (NumButton_Click)
    ' 說明：處理虛擬數字按鍵 (0~9) 的點擊事件，並依據目前焦點欄位進行智慧填入
    ' =========================================================================
    Private Sub NumButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles _
        Button0.Click, Button1.Click, Button2.Click, Button3.Click, Button4.Click,
        Button5.Click, Button6.Click, Button7.Click, Button8.Click, Button9.Click

        ' 1. 取得目前被點擊的按鈕物件
        Dim btn As Button = CType(sender, Button)
        ' 2. 讀取按鈕上的文字 (即對應的數字字串 '0' ~ '9')
        Dim numStr As String = btn.Text ' 變數對應

        ' 3. 【欄位焦點判斷運算】：檢查使用者目前游標在哪個輸入框上
        If orderID.Focused Then
            orderID.AppendText(numStr)         ' 若焦點在訂單 ID 框，將數字附加在後面
        ElseIf quantityAndPrice.Focused Then
            quantityAndPrice.AppendText(numStr)  ' 若焦點在數量與價格框，將數字附加在後面
        Else
            orderID.AppendText(numStr)         ' 預設防呆：若沒有明確焦點，預設寫入訂單 ID 框
        End If
    End Sub

End Class