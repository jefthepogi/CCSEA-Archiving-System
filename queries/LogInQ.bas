Operation =3
Name ="Session_Log"
Option =0
Begin InputTables
End
Begin OutputColumns
    Alias ="user_id"
    Name ="user_id"
    Expression ="[TempVars]![UserID]"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="username"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="user_id"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =435
    Bottom =543
    Left =-1
    Top =-1
    Right =419
    Bottom =298
    Left =0
    Top =0
    ColumnsShown =651
End
