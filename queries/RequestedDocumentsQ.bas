Operation =1
Option =0
Having ="(((Document_Request.request_status)=\"Accepted\") And ((Document_Request.user_id"
    ")=TempVars!UserID))"
Begin InputTables
    Name ="Document_Request"
    Name ="Document"
    Name ="User"
    Name ="UserInfoQ"
End
Begin OutputColumns
    Expression ="Document_Request.request_status"
    Expression ="Document.document_id"
    Expression ="Document.filepath"
    Expression ="Document.title"
    Expression ="Document.upload_date"
    Expression ="Document.upload_note"
    Alias ="MaxOfrequest_date"
    Expression ="Max(Document_Request.request_date)"
    Expression ="Document_Request.user_id"
    Alias ="fullname"
    Expression ="[UserInfoQ].[last_name] & \", \" & [UserInfoQ].[first_name]"
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
    LeftTable ="Document"
    RightTable ="UserInfoQ"
    Expression ="Document.user_id = UserInfoQ.user_id"
    Flag =1
End
Begin Groups
    Expression ="Document_Request.request_status"
    GroupLevel =0
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
    Expression ="Document_Request.user_id"
    GroupLevel =0
    Expression ="[UserInfoQ].[last_name] & \", \" & [UserInfoQ].[first_name]"
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
        dbText "Name" ="Document_Request.request_status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document_Request.user_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxOfrequest_date"
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
    Bottom =126
    Left =355
    Top =0
    ColumnsShown =543
    Begin
        Left =-114
        Top =28
        Right =30
        Bottom =172
        Top =0
        Name ="Document_Request"
        Name =""
    End
    Begin
        Left =86
        Top =31
        Right =230
        Bottom =175
        Top =0
        Name ="Document"
        Name =""
    End
    Begin
        Left =-319
        Top =30
        Right =-175
        Bottom =174
        Top =0
        Name ="User"
        Name =""
    End
    Begin
        Left =275
        Top =35
        Right =419
        Bottom =175
        Top =0
        Name ="UserInfoQ"
        Name =""
    End
End
