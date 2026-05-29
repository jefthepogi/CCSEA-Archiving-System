Operation =1
Option =0
Begin InputTables
    Name ="Document"
    Name ="User"
End
Begin OutputColumns
    Expression ="Document.document_id"
    Expression ="Document.filepath"
    Expression ="Document.title"
    Expression ="Document.upload_date"
    Expression ="Document.upload_note"
    Alias ="fullname"
    Expression ="User.[last_name] & \", \" & [first_name]"
End
Begin Joins
    LeftTable ="User"
    RightTable ="Document"
    Expression ="User.user_id = Document.user_id"
    Flag =1
End
Begin Groups
    Expression ="Document.document_id"
    GroupLevel =0
    Expression ="Document.filepath"
    GroupLevel =0
    Expression ="Document.title"
    GroupLevel =0
    Expression ="Document.upload_date"
    GroupLevel =0
    Expression ="Document.upload_note"
    GroupLevel =0
    Expression ="User.[last_name] & \", \" & [first_name]"
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
        dbText "Name" ="Document.upload_note"
        dbLong "AggregateType" ="-1"
    End
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
        dbText "Name" ="Document.document_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="fullname"
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
    Bottom =143
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =311
        Top =14
        Right =455
        Bottom =169
        Top =0
        Name ="Document"
        Name =""
    End
    Begin
        Left =102
        Top =23
        Right =246
        Bottom =167
        Top =0
        Name ="User"
        Name =""
    End
End
