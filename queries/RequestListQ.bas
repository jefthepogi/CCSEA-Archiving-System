Operation =1
Option =0
Where ="(((Document_Request.request_status)=\"Pending\"))"
Begin InputTables
    Name ="Document_Request"
    Name ="Document"
    Name ="User"
End
Begin OutputColumns
    Expression ="Document_Request.request_id"
    Expression ="Document.title"
    Expression ="Document.filepath"
    Expression ="Document_Request.request_date"
    Expression ="Document_Request.request_status"
    Expression ="Document_Request.request_note"
    Alias ="fullname"
    Expression ="User.[last_name] & \", \" & [first_name]"
End
Begin Joins
    LeftTable ="Document_Request"
    RightTable ="Document"
    Expression ="Document_Request.document_id = Document.document_id"
    Flag =1
    LeftTable ="Document_Request"
    RightTable ="User"
    Expression ="Document_Request.user_id = User.user_id"
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
        dbText "Name" ="Document.title"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document_Request.request_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document_Request.request_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.filepath"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document_Request.request_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document_Request.request_note"
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
    Right =758
    Bottom =543
    Left =-1
    Top =-1
    Right =742
    Bottom =204
    Left =137
    Top =0
    ColumnsShown =539
    Begin
        Left =302
        Top =23
        Right =446
        Bottom =167
        Top =0
        Name ="Document_Request"
        Name =""
    End
    Begin
        Left =494
        Top =25
        Right =638
        Bottom =169
        Top =0
        Name ="Document"
        Name =""
    End
    Begin
        Left =110
        Top =20
        Right =254
        Bottom =164
        Top =0
        Name ="User"
        Name =""
    End
End
