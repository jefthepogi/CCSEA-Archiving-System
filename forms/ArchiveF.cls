Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database


Private Sub BrowseBtn_Click()
    Dim fd As Object
    Dim selectedFile As String
    Dim destinationPath As String
    Dim fileName As String

    Set fd = Application.FileDialog(3) ' File Picker
    fd.Filters.Add "PDF Files", "*.pdf" ' Ensures you could only select PDF files

    If fd.Show = -1 Then
        selectedFile = fd.SelectedItems(1) ' get first file selected
        TempVars("OriginPath") = selectedFile
    Else
        TempVars("OriginPath") = ""
    End If
    Me.OriginPathBox.Requery
End Sub

Private Sub Form_Close()
    TempVars("OriginPath") = ""
End Sub

Private Sub NoteBox_Change()
    ' .Text is the "live" content as they type
    If Len(Me.NoteBox.Text & "") > 255 Then
        MsgBox "You've hit the 255 character limit.", vbExclamation

        ' Trim the text back to 255
        Me.NoteBox.Text = Left(Me.NoteBox.Text, 255)

        ' Move the cursor back to the very end
        Me.NoteBox.SelStart = 255
    End If
End Sub

Private Sub SubmitArchiveBtn_Click()
    On Error GoTo ErrorHandler

    Dim oFilepath As String: oFilepath = Nz(Me.OriginPathBox.Value, "")

    ' 1. Validate Input
    If Len(oFilepath) = 0 Then
        MsgBox "Please select a file first!", vbExclamation
        Exit Sub
    End If

    ' 2. Ensure parent 'Documents' folder exists (works on relative env)
    Dim baseDocPath As String: baseDocPath = CurrentProject.Path & "\Documents"
    If Dir(baseDocPath, vbDirectory) = "" Then MkDir baseDocPath

    Dim db As DAO.Database: Set db = CurrentDb
    Dim fileName As String: fileName = Dir(oFilepath)
    Dim newID As Long
    Dim newFolder As String, destinationPath As String, relativePath As String

    ' 3. Create the initial record to get the unique ID
    ' Use dbFailOnError to ensure it doesn't fail silently
    db.Execute "INSERT INTO Document (user_id) VALUES ('" & [TempVars]![UserID] & "')", dbFailOnError
    newID = db.OpenRecordset("SELECT @@IDENTITY")(0)

    ' 4. Prepare File System
    newFolder = baseDocPath & "\Archive_" & newID
    If Dir(newFolder, vbDirectory) = "" Then MkDir newFolder
    destinationPath = newFolder & "\" & fileName
    relativePath = Replace(destinationPath, CurrentProject.Path, "")

    ' 5. COPY FILE FIRST (Safety logic)
    ' This way, if the file is open or locked, the DB update never runs.
    FileCopy oFilepath, destinationPath

    ' 6. Update Metadata with Sanitized Strings (Prevents SQL Injection)
    Dim sqlUpdate As String
    sqlUpdate = "UPDATE Document SET " & _
                "title = '" & Replace(fileName, "'", "''") & "', " & _
                "filepath = '" & Replace(relativePath, "'", "''") & "', " & _
                "upload_note = '" & Replace(Nz(Me.NoteBox.Value, ""), "'", "''") & "', " & _
                "upload_date = Now() " & _
                "WHERE document_id = " & newID

    db.Execute sqlUpdate, dbFailOnError

    ' 8. Success & Cleanup
    MsgBox "File uploaded successfully!", vbInformation
    DoCmd.Close acForm, Me.Name, acSaveNo

Exit_Sub:
    Set db = Nothing
    Exit Sub

ErrorHandler:
    Select Case Err.Number
        Case 70 ' Permission denied (File is open/locked)
            MsgBox "Error: The file is currently open. Please close it and try again.", vbCritical
        Case 76 ' Path not found
            MsgBox "Error: The destination path could not be created.", vbCritical
        Case Else
            MsgBox "Error " & Err.Number & ": " & Err.Description, vbCritical
    End Select
    Resume Exit_Sub
End Sub
