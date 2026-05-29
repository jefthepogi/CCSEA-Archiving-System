SELECT
  RequestListQ.request_id,
  RequestListQ.title,
  RequestListQ.request_date,
  RequestListQ.request_status,
  Document_Request.user_id
FROM
  RequestListQ
  INNER JOIN Document_Request ON RequestListQ.request_id = Document_Request.request_id
WHERE
  (
    (
      (RequestListQ.request_status)= "Pending"
    )
    And (
      (Document_Request.user_id)= TempVars!UserID
    )
  );
