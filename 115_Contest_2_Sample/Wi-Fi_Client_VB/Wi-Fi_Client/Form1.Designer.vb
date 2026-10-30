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
        Me.components = New System.ComponentModel.Container()
        Me.orderID_Group = New System.Windows.Forms.GroupBox()
        Me.orderID = New System.Windows.Forms.TextBox()
        Me.quantityAndPrice_Group = New System.Windows.Forms.GroupBox()
        Me.quantityAndPrice = New System.Windows.Forms.TextBox()
        Me.quotasAndTotalPaymentAmounts_Group = New System.Windows.Forms.GroupBox()
        Me.quotasAndTotalPaymentAmounts = New System.Windows.Forms.TextBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.Button7 = New System.Windows.Forms.Button()
        Me.Button8 = New System.Windows.Forms.Button()
        Me.Button9 = New System.Windows.Forms.Button()
        Me.none1 = New System.Windows.Forms.Button()
        Me.Button0 = New System.Windows.Forms.Button()
        Me.none2 = New System.Windows.Forms.Button()
        Me.clear = New System.Windows.Forms.Button()
        Me.search = New System.Windows.Forms.Button()
        Me.connect = New System.Windows.Forms.Button()
        Me.none3 = New System.Windows.Forms.Button()
        Me.log_Group = New System.Windows.Forms.GroupBox()
        Me.log = New System.Windows.Forms.TextBox()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.orderID_Group.SuspendLayout()
        Me.quantityAndPrice_Group.SuspendLayout()
        Me.quotasAndTotalPaymentAmounts_Group.SuspendLayout()
        Me.log_Group.SuspendLayout()
        Me.SuspendLayout()
        '
        'orderID_Group
        '
        Me.orderID_Group.Controls.Add(Me.orderID)
        Me.orderID_Group.Location = New System.Drawing.Point(74, 325)
        Me.orderID_Group.Name = "orderID_Group"
        Me.orderID_Group.Size = New System.Drawing.Size(235, 65)
        Me.orderID_Group.TabIndex = 0
        Me.orderID_Group.TabStop = False
        Me.orderID_Group.Text = "訂單ID"
        '
        'orderID
        '
        Me.orderID.Location = New System.Drawing.Point(12, 24)
        Me.orderID.Name = "orderID"
        Me.orderID.Size = New System.Drawing.Size(210, 25)
        Me.orderID.TabIndex = 19
        '
        'quantityAndPrice_Group
        '
        Me.quantityAndPrice_Group.Controls.Add(Me.quantityAndPrice)
        Me.quantityAndPrice_Group.Location = New System.Drawing.Point(74, 395)
        Me.quantityAndPrice_Group.Name = "quantityAndPrice_Group"
        Me.quantityAndPrice_Group.Size = New System.Drawing.Size(235, 65)
        Me.quantityAndPrice_Group.TabIndex = 1
        Me.quantityAndPrice_Group.TabStop = False
        Me.quantityAndPrice_Group.Text = "訂購數量與出價金額欄位"
        '
        'quantityAndPrice
        '
        Me.quantityAndPrice.Location = New System.Drawing.Point(12, 27)
        Me.quantityAndPrice.Name = "quantityAndPrice"
        Me.quantityAndPrice.Size = New System.Drawing.Size(210, 25)
        Me.quantityAndPrice.TabIndex = 20
        '
        'quotasAndTotalPaymentAmounts_Group
        '
        Me.quotasAndTotalPaymentAmounts_Group.Controls.Add(Me.quotasAndTotalPaymentAmounts)
        Me.quotasAndTotalPaymentAmounts_Group.Location = New System.Drawing.Point(74, 473)
        Me.quotasAndTotalPaymentAmounts_Group.Name = "quotasAndTotalPaymentAmounts_Group"
        Me.quotasAndTotalPaymentAmounts_Group.Size = New System.Drawing.Size(235, 65)
        Me.quotasAndTotalPaymentAmounts_Group.TabIndex = 2
        Me.quotasAndTotalPaymentAmounts_Group.TabStop = False
        Me.quotasAndTotalPaymentAmounts_Group.Text = "配額與付款總額"
        '
        'quotasAndTotalPaymentAmounts
        '
        Me.quotasAndTotalPaymentAmounts.Location = New System.Drawing.Point(12, 24)
        Me.quotasAndTotalPaymentAmounts.Name = "quotasAndTotalPaymentAmounts"
        Me.quotasAndTotalPaymentAmounts.Size = New System.Drawing.Size(210, 25)
        Me.quotasAndTotalPaymentAmounts.TabIndex = 20
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(321, 350)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(40, 40)
        Me.Button1.TabIndex = 3
        Me.Button1.Text = "1"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(367, 350)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(40, 40)
        Me.Button2.TabIndex = 4
        Me.Button2.Text = "2"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(413, 350)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(40, 40)
        Me.Button3.TabIndex = 5
        Me.Button3.Text = "3"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(321, 396)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(40, 40)
        Me.Button4.TabIndex = 8
        Me.Button4.Text = "4"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(367, 396)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(40, 40)
        Me.Button5.TabIndex = 7
        Me.Button5.Text = "5"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(413, 396)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(40, 40)
        Me.Button6.TabIndex = 6
        Me.Button6.Text = "6"
        Me.Button6.UseVisualStyleBackColor = True
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(321, 442)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(40, 40)
        Me.Button7.TabIndex = 11
        Me.Button7.Text = "7"
        Me.Button7.UseVisualStyleBackColor = True
        '
        'Button8
        '
        Me.Button8.Location = New System.Drawing.Point(367, 442)
        Me.Button8.Name = "Button8"
        Me.Button8.Size = New System.Drawing.Size(40, 40)
        Me.Button8.TabIndex = 10
        Me.Button8.Text = "8"
        Me.Button8.UseVisualStyleBackColor = True
        '
        'Button9
        '
        Me.Button9.Location = New System.Drawing.Point(413, 442)
        Me.Button9.Name = "Button9"
        Me.Button9.Size = New System.Drawing.Size(40, 40)
        Me.Button9.TabIndex = 9
        Me.Button9.Text = "9"
        Me.Button9.UseVisualStyleBackColor = True
        '
        'none1
        '
        Me.none1.Location = New System.Drawing.Point(321, 488)
        Me.none1.Name = "none1"
        Me.none1.Size = New System.Drawing.Size(40, 40)
        Me.none1.TabIndex = 14
        Me.none1.UseVisualStyleBackColor = True
        '
        'Button0
        '
        Me.Button0.Location = New System.Drawing.Point(367, 488)
        Me.Button0.Name = "Button0"
        Me.Button0.Size = New System.Drawing.Size(40, 40)
        Me.Button0.TabIndex = 13
        Me.Button0.Text = "0"
        Me.Button0.UseVisualStyleBackColor = True
        '
        'none2
        '
        Me.none2.Location = New System.Drawing.Point(413, 488)
        Me.none2.Name = "none2"
        Me.none2.Size = New System.Drawing.Size(40, 40)
        Me.none2.TabIndex = 12
        Me.none2.UseVisualStyleBackColor = True
        '
        'clear
        '
        Me.clear.Location = New System.Drawing.Point(459, 350)
        Me.clear.Name = "clear"
        Me.clear.Size = New System.Drawing.Size(73, 40)
        Me.clear.TabIndex = 15
        Me.clear.Text = "清除"
        Me.clear.UseVisualStyleBackColor = True
        '
        'search
        '
        Me.search.Location = New System.Drawing.Point(459, 396)
        Me.search.Name = "search"
        Me.search.Size = New System.Drawing.Size(73, 40)
        Me.search.TabIndex = 16
        Me.search.Text = "查詢"
        Me.search.UseVisualStyleBackColor = True
        '
        'connect
        '
        Me.connect.Location = New System.Drawing.Point(459, 442)
        Me.connect.Name = "connect"
        Me.connect.Size = New System.Drawing.Size(73, 40)
        Me.connect.TabIndex = 17
        Me.connect.Text = "連線"
        Me.connect.UseVisualStyleBackColor = True
        '
        'none3
        '
        Me.none3.Location = New System.Drawing.Point(459, 488)
        Me.none3.Name = "none3"
        Me.none3.Size = New System.Drawing.Size(73, 40)
        Me.none3.TabIndex = 18
        Me.none3.UseVisualStyleBackColor = True
        '
        'log_Group
        '
        Me.log_Group.Controls.Add(Me.log)
        Me.log_Group.Location = New System.Drawing.Point(58, 40)
        Me.log_Group.Name = "log_Group"
        Me.log_Group.Size = New System.Drawing.Size(489, 279)
        Me.log_Group.TabIndex = 20
        Me.log_Group.TabStop = False
        Me.log_Group.Text = "Log"
        '
        'log
        '
        Me.log.BackColor = System.Drawing.SystemColors.Control
        Me.log.Location = New System.Drawing.Point(16, 25)
        Me.log.Margin = New System.Windows.Forms.Padding(4)
        Me.log.Multiline = True
        Me.log.Name = "log"
        Me.log.ReadOnly = True
        Me.log.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.log.Size = New System.Drawing.Size(458, 239)
        Me.log.TabIndex = 21
        '
        'SerialPort1
        '
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1124, 577)
        Me.Controls.Add(Me.log_Group)
        Me.Controls.Add(Me.none3)
        Me.Controls.Add(Me.connect)
        Me.Controls.Add(Me.search)
        Me.Controls.Add(Me.clear)
        Me.Controls.Add(Me.none1)
        Me.Controls.Add(Me.Button0)
        Me.Controls.Add(Me.none2)
        Me.Controls.Add(Me.Button7)
        Me.Controls.Add(Me.Button8)
        Me.Controls.Add(Me.Button9)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.quotasAndTotalPaymentAmounts_Group)
        Me.Controls.Add(Me.quantityAndPrice_Group)
        Me.Controls.Add(Me.orderID_Group)
        Me.Name = "Form1"
        Me.orderID_Group.ResumeLayout(False)
        Me.orderID_Group.PerformLayout()
        Me.quantityAndPrice_Group.ResumeLayout(False)
        Me.quantityAndPrice_Group.PerformLayout()
        Me.quotasAndTotalPaymentAmounts_Group.ResumeLayout(False)
        Me.quotasAndTotalPaymentAmounts_Group.PerformLayout()
        Me.log_Group.ResumeLayout(False)
        Me.log_Group.PerformLayout()
        Me.ResumeLayout(False)

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
