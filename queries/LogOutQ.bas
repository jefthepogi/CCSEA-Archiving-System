dbMemo "SQL" ="UPDATE Session_Log SET Session_Log.logout_time = Now ()\015\012WHERE Session_Log"
    ".session_id = [TempVars]![SessionID];\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="Session_Log.logout_time"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="user_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Session_Log.user_id"
        dbLong "AggregateType" ="-1"
    End
End
