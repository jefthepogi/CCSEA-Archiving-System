Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Private Function Get_Access(role As String, output1 As String, output2 As String) As String
    Get_Access = IIf([TempVars]![UserRole] = role, output1, output2)
End Function


Private Sub Form_Load()
    Dim pg As Page
'    Dim i As Integer
'    i = 0

    For Each pg In Me.TabCtl0.Pages
        Select Case pg.Name
            Case "Page1"
                pg.Caption = Get_Access("Admin", "User Management", "Search Archives")
                Me.SF1.SourceObject = Get_Access("Admin", "Report.UserInfoR", "Report.ArchivesR")
            Case "Page2"
                pg.Caption = Get_Access("Admin", "Handle Requests", "Requested")
            Case "Page3"
                pg.Caption = Get_Access("Admin", "Manage Documents", "Ready for Viewing")
        End Select
'       i = i + 1
    Next pg


End Sub

Private Sub Form_Open(Cancel As Integer)
    [SF2].SourceObject = ""
    [SF3].SourceObject = ""
End Sub

Private Sub TabCtl0_Change()
'    Debug.Print Me.Name
    Dim currentPage As String
    currentPage = Me.TabCtl0.Pages(TabCtl0.Value).Name
    Debug.Print currentPage

    Select Case currentPage
        Case "Page1"
            Me.SF1.SourceObject = Get_Access("Admin", "Report.UserInfoR", "Report.ArchivesR")
        Case "Page2"
            Me.SF2.SourceObject = Get_Access("Admin", "Report.RequestsHandlingR", "Report.PendingRequestR")
        Case "Page3"
            Me.SF3.SourceObject = Get_Access("Admin", "Report.ManageDocumentsR", "Report.RequestedDocumentsR")
    End Select

End Sub
