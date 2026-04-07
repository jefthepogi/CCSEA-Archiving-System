Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9638
    DatasheetFontHeight =11
    ItemSuffix =67
    Right =10770
    Bottom =7890
    RecSrcDt = Begin
        0x982495640085e640
    End
    DatasheetFontName ="Inter"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
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
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            SizeMode =3
            PictureAlignment =2
            Width =1701
            Height =1701
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
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
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin NavigationControl
            BorderWidth =1
            BorderLineStyle =0
            ForeColor =2304040
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin NavigationButton
            Width =283
            Height =283
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            HoverThemeColorIndex =2
            HoverTint =20.0
            PressedThemeColorIndex =2
            PressedTint =60.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
            BackThemeColorIndex =1
            OldBorderStyle =0
            BorderLineStyle =0
            BorderThemeColorIndex =3
            BorderShade =90.0
            ThemeFontIndex =1
            TextFontFamily =0
            FontName ="Inter"
            FontWeight =400
            FontSize =11
            ForeThemeColorIndex =0
            ForeTint =75.0
        End
        Begin FormHeader
            CanGrow = NotDefault
            Height =566
            BackColor =5066944
            Name ="FormHeader"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Image
                    PictureType =2
                    Left =8957
                    Width =681
                    Height =566
                    Name ="Image34"
                    Picture ="CCSEA-SC"
                    HorizontalAnchor =1

                    LayoutCachedLeft =8957
                    LayoutCachedWidth =9638
                    LayoutCachedHeight =566
                    TabIndex =1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =340
                    Top =56
                    Width =7468
                    Height =390
                    FontSize =14
                    FontWeight =700
                    BackColor =5066944
                    Name ="Text36"
                    ControlSource ="=\"Welcome, \" & Left([TempVars]![Username],20) & IIf(Len([TempVars]![Username])"
                        ">20,\"...\",\"\")"

                    LayoutCachedLeft =340
                    LayoutCachedTop =56
                    LayoutCachedWidth =7808
                    LayoutCachedHeight =446
                    BackThemeColorIndex =-1
                    ThemeFontIndex =0
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =5102
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin NavigationControl
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =1770
                    Top =330
                    Width =7245
                    Height =390
                    Name ="NavigationControl0"
                    GroupTable =2
                    LeftPadding =0
                    TopPadding =0
                    RightPadding =0
                    GridlineStyleBottom =1
                    GridlineWidthBottom =4
                    HorizontalAnchor =2

                    LayoutCachedLeft =1770
                    LayoutCachedTop =330
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =720
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =2
                    NavigationSubform ="NavigationSubform"
                    NavigationChild ="NavigationControl5"
                    GridlineThemeColorIndex =4
                    GridlineShade =100.0
                    GroupTable =2
                    Begin
                        Begin NavigationButton
                            OverlapFlags =87
                            Left =1770
                            Top =330
                            Width =1650
                            Height =390
                            Name ="NavigationButton55"
                            Caption ="ManageUsersF"
                            GroupTable =1
                            LeftPadding =0
                            TopPadding =0
                            BottomPadding =0

                            LayoutCachedLeft =1770
                            LayoutCachedTop =330
                            LayoutCachedWidth =3420
                            LayoutCachedHeight =720
                            LayoutGroup =1
                            NavigationTargetName ="ManageUsersF"
                            NavigationTargetType =32768
                            Shape =3
                            HoverThemeColorIndex =4
                            HoverTint =100.0
                            PressedThemeColorIndex =4
                            PressedTint =100.0
                            HoverForeThemeColorIndex =1
                            HoverForeTint =100.0
                            PressedForeThemeColorIndex =1
                            PressedForeTint =100.0
                            BackThemeColorIndex =4
                            BackTint =40.0
                            BorderThemeColorIndex =4
                            BorderShade =100.0
                            GroupTable =1
                            Overlaps =1
                        End
                        Begin NavigationButton
                            OverlapFlags =87
                            Left =3450
                            Top =330
                            Width =1440
                            Height =390
                            TabIndex =1
                            Name ="NavigationButton1"
                            Caption ="[Add New]"
                            ControlTipText ="Add a form or report by dropping it here"
                            GroupTable =1
                            LeftPadding =0
                            TopPadding =0
                            BottomPadding =0

                            LayoutCachedLeft =3450
                            LayoutCachedTop =330
                            LayoutCachedWidth =4890
                            LayoutCachedHeight =720
                            ColumnStart =1
                            ColumnEnd =1
                            LayoutGroup =1
                            DefaultInsertButton =1
                            Shape =3
                            HoverThemeColorIndex =4
                            HoverTint =100.0
                            PressedThemeColorIndex =4
                            PressedTint =100.0
                            HoverForeThemeColorIndex =1
                            HoverForeTint =100.0
                            PressedForeThemeColorIndex =1
                            PressedForeTint =100.0
                            BackThemeColorIndex =4
                            BackTint =40.0
                            BorderThemeColorIndex =4
                            BorderShade =100.0
                            GroupTable =1
                            Overlaps =1
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =1770
                    Top =780
                    Width =7245
                    Height =3915
                    TabIndex =2
                    Name ="NavigationSubform"
                    GroupTable =2
                    LeftPadding =0
                    TopPadding =0
                    RightPadding =0
                    BottomPadding =0
                    HorizontalAnchor =2
                    VerticalAnchor =2

                    LayoutCachedLeft =1770
                    LayoutCachedTop =780
                    LayoutCachedWidth =9015
                    LayoutCachedHeight =4695
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =2
                    GroupTable =2
                End
                Begin NavigationControl
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =330
                    Top =780
                    Width =1440
                    Height =3915
                    TabIndex =1
                    Name ="NavigationControl5"
                    GroupTable =2
                    LeftPadding =0
                    TopPadding =0
                    RightPadding =0
                    BottomPadding =0
                    VerticalAnchor =2

                    LayoutCachedLeft =330
                    LayoutCachedTop =780
                    LayoutCachedWidth =1770
                    LayoutCachedHeight =4695
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =2
                    NavigationParent ="NavigationControl0"
                    Span =1
                    GroupTable =2
                    Begin
                        Begin NavigationButton
                            OverlapFlags =87
                            Left =330
                            Top =780
                            Width =1440
                            Height =390
                            Name ="NavigationButton8"
                            Caption ="[Add New]"
                            ControlTipText ="Add a form or report by dropping it here"
                            GroupTable =15
                            LeftPadding =0
                            TopPadding =0
                            RightPadding =0

                            LayoutCachedLeft =330
                            LayoutCachedTop =780
                            LayoutCachedWidth =1770
                            LayoutCachedHeight =1170
                            LayoutGroup =4
                            DefaultInsertButton =1
                            HoverThemeColorIndex =4
                            HoverTint =40.0
                            PressedThemeColorIndex =4
                            PressedTint =40.0
                            BackThemeColorIndex =4
                            BorderThemeColorIndex =4
                            BorderShade =100.0
                            GroupTable =15
                            ForeThemeColorIndex =1
                            ForeTint =100.0
                            Overlaps =1
                        End
                    End
                End
                Begin EmptyCell
                    Left =330
                    Top =330
                    Height =390
                    Name ="EmptyCell6"
                    GroupTable =2
                    LeftPadding =0
                    TopPadding =0
                    RightPadding =0
                    LayoutCachedLeft =330
                    LayoutCachedTop =330
                    LayoutCachedWidth =1770
                    LayoutCachedHeight =720
                    LayoutGroup =2
                    GroupTable =2
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
