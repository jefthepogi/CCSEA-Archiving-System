Operation =1
Option =0
Begin InputTables
    Name ="User"
    Name ="Session_Log"
    Name ="AggregrateRecentActivityQ"
    Name ="Role"
End
Begin OutputColumns
    Expression ="User.user_id"
    Expression ="User.first_name"
    Expression ="User.last_name"
    Expression ="Session_Log.login_time"
    Expression ="Session_Log.logout_time"
    Expression ="Role.role_name"
End
Begin Joins
    LeftTable ="User"
    RightTable ="Session_Log"
    Expression ="User.user_id = Session_Log.user_id"
    Flag =1
    LeftTable ="Session_Log"
    RightTable ="AggregrateRecentActivityQ"
    Expression ="Session_Log.session_id = AggregrateRecentActivityQ.MaxOfsession_id"
    Flag =1
    LeftTable ="Role"
    RightTable ="User"
    Expression ="Role.role_id = User.role_id"
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
        dbText "Name" ="User.last_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.first_name"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="User.user_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Role.role_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Session_Log.login_time"
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =752
    Bottom =543
    Left =-1
    Top =-1
    Right =736
    Bottom =243
    Left =190
    Top =96
    ColumnsShown =539
    Begin
        Left =33
        Top =-57
        Right =177
        Bottom =87
        Top =0
        Name ="User"
        Name =""
    End
    Begin
        Left =242
        Top =-107
        Right =386
        Bottom =37
        Top =0
        Name ="Session_Log"
        Name =""
    End
    Begin
        Left =447
        Top =-84
        Right =591
        Bottom =60
        Top =0
        Name ="AggregrateRecentActivityQ"
        Name =""
    End
    Begin
        Left =254
        Top =72
        Right =398
        Bottom =216
        Top =0
        Name ="Role"
        Name =""
    End
End
