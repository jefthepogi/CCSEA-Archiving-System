SELECT
  User.user_id,
  User.first_name,
  User.last_name,
  Session_Log.login_time,
  Session_Log.logout_time
FROM
  [User]
  INNER JOIN Session_Log ON User.user_id = Session_Log.user_id;
