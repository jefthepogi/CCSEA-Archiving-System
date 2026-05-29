SELECT
  Document_Request.request_status,
  Document.document_id,
  Document.filepath,
  Document.title,
  Document.upload_date,
  Document.upload_note,
  Max(Document_Request.request_date) AS MaxOfrequest_date,
  Document_Request.user_id,
  [UserInfoQ].[last_name] & ", " & [UserInfoQ].[first_name] AS fullname
FROM
  (
    (
      Document_Request
      INNER JOIN Document ON Document_Request.document_id = Document.document_id
    )
    INNER JOIN [User] ON Document_Request.user_id = User.user_id
  )
  INNER JOIN UserInfoQ ON Document.user_id = UserInfoQ.user_id
GROUP BY
  Document_Request.request_status,
  Document.document_id,
  Document.filepath,
  Document.title,
  Document.upload_date,
  Document.upload_note,
  Document_Request.user_id,
  [UserInfoQ].[last_name] & ", " & [UserInfoQ].[first_name]
HAVING
  (
    (
      (
        Document_Request.request_status
      )= "Accepted"
    )
    And (
      (Document_Request.user_id)= TempVars!UserID
    )
  );
