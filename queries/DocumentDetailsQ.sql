SELECT
  Document.document_id,
  Document.filepath,
  Document.title,
  Document.upload_date,
  Document.upload_note,
  User.[last_name] & ", " & [first_name] AS fullname
FROM
  [User]
  INNER JOIN Document ON User.user_id = Document.user_id
GROUP BY
  Document.document_id,
  Document.filepath,
  Document.title,
  Document.upload_date,
  Document.upload_note,
  User.[last_name] & ", " & [first_name];
