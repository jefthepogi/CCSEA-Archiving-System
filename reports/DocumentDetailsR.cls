Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub PreviewBtn_Click()
    On Error GoTo ErrorHandler

    ' Append current full filepath
    Dim destinationPath As String
    destinationPath = CurrentProject.Path & Me.FilepathBox.Value
    ' Go to target filepath
    Application.FollowHyperlink destinationPath

ExitHandler:
    Exit Sub

ErrorHandler:
    Select Case Err.Number
        ' Add both codes here to skip them silently
        Case 2501, 16388
            Resume ExitHandler
        Case Else
            ' Show a message only if it's an actual unexpected error (like file missing)
            MsgBox "Error " & Err.Number & ": " & Err.Description
            Resume ExitHandler
    End Select
End Sub
