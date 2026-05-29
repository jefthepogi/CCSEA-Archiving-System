Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub ArchiveBtn_Click()
    DoCmd.OpenForm "ArchiveF"
End Sub

Private Sub Auto_Logo0_Click()

End Sub

Private Sub DetailBtn_Click()

    If Len(Nz(Me.DocIDBox.Value, "")) = 0 Then
        MsgBox "Empty Document.", vbInformation, "No Document ID"
        Exit Sub
    End If

    DoCmd.OpenReport "DocumentDetailsR", acViewReport, , "document_id = " & Me.DocIDBox.Value

End Sub

Private Sub Report_NoData(Cancel As Integer)
    MsgBox "There are no records to display for this report.", vbInformation, "No Data"
    Cancel = True
End Sub
