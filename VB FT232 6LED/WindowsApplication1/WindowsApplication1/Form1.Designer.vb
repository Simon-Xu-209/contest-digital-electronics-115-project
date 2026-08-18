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
        Me.ComboBoxCOM = New System.Windows.Forms.ComboBox()
        Me.btnConnect = New System.Windows.Forms.Button()
        Me.LabelStatus = New System.Windows.Forms.Label()
        Me.btnLed1On = New System.Windows.Forms.Button()
        Me.btnLed1Off = New System.Windows.Forms.Button()
        Me.btnLed2On = New System.Windows.Forms.Button()
        Me.btnLed2Off = New System.Windows.Forms.Button()
        Me.btnLed3On = New System.Windows.Forms.Button()
        Me.btnLed3Off = New System.Windows.Forms.Button()
        Me.btnLed4On = New System.Windows.Forms.Button()
        Me.btnLed4Off = New System.Windows.Forms.Button()
        Me.btnLed5On = New System.Windows.Forms.Button()
        Me.btnLed5Off = New System.Windows.Forms.Button()
        Me.btnLed6On = New System.Windows.Forms.Button()
        Me.btnLed6Off = New System.Windows.Forms.Button()
        Me.Button1On = New System.Windows.Forms.Button()
        Me.btnRefresh = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'ComboBoxCOM
        '
        Me.ComboBoxCOM.FormattingEnabled = True
        Me.ComboBoxCOM.Location = New System.Drawing.Point(35, 43)
        Me.ComboBoxCOM.Name = "ComboBoxCOM"
        Me.ComboBoxCOM.Size = New System.Drawing.Size(121, 20)
        Me.ComboBoxCOM.TabIndex = 0
        '
        'btnConnect
        '
        Me.btnConnect.Location = New System.Drawing.Point(221, 39)
        Me.btnConnect.Name = "btnConnect"
        Me.btnConnect.Size = New System.Drawing.Size(75, 23)
        Me.btnConnect.TabIndex = 1
        Me.btnConnect.Text = "連線"
        Me.btnConnect.UseVisualStyleBackColor = True
        '
        'LabelStatus
        '
        Me.LabelStatus.Location = New System.Drawing.Point(35, 66)
        Me.LabelStatus.Name = "LabelStatus"
        Me.LabelStatus.Size = New System.Drawing.Size(261, 23)
        Me.LabelStatus.TabIndex = 2
        Me.LabelStatus.Text = "Label1"
        '
        'btnLed1On
        '
        Me.btnLed1On.Location = New System.Drawing.Point(35, 93)
        Me.btnLed1On.Name = "btnLed1On"
        Me.btnLed1On.Size = New System.Drawing.Size(75, 23)
        Me.btnLed1On.TabIndex = 3
        Me.btnLed1On.Text = "ON 1"
        Me.btnLed1On.UseVisualStyleBackColor = True
        '
        'btnLed1Off
        '
        Me.btnLed1Off.Location = New System.Drawing.Point(151, 92)
        Me.btnLed1Off.Name = "btnLed1Off"
        Me.btnLed1Off.Size = New System.Drawing.Size(75, 23)
        Me.btnLed1Off.TabIndex = 4
        Me.btnLed1Off.Text = "OFF 1"
        Me.btnLed1Off.UseVisualStyleBackColor = True
        '
        'btnLed2On
        '
        Me.btnLed2On.Location = New System.Drawing.Point(35, 122)
        Me.btnLed2On.Name = "btnLed2On"
        Me.btnLed2On.Size = New System.Drawing.Size(75, 23)
        Me.btnLed2On.TabIndex = 5
        Me.btnLed2On.Text = "ON 2"
        Me.btnLed2On.UseVisualStyleBackColor = True
        '
        'btnLed2Off
        '
        Me.btnLed2Off.Location = New System.Drawing.Point(151, 121)
        Me.btnLed2Off.Name = "btnLed2Off"
        Me.btnLed2Off.Size = New System.Drawing.Size(75, 23)
        Me.btnLed2Off.TabIndex = 6
        Me.btnLed2Off.Text = "OFF 2"
        Me.btnLed2Off.UseVisualStyleBackColor = True
        '
        'btnLed3On
        '
        Me.btnLed3On.Location = New System.Drawing.Point(35, 151)
        Me.btnLed3On.Name = "btnLed3On"
        Me.btnLed3On.Size = New System.Drawing.Size(75, 23)
        Me.btnLed3On.TabIndex = 7
        Me.btnLed3On.Text = "ON 3"
        Me.btnLed3On.UseVisualStyleBackColor = True
        '
        'btnLed3Off
        '
        Me.btnLed3Off.Location = New System.Drawing.Point(151, 150)
        Me.btnLed3Off.Name = "btnLed3Off"
        Me.btnLed3Off.Size = New System.Drawing.Size(75, 23)
        Me.btnLed3Off.TabIndex = 8
        Me.btnLed3Off.Text = "OFF 3"
        Me.btnLed3Off.UseVisualStyleBackColor = True
        '
        'btnLed4On
        '
        Me.btnLed4On.Location = New System.Drawing.Point(35, 180)
        Me.btnLed4On.Name = "btnLed4On"
        Me.btnLed4On.Size = New System.Drawing.Size(75, 23)
        Me.btnLed4On.TabIndex = 9
        Me.btnLed4On.Text = "ON 4"
        Me.btnLed4On.UseVisualStyleBackColor = True
        '
        'btnLed4Off
        '
        Me.btnLed4Off.Location = New System.Drawing.Point(151, 179)
        Me.btnLed4Off.Name = "btnLed4Off"
        Me.btnLed4Off.Size = New System.Drawing.Size(75, 23)
        Me.btnLed4Off.TabIndex = 10
        Me.btnLed4Off.Text = "OFF 4"
        Me.btnLed4Off.UseVisualStyleBackColor = True
        '
        'btnLed5On
        '
        Me.btnLed5On.Location = New System.Drawing.Point(37, 209)
        Me.btnLed5On.Name = "btnLed5On"
        Me.btnLed5On.Size = New System.Drawing.Size(75, 23)
        Me.btnLed5On.TabIndex = 11
        Me.btnLed5On.Text = "ON 5"
        Me.btnLed5On.UseVisualStyleBackColor = True
        '
        'btnLed5Off
        '
        Me.btnLed5Off.Location = New System.Drawing.Point(151, 208)
        Me.btnLed5Off.Name = "btnLed5Off"
        Me.btnLed5Off.Size = New System.Drawing.Size(75, 23)
        Me.btnLed5Off.TabIndex = 12
        Me.btnLed5Off.Text = "OFF 5"
        Me.btnLed5Off.UseVisualStyleBackColor = True
        '
        'btnLed6On
        '
        Me.btnLed6On.Location = New System.Drawing.Point(37, 237)
        Me.btnLed6On.Name = "btnLed6On"
        Me.btnLed6On.Size = New System.Drawing.Size(75, 23)
        Me.btnLed6On.TabIndex = 13
        Me.btnLed6On.Text = "ON 6"
        Me.btnLed6On.UseVisualStyleBackColor = True
        '
        'btnLed6Off
        '
        Me.btnLed6Off.Location = New System.Drawing.Point(151, 237)
        Me.btnLed6Off.Name = "btnLed6Off"
        Me.btnLed6Off.Size = New System.Drawing.Size(75, 23)
        Me.btnLed6Off.TabIndex = 14
        Me.btnLed6Off.Text = "OFF 6"
        Me.btnLed6Off.UseVisualStyleBackColor = True
        '
        'Button1On
        '
        Me.Button1On.Location = New System.Drawing.Point(35, 93)
        Me.Button1On.Name = "Button1On"
        Me.Button1On.Size = New System.Drawing.Size(75, 23)
        Me.Button1On.TabIndex = 3
        Me.Button1On.Text = "ON 1"
        Me.Button1On.UseVisualStyleBackColor = True
        '
        'btnRefresh
        '
        Me.btnRefresh.Location = New System.Drawing.Point(303, 43)
        Me.btnRefresh.Name = "btnRefresh"
        Me.btnRefresh.Size = New System.Drawing.Size(75, 23)
        Me.btnRefresh.TabIndex = 15
        Me.btnRefresh.Text = "Button1"
        Me.btnRefresh.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 12.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(591, 580)
        Me.Controls.Add(Me.btnRefresh)
        Me.Controls.Add(Me.btnLed6Off)
        Me.Controls.Add(Me.btnLed6On)
        Me.Controls.Add(Me.btnLed5Off)
        Me.Controls.Add(Me.btnLed5On)
        Me.Controls.Add(Me.btnLed4Off)
        Me.Controls.Add(Me.btnLed4On)
        Me.Controls.Add(Me.btnLed3Off)
        Me.Controls.Add(Me.btnLed3On)
        Me.Controls.Add(Me.btnLed2Off)
        Me.Controls.Add(Me.btnLed2On)
        Me.Controls.Add(Me.btnLed1Off)
        Me.Controls.Add(Me.btnLed1On)
        Me.Controls.Add(Me.LabelStatus)
        Me.Controls.Add(Me.btnConnect)
        Me.Controls.Add(Me.ComboBoxCOM)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ComboBoxCOM As System.Windows.Forms.ComboBox
    Friend WithEvents btnConnect As System.Windows.Forms.Button
    Friend WithEvents LabelStatus As System.Windows.Forms.Label
    Friend WithEvents btnLed1On As System.Windows.Forms.Button
    Friend WithEvents btnLed1Off As System.Windows.Forms.Button
    Friend WithEvents btnLed2On As System.Windows.Forms.Button
    Friend WithEvents btnLed2Off As System.Windows.Forms.Button
    Friend WithEvents btnLed3On As System.Windows.Forms.Button
    Friend WithEvents btnLed3Off As System.Windows.Forms.Button
    Friend WithEvents btnLed4On As System.Windows.Forms.Button
    Friend WithEvents btnLed4Off As System.Windows.Forms.Button
    Friend WithEvents btnLed5On As System.Windows.Forms.Button
    Friend WithEvents btnLed5Off As System.Windows.Forms.Button
    Friend WithEvents btnLed6On As System.Windows.Forms.Button
    Friend WithEvents btnLed6Off As System.Windows.Forms.Button
    Friend WithEvents Button1On As System.Windows.Forms.Button
    Friend WithEvents btnRefresh As System.Windows.Forms.Button

End Class
