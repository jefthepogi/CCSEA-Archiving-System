Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Private Sub Form_Load()
    Me.Combo0.Value = [TempVars]![FilterVal]
End Sub

Private Sub CancelBtn_Click()
    DoCmd.Close acForm, Me.Name, acSaveNo
End Sub

Private Sub SaveBtn_Click()
    Debug.Print Me.Combo0.Value
    TempVars("FilterVal") = Me.Combo0.Value
    DoCmd.Close acForm, Me.Name, acSaveNo
End Sub
