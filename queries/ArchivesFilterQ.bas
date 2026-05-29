Operation =1
Option =0
Where ="fullname LIKE '*Go*'"
Begin InputTables
    Name ="ArchivesSearchQ"
End
Begin OutputColumns
    Expression ="ArchivesSearchQ.document_id"
    Expression ="ArchivesSearchQ.fullname"
    Expression ="ArchivesSearchQ.filepath"
    Expression ="ArchivesSearchQ.title"
    Expression ="ArchivesSearchQ.upload_date"
    Expression ="ArchivesSearchQ.upload_note"
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
        dbText "Name" ="ArchivesSearchQ.document_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArchivesSearchQ.fullname"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArchivesSearchQ.filepath"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArchivesSearchQ.title"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.first_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.upload_note"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="fullname"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.document_id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="User.last_name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.filepath"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.title"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Document.upload_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArchivesSearchQ.upload_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ArchivesSearchQ.upload_note"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1145
    Bottom =543
    Left =-1
    Top =-1
    Right =1129
    Bottom =161
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =79
        Top =14
        Right =223
        Bottom =158
        Top =0
        Name ="ArchivesSearchQ"
        Name =""
    End
End
