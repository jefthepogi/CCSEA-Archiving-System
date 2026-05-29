Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub RequestDocBtn_Click()
        Dim db As DAO.Database
        Dim newID As Long
        Dim DocID As Long
        Set db = CurrentDb
        DocID = Me.DocumentIDBox.Value

        ' Save request in table
        db.Execute "INSERT INTO Document_Request (document_id, user_id, request_note, request_date, request_status) " & _
                          "VALUES ('" & DocID & "', '" & [TempVars]![UserID] & "', '" & Me.NoteBox.Value & "', Now(), 'Pending')"

        ' Get the newly inserted request id
        newID = db.OpenRecordset("SELECT @@IDENTITY")(0)

        ' Save to transaction history
        db.Execute "INSERT INTO Transaction_History (request_id, document_id, transaction_status, transaction_date) " & _
                   "VALUES ('" & newID & "', '" & DocID & "', '" & "Pending" & "', Now())"

        MsgBox "Request has been sent!"

        ' Close the form
        DoCmd.Close acForm, Me.Name, acSaveNo
End Sub
