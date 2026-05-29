Operation =1
Option =0
Begin InputTables
    Name ="Session_Log"
    Name ="User"
End
Begin OutputColumns
    Expression ="User.user_id"
    Alias ="MaxOfsession_id"
    Expression ="Max(Session_Log.session_id)"
End
Begin Joins
    LeftTable ="Session_Log"
    RightTable ="User"
    Expression ="Session_Log.user_id = User.user_id"
    Flag =1
End
Begin Groups
    Expression ="User.user_id"
    GroupLevel =0
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
        dbText "Name" ="MaxOfsession_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Session_Log.session_id"
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
    Right =457
    Bottom =543
    Left =-1
    Top =-1
    Right =441
    Bottom =298
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =291
        Top =32
        Right =435
        Bottom =160
        Top =0
        Name ="Session_Log"
        Name =""
    End
    Begin
        Left =112
        Top =34
        Right =256
        Bottom =178
        Top =0
        Name ="User"
        Name =""
    End
End
