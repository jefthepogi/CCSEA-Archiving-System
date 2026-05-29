UPDATE
  Session_Log
SET
  Session_Log.logout_time = Now ()
WHERE
  Session_Log.session_id = [TempVars]![SessionID];
