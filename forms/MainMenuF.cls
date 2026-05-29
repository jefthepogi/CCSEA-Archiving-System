Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub LogOutBtn_Click()
    Dim lastID As Integer
    Dim fieldValue As String

    ' Get the highest ID (last)
    lastID = DMax("session_id", "Session_Log")

    ' Look up the specific field for that ID
    fieldValue = Nz(DLookup("logout_time", "Session_Log", "session_id = " & lastID), "")

    ' Check if it's empty
    If IsNull(fieldValue) Or fieldValue = "" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "LogOutQ" ' update the logout session
        DoCmd.SetWarnings True
    End If

    Debug.Print "Logged Out"
    TempVars.RemoveAll
    DoCmd.Close acForm, "NavigationF", acSaveNo
    DoCmd.OpenForm "LoginF"
End Sub
