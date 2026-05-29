Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =1757
    DatasheetFontHeight =11
    ItemSuffix =3
    Right =16920
    Bottom =7890
    RecSrcDt = Begin
        0xa9ec094f5f85e640
    End
    DatasheetFontName ="Inter"
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
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
        Begin CommandButton
            TextFontFamily =0
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Inter"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
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
        Begin Section
            CanGrow = NotDefault
            Height =5669
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =4
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =396
                    Top =4535
                    Width =969
                    Height =337
                    Name ="LogOutBtn"
                    Caption ="Log Out"
                    OnClick ="[Event Procedure]"
                    HorizontalAnchor =2
                    VerticalAnchor =1

                    LayoutCachedLeft =396
                    LayoutCachedTop =4535
                    LayoutCachedWidth =1365
                    LayoutCachedHeight =4872
                    Overlaps =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    CanGrow = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Left =56
                    Top =1984
                    Width =1633
                    Height =510
                    FontSize =8
                    FontWeight =700
                    TabIndex =1
                    TopMargin =58
                    BackColor =5066944
                    Name ="Text36"
                    ControlSource ="=Left([TempVars]![UserName],20) & IIf(Len([TempVars]![UserName])>20,\"...\",\"\""
                        ")"
                    DefaultValue ="\"Guest\""

                    LayoutCachedLeft =56
                    LayoutCachedTop =1984
                    LayoutCachedWidth =1689
                    LayoutCachedHeight =2494
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                End
                Begin Image
                    PictureType =2
                    Left =60
                    Top =690
                    Width =1587
                    Height =1272
                    Name ="Image1"
                    Picture ="CCSEA-SC"

                    LayoutCachedLeft =60
                    LayoutCachedTop =690
                    LayoutCachedWidth =1647
                    LayoutCachedHeight =1962
                    TabIndex =3
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    CanGrow = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    IMESentenceMode =3
                    Left =340
                    Top =2607
                    Width =1018
                    Height =330
                    FontSize =12
                    FontWeight =700
                    TabIndex =2
                    Name ="Text2"
                    ControlSource ="=Nz([TempVars]![UserRole],\"Guest\")"

                    LayoutCachedLeft =340
                    LayoutCachedTop =2607
                    LayoutCachedWidth =1358
                    LayoutCachedHeight =2937
                    BackThemeColorIndex =0
                    ThemeFontIndex =0
                    ForeThemeColorIndex =1
                    ForeTint =100.0
                    ForeShade =95.0
                End
            End
        End
    End
End
CodeBehindForm
' See "MainMenuF.cls"
