Operation =1
Option =0
Begin InputTables
    Name ="Document"
    Name ="User"
End
Begin OutputColumns
    Expression ="Document.document_id"
    Alias ="fullname"
    Expression ="[last_name] & \", \" & [first_name]"
    Expression ="Document.filepath"
    Expression ="Document.title"
    Expression ="Document.upload_date"
    Expression ="Document.upload_note"
    Expression ="User.last_name"
    Expression ="User.first_name"
End
Begin Joins
    LeftTable ="Document"
    RightTable ="User"
    Expression ="Document.user_id = User.user_id"
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
        dbText "Name" ="Document.upload_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.title"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.filepath"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.first_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.last_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.document_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="fullname"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.upload_note"
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
    Bottom =133
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =146
        Top =12
        Right =290
        Bottom =156
        Top =0
        Name ="Document"
        Name =""
    End
    Begin
        Left =338
        Top =12
        Right =482
        Bottom =156
        Top =0
        Name ="User"
        Name =""
    End
End
