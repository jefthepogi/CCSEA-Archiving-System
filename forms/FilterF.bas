Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =4138
    DatasheetFontHeight =11
    ItemSuffix =4
    Left =3315
    Top =3030
    Right =14340
    Bottom =10920
    RecSrcDt = Begin
        0xfd40ccf08c86e640
    End
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
        Begin ComboBox
            AddColon = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Inter"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =2834
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =215
                    IMESentenceMode =3
                    ListWidth =1440
                    Left =566
                    Top =736
                    Width =3171
                    Height =300
                    Name ="Combo0"
                    RowSourceType ="Value List"
                    RowSource ="\"Author\";\"Filename\";\"Note\""
                    ColumnWidths ="1440"
                    AllowValueListEdits =0

                    LayoutCachedLeft =566
                    LayoutCachedTop =736
                    LayoutCachedWidth =3737
                    LayoutCachedHeight =1036
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =566
                            Top =453
                            Width =1695
                            Height =300
                            Name ="Field to search:_Label"
                            Caption ="Field to search:"
                            EventProcPrefix ="Field_to_search__Label"
                            LayoutCachedLeft =566
                            LayoutCachedTop =453
                            LayoutCachedWidth =2261
                            LayoutCachedHeight =753
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1984
                    Top =2097
                    Width =951
                    Height =298
                    TabIndex =1
                    Name ="SaveBtn"
                    Caption ="Save"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =1984
                    LayoutCachedTop =2097
                    LayoutCachedWidth =2935
                    LayoutCachedHeight =2395
                    Shape =0
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3061
                    Top =2097
                    Width =951
                    Height =298
                    TabIndex =2
                    Name ="CancelBtn"
                    Caption ="Cancel"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3061
                    LayoutCachedTop =2097
                    LayoutCachedWidth =4012
                    LayoutCachedHeight =2395
                    Shape =0
                End
            End
        End
    End
End
CodeBehindForm
' See "FilterF.cls"
