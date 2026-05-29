Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Private Sub TogglePasswordVisibility(Mask As String)
    Me.ClosedEye.Visible = Not Me.ClosedEye.Visible
    Me.EyeIcon.Visible = Not Me.EyeIcon.Visible

    Dim val As Variant

'    Debug.Print Me.PasswordShown

    Me.PasswordHidden.SetFocus
    DoEvents
    val = Me.PasswordShown.Value
    Me.PasswordShown.InputMask = Mask
    Me.PasswordShown.Value = val

    Me.PasswordShown.SetFocus
End Sub
Private Sub ClosedEye_Click()
    TogglePasswordVisibility ""
End Sub

Private Sub EyeIcon_Click()
    TogglePasswordVisibility "Password"
End Sub

Private Sub QuitBtn_Click()
    Quit
End Sub

Private Sub SignInBtn_Click()
    Dim ID As Long, PW As String, PassVal As String
    ID = Nz(DLookup("user_id", "User", "username=""" & Me.UsernameField & """"), 0)
    If ID = 0 Then
        MsgBox "User not Found"
        Exit Sub
    End If

    PassVal = Nz(Me.PasswordShown.Value, "")
    PW = Nz(DLookup("password", "User", "user_id=" & ID), "")
    If PW <> PassVal Or PassVal = "" Then
        MsgBox "Incorrect Password"
        Exit Sub
    End If

    Dim rs As DAO.Recordset
    Dim strSQL As String

    strSQL = "SELECT User.first_name, User.last_name, Role.role_name " & _
             "FROM User INNER JOIN Role ON User.role_id = Role.role_id " & _
             "WHERE User.user_id =" & ID

    Set rs = CurrentDb.OpenRecordset(strSQL)


    TempVars("UserID") = ID
    TempVars("UserName") = rs!last_name.Value & ", " & rs!first_name.Value
    TempVars("UserRole") = rs!role_name.Value

    rs.Close

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "LogInQ"
    DoCmd.SetWarnings True

    strSQL = "SELECT TOP 1 session_id " & _
             "FROM Session_Log " & _
             "WHERE user_id = " & ID & " " & _
             "ORDER BY session_id DESC"

    Set rs = CurrentDb.OpenRecordset(strSQL)
    TempVars("SessionID") = rs!session_id.Value

    Set rs = Nothing

    DoCmd.OpenForm "NavigationF"
    DoCmd.Close acForm, Me.Name, acSaveNo

End Sub
