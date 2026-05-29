SELECT
  User.user_id,
  Max(Session_Log.session_id) AS MaxOfsession_id
FROM
  Session_Log
  INNER JOIN [User] ON Session_Log.user_id = User.user_id
GROUP BY
  User.user_id;
