Imports System.IO.Ports
Imports System.Text
Imports System.Threading

Public Class Form1

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        SerialPort1.PortName = "COM8"        ' 依你的環境調整
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

            ' 設成 AP 模式
            SerialPort1.WriteLine("AT+CWMODE=2")
            Thread.Sleep(300)

            ' 設置 AP (SSID + 密碼)
            SerialPort1.WriteLine("AT+CWSAP=""MyAP"",""12345678"",1,4")
            Thread.Sleep(2000)

            ' 開啟多工模式
            SerialPort1.WriteLine("AT+CIPMUX=1")
            Thread.Sleep(500)

            ' 建立 TCP server port 80
            SerialPort1.WriteLine("AT+CIPSERVER=1,80")
            Thread.Sleep(800)

            MessageBox.Show("Server 啟動完成，Client 可連線")

        Catch ex As Exception
            MessageBox.Show("連線失敗：" & ex.Message)
        End Try
    End Sub

    ' 接收 ESP-07 資料＋解析 IPD 封包
    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Try

            Dim raw As String = SerialPort1.ReadExisting()

            Me.Invoke(Sub()
                          TextBox1.AppendText(raw & vbCrLf)

                          ' 若包含 +IPD，解析出真正的內容
                          If raw.Contains("+IPD") Then
                              Dim parsed As String = ParseIPD(raw)
                              If parsed <> "" Then
                                  TextBox1.AppendText("收到資料：" & parsed & vbCrLf)
                              End If
                          End If
                      End Sub)
        Catch ex As Exception
            ' 忽略或顯示錯誤

        End Try
    End Sub

    ' 解析 +IPD,x,y:DATA
    Private Function ParseIPD(ByVal raw As String) As String
        Try
            Dim idx As Integer = raw.IndexOf("+IPD")
            If idx = -1 Then Return ""

            ' 尋找冒號，後面就是資料
            Dim colon As Integer = raw.IndexOf(":", idx)
            If colon = -1 Then Return ""

            Return raw.Substring(colon + 1).Trim()

        Catch
            Return ""
        End Try
    End Function


    Private Sub SendLedCommand(ByVal cmd As String)
        If Not SerialPort1.IsOpen Then
            MessageBox.Show("請先連線到 COM 埠")
            Return
        End If

        Try
            Dim dataLen As Integer = Encoding.ASCII.GetByteCount(cmd)

            '===============
            ' Step1：宣告要送的長度 (ID = 0)
            '===============
            SerialPort1.WriteLine("AT+CIPSEND=0," & dataLen)
            Thread.Sleep(200)  ' 等 ESP 準備 OK

            '===============
            ' Step2：送出實際內容
            '===============
            SerialPort1.Write(cmd)        ' 資料內容
            SerialPort1.Write(vbCrLf)     ' ESP8266 需要 CRLF 才會送出去

        Catch ex As Exception
            MessageBox.Show("傳送失敗: " & ex.Message)
        End Try
    End Sub







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

    Private Sub btn_send_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_send.Click
        Dim msg As String = TextBox2.Text

        If msg.Length = 0 Then
            MessageBox.Show("沒有要傳送的內容")
            Return
        End If

        SendLedCommand(msg)

        TextBox2.Clear()     ' 傳送後清空

    End Sub

 
    Private Sub btnConnect_ClientSizeChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnConnect.ClientSizeChanged

    End Sub

    Private Sub btnConnect_ControlRemoved(ByVal sender As Object, ByVal e As System.Windows.Forms.ControlEventArgs) Handles btnConnect.ControlRemoved

    End Sub
End Class