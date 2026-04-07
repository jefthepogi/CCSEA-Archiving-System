Operation =1
Option =0
Begin InputTables
    Name ="User"
    Name ="Session_Log"
End
Begin OutputColumns
    Expression ="User.user_id"
    Expression ="User.first_name"
    Expression ="User.last_name"
    Expression ="Session_Log.login_time"
    Expression ="Session_Log.logout_time"
End
Begin Joins
    LeftTable ="User"
    RightTable ="Session_Log"
    Expression ="User.user_id = Session_Log.user_id"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Session_Log.logout_time"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Session_Log.login_time"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.last_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.first_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="username"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.username"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.user_id"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =465
    Bottom =543
    Left =-1
    Top =-1
    Right =449
    Bottom =298
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =26
        Top =49
        Right =170
        Bottom =193
        Top =0
        Name ="User"
        Name =""
    End
    Begin
        Left =214
        Top =54
        Right =358
        Bottom =198
        Top =0
        Name ="Session_Log"
        Name =""
    End
End
