Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Command47_Click()
    Dim DocID As String
    DocID = Nz(Me.DocIDBox.Value, "")
    If Len(DocID) = 0 Then
        Exit Sub
    End If
    DoCmd.OpenForm "RequestF", , , "document_id = " & DocID
End Sub

Private Sub FilterBtn_Click()
     DoCmd.OpenForm "FilterF"
End Sub


Private Sub Report_Open(Cancel As Integer)
    Debug.Print "nigga"
    Me.RecordSource = "ArchivesSearchQ"
    If Len(Nz([TempVars]![FilterVal], "")) = 0 Then
        TempVars("FilterVal") = "Filename"
    End If
End Sub

Private Sub SearchBox_LostFocus()
    Me.SearchBox.Value = Me.SearchBox.Text
End Sub

Private Sub SearchBtn_Click()

    Dim db As DAO.Database
    Dim qdf As DAO.QueryDef
    Dim strSQL As String
    Dim strFieldName As String
    Dim searchValue As String
    Dim strNewCriteria As String
    Dim strCriteriaValue As String
    Dim intWherePos As Integer

    TempVars("SearchVal") = Me.SearchBox.Value

    Debug.Print [TempVars]![FilterVal]

    ' Determine which field to use
    Select Case [TempVars]![FilterVal] ' Example: Get the saved combo box value
        Case "Author"
            strFieldName = "fullname"
        Case "Filename"
            strFieldName = "title"
        Case "Note"
            strFieldName = "upload_note"
        Case Else
            strFieldName = "title"
    End Select

    ' Construct the new criteria (Assuming text values; use # for dates)
    searchValue = Nz([TempVars]![SearchVal] + "*", "")
    Debug.Print searchValue
    strCriteriaValue = "'*" & searchValue & "' "
    strNewCriteria = "WHERE " & strFieldName & " LIKE " & strCriteriaValue

    ' Moify the QueryDef
    Set db = CurrentDb
    Set qdf = db.QueryDefs("ArchivesFilterQ")
    strSQL = qdf.SQL

    ' Find WHERE and replace everything after it
    intWherePos = InStr(1, strSQL, "WHERE", vbTextCompare)

    If intWherePos > 0 Then
        strSQL = Left(strSQL, intWherePos - 1) & strNewCriteria
    Else
        strSQL = Replace(strSQL, ";", "") & strNewCriteria
    End If
    Debug.Print strSQL ' TO DO!!
    qdf.SQL = strSQL & ";"


    Me.RecordSource = "ArchivesFilterQ"
    ' Absolute path trick, since Me reference not working
    Forms!NavigationF!SF1.Requery
End Sub
