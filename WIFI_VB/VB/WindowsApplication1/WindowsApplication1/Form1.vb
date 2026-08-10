Imports System.IO.Ports
Imports System.Text
Imports System.Threading

Public Class Form1


    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        SerialPort1.PortName = "COM8"
        SerialPort1.BaudRate = 115200
        SerialPort1.DataBits = 8
        SerialPort1.StopBits = StopBits.One
        SerialPort1.Parity = Parity.None
        SerialPort1.Encoding = Encoding.ASCII
        SerialPort1.NewLine = vbCrLf
    End Sub

    Private Sub btnConnect_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnConnect.Click
        Try
            If Not SerialPort1.IsOpen Then SerialPort1.Open()

            SendAT("AT+CWMODE=2", 1000)

            SendAT("AT+CWSAP=""MyAP"",""12345678"",1,4", 2000)

            ' ⭐ 一定要多連線
            SendAT("AT+CIPMUX=1", 1000)

            ' ⭐ 先關閉舊 Server（避免 ERROR）
            SendAT("AT+CIPSERVER=0", 1000)

            ' ⭐ 開 Server（建議用 80）
            SendAT("AT+CIPSERVER=1,80", 1500)

            MessageBox.Show("Server 啟動完成")

        Catch ex As Exception
            MessageBox.Show("錯誤：" & ex.Message)
        End Try
    End Sub

    '============================
    ' 統一送 AT 指令（穩定版）
    '============================
    Private Sub SendAT(ByVal cmd As String, ByVal delayMs As Integer)
        SerialPort1.WriteLine(cmd)
        Thread.Sleep(delayMs)
    End Sub

    '============================
    ' 接收資料
    '============================
    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Try
            Dim raw As String = SerialPort1.ReadExisting()

            Me.Invoke(Sub()
                          TextBox1.AppendText(raw & vbCrLf)

                          If raw.Contains("+IPD") Then
                              Dim parsed As String = ParseIPD(raw)
                              If parsed <> "" Then
                                  TextBox1.AppendText("收到資料：" & parsed & vbCrLf)
                              End If
                          End If
                      End Sub)
        Catch
        End Try
    End Sub

    '============================
    ' 解析 IPD
    '============================
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

    '============================
    ' 傳送資料（修正版）
    '============================
    Private Sub SendLedCommand(ByVal cmd As String)

        If Not SerialPort1.IsOpen Then
            MessageBox.Show("請先連線")
            Return
        End If

        Try
            Dim fullCmd As String = cmd & vbCrLf
            Dim len As Integer = Encoding.ASCII.GetByteCount(fullCmd)

            ' 宣告長度
            SerialPort1.WriteLine("AT+CIPSEND=0," & len)
            Thread.Sleep(500)

            ' 傳送內容
            SerialPort1.Write(fullCmd)

        Catch ex As Exception
            MessageBox.Show("Send 失敗：" & ex.Message)
        End Try
    End Sub
    '============================
    ' 數字按鈕（補回）
    '============================
    Private Sub btn1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn1.Click
        TextBox2.AppendText("1")
    End Sub

    Private Sub btn2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn2.Click
        TextBox2.AppendText("2")
    End Sub

    Private Sub btn3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn3.Click
        TextBox2.AppendText("3")
    End Sub

    Private Sub btn4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn4.Click
        TextBox2.AppendText("4")
    End Sub

    Private Sub btn5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn5.Click
        TextBox2.AppendText("5")
    End Sub

    Private Sub btn6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn6.Click
        TextBox2.AppendText("6")
    End Sub

    Private Sub btn7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn7.Click
        TextBox2.AppendText("7")
    End Sub

    Private Sub btn8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn8.Click
        TextBox2.AppendText("8")
    End Sub

    Private Sub btn9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn9.Click
        TextBox2.AppendText("9")
    End Sub

    Private Sub btn0_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn0.Click
        TextBox2.AppendText("0")
    End Sub

    '============================
    ' 按鈕
    '============================
    Private Sub btn_send_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_send.Click
        If TextBox2.Text = "" Then
            MessageBox.Show("沒有資料")
            Return
        End If

        SendLedCommand(TextBox2.Text)
        TextBox2.Clear()
    End Sub


End Class
