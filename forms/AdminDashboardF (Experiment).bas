Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9637
    DatasheetFontHeight =11
    ItemSuffix =13
    Right =10770
    Bottom =7890
    RecSrcDt = Begin
        0x7c403dbcf384e640
    End
    DatasheetFontName ="Inter"
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
        Begin Tab
            TextFontFamily =0
            Width =5103
            Height =3402
            FontSize =11
            FontName ="Inter"
            ThemeFontIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =3
            BackThemeColorIndex =1
            BackShade =85.0
            BorderLineStyle =0
            BorderThemeColorIndex =2
            BorderTint =60.0
            HoverThemeColorIndex =1
            PressedThemeColorIndex =1
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
            ForeThemeColorIndex =0
            ForeTint =75.0
        End
        Begin Page
            Width =1701
            Height =1701
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =1203
            BackColor =5066944
            Name ="FormHeader"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Image
                    PictureType =2
                    Left =7766
                    Width =1869
                    Height =1203
                    Name ="Image4"
                    Picture ="CCSEA-SC"
                    HorizontalAnchor =1

                    LayoutCachedLeft =7766
                    LayoutCachedWidth =9635
                    LayoutCachedHeight =1203
                    TabIndex =1
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    TextFontFamily =2
                    IMESentenceMode =3
                    Left =510
                    Top =283
                    Width =3232
                    Height =555
                    BackColor =5066944
                    Name ="UserTitle"
                    ControlSource ="=[TempVars]![Username]"
                    DefaultValue ="\"Guest\""
                    FontName ="Aesthetic Moment"

                    LayoutCachedLeft =510
                    LayoutCachedTop =283
                    LayoutCachedWidth =3742
                    LayoutCachedHeight =838
                    BackThemeColorIndex =-1
                    ThemeFontIndex =-1
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =6236
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Tab
                    OverlapFlags =85
                    Left =570
                    Top =450
                    Width =8010
                    Height =5175
                    Name ="TabCtl0"
                    HorizontalAnchor =2
                    VerticalAnchor =2

                    LayoutCachedLeft =570
                    LayoutCachedTop =450
                    LayoutCachedWidth =8580
                    LayoutCachedHeight =5625
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =645
                            Top =915
                            Width =7862
                            Height =4637
                            Name ="Manage Users"
                            EventProcPrefix ="Manage_Users"
                            LayoutCachedLeft =645
                            LayoutCachedTop =915
                            LayoutCachedWidth =8507
                            LayoutCachedHeight =5552
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =645
                            Top =915
                            Width =7860
                            Height =4635
                            Name ="Pending Requests"
                            EventProcPrefix ="Pending_Requests"
                            LayoutCachedLeft =645
                            LayoutCachedTop =915
                            LayoutCachedWidth =8505
                            LayoutCachedHeight =5550
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =645
                            Top =915
                            Width =7860
                            Height =4635
                            Name ="Page3"
                            LayoutCachedLeft =645
                            LayoutCachedTop =915
                            LayoutCachedWidth =8505
                            LayoutCachedHeight =5550
                        End
                    End
                End
            End
        End
        Begin FormFooter
            Height =566
            Name ="FormFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
