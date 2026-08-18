Imports System.IO.Ports

Public Class Form1
    Dim WithEvents serialPort As New SerialPort()

    ' ---------------------------
    ' Form 載入時
    ' ---------------------------
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)
        RefreshComList()
        serialPort.BaudRate = 9600
        serialPort.DataBits = 8
        serialPort.Parity = Parity.None
        serialPort.StopBits = StopBits.One
        LabelStatus.Text = "請選擇 COM 埠，按 Refresh 或插入裝置後重新掃描。"
    End Sub

    ' ---------------------------
    ' 刷新 COM 列表
    ' ---------------------------
    Private Sub RefreshComList()
        ComboBoxCOM.Items.Clear()
        Dim ports() As String = SerialPort.GetPortNames()
        If ports.Length = 0 Then
            ComboBoxCOM.Items.Add("(no COM found)")
            ComboBoxCOM.SelectedIndex = 0
            ComboBoxCOM.Enabled = False
            btnConnect.Enabled = False
        Else
            ComboBoxCOM.Items.AddRange(ports)
            ComboBoxCOM.Enabled = True
            ComboBoxCOM.SelectedIndex = 0
            btnConnect.Enabled = True
        End If
    End Sub

    Private Sub btnRefresh_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRefresh.Click
        RefreshComList()
    End Sub

    ' ---------------------------
    ' 連線 / 斷線
    ' ---------------------------
    Private Sub btnConnect_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnConnect.Click
        Try
            If serialPort.IsOpen Then
                serialPort.Close()
                LabelStatus.Text = "已斷線"
                btnConnect.Text = "Connect"
                Return
            End If

            If ComboBoxCOM.Enabled = False Then
                MessageBox.Show("目前沒有可用 COM 埠，請確認裝置連接與驅動安裝，然後按 Refresh。")
                Return
            End If

            serialPort.PortName = ComboBoxCOM.SelectedItem.ToString()
            serialPort.Open()
            LabelStatus.Text = "已連線：" & serialPort.PortName
            btnConnect.Text = "Disconnect"

        Catch ex As Exception
            MessageBox.Show("無法開啟連線：" & ex.Message)
            LabelStatus.Text = "連線失敗"
        End Try
    End Sub

    ' ---------------------------
    ' 六顆 LED 控制 (A~F開, a~f關)
    ' ---------------------------
    Private Sub btnLed1On_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed1On.Click
        SendLedCommand("A")
    End Sub
    Private Sub btnLed1Off_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed1Off.Click
        SendLedCommand("a")
    End Sub

    Private Sub btnLed2On_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed2On.Click
        SendLedCommand("B")
    End Sub
    Private Sub btnLed2Off_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed2Off.Click
        SendLedCommand("b")
    End Sub

    Private Sub btnLed3On_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed3On.Click
        SendLedCommand("C")
    End Sub
    Private Sub btnLed3Off_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed3Off.Click
        SendLedCommand("c")
    End Sub

    Private Sub btnLed4On_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed4On.Click
        SendLedCommand("D")
    End Sub
    Private Sub btnLed4Off_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed4Off.Click
        SendLedCommand("d")
    End Sub

    Private Sub btnLed5On_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed5On.Click
        SendLedCommand("E")
    End Sub
    Private Sub btnLed5Off_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed5Off.Click
        SendLedCommand("e")
    End Sub

    Private Sub btnLed6On_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed6On.Click
        SendLedCommand("F")
    End Sub
    Private Sub btnLed6Off_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLed6Off.Click
        SendLedCommand("f")
    End Sub

    ' ---------------------------
    ' 傳送 LED 指令
    ' ---------------------------
    Private Sub SendLedCommand(ByVal cmd As String)
        If serialPort.IsOpen Then
            Try
                serialPort.Write(cmd)
            Catch ex As Exception
                MessageBox.Show("傳送失敗: " & ex.Message)
            End Try
        Else
            MessageBox.Show("請先連線到 COM 埠")
        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRefresh.Click

    End Sub

    Private Sub Form1_Load_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class
