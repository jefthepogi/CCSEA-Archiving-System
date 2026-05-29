SELECT
  Document.document_id,
  [last_name] & ", " & [first_name] AS fullname,
  Document.filepath,
  Document.title,
  Document.upload_date,
  Document.upload_note,
  User.last_name,
  User.first_name
FROM
  Document
  INNER JOIN [User] ON Document.user_id = User.user_id;
