Operation =1
Option =0
Begin InputTables
    Name ="User"
End
Begin OutputColumns
    Expression ="User.user_id"
    Alias ="fullname"
    Expression ="User.[last_name] & \", \" & [first_name]"
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
        dbText "Name" ="fullname"
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
    Right =482
    Bottom =543
    Left =-1
    Top =-1
    Right =466
    Bottom =298
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =122
        Top =74
        Right =266
        Bottom =222
        Top =0
        Name ="User"
        Name =""
    End
End
