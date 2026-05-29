SELECT
  Document_Request.request_id,
  Document.title,
  Document.filepath,
  Document_Request.request_date,
  Document_Request.request_status,
  Document_Request.request_note,
  User.[last_name] & ", " & [first_name] AS fullname
FROM
  (
    Document_Request
    INNER JOIN Document ON Document_Request.document_id = Document.document_id
  )
  INNER JOIN [User] ON Document_Request.user_id = User.user_id
WHERE
  (
    (
      (
        Document_Request.request_status
      )= "Pending"
    )
  );
