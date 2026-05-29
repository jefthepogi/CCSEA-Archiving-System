VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Cls_Dashboard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Compare Database

Private oForm       As Access.Form

Private Property Set p_Form(ByRef oMyForm As Access.Form)
    Set oForm = oMyForm
End Property

Public Sub Class_Init(ByRef oMyForm As Access.Form)
    Set p_Form = oMyForm

    'Format the Header section
    oForm.InsideHeight = 3.5 * 1440
    oForm.Section(acHeader).Visible = True
    oForm.Section(acHeader).Height = 0.5 * 1440
    oForm.Section(acHeader).BackColor = RGB(0, 76, 153)
    'Format the Detail section
    oForm.Section(acDetail).BackColor = RGB(224, 224, 224)
    'Format the Footer section
    oForm.Section(acFooter).Visible = True
    oForm.Section(acFooter).Height = 0.5 * 1440
    oForm.Section(acFooter).BackColor = RGB(32, 32, 32)
End Sub

Private Sub Class_Terminate()
    Set oForm = Nothing
End Sub
