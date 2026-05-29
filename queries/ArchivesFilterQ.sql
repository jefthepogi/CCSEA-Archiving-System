SELECT
  ArchivesSearchQ.document_id,
  ArchivesSearchQ.fullname,
  ArchivesSearchQ.filepath,
  ArchivesSearchQ.title,
  ArchivesSearchQ.upload_date,
  ArchivesSearchQ.upload_note
FROM
  ArchivesSearchQ
WHERE
  fullname LIKE '*Go*';
