Version =20
VersionRequired =20
Begin Form
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9066
    DatasheetFontHeight =11
    ItemSuffix =19
    Right =19860
    Bottom =7890
    RecSrcDt = Begin
        0x6127bbd4bd85e640
    End
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Inter"
    OnLoad ="[Event Procedure]"
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
        Begin NavigationControl
            BorderWidth =1
            BorderLineStyle =0
            ForeColor =2304040
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            CanGrow = NotDefault
            Height =6000
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Tab
                    OverlapFlags =93
                    Left =1680
                    Width =6975
                    Height =5685
                    TabFixedWidth =2268
                    Name ="TabCtl0"
                    OnChange ="[Event Procedure]"
                    HorizontalAnchor =2
                    VerticalAnchor =2

                    LayoutCachedLeft =1680
                    LayoutCachedWidth =8655
                    LayoutCachedHeight =5685
                    BackColor =16777215
                    BackShade =100.0
                    OldBorderStyle =0
                    HoverThemeColorIndex =4
                    PressedThemeColorIndex =4
                    HoverForeThemeColorIndex =5
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =1
                    PressedForeTint =100.0
                    ForeColor =0
                    ForeTint =100.0
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =1755
                            Top =465
                            Width =6830
                            Height =5145
                            Name ="Page1"
                            Caption ="User Management"
                            LayoutCachedLeft =1755
                            LayoutCachedTop =465
                            LayoutCachedWidth =8585
                            LayoutCachedHeight =5610
                            Begin
                                Begin Subform
                                    OverlapFlags =215
                                    OldBorderStyle =0
                                    Left =1781
                                    Top =533
                                    Width =6804
                                    Height =4536
                                    Name ="SF1"
                                    SourceObject ="Report.UserInfoR"
                                    HorizontalAnchor =2
                                    VerticalAnchor =2

                                    LayoutCachedLeft =1781
                                    LayoutCachedTop =533
                                    LayoutCachedWidth =8585
                                    LayoutCachedHeight =5069
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =1755
                            Top =465
                            Width =6831
                            Height =5145
                            Name ="Page2"
                            Caption ="Handle Requests"
                            LayoutCachedLeft =1755
                            LayoutCachedTop =465
                            LayoutCachedWidth =8586
                            LayoutCachedHeight =5610
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =1782
                                    Top =533
                                    Width =6804
                                    Height =4536
                                    Name ="SF2"
                                    SourceObject ="Report.RequestsHandlingR"
                                    HorizontalAnchor =2

                                    LayoutCachedLeft =1782
                                    LayoutCachedTop =533
                                    LayoutCachedWidth =8586
                                    LayoutCachedHeight =5069
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =1755
                            Top =465
                            Width =6830
                            Height =5145
                            Name ="Page3"
                            Caption ="Manage Documents"
                            LayoutCachedLeft =1755
                            LayoutCachedTop =465
                            LayoutCachedWidth =8585
                            LayoutCachedHeight =5610
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =1781
                                    Top =533
                                    Width =6804
                                    Height =4536
                                    Name ="SF3"
                                    HorizontalAnchor =2

                                    LayoutCachedLeft =1781
                                    LayoutCachedTop =533
                                    LayoutCachedWidth =8585
                                    LayoutCachedHeight =5069
                                End
                            End
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    OldBorderStyle =0
                    Width =1692
                    Height =5665
                    TabIndex =1
                    Name ="SideMenuSF"
                    SourceObject ="Form.MainMenuF"
                    VerticalAnchor =2

                    LayoutCachedWidth =1692
                    LayoutCachedHeight =5665
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Width =750
                            Height =300
                            Name ="Label4"
                            Caption ="Child3:"
                            LayoutCachedWidth =750
                            LayoutCachedHeight =300
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "NavigationF.cls"
