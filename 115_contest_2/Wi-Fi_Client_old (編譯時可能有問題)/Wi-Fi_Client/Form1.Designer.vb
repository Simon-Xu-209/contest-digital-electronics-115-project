<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form 覆寫 Dispose 以清除元件清單。
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    '為 Windows Form 設計工具的必要項
    Private components As System.ComponentModel.IContainer

    '注意: 以下為 Windows Form 設計工具所需的程序
    '可以使用 Windows Form 設計工具進行修改。
    '請不要使用程式碼編輯器進行修改。
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        components = New ComponentModel.Container()
        Dim AsciiEncodingSealed1 As System.Text.ASCIIEncoding = New Text.ASCIIEncoding()
        Dim DecoderReplacementFallback1 As System.Text.DecoderReplacementFallback = New Text.DecoderReplacementFallback()
        Dim EncoderReplacementFallback1 As System.Text.EncoderReplacementFallback = New Text.EncoderReplacementFallback()
        orderID_Group = New GroupBox()
        orderID = New TextBox()
        quantityAndPrice_Group = New GroupBox()
        quantityAndPrice = New TextBox()
        quotasAndTotalPaymentAmounts_Group = New GroupBox()
        quotasAndTotalPaymentAmounts = New TextBox()
        Button1 = New Button()
        Button2 = New Button()
        Button3 = New Button()
        Button4 = New Button()
        Button5 = New Button()
        Button6 = New Button()
        Button7 = New Button()
        Button8 = New Button()
        Button9 = New Button()
        none1 = New Button()
        Button0 = New Button()
        none2 = New Button()
        clear = New Button()
        search = New Button()
        connect = New Button()
        none3 = New Button()
        log_Group = New GroupBox()
        log = New TextBox()
        SerialPort1 = New System.IO.Ports.SerialPort(components)
        orderID_Group.SuspendLayout()
        quantityAndPrice_Group.SuspendLayout()
        quotasAndTotalPaymentAmounts_Group.SuspendLayout()
        log_Group.SuspendLayout()
        SuspendLayout()
        ' 
        ' orderID_Group
        ' 
        orderID_Group.Controls.Add(orderID)
        orderID_Group.Location = New Point(83, 412)
        orderID_Group.Margin = New Padding(3, 4, 3, 4)
        orderID_Group.Name = "orderID_Group"
        orderID_Group.Padding = New Padding(3, 4, 3, 4)
        orderID_Group.Size = New Size(264, 82)
        orderID_Group.TabIndex = 0
        orderID_Group.TabStop = False
        orderID_Group.Text = "訂單ID"
        ' 
        ' orderID
        ' 
        orderID.Location = New Point(14, 30)
        orderID.Margin = New Padding(3, 4, 3, 4)
        orderID.Name = "orderID"
        orderID.Size = New Size(236, 27)
        orderID.TabIndex = 19
        ' 
        ' quantityAndPrice_Group
        ' 
        quantityAndPrice_Group.Controls.Add(quantityAndPrice)
        quantityAndPrice_Group.Location = New Point(83, 500)
        quantityAndPrice_Group.Margin = New Padding(3, 4, 3, 4)
        quantityAndPrice_Group.Name = "quantityAndPrice_Group"
        quantityAndPrice_Group.Padding = New Padding(3, 4, 3, 4)
        quantityAndPrice_Group.Size = New Size(264, 82)
        quantityAndPrice_Group.TabIndex = 1
        quantityAndPrice_Group.TabStop = False
        quantityAndPrice_Group.Text = "訂購數量與出價金額欄位"
        ' 
        ' quantityAndPrice
        ' 
        quantityAndPrice.Location = New Point(14, 34)
        quantityAndPrice.Margin = New Padding(3, 4, 3, 4)
        quantityAndPrice.Name = "quantityAndPrice"
        quantityAndPrice.Size = New Size(236, 27)
        quantityAndPrice.TabIndex = 20
        ' 
        ' quotasAndTotalPaymentAmounts_Group
        ' 
        quotasAndTotalPaymentAmounts_Group.Controls.Add(quotasAndTotalPaymentAmounts)
        quotasAndTotalPaymentAmounts_Group.Location = New Point(83, 599)
        quotasAndTotalPaymentAmounts_Group.Margin = New Padding(3, 4, 3, 4)
        quotasAndTotalPaymentAmounts_Group.Name = "quotasAndTotalPaymentAmounts_Group"
        quotasAndTotalPaymentAmounts_Group.Padding = New Padding(3, 4, 3, 4)
        quotasAndTotalPaymentAmounts_Group.Size = New Size(264, 82)
        quotasAndTotalPaymentAmounts_Group.TabIndex = 2
        quotasAndTotalPaymentAmounts_Group.TabStop = False
        quotasAndTotalPaymentAmounts_Group.Text = "配額與付款總額"
        ' 
        ' quotasAndTotalPaymentAmounts
        ' 
        quotasAndTotalPaymentAmounts.Location = New Point(14, 30)
        quotasAndTotalPaymentAmounts.Margin = New Padding(3, 4, 3, 4)
        quotasAndTotalPaymentAmounts.Name = "quotasAndTotalPaymentAmounts"
        quotasAndTotalPaymentAmounts.Size = New Size(236, 27)
        quotasAndTotalPaymentAmounts.TabIndex = 20
        ' 
        ' Button1
        ' 
        Button1.Location = New Point(361, 443)
        Button1.Margin = New Padding(3, 4, 3, 4)
        Button1.Name = "Button1"
        Button1.Size = New Size(45, 51)
        Button1.TabIndex = 3
        Button1.Text = "1"
        Button1.UseVisualStyleBackColor = True
        ' 
        ' Button2
        ' 
        Button2.Location = New Point(413, 443)
        Button2.Margin = New Padding(3, 4, 3, 4)
        Button2.Name = "Button2"
        Button2.Size = New Size(45, 51)
        Button2.TabIndex = 4
        Button2.Text = "2"
        Button2.UseVisualStyleBackColor = True
        ' 
        ' Button3
        ' 
        Button3.Location = New Point(465, 443)
        Button3.Margin = New Padding(3, 4, 3, 4)
        Button3.Name = "Button3"
        Button3.Size = New Size(45, 51)
        Button3.TabIndex = 5
        Button3.Text = "3"
        Button3.UseVisualStyleBackColor = True
        ' 
        ' Button4
        ' 
        Button4.Location = New Point(361, 502)
        Button4.Margin = New Padding(3, 4, 3, 4)
        Button4.Name = "Button4"
        Button4.Size = New Size(45, 51)
        Button4.TabIndex = 8
        Button4.Text = "4"
        Button4.UseVisualStyleBackColor = True
        ' 
        ' Button5
        ' 
        Button5.Location = New Point(413, 502)
        Button5.Margin = New Padding(3, 4, 3, 4)
        Button5.Name = "Button5"
        Button5.Size = New Size(45, 51)
        Button5.TabIndex = 7
        Button5.Text = "5"
        Button5.UseVisualStyleBackColor = True
        ' 
        ' Button6
        ' 
        Button6.Location = New Point(465, 502)
        Button6.Margin = New Padding(3, 4, 3, 4)
        Button6.Name = "Button6"
        Button6.Size = New Size(45, 51)
        Button6.TabIndex = 6
        Button6.Text = "6"
        Button6.UseVisualStyleBackColor = True
        ' 
        ' Button7
        ' 
        Button7.Location = New Point(361, 560)
        Button7.Margin = New Padding(3, 4, 3, 4)
        Button7.Name = "Button7"
        Button7.Size = New Size(45, 51)
        Button7.TabIndex = 11
        Button7.Text = "7"
        Button7.UseVisualStyleBackColor = True
        ' 
        ' Button8
        ' 
        Button8.Location = New Point(413, 560)
        Button8.Margin = New Padding(3, 4, 3, 4)
        Button8.Name = "Button8"
        Button8.Size = New Size(45, 51)
        Button8.TabIndex = 10
        Button8.Text = "8"
        Button8.UseVisualStyleBackColor = True
        ' 
        ' Button9
        ' 
        Button9.Location = New Point(465, 560)
        Button9.Margin = New Padding(3, 4, 3, 4)
        Button9.Name = "Button9"
        Button9.Size = New Size(45, 51)
        Button9.TabIndex = 9
        Button9.Text = "9"
        Button9.UseVisualStyleBackColor = True
        ' 
        ' none1
        ' 
        none1.Location = New Point(361, 618)
        none1.Margin = New Padding(3, 4, 3, 4)
        none1.Name = "none1"
        none1.Size = New Size(45, 51)
        none1.TabIndex = 14
        none1.UseVisualStyleBackColor = True
        ' 
        ' Button0
        ' 
        Button0.Location = New Point(413, 618)
        Button0.Margin = New Padding(3, 4, 3, 4)
        Button0.Name = "Button0"
        Button0.Size = New Size(45, 51)
        Button0.TabIndex = 13
        Button0.Text = "0"
        Button0.UseVisualStyleBackColor = True
        ' 
        ' none2
        ' 
        none2.Location = New Point(465, 618)
        none2.Margin = New Padding(3, 4, 3, 4)
        none2.Name = "none2"
        none2.Size = New Size(45, 51)
        none2.TabIndex = 12
        none2.UseVisualStyleBackColor = True
        ' 
        ' clear
        ' 
        clear.Location = New Point(516, 443)
        clear.Margin = New Padding(3, 4, 3, 4)
        clear.Name = "clear"
        clear.Size = New Size(82, 51)
        clear.TabIndex = 15
        clear.Text = "清除"
        clear.UseVisualStyleBackColor = True
        ' 
        ' search
        ' 
        search.Location = New Point(516, 502)
        search.Margin = New Padding(3, 4, 3, 4)
        search.Name = "search"
        search.Size = New Size(82, 51)
        search.TabIndex = 16
        search.Text = "查詢"
        search.UseVisualStyleBackColor = True
        ' 
        ' connect
        ' 
        connect.Location = New Point(516, 560)
        connect.Margin = New Padding(3, 4, 3, 4)
        connect.Name = "connect"
        connect.Size = New Size(82, 51)
        connect.TabIndex = 17
        connect.Text = "連線"
        connect.UseVisualStyleBackColor = True
        ' 
        ' none3
        ' 
        none3.Location = New Point(516, 618)
        none3.Margin = New Padding(3, 4, 3, 4)
        none3.Name = "none3"
        none3.Size = New Size(82, 51)
        none3.TabIndex = 18
        none3.UseVisualStyleBackColor = True
        ' 
        ' log_Group
        ' 
        log_Group.Controls.Add(log)
        log_Group.Location = New Point(65, 51)
        log_Group.Margin = New Padding(3, 4, 3, 4)
        log_Group.Name = "log_Group"
        log_Group.Padding = New Padding(3, 4, 3, 4)
        log_Group.Size = New Size(550, 353)
        log_Group.TabIndex = 20
        log_Group.TabStop = False
        log_Group.Text = "Log"
        ' 
        ' log
        ' 
        log.BackColor = SystemColors.Control
        log.Location = New Point(18, 32)
        log.Margin = New Padding(4, 5, 4, 5)
        log.Multiline = True
        log.Name = "log"
        log.ReadOnly = True
        log.ScrollBars = ScrollBars.Vertical
        log.Size = New Size(515, 302)
        log.TabIndex = 21
        ' 
        ' SerialPort1
        ' 
        SerialPort1.BaudRate = 9600
        SerialPort1.DataBits = 8
        SerialPort1.DiscardNull = False
        SerialPort1.DtrEnable = False
        AsciiEncodingSealed1.DecoderFallback = DecoderReplacementFallback1
        AsciiEncodingSealed1.EncoderFallback = EncoderReplacementFallback1
        SerialPort1.Encoding = AsciiEncodingSealed1
        SerialPort1.Handshake = IO.Ports.Handshake.None
        SerialPort1.NewLine = vbLf
        SerialPort1.Parity = IO.Ports.Parity.None
        SerialPort1.ParityReplace = CByte(63)
        SerialPort1.PortName = "COM1"
        SerialPort1.ReadBufferSize = 4096
        SerialPort1.ReadTimeout = -1
        SerialPort1.ReceivedBytesThreshold = 1
        SerialPort1.RtsEnable = False
        SerialPort1.StopBits = IO.Ports.StopBits.One
        SerialPort1.WriteBufferSize = 2048
        SerialPort1.WriteTimeout = -1
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(9F, 19F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(1264, 731)
        Controls.Add(log_Group)
        Controls.Add(none3)
        Controls.Add(connect)
        Controls.Add(search)
        Controls.Add(clear)
        Controls.Add(none1)
        Controls.Add(Button0)
        Controls.Add(none2)
        Controls.Add(Button7)
        Controls.Add(Button8)
        Controls.Add(Button9)
        Controls.Add(Button4)
        Controls.Add(Button5)
        Controls.Add(Button6)
        Controls.Add(Button3)
        Controls.Add(Button2)
        Controls.Add(Button1)
        Controls.Add(quotasAndTotalPaymentAmounts_Group)
        Controls.Add(quantityAndPrice_Group)
        Controls.Add(orderID_Group)
        Margin = New Padding(3, 4, 3, 4)
        Name = "Form1"
        orderID_Group.ResumeLayout(False)
        orderID_Group.PerformLayout()
        quantityAndPrice_Group.ResumeLayout(False)
        quantityAndPrice_Group.PerformLayout()
        quotasAndTotalPaymentAmounts_Group.ResumeLayout(False)
        quotasAndTotalPaymentAmounts_Group.PerformLayout()
        log_Group.ResumeLayout(False)
        log_Group.PerformLayout()
        ResumeLayout(False)

    End Sub
    Friend WithEvents orderID_Group As System.Windows.Forms.GroupBox
    Friend WithEvents quantityAndPrice_Group As System.Windows.Forms.GroupBox
    Friend WithEvents quotasAndTotalPaymentAmounts_Group As System.Windows.Forms.GroupBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents orderID As System.Windows.Forms.TextBox
    Friend WithEvents quantityAndPrice As System.Windows.Forms.TextBox
    Friend WithEvents quotasAndTotalPaymentAmounts As System.Windows.Forms.TextBox
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Button6 As System.Windows.Forms.Button
    Friend WithEvents Button7 As System.Windows.Forms.Button
    Friend WithEvents Button8 As System.Windows.Forms.Button
    Friend WithEvents Button9 As System.Windows.Forms.Button
    Friend WithEvents none1 As System.Windows.Forms.Button
    Friend WithEvents Button0 As System.Windows.Forms.Button
    Friend WithEvents none2 As System.Windows.Forms.Button
    Friend WithEvents clear As System.Windows.Forms.Button
    Friend WithEvents search As System.Windows.Forms.Button
    Friend WithEvents connect As System.Windows.Forms.Button
    Friend WithEvents none3 As System.Windows.Forms.Button
    Friend WithEvents log_Group As System.Windows.Forms.GroupBox
    Friend WithEvents SerialPort1 As System.IO.Ports.SerialPort
    Friend WithEvents log As System.Windows.Forms.TextBox

End Class
