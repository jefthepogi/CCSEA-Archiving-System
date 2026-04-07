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
    DoCmd.Close acForm, Me.Name, acSaveNo
End Sub

Private Sub SignInBtn_Click()
    Dim ID As Long, PW As String
    ID = Nz(DLookup("user_id", "User", "username=""" & Me.UsernameField & """"), 0)
    If ID = 0 Then
        MsgBox "User not Found"
        QuitBtn_Click
        Exit Sub
    End If

    PW = Nz(DLookup("password", "User", "user_id=" & ID), "")
    If PW <> Me.PasswordShown Then
        MsgBox "Incorrect Password"
        QuitBtn_Click
        Exit Sub
    End If

    TempVars("UserID") = ID
    TempVars("Username") = DLookup("first_name & ' ' & last_name", "User", "user_id=" & ID)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "LogInQ"
    DoCmd.SetWarnings True

    DoCmd.OpenForm "AdminNavigationF"
    DoCmd.Close acForm, Me.Name, acSaveNo

End Sub
