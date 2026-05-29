Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Private Sub Get_Decision(myDecision As String)
    Dim ReqID As Long
    Dim DocID As Long
    ReqID = Nz(Me.RequestIDBox.Value, 0)

    If ReqID = 0 Then
        Exit Sub
    End If

    ' Record Approval
    CurrentDb.Execute "INSERT INTO Approval (request_id, admin_id, decision)" & _
                      "VALUES ('" & ReqID & "', '" & [TempVars]![UserID] & "', '" & myDecision & "')"
    ' Update Request Status
    CurrentDb.Execute "UPDATE Document_Request " & _
                      "SET request_status = '" & myDecision & "' " & _
                      "WHERE request_id = " & ReqID, dbFailOnError

    DocID = DLookup("document_id", "Document_Request", "request_id = " & ReqID)
    ' Save to transaction history
    CurrentDb.Execute "INSERT INTO Transaction_History (request_id, document_id, transaction_status, transaction_date) " & _
                      "VALUES ('" & ReqID & "', '" & DocID & "', '" & myDecision & "', Now())"

    Me.RecordSource = Me.RecordSource

End Sub


Private Sub AcceptBtn_Click()
    Get_Decision "Accepted"
End Sub


Private Sub RejectBtn_Click()
    Get_Decision "Denied"
End Sub
