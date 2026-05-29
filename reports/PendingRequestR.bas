Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    TabularFamily =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10318
    DatasheetFontHeight =11
    ItemSuffix =23
    RecSrcDt = Begin
        0xb8a7be061886e640
    End
    RecordSource ="PendingRequestQ"
    Caption ="PendingRequestR"
    DatasheetFontName ="Inter"
    FilterOnLoad =0
    FitToPage =1
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =0
            FontSize =11
            FontName ="Inter"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =60.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Inter"
            AsianLineBreak =1
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin BreakLevel
            ControlSource ="request_date"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1133
            Name ="ReportHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =2160
                    Top =225
                    Width =945
                    Height =540
                    FontSize =14
                    TopMargin =57
                    Name ="Text14"
                    ControlSource ="=\"(\" & Count(*) & \")\""
                    GroupTable =1

                    LayoutCachedLeft =2160
                    LayoutCachedTop =225
                    LayoutCachedWidth =3105
                    LayoutCachedHeight =765
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                    Begin
                        Begin Label
                            Left =225
                            Top =225
                            Width =1875
                            Height =540
                            FontSize =20
                            Name ="Label8"
                            Caption ="Pendings "
                            GroupTable =1
                            LayoutCachedLeft =225
                            LayoutCachedTop =225
                            LayoutCachedWidth =2100
                            LayoutCachedHeight =765
                            LayoutGroup =1
                            GroupTable =1
                        End
                    End
                End
            End
        End
        Begin PageHeader
            Height =0
            Name ="PageHeaderSection"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =1530
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =566
                    Top =226
                    Width =4995
                    Height =288
                    ForeColor =0
                    Name ="requestDateBox"
                    ControlSource ="=IIf(IsNull([request_date]),Null,\"<b>Date Requested: </b>\" & [request_date])"
                    TextFormat =1
                    ShowDatePicker =1

                    LayoutCachedLeft =566
                    LayoutCachedTop =226
                    LayoutCachedWidth =5561
                    LayoutCachedHeight =514
                    ForeTint =100.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =566
                    Top =625
                    Width =3231
                    Height =288
                    TabIndex =1
                    Name ="requestIDBox"
                    ControlSource ="=IIf(IsNull([request_date]),Null,\"<b>Request ID: </b>\" & [request_id])"
                    TextFormat =1

                    LayoutCachedLeft =566
                    LayoutCachedTop =625
                    LayoutCachedWidth =3797
                    LayoutCachedHeight =913
                End
                Begin TextBox
                    Enabled = NotDefault
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    TextAlign =1
                    IMESentenceMode =3
                    Left =566
                    Top =1024
                    Width =5835
                    Height =288
                    TabIndex =2
                    Name ="titleBox"
                    ControlSource ="=\"<b>Filename: </b>\"+[title]"
                    TextFormat =1

                    LayoutCachedLeft =566
                    LayoutCachedTop =1024
                    LayoutCachedWidth =6401
                    LayoutCachedHeight =1312
                End
                Begin Line
                    Left =113
                    Top =1417
                    Width =9988
                    Height =15
                    Name ="Line22"
                    LayoutCachedLeft =113
                    LayoutCachedTop =1417
                    LayoutCachedWidth =10101
                    LayoutCachedHeight =1432
                End
            End
        End
        Begin PageFooter
            Height =543
            Name ="PageFooterSection"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    IMESentenceMode =3
                    Left =5159
                    Top =170
                    Width =5040
                    Height =315
                    Name ="Text10"
                    ControlSource ="=\"Page \" & [Page] & \" of \" & [Pages]"

                    LayoutCachedLeft =5159
                    LayoutCachedTop =170
                    LayoutCachedWidth =10199
                    LayoutCachedHeight =485
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =56
            Name ="ReportFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
