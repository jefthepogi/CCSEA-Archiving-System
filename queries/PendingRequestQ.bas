Operation =1
Option =0
Where ="(((RequestListQ.request_status)=\"Pending\") And ((Document_Request.user_id)=Tem"
    "pVars!UserID))"
Begin InputTables
    Name ="RequestListQ"
    Name ="Document_Request"
End
Begin OutputColumns
    Expression ="RequestListQ.request_id"
    Expression ="RequestListQ.title"
    Expression ="RequestListQ.request_date"
    Expression ="RequestListQ.request_status"
    Expression ="Document_Request.user_id"
End
Begin Joins
    LeftTable ="RequestListQ"
    RightTable ="Document_Request"
    Expression ="RequestListQ.request_id = Document_Request.request_id"
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
        dbText "Name" ="RequestListQ.request_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RequestListQ.request_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RequestListQ.title"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RequestListQ.request_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="requester_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document_Request.user_id"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =488
    Bottom =543
    Left =-1
    Top =-1
    Right =472
    Bottom =230
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =202
        Top =50
        Right =346
        Bottom =194
        Top =0
        Name ="RequestListQ"
        Name =""
    End
    Begin
        Left =16
        Top =45
        Right =160
        Bottom =189
        Top =0
        Name ="Document_Request"
        Name =""
    End
End
