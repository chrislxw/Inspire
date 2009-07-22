object ciRichViewEditorFrame: TciRichViewEditorFrame
  Left = 0
  Top = 0
  Width = 839
  Height = 487
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 839
    Height = 26
    AllowDrag = False
    object tbRVFormat: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #26684#24335
      DockPos = 3
      Images = RVImageList
      Stretch = True
      TabOrder = 0
      object tbtnFont: TTBXItem
        Action = rvFontEx
      end
      object TBControlItem1: TTBControlItem
        Control = RVFont
      end
      object TBControlItem2: TTBControlItem
        Control = RVFontSize
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object tbtnFontBold: TTBXItem
        Action = rvFontBold
      end
      object tbtnFontItalic: TTBXItem
        Action = rvFontItalic
      end
      object tbtnFontUnderline: TTBXItem
        Action = rvFontUnderline
      end
      object tbtnFontStrikeout: TTBXItem
        Action = rvFontStrikeout
      end
      object tbtnFontColor: TTBXItem
        Action = rvFontColor
      end
      object tbtnFontBackColor: TTBXItem
        Action = rvFontBackColor
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object tbtnParaAlignJustify: TTBXItem
        Action = rvParaAlignJustify
        GroupIndex = 101
      end
      object tbtnParaAlignLeft: TTBXItem
        Action = rvParaAlignLeft
        GroupIndex = 101
      end
      object tbtnParaAlignCenter: TTBXItem
        Action = rvParaAlignCenter
        GroupIndex = 101
      end
      object tbtnParaAlignRight: TTBXItem
        Action = rvParaAlignRight
        GroupIndex = 101
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object tbtnParaIndentInc: TTBXItem
        Action = rvParaIndentInc
      end
      object tbtnParaIndentDec: TTBXItem
        Action = rvParaIndentDec
      end
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object miInsert: TTBXSubmenuItem
        Caption = #25554#20837
        ImageIndex = 29
        Options = [tboDropdownArrow]
        object TBXItem2: TTBXItem
          Action = rvInsertHLine
        end
        object TBXItem3: TTBXItem
          Action = rvInsertHyperlink
        end
        object TBXItem4: TTBXItem
          Action = rvInsertPicture
        end
        object TBXItem5: TTBXItem
          Action = rvInsertSymbol
        end
      end
      object tbtnParaList: TTBXItem
        Action = rvParaList
        ImageIndex = 39
      end
      object tbtnFontSubscript: TTBXItem
        Action = rvActionSubscript1
      end
      object tbtnFontSuperscript: TTBXItem
        Action = rvActionSuperscript1
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtnEditUndo: TTBXItem
        Action = rvEditUndo
      end
      object tbtnEditRedo: TTBXItem
        Action = rvEditRedo
      end
      object TBXItem1: TTBXItem
        Action = actWordWrap
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object miInsertTable: TTBXSubmenuItem
        Action = rvTableInsertTable
        DropdownCombo = True
        Options = [tboDropdownArrow]
        OnPopup = miInsertTablePopup
      end
      object tbtnTableMergeCells: TTBXItem
        Action = rvTableMergeCells
      end
      object tbtnTableSplitCells: TTBXItem
        Action = rvTableSplitCells
      end
      object tbtnTableProperties: TTBXItem
        Action = rvTableProperties
      end
      object TBXSeparatorItem7: TTBXSeparatorItem
      end
      object tbtnTableInsertRC: TTBXSubmenuItem
        Caption = #25554#20837#34892'/'#21015
        ImageIndex = 31
        Options = [tboDropdownArrow]
        object tbtnTableInsertRowsBelow: TTBXItem
          Action = rvTableInsertRowsBelow
        end
        object tbtnTableInsertRowsAbove: TTBXItem
          Action = rvTableInsertRowsAbove
        end
        object tbtnTableInsertColLeft: TTBXItem
          Action = rvTableInsertColLeft
        end
        object tbtnTableInsertColRight: TTBXItem
          Action = rvTableInsertColRight
        end
      end
      object TBXSubmenuItem2: TTBXSubmenuItem
        Caption = #21024#38500
        ImageIndex = 63
        Options = [tboDropdownArrow]
        object tbtnTableDeleteRows: TTBXItem
          Action = rvTableDeleteRows
        end
        object tbtnTableDeleteCols: TTBXItem
          Action = rvTableDeleteCols
        end
      end
      object RVFont: TmbTBXFontCombo
        Left = 23
        Top = 0
        Width = 120
        Height = 22
        Style = csOwnerDrawFixed
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        DropDownCount = 15
        ItemHeight = 18
        TabOrder = 0
        OnClick = RVFontClick
        OnDropDown = RVFontDropDown
        PreviewFontSize = 12
        Selected = #23435#20307
        DropDownWidth = 200
      end
      object RVFontSize: TmbTBXComboBox
        Left = 143
        Top = 1
        Width = 50
        Height = 20
        DropDownCount = 20
        ItemHeight = 12
        TabOrder = 1
        Text = '9'
        OnClick = RVFontSizeClick
        OnKeyPress = RVFontSizeKeyPress
        Items.Strings = (
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '14'
          '16'
          '18'
          '20'
          '22'
          '24'
          '26'
          '28'
          '36'
          '48'
          '72')
        ThemedSelect = True
      end
    end
  end
  object pRulerHorz: TPanel
    Left = 0
    Top = 26
    Width = 839
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 29
    object pCornerNW: TPanel
      Left = 0
      Top = 0
      Width = 25
      Height = 25
      Align = alLeft
      BevelOuter = bvNone
      Constraints.MaxHeight = 25
      Constraints.MaxWidth = 25
      Constraints.MinHeight = 25
      Constraints.MinWidth = 25
      TabOrder = 0
      Visible = False
    end
    object RVRulerHorz: TRVRuler
      Left = 25
      Top = 0
      Width = 814
      Height = 25
      Align = alClient
      BottomMargin = 0.200000000000000000
      DefaultTabWidth = 1.270000000000000000
      Flat = True
      LeftMargin = 0.300000000000000000
      MarginColor = clBtnShadow
      Options = [roUseDefaultPrinterWidth, roScaleRelativeToMargin]
      ParentBackground = False
      RightMargin = 0.300000000000000000
      RulerTexts.HintColumnMove = #31227#21160#34920#26684#21015
      RulerTexts.HintIndentFirst = 'First Indent'
      RulerTexts.HintIndentLeft = 'Left Indent'
      RulerTexts.HintIndentHanging = #24748#25346#32553#36827
      RulerTexts.HintIndentRight = 'Right Indent'
      RulerTexts.HintLevelDec = 'Decrease level'
      RulerTexts.HintLevelInc = 'Increase level'
      RulerTexts.HintMarginBottom = 'Bottom margin'
      RulerTexts.HintMarginLeft = 'Left margin'
      RulerTexts.HintMarginRight = 'Right margin'
      RulerTexts.HintMarginTop = 'Top margin'
      RulerTexts.HintRowMove = 'Resize table row'
      RulerTexts.HintTabCenter = 'Center aligned tab'
      RulerTexts.HintTabDecimal = 'Decimal aligned tab'
      RulerTexts.HintTabLeft = 'Left aligned tab'
      RulerTexts.HintTabRight = 'Right aligned tab'
      RulerTexts.HintTabWordBar = 'Word Bar aligned tab'
      RulerTexts.MenuTabCenter = 'Center align'
      RulerTexts.MenuTabDecimal = 'Decimal align'
      RulerTexts.MenuTabLeft = 'Left align'
      RulerTexts.MenuTabRight = 'Right align'
      RulerTexts.MenuTabWordBar = 'Word Bar align'
      Tabs = <>
      TabSettings.DeleteCursor = crDrag
      TopMargin = 0.200000000000000000
      RichViewEdit = RVE
      TableEditor.Active = True
      TableEditor.BackGroundColor = clBtnShadow
      TableEditor.CellIndex = 0
      TableEditor.Cells = <>
      TableEditor.ForeGroundColor = clBtnHighlight
      TableEditor.Options = [teoAdjustable, teoSnapToRuler]
      TableEditor.RowIndex = 0
      TableEditor.Rows = <>
      TableEditor.TableOffset = 0
    end
  end
  object RVRulerVert: TRVRuler
    Left = 0
    Top = 51
    Width = 25
    Height = 436
    Align = alLeft
    BottomMargin = 1.000000000000000000
    DefaultTabWidth = 1.270000000000000000
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Orientation = 900
    Font.Style = []
    IndentSettings.Options = []
    LeftMargin = 0.300000000000000000
    MarginColor = clBtnShadow
    MarginSettings.DragCursor = crSizeNS
    MaxTabs = 0
    Options = [roUseDefaultPrinterWidth, roScaleRelativeToMargin]
    ParentBackground = False
    ParentFont = False
    RightMargin = 0.300000000000000000
    RulerTexts.HintColumnMove = #31227#21160#34920#26684#21015
    RulerTexts.HintIndentFirst = 'First Indent'
    RulerTexts.HintIndentLeft = 'Left Indent'
    RulerTexts.HintIndentHanging = #24748#25346#32553#36827
    RulerTexts.HintIndentRight = 'Right Indent'
    RulerTexts.HintLevelDec = 'Decrease level'
    RulerTexts.HintLevelInc = 'Increase level'
    RulerTexts.HintMarginBottom = 'Bottom margin'
    RulerTexts.HintMarginLeft = 'Left margin'
    RulerTexts.HintMarginRight = 'Right margin'
    RulerTexts.HintMarginTop = 'Top margin'
    RulerTexts.HintRowMove = 'Resize table row'
    RulerTexts.HintTabCenter = 'Center aligned tab'
    RulerTexts.HintTabDecimal = 'Decimal aligned tab'
    RulerTexts.HintTabLeft = 'Left aligned tab'
    RulerTexts.HintTabRight = 'Right aligned tab'
    RulerTexts.HintTabWordBar = 'Word Bar aligned tab'
    RulerTexts.MenuTabCenter = 'Center align'
    RulerTexts.MenuTabDecimal = 'Decimal align'
    RulerTexts.MenuTabLeft = 'Left align'
    RulerTexts.MenuTabRight = 'Right align'
    RulerTexts.MenuTabWordBar = 'Word Bar align'
    RulerType = rtVertical
    Tabs = <>
    TabSettings.DeleteCursor = crDrag
    TabSettings.Options = []
    TopMargin = 0.500000000000000000
    Visible = False
    RichViewEdit = RVE
    TableEditor.Active = True
    TableEditor.BackGroundColor = clBtnShadow
    TableEditor.CellIndex = 0
    TableEditor.Cells = <>
    TableEditor.DragCursor = crVSplit
    TableEditor.ForeGroundColor = clBtnHighlight
    TableEditor.Options = [teoAdjustable, teoSnapToRuler]
    TableEditor.RowIndex = 0
    TableEditor.Rows = <>
    TableEditor.TableOffset = 0
    ExplicitTop = 54
    ExplicitHeight = 433
  end
  object RVE: TRichViewEdit
    Left = 25
    Top = 51
    Width = 814
    Height = 436
    AcceptDragDropFormats = [rvddRVF, rvddRTF, rvddText, rvddUnicodeText, rvddBitmap, rvddMetafile, rvddURL, rvddFiles]
    ReadOnly = False
    OnCurParaStyleChanged = RVECurParaStyleChanged
    OnCurTextStyleChanged = RVECurTextStyleChanged
    OnParaStyleConversion = RVEParaStyleConversion
    OnStyleConversion = RVEStyleConversion
    Align = alClient
    PopupMenu = pmEditor
    TabOrder = 3
    Delimiters = ' .;,:(){}'#39'"/\<>!?[]-+*=`'
    DocParameters.Units = rvuCentimeters
    DoInPaletteMode = rvpaDoNothing
    LeftMargin = 11
    LiveSpellingMode = rvlspManualStart
    Options = [rvoAllowSelection, rvoScrollToEnd, rvoClientTextWidth, rvoShowPageBreaks, rvoAutoCopyText, rvoAutoCopyUnicodeText, rvoAutoCopyRVF, rvoAutoCopyImage, rvoAutoCopyRTF, rvoFormatInvalidate, rvoDblClickSelectsWord, rvoFastFormatting]
    RightMargin = 11
    RTFReadProperties.TextStyleMode = rvrsAddIfNeeded
    RTFReadProperties.ParaStyleMode = rvrsAddIfNeeded
    RTFReadProperties.UseHypertextStyles = True
    RTFReadProperties.SkipHiddenText = False
    RTFReadProperties.UseCharsetForUnicode = True
    RVFOptions = [rvfoSavePicturesBody, rvfoSaveControlsBody, rvfoIgnoreUnknownPicFmt, rvfoIgnoreUnknownCtrls, rvfoConvUnknownStylesToZero, rvfoConvLargeImageIdxToZero, rvfoSaveBinary, rvfoSaveBack, rvfoLoadBack, rvfoSaveTextStyles, rvfoSaveParaStyles, rvfoSaveLayout, rvfoLoadLayout, rvfoSaveDocProperties, rvfoLoadDocProperties]
    SmartPopupProperties.ImageList = RVImageList
    Style = RVStyle
    WheelStep = 3
    OnJump = RVEJump
    OnReadHyperlink = RVEReadHyperlink
    OnWriteHyperlink = RVEWriteHyperlink
    ExplicitTop = 54
    ExplicitHeight = 433
  end
  object RVActionList: TActionList
    Images = RVImageList
    Left = 200
    Top = 168
    object rvFileNew: TrvActionNew
      Category = 'RVE File'
      Caption = #26032#24314'(&N)'
      Hint = #26032#24314
      ImageIndex = 36
      Control = RVE
      ActionSave = rvFileSave
    end
    object rvFileOpen: TrvActionOpen
      Category = 'RVE File'
      Caption = #25171#24320'(&O)'
      Hint = #25171#24320
      ImageIndex = 37
      Control = RVE
      ActionSave = rvFileSave
    end
    object rvFileSave: TrvActionSave
      Category = 'RVE File'
      Caption = #20445#23384'(&S)'
      Hint = #20445#23384
      ImageIndex = 50
      Control = RVE
      ActionSaveAs = rvFileSaveAs
    end
    object rvFileExport: TrvActionExport
      Category = 'RVE File'
      Caption = #23548#20986'(&E)...'
      Hint = #23548#20986
      ImageIndex = 51
      Control = RVE
      ImagePrefix = 'img'
      SaveOptions = []
    end
    object rvFileSaveAs: TrvActionSaveAs
      Category = 'RVE File'
      Caption = #21478#23384#20026'(&A)...'
      Hint = #21478#23384#20026
      ImageIndex = 51
      Control = RVE
      ActionSave = rvFileSave
    end
    object rvFilePrintPreview: TrvActionPrintPreview
      Category = 'RVE File'
      Caption = #25171#21360#39044#35272'(R)...'
      Hint = #25171#21360#39044#35272
      ImageIndex = 46
      Control = RVE
      ActionPrint = rvFilePrint
    end
    object rvFilePrint: TrvActionPrint
      Category = 'RVE File'
      Caption = #25171#21360'(&P)'
      Hint = #25171#21360
      ImageIndex = 47
      Control = RVE
    end
    object rvFileQuickPrint: TrvActionQuickPrint
      Category = 'RVE File'
      Caption = #24555#36895#25171#21360
      Hint = #24555#36895#25171#21360
      Control = RVE
    end
    object rvFilePageSetup: TrvActionPageSetup
      Category = 'RVE File'
      Caption = #39029#38754#35774#32622'(&G)'
      Hint = #39029#38754#35774#32622
      ImageIndex = 88
    end
    object rvEditCut: TrvActionCut
      Category = 'RVE Edit'
      Caption = #21098#20999'(&T)'
      Hint = #21098#20999
      ImageIndex = 7
      ShortCut = 16472
      Control = RVE
    end
    object rvEditCopy: TrvActionCopy
      Category = 'RVE Edit'
      Caption = #22797#21046'(&C)'
      Hint = #22797#21046
      ImageIndex = 6
      ShortCut = 16451
      Control = RVE
    end
    object rvEditPaste: TrvActionPaste
      Category = 'RVE Edit'
      Caption = #31896#36148'(&P)'
      Hint = #31896#36148
      ImageIndex = 44
      ShortCut = 16470
      Control = RVE
    end
    object rvEditPasteSpecial: TrvActionPasteSpecial
      Category = 'RVE Edit'
      Caption = #36873#25321#24615#31896#36148'(&S)...'
      Hint = #36873#25321#24615#31896#36148
      ImageIndex = 75
      Control = RVE
    end
    object rvFonts: TrvActionFonts
      Category = 'RVE Text'
      Caption = #23383#20307'(&F)'
      ImageIndex = 19
      Control = RVE
    end
    object rvEditUndo: TrvActionUndo
      Category = 'RVE Edit'
      Caption = #25764#38144'(&U)'
      Enabled = False
      Hint = #25764#38144
      ImageIndex = 72
      ShortCut = 16474
      Control = RVE
    end
    object rvEditRedo: TrvActionRedo
      Category = 'RVE Edit'
      Caption = #24674#22797'(&R)'
      Enabled = False
      Hint = #24674#22797
      ImageIndex = 48
      ShortCut = 24666
      Control = RVE
    end
    object rvEditSelectAll: TrvActionSelectAll
      Category = 'RVE Edit'
      Caption = #20840#36873'(&A)'
      Hint = #20840#36873
      ShortCut = 16449
      Control = RVE
    end
    object rvEditFind: TrvActionFind
      Category = 'RVE Edit'
      Caption = #26597#25214'(&F)...'
      Hint = #26597#25214
      ImageIndex = 8
      ShortCut = 16454
      Control = RVE
      ActionReplace = rvEditReplace
    end
    object rvEditFindNext: TrvActionFindNext
      Category = 'RVE Edit'
      Caption = #26597#25214#19979#19968#20010'(&N)'
      Hint = #26597#25214#19979#19968#20010
      ImageIndex = 9
      ShortCut = 114
      Control = RVE
      ActionFind = rvEditFind
    end
    object rvEditReplace: TrvActionReplace
      Category = 'RVE Edit'
      Caption = #26367#25442'(&R)...'
      Hint = #26367#25442
      ImageIndex = 49
      ShortCut = 16456
      Control = RVE
      ActionFind = rvEditFind
    end
    object rvFontEx: TrvActionFontEx
      Category = 'RVE Text'
      Caption = #23383#20307'(&F)'
      ImageIndex = 14
      Control = RVE
    end
    object rvFontBold: TrvActionFontBold
      Category = 'RVE Text'
      Caption = #31895#20307'(&B)'
      ImageIndex = 12
      ShortCut = 16450
      Control = RVE
    end
    object rvFontItalic: TrvActionFontItalic
      Category = 'RVE Text'
      Caption = #26012#20307'(&I)'
      ImageIndex = 17
      ShortCut = 16457
      Control = RVE
    end
    object rvFontUnderline: TrvActionFontUnderline
      Category = 'RVE Text'
      Caption = #19979#21010#32447'(&U)'
      ImageIndex = 23
      ShortCut = 16469
      Control = RVE
    end
    object rvFontStrikeout: TrvActionFontStrikeout
      Category = 'RVE Text'
      Caption = #21024#38500#32447'(&S)'
      ImageIndex = 22
      Control = RVE
    end
    object rvFontOverline: TrvActionFontOverline
      Category = 'RVE Text'
      Caption = #19978#21010#32447'(&O)'
      ImageIndex = 18
      Control = RVE
    end
    object rvFontGrow: TrvActionFontGrow
      Category = 'RVE Text'
      Caption = '&Grow Font'
      ImageIndex = 15
      Control = RVE
      MaxSize = 65535
    end
    object rvFontShrink: TrvActionFontShrink
      Category = 'RVE Text'
      Caption = 'S&hrink Font'
      ImageIndex = 20
      Control = RVE
    end
    object rvFontGrowOnePoint: TrvActionFontGrowOnePoint
      Category = 'RVE Text'
      Caption = 'G&row Font By One Point'
      ImageIndex = 16
      Control = RVE
      MaxSize = 65535
    end
    object rvFontShrinkOnePoint: TrvActionFontShrinkOnePoint
      Category = 'RVE Text'
      Caption = 'Shri&nk Font By One Point'
      ImageIndex = 21
      Control = RVE
    end
    object rvFontAllCaps: TrvActionFontAllCaps
      Category = 'RVE Text'
      Caption = '&All Capitals'
      ImageIndex = 10
      Control = RVE
    end
    object rvFontColor: TrvActionFontColor
      Category = 'RVE Text'
      Caption = #25991#23383#39068#33394'(&C)'
      ImageIndex = 13
      Control = RVE
    end
    object rvFontBackColor: TrvActionFontBackColor
      Category = 'RVE Text'
      Caption = #25991#23383#32972#26223#39068#33394'(&K)'
      ImageIndex = 11
      Control = RVE
    end
    object rvParagraph: TrvActionParagraph
      Category = 'RVE Paragraph'
      Caption = #27573#33853'(&P)'
      ImageIndex = 41
      Control = RVE
    end
    object rvParaBorder: TrvActionParaBorder
      Category = 'RVE Paragraph'
      Caption = #27573#33853#36793#26694#19982#32972#26223'(&B)'
      ImageIndex = 38
      Control = RVE
    end
    object rvParaWordWrap: TrvActionWordWrap
      Category = 'RVE Paragraph'
      Caption = #33258#21160#25442#34892'(&W)'
      ImageIndex = 73
      ShortCut = 16471
      Control = RVE
    end
    object rvParaAlignLeft: TrvActionAlignLeft
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = #24038#23545#40784'(&L)'
      Checked = True
      GroupIndex = 101
      ImageIndex = 2
      Control = RVE
    end
    object rvParaAlignRight: TrvActionAlignRight
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = #21491#23545#40784'(&R)'
      GroupIndex = 101
      ImageIndex = 3
      Control = RVE
    end
    object rvParaAlignCenter: TrvActionAlignCenter
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = #23621#20013'(&C)'
      GroupIndex = 101
      ImageIndex = 0
      Control = RVE
    end
    object rvParaAlignJustify: TrvActionAlignJustify
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = #20004#31471#23545#40784'(&J)'
      GroupIndex = 101
      ImageIndex = 1
      Visible = False
      Control = RVE
    end
    object rvParaIndentInc: TrvActionIndentInc
      Category = 'RVE Paragraph'
      Caption = #22686#21152#32553#36827'(&I)'
      ImageIndex = 25
      ShortCut = 16393
      Control = RVE
      IndentMax = 200
    end
    object rvParaIndentDec: TrvActionIndentDec
      Category = 'RVE Paragraph'
      Caption = #20943#23569#32553#36827'(&D)'
      ImageIndex = 24
      ShortCut = 24585
      Control = RVE
    end
    object rvParaParaColor: TrvActionParaColor
      Category = 'RVE Paragraph'
      Caption = #27573#33853#32972#26223#39068#33394'(&B)'
      ImageIndex = 40
      Control = RVE
    end
    object rvParaLineSpacing100: TrvActionLineSpacing100
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = '&Single Line Spacing'
      GroupIndex = 102
      ImageIndex = 33
      Control = RVE
    end
    object rvParaLineSpacing150: TrvActionLineSpacing150
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = '1.5 Li&ne Spacing'
      GroupIndex = 102
      ImageIndex = 34
      Control = RVE
    end
    object rvParaLineSpacing200: TrvActionLineSpacing200
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = '&Double Line Spacing'
      GroupIndex = 102
      ImageIndex = 35
      Control = RVE
    end
    object rvParaList: TrvActionParaList
      Category = 'RVE Paragraph'
      Caption = #39033#30446#31526#21495#19982#32534#21495'(&B)'
      ImageIndex = 41
      Control = RVE
    end
    object rvParaBullets: TrvActionParaBullets
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = #39033#30446#31526#21495'(&B)'
      GroupIndex = 103
      ImageIndex = 42
      Control = RVE
    end
    object rvParaNumbering: TrvActionParaNumbering
      Category = 'RVE Paragraph'
      AutoCheck = True
      Caption = #21015#34920#32534#21495'(&N)'
      GroupIndex = 103
      ImageIndex = 43
      Control = RVE
    end
    object rvInsertFile: TrvActionInsertFile
      Category = 'RVE Insert'
      Caption = #25991#20214'(&F)...'
      Hint = #25991#20214
      ImageIndex = 76
      Control = RVE
    end
    object rvInsertPicture: TrvActionInsertPicture
      Category = 'RVE Insert'
      Caption = #22270#29255'(&P)...'
      Hint = #22270#29255
      ImageIndex = 29
      Control = RVE
      VAlign = rvvaBaseline
      DefaultExt = 'bmp'
    end
    object rvInsertHLine: TrvActionInsertHLine
      Category = 'RVE Insert'
      Caption = #27700#24179#32447'(&H)'
      Hint = #27700#24179#32447
      ImageIndex = 26
      Control = RVE
    end
    object rvInsertHyperlink: TrvActionInsertHyperlink
      Category = 'RVE Insert'
      Caption = #36229#38142#25509'(&L)'
      Hint = #36229#38142#25509
      ImageIndex = 27
      Control = RVE
      SpaceFiller = ' '
    end
    object rvInsertSymbol: TrvActionInsertSymbol
      Category = 'RVE Insert'
      Caption = #31526#21495'(&S)'
      Hint = #31526#21495
      ImageIndex = 30
      Control = RVE
      AlwaysInsertUnicode = False
    end
    object rvInsertText: TrvActionInsertText
      Category = 'RVE Insert'
      Caption = #25991#26412'(&T)'
      Hint = #25991#26412
      ImageIndex = 74
      Visible = False
      Control = RVE
    end
    object rvActionColor: TrvActionColor
      Category = 'RVE Miscellaneous'
      Caption = #32972#26223#39068#33394'(&C)...'
      Hint = #32972#26223'|'#25913#21464#25991#26723#32972#26223#30340#39068#33394
      ImageIndex = 5
      Control = RVE
      Color = clWindow
    end
    object rvActionBackground: TrvActionBackground
      Category = 'RVE Miscellaneous'
      Caption = #32972#26223'(&B)...'
      Hint = #32972#26223
      ImageIndex = 4
      Control = RVE
    end
    object rvActionFillColor: TrvActionFillColor
      Category = 'RVE Miscellaneous'
      Caption = #22635#20805#39068#33394'(&F)...'
      Hint = #22635#20805#39068#33394
      Control = RVE
    end
    object rvActionInsertPageBreak: TrvActionInsertPageBreak
      Category = 'RVE Miscellaneous'
      Caption = #39029#20998#38548#31526'(&I)'
      Hint = #39029#20998#38548#31526
      ImageIndex = 28
      ShortCut = 16397
      Control = RVE
    end
    object rvActionRemovePageBreak: TrvActionRemovePageBreak
      Category = 'RVE Miscellaneous'
      Caption = #21024#38500#39029#20998#38548#31526'(&R)'
      Hint = #21024#38500#39029#20998#38548#31526
      Control = RVE
    end
    object rvActionItemProperties: TrvActionItemProperties
      Category = 'RVE Miscellaneous'
      Caption = #23545#35937#23646#24615'(&P)...'
      ImageIndex = 32
      ShortCut = 32781
      Control = RVE
    end
    object rvActionShowSpecialCharacters: TrvActionShowSpecialCharacters
      Category = 'RVE Miscellaneous'
      Caption = #26174#31034#38750#25171#21360#23383#31526'(&N)'
      ImageIndex = 38
      Control = RVE
    end
    object rvTableInsertTable: TrvActionInsertTable
      Category = 'RVE Table'
      Caption = #25554#20837#34920#26684'(&I)'
      ImageIndex = 31
      Control = RVE
    end
    object rvTableInsertRowsBelow: TrvActionTableInsertRowsBelow
      Category = 'RVE Table'
      Caption = #22312#19979#26041#25554#20837#34892'(&B)'
      Enabled = False
      ImageIndex = 68
      Control = RVE
      AllowMultiple = True
    end
    object rvTableInsertRowsAbove: TrvActionTableInsertRowsAbove
      Category = 'RVE Table'
      Caption = #22312#19978#26041#25554#20837#34892'(&A)'
      Enabled = False
      ImageIndex = 67
      Control = RVE
    end
    object rvTableInsertColLeft: TrvActionTableInsertColLeft
      Category = 'RVE Table'
      Caption = #22312#24038#20391#25554#20837#21015'(&L)'
      Enabled = False
      ImageIndex = 65
      Control = RVE
    end
    object rvTableInsertColRight: TrvActionTableInsertColRight
      Category = 'RVE Table'
      Caption = #22312#21491#20391#25554#20837#21015'(&R)'
      Enabled = False
      ImageIndex = 66
      Control = RVE
    end
    object rvTableDeleteRows: TrvActionTableDeleteRows
      Category = 'RVE Table'
      Caption = #21024#38500#34892'(&O)'
      Enabled = False
      ImageIndex = 62
      Control = RVE
    end
    object rvTableDeleteCols: TrvActionTableDeleteCols
      Category = 'RVE Table'
      Caption = #21024#38500#21015'(&C)'
      Enabled = False
      ImageIndex = 61
      Control = RVE
    end
    object rvTableDeleteTable: TrvActionTableDeleteTable
      Category = 'RVE Table'
      Caption = #21024#38500#34920#26684'(&D)'
      Enabled = False
      ImageIndex = 63
      Control = RVE
    end
    object rvTableMergeCells: TrvActionTableMergeCells
      Category = 'RVE Table'
      Caption = #21512#24182#21333#20803#26684'(&M)'
      Enabled = False
      ImageIndex = 69
      Control = RVE
    end
    object rvTableSplitCells: TrvActionTableSplitCells
      Category = 'RVE Table'
      Caption = #25286#20998#21333#20803#26684'(&S)'
      Enabled = False
      ImageIndex = 71
      Control = RVE
    end
    object rvTableSelectTable: TrvActionTableSelectTable
      Category = 'RVE Table'
      Caption = 'Select &Table'
      ShortCut = 32780
      Control = RVE
    end
    object rvTableSelectRows: TrvActionTableSelectRows
      Category = 'RVE Table'
      Caption = 'Select Ro&ws'
      Control = RVE
    end
    object rvTableSelectCols: TrvActionTableSelectCols
      Category = 'RVE Table'
      Caption = 'Select Col&umns'
      Control = RVE
    end
    object rvTableSelectCell: TrvActionTableSelectCell
      Category = 'RVE Table'
      Caption = 'Select C&ell'
      Control = RVE
    end
    object rvTableCellVAlignTop: TrvActionTableCellVAlignTop
      Category = 'RVE Table'
      AutoCheck = True
      Caption = 'Align Cell To The &Top'
      GroupIndex = 104
      ImageIndex = 60
      Control = RVE
    end
    object rvTableCellVAlignMiddle: TrvActionTableCellVAlignMiddle
      Category = 'RVE Table'
      AutoCheck = True
      Caption = 'Align Cell To The &Middle'
      GroupIndex = 104
      ImageIndex = 59
      Control = RVE
    end
    object rvTableCellVAlignBottom: TrvActionTableCellVAlignBottom
      Category = 'RVE Table'
      AutoCheck = True
      Caption = 'Align Cell To The &Bottom'
      GroupIndex = 104
      ImageIndex = 58
      Control = RVE
    end
    object rvTableCellVAlignDefault: TrvActionTableCellVAlignDefault
      Category = 'RVE Table'
      AutoCheck = True
      Caption = '&Default Cell Vertical Alignment'
      GroupIndex = 104
      Control = RVE
    end
    object rvTableCellAllBorders: TrvActionTableCellAllBorders
      Category = 'RVE Table'
      AutoCheck = True
      Caption = '&All Borders'
      GroupIndex = 105
      ImageIndex = 52
      Control = RVE
    end
    object rvTableCellLeftBorder: TrvActionTableCellLeftBorder
      Category = 'RVE Table'
      AutoCheck = True
      Caption = '&Left Border'
      GroupIndex = 105
      ImageIndex = 54
      Control = RVE
    end
    object rvTableCellTopBorder: TrvActionTableCellTopBorder
      Category = 'RVE Table'
      AutoCheck = True
      Caption = '&Top Border'
      GroupIndex = 105
      ImageIndex = 57
      Control = RVE
    end
    object rvTableCellRightBorder: TrvActionTableCellRightBorder
      Category = 'RVE Table'
      AutoCheck = True
      Caption = '&Right Border'
      GroupIndex = 105
      ImageIndex = 56
      Control = RVE
    end
    object rvTableCellBottomBorder: TrvActionTableCellBottomBorder
      Category = 'RVE Table'
      AutoCheck = True
      Caption = '&Bottom Border'
      GroupIndex = 105
      ImageIndex = 53
      Control = RVE
    end
    object rvTableCellNoBorders: TrvActionTableCellNoBorders
      Category = 'RVE Table'
      AutoCheck = True
      Caption = '&No Borders'
      GroupIndex = 105
      ImageIndex = 55
      Control = RVE
    end
    object rvTableProperties: TrvActionTableProperties
      Category = 'RVE Table'
      Caption = #34920#26684#23646#24615'(&P)'
      Enabled = False
      ImageIndex = 70
      Control = RVE
    end
    object rvTableGrid: TrvActionTableGrid
      Category = 'RVE Table'
      Caption = #26174#31034#34920#26684#32447'(&G)'
      Checked = True
      ImageIndex = 64
    end
    object rvFontSubscript: TAction
      Tag = 1
      Category = 'RVE Text'
      AutoCheck = True
      Caption = #19979#26631
      ImageIndex = 93
      OnExecute = rvFontSubscriptExecute
    end
    object rvFontSuperscript: TAction
      Tag = 2
      Category = 'RVE Text'
      AutoCheck = True
      Caption = #19978#26631
      ImageIndex = 94
      OnExecute = rvFontSuperscriptExecute
    end
    object actWordWrap: TAction
      AutoCheck = True
      Caption = #33258#21160#25442#34892
      Checked = True
      ImageIndex = 95
      OnExecute = actWordWrapExecute
    end
    object rvActionSubscript1: TrvActionSubscript
      Category = 'RVE Text'
      Caption = #19979#26631
      ImageIndex = 93
      Control = RVE
    end
    object rvActionSuperscript1: TrvActionSuperscript
      Category = 'RVE Text'
      Caption = #19978#26631
      ImageIndex = 94
      Control = RVE
    end
  end
  object RVStyle: TRVStyle
    TextStyles = <
      item
        StyleName = #27491#25991
        FontName = #23435#20307
        Unicode = True
      end
      item
        StyleName = #26631#39064
        FontName = #23435#20307
        Style = [fsBold]
        Unicode = True
      end
      item
        StyleName = #23376#26631#39064
        FontName = #23435#20307
        Style = [fsBold]
        Unicode = True
      end
      item
        StyleName = #20851#38190#23383
        FontName = #23435#20307
        Style = [fsItalic]
        Color = clMaroon
        Unicode = True
      end
      item
        StyleName = #38142#25509
        FontName = #23435#20307
        Style = [fsUnderline]
        Color = clBlue
        Jump = True
        Unicode = True
      end
      item
        StyleName = #19979#26631
        FontName = 'Arial'
        SubSuperScriptType = rvsssSubscript
        Unicode = True
      end
      item
        StyleName = #19978#26631
        FontName = 'Arial'
        SubSuperScriptType = rvsssSuperScript
        Unicode = True
      end>
    ParaStyles = <
      item
        StyleName = #27573#33853#26679#24335
        Tabs = <>
      end
      item
        StyleName = #23621#20013
        Alignment = rvaCenter
        Tabs = <>
      end>
    ListStyles = <>
    SelectionMode = rvsmChar
    DefUnicodeStyle = 0
    DefCodePage = 936
    InvalidPicture.Data = {
      07544269746D617036100000424D361000000000000036000000280000002000
      0000200000000100200000000000001000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000}
    StyleTemplates.DefStyleName = #26679#24335' %d'
    StyleTemplates = <
      item
        TextStyle.FontName = #23435#20307
        ParaStyle.Tabs = <>
        Name = #26679#24335' 0'
        IDProp = 158384908
      end>
    Left = 200
    Top = 136
  end
  object RVAControlPanel: TRVAControlPanel
    DialogFontName = #23435#20307
    TableGridStyle = psSolid
    RVFFilter = 'RichView Files (*.rvf)|*.rvf'
    DefaultExt = 'rvf'
    RVFormatTitle = 'RichView Format'
    DefaultFileName = #26410#21629#21517'.rvf'
    Language = 'Chinese (Simplified)'
    OnMarginsChanged = RVAControlPanelMarginsChanged
    Left = 232
    Top = 136
  end
  object RVImageList: TImageList
    Left = 232
    Top = 168
    Bitmap = {
      494C010160006300200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009001000001002000000000000090
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0A0900060483000604830006048
      3000604830006048300060483000604830006048300060483000604830006048
      3000604830006048300060483000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0A09000FFF8F000F0D8D000F0D8
      D000E3D2C400E0C8C000E0C1B100E0C1B100E6BAA300D0B0A000D0B0A000D0A5
      9000D08D8500D08D850060483000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0A09000FFFFFF00FFF8F000FFF8
      F000FFF0F000F0E8E000F0E8E000F0E8E000F0E0D00080000000F0D0C000F0D0
      C000E0C8C000D0A5900060483000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0A09000FFFFFF00FFF8FF00FFF8
      F000FFF8F000FFF0F000F0E8E000F0E8E0008000000080000000F0D8D000F0D0
      C000E3D2C400D0A5900060483000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0A09000FFFFFF005D98E0005D98
      E000456DF000456DF000F0E8E000800000008000000080000000800000008000
      0000F0D0C000D0B0A00060483000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0A89000FFFFFF00FFFFFF00FFFF
      FF00FFF8FF00FFF8F000FFF0F000F0F0F0008000000080000000F0E0D0008000
      0000F0D8D000E0C1B10060483000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0A8A000FFFFFF005D98E0005D98
      E0005D98E000456DF000456DF000456DF000FFF0F00080000000F0E8E0008000
      0000F0D8D000E0C8C00060483000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0A8A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF8FF00FFF8F000FFF0F000F0F0F000F0E8E0008000
      0000F0E0D000E3D2C40060483000000000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      800000008000000000000000000000000000C0B0A000FFFFFF005D98E0005D98
      E0005D98E0005D98E000456DF000456DF000FFF8F00080000000800000008000
      0000F0E8E000F0D8D00060483000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      000000000000000000000000000000000000D0B0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF8F000FFF0F000F0E8
      E000F0E8E000F0E8E00060483000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000000000000000000000000000000000D4B8A200FFFFFF005D98E0005D98
      E0005D98E0005D98E0005D98E000456DF000FFFFFF00FFF8F000FFF8F000FFF0
      F000F0E8E000F0E8E00060483000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008000000000000000000000000000D0B0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8F000FFF8
      F000FFF0F000FFF0F00060483000000000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      800000000000000000000000000000000000D0B0A000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0060483000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0B0A000C0B0A000C0B0A000C0B0
      A000C0B0A000C0B0A000C0B0A000C0B0A000C0B0A000C0A8A000C0A8A000C0A8
      9000C0A89000C3A39200B0A09000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400714014007140
      1400714014007140140071401400714014007140140071401400714014007140
      14007140140071401400714014007140140000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FED2BC00FECF
      B80015385500FEC9AE00FEC5A900FFC2A500FEC0A000FFBC9C00FFBA9900FEB7
      9400FFB5910015385500FEB18B0071401400E77B8400FFD6DE00FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6CE00FFC6
      C600FFBDC600FFBDC600FFBDC600A5424A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400153855001538
      5500153855001538550015385500153855001538550015385500153855001538
      550015385500153855001538550071401400E77B8400FFEFEF00FFE7E700FFE7
      E700FFDEE700FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6
      CE00FFC6C600FFBDC600FFBDC600A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFD9C500FFD6
      C10015385500FED0B700FECCB300FFC9AE00FEC6AA00FEC2A500FEBFA100FEBD
      9C00FEBA990015385500FEB5910071401400E77B8400FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6
      CE00FFC6CE00FFC6C600FFBDC600A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFDBCA00FED8
      C50015385500FED2BC00FECFB700FFCCB200FEC9AE00FEC5AA00FEC3A500FEBF
      A000FEBC9C0015385500FFB7950071401400E77B8400FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6
      CE00FFC6CE00FFC6C600FFC6C600A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFDFCE00FFDB
      C90015385500FFD6C100FED2BC00FFCFB700FFCCB300FEC9AE00FFC6A900FEC2
      A500FFBFA00015385500FEBA980071401400E77B8400FFF7F700B97D3600B97D
      3600B97D3600B97D3600FFDEDE00B97D3600B97D3600B97D3600FFCECE00B97D
      3600B97D3600B97D3600FFC6CE00A5424A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFE1D200FEDF
      CE0015385500FED9C600FED5C000FFD3BC00FECFB700FECCB200FEC9AE00FEC6
      A900FFC2A40015385500FEBD9C0071401400E77B8400FFF7F700B97D3600FFEF
      F700FFEFEF00B97D3600FFE7E700B97D3600FFDEDE00FFDEDE00FFD6DE00B97D
      3600FFCED600FFCECE00FFCECE00A5424A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFE5D600FFE2
      D20015385500FEDCC900FFD8C500FED6C000FED3BC00FECFB800FFCCB300FEC9
      AE00FEC6A90015385500FEBFA00071401400E77B8400FFFFFF00B97D3600FFF7
      F700FFF7F700B97D3600FFEFEF00B97D3600FFE7E700FFDEDE00FFDEDE00B97D
      3600B97D3600B97D3600FFCECE00A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFE7DA00FFE5
      D60015385500FEDFCE00FFDBC900FED9C500FED6C100FFD2BC00FECFB800FECC
      B300FFC9AE0015385500FEC3A50071401400E77B8400FFFFFF00B97D3600FFF7
      F700FFF7F700B97D3600FFEFEF00B97D3600FFE7E700FFE7E700FFDEDE00B97D
      3600FFD6DE00FFD6D600FFCED600A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFEADE00FFE7
      DA0015385500FFE1D300FEDFCE00FFDCCA00FED8C500FED6C100FED3BC00FFCF
      B700FECCB20015385500FEC6AA0071401400E77B8400FFFFFF00B97D3600B97D
      3600B97D3600B97D3600FFF7F700B97D3600FFEFEF00FFE7E700FFE7E700B97D
      3600B97D3600B97D3600FFD6D600A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFECE000FFE9
      DE0015385500FEE5D600FEE2D300FFDFCE00FEDBCA00FFD9C500FFD5C100C599
      8300C599830015385500C599830071401400E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFF700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDEE700FFD6DE00A5424A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFEDE300FFEB
      E10015385500FFE7DA00FFE4D600FFE2D200FFDFCE00FFDCCA00FFD9C500C599
      830071401400714014007140140071401400E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFF700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDEE700FFDEDE00A5424A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400153855001538
      5500153855001538550015385500153855001538550015385500153855001538
      550071401400FEB18B007140140000000000E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFF700FFEFEF00FFEF
      EF00FFE7E700FFE7E700FFDEDE00A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400FFF1E800FFEF
      E60015385500FFECE100FFE9DD00FFE7DA00FEE4D600FEE2D200FEDFCE00C599
      830071401400714014000000000000000000E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEF
      EF00FFEFEF00FFE7E700FFE7E700A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3703400B3703400B370
      3400B3703400B3703400B3703400B3703400B3703400B3703400B3703400B370
      3400B3703400000000000000000000000000E77B8400FFE7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEF
      F700FFEFEF00FFEFEF00FFDEDE00A5424A008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C1800009C18
      00009C1800009C1800009C18000000000000000000009C1800009C1800009C18
      00009C1800009C18000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6210000FFEFE700FFEF
      E700FFEFE700FFEFE700FFEFE700C6210000C6210000FFEFE700FFEFE700FFC6
      BD00FFC6BD00FFC6BD009C18000000000000C6C6C600E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F7290000FFFFFF00FFEFE700C621
      0000C6210000C6210000C6210000C6210000C6210000C6210000C6210000C621
      0000C6210000FFC6BD00FFC6BD009C180000C6C6C600EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F7290000FFFFFF009C180000FF00
      0000C6210000FFFFFF00FFFFFF00FFEFE700FFEFE700FFEFE700FFEFE700C621
      0000FFD6A500C6210000FFC6BD009C180000C6C6C600EFEFEF00848484008484
      84008484840084848400FFFFFF0084848400FFFFFF0084848400848484008484
      84008484840084848400FFFFFF000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F7290000FFFFFF00FFFFFF009C18
      00009C1800009C1800009C180000C6210000C62100009C1800009C1800009C18
      00009C180000FFEFE700FFC6BD009C180000C6C6C600DEE7DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000800000008000
      000080000000FFFFFF008000000080000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000F7290000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6210000C6210000FFFFFF00FFFFFF00FFEF
      E700FFEFE700FFEFE700C621000000000000C6C6C600DEE7DE00848484008484
      840084848400FFFFFF008484840084848400FFFFFF0084848400848484008484
      84008484840084848400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFFFFF0000000000000000008000000080000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000CE9C8400F7290000F729
      0000F7290000F7290000F7290000FFFFFF00FFFFFF00F7290000F7290000F729
      0000F7290000F7290000C621000000000000C6C6C600DEDEDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000080000000FFFF
      FF000000000000000000000000000000000080000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000DEA58400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7C6B5006363630000000000C6C6C600DED6DE00848484008484
      840084848400FFFFFF0084848400848484008484840084848400FFFFFF008484
      84008484840084848400FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF000000
      00000000000000000000000000000000000000000000DEA58400FFFFF700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7C6B5006363630000000000C6C6C600CED6CE00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080000000FFFF
      FF000000000000000000000000000000000000000000DEA58400FFFFF7000000
      00000000000000000000FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00E7C6B5006363630000000000C6C6C60000000000000000008484
      84008484840084848400E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFFFF0000000000000000000000000000000000DEA58400FFFFFF000000
      FF000000FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7C6B5006363630000000000C6C6C60042424200424242004242
      4200424242004242420084848400848484008484840084848400848484008484
      84008484840084848400E7E7E70000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF00000000000000000000000000DEA58400FFFFFF00FF00
      0000FFFFFF0084848400FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00E7BDB5006363630000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B00C6C6C60084848400EFEFEF00E7E7E700E7E7E7008484
      8400E7E7E70084848400EFF7EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFFFF000000000000000000DEA58400FFFFFF00FF00
      0000FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7B5AD00F7B5AD006363630000000000FF00FF00C6C6C600FFFFFF00FFFF
      FF00FFFFFF007B7B7B00C6C6C600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700EFE7EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000000000000000000000DEA58400FFFFFF008484
      84008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A54200F7A5
      4200D68C4200636363000000000000000000FF00FF00FF00FF00C6C6C600FFFF
      FF00FFFFFF004242420042424200848484008484840084848400848484008484
      84008484840084848400DEDEDE00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEA58400FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFFF00FFFFFF00FFFFF700FFFFFF00DEA58400E7AD
      6B0063636300000000000000000000000000FF00FF00FF00FF00FF00FF00C6C6
      C600FFFFFF007B7B7B00DEDEDE0084848400DEDEDE0084848400DEDEDE008484
      8400DEDEDE0084848400DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA584006363
      630000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C1800009C18
      00009C1800009C1800009C18000000000000000000009C1800009C1800009C18
      00009C1800009C180000000000000000000000000000000000009C1800009C18
      00009C1800009C1800009C18000000000000000000009C1800009C1800009C18
      00009C1800009C18000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007373730073737300000000000000000000000000000000006B6BFF006363
      FF005252FF00000000000000000000000000000000000000000000000000E7E7
      E700E7E7E700000000000000F7000000000000000000C6210000FFEFE700FFEF
      E700FFEFE700FFEFE700FFEFE700C6210000C6210000FFEFE700FFEFE700FFC6
      BD00FFC6BD00FFC6BD009C1800000000000000000000C6210000FFEFE700FFEF
      E700FFEFE700FFEFE700FFEFE700C6210000C6210000FFEFE700FFEFE700FFC6
      BD00FFC6BD00FFC6BD009C18000000000000000000005A5A5A00636363005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A00736363008C84
      A5006384AD005A5A5A00000000000000000000000000000000007373FF006B6B
      FF006363FF00000000000000000000000000000000000000000000000000E7E7
      E700E7E7E700000000000000F70000000000F7290000FFFFFF00FFEFE7006B6B
      6B006B6B6B00C6210000C6210000C6210000C6210000C6210000C6210000C621
      0000C6210000FFC6BD00FFC6BD009C180000F7290000FFFFFF00FFEFE700C621
      0000C6210000C6210000C6210000C6210000C6210000C6210000C6210000C621
      0000C6210000FFC6BD00FFC6BD009C180000218CBD001884B5001884B500107B
      B500107BAD00107BAD000873AD000873A5000873A500397B9C008C84A5004A8C
      DE00319CDE004A4A5200000000000000000000000000000000007B7BFF007373
      FF006B6BFF00000000000000000000000000000000000000000000000000E7E7
      E700E7E7E700000000001010F70000000000F7290000FFFFFF00735AE7002100
      DE003921A50063636300FFFFFF00FFEFE700FFEFE700FFEFE700FFEFE700C621
      0000000000005A4AAD002900D6009C180000F7290000FFFFFF009C1800006352
      4A00C6210000FFFFFF00FFFFFF00FFEFE700FFEFE700FFEFE700FFEFE700C621
      00005A4A4200C6210000FFC6BD009C1800001884B50042ADDE00D6FFFF007BD6
      FF006BD6FF006BD6FF006BD6FF006BD6FF007BCEEF00948CAD004A8CDE0052BD
      FF000873A50029526300737373000000000000000000000000008C84FF007B7B
      FF007373FF000000000000000000000000000000000000000000000000000000
      000000000000000000001010F70000000000F7290000FFFFFF00735AE7002100
      DE002908D6004A4A630063636300C6210000C62100009C1800009C1800009C18
      00004221BD002100DE005242B5009C180000F7290000FFFFFF00FFFFFF009C18
      00009C1800009C1800009C180000C6210000C62100009C1800009C1800009C18
      00009C180000FFEFE700FFC6BD009C180000218CBD00298CC600DEFFFF00ADEF
      FF0094CEDE00CECEC600C6C6B500ADBDBD0094A5B5005A94D60052BDFF0073DE
      FF00107BAD00085A84005A5A5A000000000000000000000000009494FF008C84
      FF007B7BFF007373FF006B6BFF006363FF005252FF004A4AF7004242F7003131
      F7002929F7002929F7001010F7000000000000000000F7290000FFFFFF00735A
      E7002100DE003918CE005A5A5A00C6210000C6210000FFFFFF00FFFFFF003110
      CE002900D6005242B500C6210000000000002184BD00F7290000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6210000C6210000FFFFFF00FFFFFF00FFEF
      E700FFEFE700FFEFE700C621000000639C00218CC6002994C60084CEF700CEC6
      CE00F7EFE700FFFFEF00FFFFDE00FFF7C600DEB59C0094C6DE007BE7FF0084EF
      FF00319CCE001884AD00525252000000000000000000000000009494FF009494
      FF008C84FF007B7BFF007373FF006B6BFF006363FF005252FF004A4AF7004242
      F7003131F7002929F7002929F700000000000000000000000000F7290000F729
      0000735AE7002100DE004A31BD006363630000000000F72900003110CE002900
      D6005242B500F7290000C621000000000000218CBD0063CEFF00F7290000F729
      0000F7290000F7290000F729000073DEFF0073DEFF00F7290000F7290000F729
      0000F7290000F7290000C621000000639C00298CC6004AB5E700399CD600DECE
      B500FFFFFF00FFFFFF00FFFFE700FFF7C600FFEFB500B5CECE0094F7FF0094F7
      FF0052BDEF00107BA50031525A007373730000000000000000009CA5FF009494
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000003131F7002929F700000000000000000000000000000000000000
      000000000000735AE7002100DE004A31BD004A4A5A002910C6002900D6005242
      B50000000000000000000000000000000000218CC60063CEFF002994C6009CFF
      FF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF000000
      000084EFFF004AB5E7009CFFFF00006B9C002994C6006BD6FF00218CBD00E7D6
      B500FFFFE700FFFFEF00FFFFDE00FFEFBD00FFEFBD00DED6BD009CFFFF009CFF
      FF005AC6FF0042ADCE00105A84004A4A4A000000000000000000ADADFF000000
      0000FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700000000003131F700000000000000000000000000000000000000
      00000000000000000000735AE7002100DE002900D6002100D60063638C000000
      000000000000000000000000000000000000298CC60063CEFF00319CCE009CFF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0052BDEF009CFFFF00006B9C002994C6007BE7FF0042ADD600DEC6
      A500FFFFD600FFFFCE00FFF7C600FFEFC600FFF7D600EFCEC600FFFFFF00FFFF
      FF0084E7FF007BDEEF00006394005A5A5A000000000000000000ADADFF000000
      0000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7
      E700E7E7E700000000004242F700000000000000000000000000000000000000
      00000000000000000000000000002900D6002100DE004229C60063638C000000
      0000000000000000000000000000000000002994C6006BD6FF00319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0052BDEF009CFFFF00006BA5003194CE0084EFFF006BD6F700848C
      9400FFEFB500FFEFB500FFF7C600FFFFF700EFDED600528CB500218CBD001884
      BD001884B5001884B500006B9C00000000000000000000000000B5B5FF000000
      0000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700EFEFEF00EFEF
      EF00E7E7E700000000004A42F700000000000000000000000000000000000000
      000000000000000000003110CE002900D6005242B5003108DE005239D6006363
      8C00000000000000000000000000000000002994C6007BE7FF002994C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00F7F7FF00F7F7
      FF00F7F7FF00218CBD00FFFFFF000873A500319CCE0094F7FF008CF7FF0094EF
      F700BDBDBD00EFCEAD00E7CEAD00DEC6BD00EFDEDE00FFFFFF00FFFFFF00FFFF
      FF00107BAD007373730000000000000000000000000000000000B5B5FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF00000000004A4AF700000000000000000000000000000000000000
      0000000000003110CE002100DE005242B50000000000000000003918DE004221
      DE0063638C000000000000000000000000003194CE0084EFFF0084E7FF002994
      C6002994C6002994C6002994C6002994C6002994C600218CC600218CBD00218C
      BD00218CBD0052BDEF00FFFFFF000873A500319CCE00FFFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FFFFFF00218CBD002184BD001884B5001884B5001884
      B500107BB5000000000000000000000000000000000000000000B5B5FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEF
      EF00EFEFEF000000000000000000000000000000000000000000000000000000
      00003110CE002100DE005242B500000000000000000000000000000000005A39
      E7003108DE0063638C000000000000000000319CCE0094F7FF008CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000873A500635A5A0000000000319CCE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00298CC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700EFEFEF0000000000FFFFFF00000000000000000000000000000000003110
      CE002100DE005242B50000000000000000000000000000000000000000000000
      00005A39E7002100DE000000000000000000319CCE00FFFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FFFFFF00218CBD002184BD001884B5001884B5001884
      B5001884B5000873A5000873A500000000000000000000000000319CCE00319C
      CE003194CE002994C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003918DE002100
      DE004221BD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000319CCE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00298CC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003108DE004A29
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE00319C
      CE003194CE002994C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A0000000000E77B8400FFD6DE00FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6CE00FFC6
      C600FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFDEDE006B6B6B003939
      39006B6B6B006B6B6B00FFCED600FFCED600FFCED600FFC6CE00FFC6CE00FFC6
      CE00FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFDEDE00FFE7E700FFE7
      E700948484005A4A4A00B5A5A500CEC6C600FFC6CE00FFC6CE00FFC6CE00FFBD
      C600FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFD6DE00FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6CE00FFC6
      C600FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFEFEF00FFE7E700FFE7
      E700FFE7E700FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6C600FFC6
      C600FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFE7EF00A59C8C00A59C
      8C00736B630052525200424A4200525252006B6B6B00FFCED600FFC6CE00FFC6
      CE00FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFEFEF00FFE7E700DED6
      D600BDBDBD00AD94940084635A005A4A4A0094848400AD949400B5A5A500C68C
      9400FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6
      CE00FFC6C600FFBDC600FFBDC600A5424A00E77B8400FFEFEF00FFDEEF00187B
      9400004A7300004A7300004A7300004A7300004A7300004A7300004A7300004A
      7300FFC6CE00FFC6C600FFBDC600A5424A00E77B8400DECEB500CEBDAD00F7F7
      EF00F7F7EF00DEDEE700CECECE00ADA5A500847373004A42420084847B00FFC6
      CE00FFC6CE00FFC6CE00FFBDC600A5424A00E77B8400FFEFEF00FFEFEF00EFDE
      C600FFFFFF00FFFFFF00F7F7EF00DECECE00B5A5A50094848400948484005A4A
      4A005A4A4A00CEADAD00FFBDC600A5424A00E77B8400FFEFEF00FFEFEF00FFE7
      E700FFE7E700B5A5A500424242005252520042424200636363008C848400FFC6
      CE00FFC6CE00FFC6C600FFBDC600A5424A00E77B8400FFEFF7004A8CC600219C
      DE0031ADCE005ADEFF0042C6F70042C6F70042C6F70042C6F70042C6F700107B
      A500107BA500FFC6CE00FFC6C600A5424A00E77B8400CEBDAD00E7DED600F7EF
      D600F7F7E700FFFFF700FFFFFF00F7F7EF00EFEFE700CEBDAD004A4242006363
      5A00FFC6CE00FFC6CE00FFC6CE00A5424A00E77B8400FFF7F700F7E7E700DEC6
      AD00F7EFEF00E7EFF700EFF7F700F7FFFF00FFFFFF00FFF7F700DEDEDE00CEC6
      C600AD8C7B0084635A00E7BDBD00A5424A00E77B8400FFF7F700FFEFEF00CEBD
      AD00B5A5A5008C8484008C7B7B008C7B7B008C7B7B0042424200424242007373
      7300FFC6CE00FFC6CE00FFC6C600A5424A00E77B8400FFF7F700218CC60039AD
      EF0042BDD60084F7FF006BDEFF006BDEFF0063D6FF0063D6FF006BDEFF0052C6
      F700188CB500FFC6CE00FFC6CE00A5424A00E77B8400DECEB500E7DED600EFE7
      C600F7EFD600F7F7E700F7F7EF00B5A59C003939390052525200424A42006363
      5A0084847B00FFC6CE00FFC6CE00A5424A00E77B8400FFF7F700F7E7E700DEC6
      AD00F7F7EF0094848400E7E7EF00DEE7EF00E7EFF700DEE7F700F7FFFF00FFFF
      FF00F7F7EF00CEADAD005A4A4A0084635A00E77B8400FFF7F700FFEFF7008C94
      B5009C8C8400CEBDAD00CECEC6008C9CCE00EFDECE00B5A5A500525252004242
      42008C848400FFC6CE00FFC6CE00A5424A00E77B8400FFF7F700218CC60039AD
      EF0042BDD6008CFFFF007BEFFF007BEFFF007BEFFF007BEFFF007BEFFF0063D6
      FF00188CB500FFCECE00FFCECE00A5424A00E77B8400EFDECE00EFE7C600E7D6
      AD00EFE7C600F7EFD600B5A59C0084847B008473730084737300847373004A42
      4200393939006B6B6B00FFC6CE00A5424A00E77B8400FFF7F700F7EFDE00F7D6
      A500F7F7EF00DEE7F700E7EFF70094848400E7EFF700DEE7EF00E7E7EF00DEE7
      EF00EFF7F700F7FFFF00AD94940084635A00E77B8400FFF7F700FFF7F7008C94
      B500E7D6AD00FFF7CE00FFEFC600F7E7BD00FFF7D600EFE7D600B59C94004242
      420073737300FFCECE00FFC6CE00A5424A00E77B8400FFFFFF002194CE0042BD
      EF0042BDD6008CFFFF0084FFFF0084FFFF0084FFFF0084FFFF0084FFFF006BE7
      FF00188CB500FFCED600FFCECE00A5424A00E77B8400EFE7D600EFE7C600E7D6
      AD00E7D6AD007B84B50084847B00C6C6A500CECECE0094A5D600E7DEC600B5A5
      9C00525252003939390084847B00A5424A00E77B8400FFF7F700EFDEC600FFEF
      BD0094848400DED6D600E7E7EF00D6DEEF00DEE7EF00DEE7F70094848400DEE7
      EF00DEE7F700CEDEEF00DECECE00C68C9400E77B8400FFFFFF00FFF7F700CEBD
      AD00FFF7CE00FFF7CE00F7E7BD00E7CE9C00E7CE9C00FFEFD600BDBDBD00635A
      5A0073737300FFCED600FFCECE00A5424A00E77B8400FFFFFF00319CCE0042BD
      EF006BB5D600E7F7F700E7F7F700DEF7F700DEF7F700D6EFF700D6EFF70094C6
      DE004A8CC600FFD6D600FFCED600A5424A00E77B84006B94EF006B94EF00848C
      CE00ADADC60094949400E7D6AD00FFFFC600F7EFBD00EFE7C600FFF7D600F7EF
      D600A59C8C00393939006B6B6B00A5424A00E77B8400FFFFFF00EFDEC600FFF7
      CE00FFEFCE00F7EFDE0094848400DEE7F700E7E7EF00D6DEEF00E7E7EF00DEDE
      E700DEF7FF00BDBDBD00CEADAD00A5424A00E77B8400FFFFFF00FFFFFF00BDBD
      BD00BDDEF700FFFFEF00DEDEBD0063636300736B5200E7DEBD008C94B5006363
      630073737300FFD6D600FFCED600A5424A00E77B8400FFFFFF00319CCE007BEF
      FF004AC6E7001894C6002194CE00319CCE0052A5CE0052A5CE00429CCE004AA5
      D60031849400FFD6DE00FFD6D600A5424A00E77B8400FFFFFF00FFFFFF00318C
      FF00318CFF00BDBDAD00F7EFD600FFFFC600F7EFBD00D6CE9C00EFCE9400F7EF
      D600BDBDAD00525252006B6B6B00A5424A00E77B8400FFFFFF00F7EFDE00FFF7
      CE00FFEFBD00FFF7CE00F7EFDE00DEDEDE00E7E7EF0094848400DEE7F700E7EF
      F700EFF7F700B5A5A500AD949400A5424A00E77B8400FFFFFF00FFFFFF00CECE
      C600FFF7F700FFFFFF00FFFFEF00CECEA500736B5200E7D6AD00C6B59C005252
      520073737300FFD6DE00FFD6D600A5424A00E77B8400FFFFFF00429CCE00BDFF
      FF007BFFFF0084FFFF008CFFFF00C6FFFF0094C6DE0094C6DE0094C6DE0094C6
      DE00FFDEDE00FFDEDE00FFD6DE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDC600B5D6EF00FFFFEF00DED6BD0063635A006B634A00DED6
      BD00848CCE0063635A006B6B6B00A5424A00E77B8400FFFFFF00A5C6F70084A5
      EF00A5ADDE00CEBDC600DEDEDE00F7EFDE00FFFFE700FFFFE700F7FFF700F7EF
      DE00B5A5A50094848400E7BDBD00A5424A00E77B8400FFFFFF00FFFFFF00EFDE
      CE00EFE7D600FFFFF700FFFFFF00F7FFFF00CECEA500AD9C7B008C8484007373
      7300FFDEDE00FFDEDE00FFD6DE00A5424A00E77B8400FFFFFF00429CCE00E7FF
      FF00E7FFFF00E7FFFF00DEFFFF00429CCE00FFEFF700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CECEC600FFF7EF00FFFFFF00FFFFE700C6C6A500736B6300E7D6
      AD00BDBDAD00525252006B6B6B00A5424A00E77B8400FFFFFF003194F700086B
      FF000052FF000052FF00296BFF004A8CF70073B5F700A5C6F700DEDEE700F7D6
      A500AD949400E7C6CE00FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00EFDECE00EFDECE00D6D6D600ADC6DE00E7DEBD00B5A5A5009C9C9C009C9C
      9C00FFE7E700FFDEDE00FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00429C
      CE00429CCE00429CCE00429CCE00FFF7F700FFF7F700FFEFF700FFEFEF00FFEF
      EF00FFE7E700FFE7E700FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFDECE00EFE7D600FFFFF700F7FFFF00F7F7EF00D6CE9C00A59C
      8C0084847B006B6B6B00FFDEDE00A5424A00E77B8400FFFFFF00BDCEDE00A5C6
      F70073B5F7003194F7003194F700086BFF000052FF000052FF003963D6007373
      AD00CEBDC600FFE7E700FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFDECE00D6D6D600CECEC600BDBDBD009C9C9C009C9C9C00FFEF
      EF00FFE7E700FFE7E700FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFF700FFEF
      EF00FFEFEF00FFE7E700FFE7E700A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFDECE00EFDECE00DEDEE700B5D6EF00E7D6AD00ADA5
      A5009494940094949400FFE7EF00A5424A00E77B8400FFFFFF00F7FFF700FFFF
      FF00F7F7EF00DEDEDE00EFF7F700E7EFF700C6DEFF00A5C6F70084A5EF00A5AD
      DE00FFEFEF00FFE7E700FFE7E700A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEF
      EF00FFEFEF00FFE7E700FFE7E700A5424A00E77B8400FFE7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEF
      F700FFEFEF00FFEFEF00FFDEDE00A5424A00E77B8400FFE7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFDECE00D6D6CE00CECEC600BDBDC6009494
      940094949400FFE7EF00FFDEDE00A5424A00E77B8400FFE7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7
      F700FFEFEF00FFEFEF00FFDEDE00A5424A00E77B8400FFE7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEF
      F700FFEFEF00FFEFEF00FFDEDE00A5424A0000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B84000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B84000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B84000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEB59400DEB594000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007363630052423100524231004A39
      29004A3929004A3929005242310063524A000000000000000000000000000000
      0000000000000000000000000000000000007363630052423100524231004A39
      29004A3929004A3929005242310063524A000000000000000000000000000000
      000000000000000000000000000000000000E7CEAD007363630073636300DEB5
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B848C00737B7B006B73
      73006B7373006B6B73006B6B7300E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD
      9C00E7BD9C00E7BD9C00E7BD9C004A392900000000007B848C00737B7B006B73
      73006B7373006B6B73006B6B7300E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD
      9C00E7BD9C00E7BD9C00E7BD9C004A3929000000000000000000000000000000
      000000000000000000000000000000000000E7CEAD0073636300736363007363
      6300DEB594000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5D6F70042739C00396B8400396B
      8400315A8400315A8400315A8400E7BD9C00FFE7C600FFE7BD00FFE7BD00FFE7
      BD00FFE7BD00FFE7BD00E7BD9C0039211800A5D6F70042739C00396B8400396B
      8400315A8400315A8400315A8400E7BD9C00FFE7C600FFE7BD00FFE7BD00FFE7
      BD00FFE7BD00FFE7BD00E7BD9C00392118000000000000000000000000000000
      00000000000000000000000000000000000000000000E7CEAD00736363007363
      630073636300DEB5940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007BCEFF0042DEF70031CEEF0031CE
      EF0029C6EF0018BDE70010ADD600E7BD9C00FFE7BD0094847300948473009484
      730094847300FFE7BD00E7BD9C00392118007BCEFF0042DEF70031CEEF0031CE
      EF0029C6EF0018BDE70010ADD600E7BD9C00FFE7BD00FFE7BD00FFE7C6004A39
      2900FFE7BD00FFE7BD00E7BD9C00392118000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7CEAD007363
      6300736363007363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084CEFF004ADEF70042D6F70031CE
      EF0029C6EF0021C6E70010ADD600E7BD9C00FFEFCE00FFE7C600FFE7C600FFE7
      C600FFE7C600FFE7C600E7BD9C003921180084CEFF004ADEF70042D6F70031CE
      EF0029C6EF0021C6E70010ADD600E7BD9C00FFEFCE00FFE7C600FFE7C600FFE7
      C600FFE7C600FFE7C600E7BD9C003921180000000000DEB59400DEB59400DEB5
      9400DEB59400DEB59400DEB59400DEB59400000000000000000000000000E7CE
      AD007363630073636300DEB59400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084CEFF004ADEF70042DEF70039D6
      F70031CEEF0021C6E70021B5DE00E7BD9C00FFEFCE0094847300948473009484
      730094847300FFEFCE00E7BD9C003921180084CEFF004ADEF70042DEF70039D6
      F70031CEEF0021C6E70021B5DE00E7BD9C00FFEFCE00FFE7C600FFE7C6004A39
      2900FFEFD600FFEFCE00E7BD9C00392118000000000073636300736363007363
      6300736363007363630073636300DEB59400000000000000000000000000E7CE
      AD00736363007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084CEFF0052E7FF004ADEF70042D6
      F70031CEEF0029C6EF0021B5DE00E7BD9C00FFEFCE00FFEFCE00FFEFC600FFEF
      C600FFEFC600FFEFCE00E7BD9C003921180084CEFF0052E7FF004ADEF70042D6
      F70031CEEF0029C6EF0021B5DE00E7BD9C00FFEFCE00FFEFCE00FFEFCE004A39
      2900FFEFC600FFEFCE00E7BD9C00392118000000000073636300736363007363
      6300736363007363630073636300DEB594000000000000000000000000000000
      0000E7CEAD007363630073636300DEB594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008CD6FF005AE7FF0052E7FF0042DE
      F70039D6F70031CEEF0021B5DE00E7BD9C00FFEFD60094847300948473009484
      730094847300FFF7D600E7BD9C00392118008CD6FF005AE7FF0052E7FF0042DE
      F70039D6F70031CEEF0021B5DE00E7BD9C00FFEFD600FFEFCE00FFEFCE00FFEF
      CE004A392900FFF7D600E7BD9C00392118000000000073636300736363007363
      630073636300DEB5940000000000000000000000000000000000000000000000
      0000E7CEAD007363630073636300DEB594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094D6FF0063EFFF005AE7FF004ADE
      F70042DEF70031CEEF0031C6DE00E7BD9C00FFEFD600FFEFCE00FFEFCE00FFEF
      CE00FFEFCE00FFFFEF00E7BD9C003921180094D6FF0063EFFF005AE7FF004ADE
      F70042DEF70031CEEF0031C6DE00E7BD9C00FFEFD6004A392900FFEFCE00FFEF
      CE004A392900FFFFEF00E7BD9C00392118000000000073636300736363007363
      63007363630073636300DEB59400000000000000000000000000000000000000
      0000E7CEAD007363630073636300DEB594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094D6FF006BF7FF005AEFFF0052E7
      FF004ADEF70039D6F70031C6DE00E7BD9C00FFF7D60094847300948473009484
      730094847300FFEFD600E7BD9C005242310094D6FF006BF7FF005AEFFF0052E7
      FF004ADEF70039D6F70031C6DE00E7BD9C00FFF7D600FFEFD6004A3929004A39
      2900FFF7D600FFEFD600E7BD9C0052423100000000007363630073636300E7CE
      AD00736363007363630073636300DEB594000000000000000000000000000000
      0000E7C6A5007363630073636300DEB594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094D6FF006BF7FF0063EFFF005AE7
      FF004ADEF70042DEF70031CEEF00E7BD9C00FFFFF700FFFFEF00FFFFEF00FFFF
      F700FFFFF700FFD69C00F79431009484730094D6FF006BF7FF0063EFFF005AE7
      FF004ADEF70042DEF70031CEEF00E7BD9C00FFFFF700FFFFEF00FFFFEF00FFFF
      F700FFFFF700FFD69C00F7943100948473000000000073636300736363000000
      0000E7CEAD0073636300736363007363630073636300DEB59400DEB59400DEB5
      9400736363007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CD6FF007BFFFF006BF7FF005AEF
      FF0052E7FF004ADEF70042D6EF00E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD
      9C00E7BD9C00E7BD9C00D6B58400000000009CD6FF007BFFFF006BF7FF005AEF
      FF0052E7FF004ADEF70042D6EF00E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD
      9C00E7BD9C00E7BD9C00D6B584000000000000000000E7CEAD00E7CEAD000000
      000000000000E7CEAD00DEB59400736363007363630073636300736363007363
      63007363630073636300DEB59400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CD6FF007BFFFF006BF7FF006BF7
      FF005AEFFF0052E7FF0042DEF70039D6F70031CEEF0029C6EF0021C6E700396B
      8400737B7B000000000000000000000000009CD6FF007BFFFF006BF7FF006BF7
      FF005AEFFF0052E7FF0042DEF70039D6F70031CEEF0029C6EF0021C6E700396B
      8400737B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEB594007363630073636300736363007363
      630073636300DEB5940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5DEFF007BFFFF004A9CAD00396B
      8400396B8400396B8400396B8400396B8400396B8400006BA50021C6E7004273
      9C0084949400000000000000000000000000A5DEFF007BFFFF004A9CAD00396B
      8400396B8400396B8400396B8400396B8400396B8400006BA50021C6E7004273
      9C00849494000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400DEB59400DEB59400DEB5
      9400DEB594000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5DEFF0063EFFF0073BDCE00C6BD
      B500DECEC600DECEC600DECEC600DECEC6009CA5AD00006BA50021B5DE0073BD
      CE0000000000000000000000000000000000A5DEFF0063EFFF0073BDCE00C6BD
      B500DECEC600DECEC600DECEC600DECEC6009CA5AD00006BA50021B5DE0073BD
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CA5
      AD00DECEC600DECEC600DECEC600DECEC6009CBDCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CA5
      AD00DECEC600DECEC600DECEC600DECEC6009CBDCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00000000000000000000000000008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFFFFF00FFFFFF00FFCE
      9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFF
      FF008C4A00000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFFFFF00FFFFFF00FFCE
      9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFF
      FF008C4A00000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C4A0000C6520000C6520000C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFCE9400FFCE9400FFCE
      9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE
      94008C4A00000000000000000000000000008C4A0000C6520000C6520000C652
      0000C6520000C6520000C6520000C6520000C6520000C6520000C6520000C652
      0000C6520000C6520000C65200008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFFFFF00FFFFFF00FFCE
      9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFF
      FF008C4A00000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFFFFF00FFFFFF00FFCE
      9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFFFF00FFCE9400FFFFFF00FFFF
      FF008C4A00000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000840000008400000000000000000000000000
      0000000000000000000000000000000000008C4A0000C6520000C6520000C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFCE9400FFCE9400FFCE
      9400FFCE9400FFCE9400FFCE9400FFCE940000000000FFCE9400FFCE9400FFCE
      94008C4A00000000000000000000000000008C4A0000C6520000C6520000C652
      0000C6520000C6520000C6520000C6520000C6520000C6520000C6520000C652
      0000C6520000C6520000C65200008C4A0000FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFCE94000000000000DEFF0000000000FFFFFF00FFFF
      FF008C4A00000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000840000008400000000000000000000000000
      0000000000000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00008C4A0000FFFFFF000000000094F7
      FF0000000000FFFFFF000000000094F7FF000000000000DEFF00000000000000
      000000000000000000007B0000007B0000008C4A0000FFFFFF00FFFFFF00C652
      0000FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A00000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000008C4A0000C6520000C6520000C652
      0000C6520000C6520000C6520000C6520000C6520000C6520000C6520000C652
      0000C6520000C6520000C65200008C4A00008C4A0000FFFFFF00FFFFFF000000
      000094F7FF000000000000DEFF000000000094F7FF000000000000C6EF0000C6
      EF0000C6EF000000000094630000946300008C4A0000C6520000C6520000C652
      0000C6520000C6520000C6520000C6520000C6520000C6520000C6520000C652
      0000C6520000C6520000C65200008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C4A0000FFFFFF00FFFFFF00C652
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A00008C4A00008C4A00008C4A00008C4A
      00000000000094F7FF000000000000DEFF000000000000DEFF0000DEFF0000DE
      FF0000DEFF0000DEFF00CE840000CE8400008C4A0000FFFFFF00FFFFFF00C652
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008C4A0000FFFFFF00FFFFFF00C652
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A00000000000000000000000000000000
      0000000000000000000094F7FF000000000094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00CE840000CE8400008C4A0000FFFFFF00FFFFFF00C652
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00000000000000000000000000000000
      0000000000000000000000000000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF000000000094630000946300008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000008400
      000084000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000000000008484
      840000000000000000000000000084848400000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000008400
      000084000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000000000008484
      840000000000000000000000000084848400000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000008400
      000084000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008484840000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000000000008484
      8400000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000000000008484
      8400000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000000000
      000000000000000000000000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000840000008400000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000000000008484
      8400000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000000000008484
      8400000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000840000008400000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0084848400FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      00000000000000008400000000000000000000000000FFFFFF0000008400FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400000000000000
      000000000000000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000084000000
      0000000000000000840000008400000000000000000084848400000084000000
      8400848484008484840084848400848484008484840000008400848484008484
      8400848484008484840084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000008400FFFF0000FFFFFF00FFFF000000008400000000000000
      000000000000000000000000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000000084000000
      84000000840000008400000084000000840000000000FFFFFF00848484000000
      84008484840084848400FFFFFF0084848400000084008484840084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000008400FFFFFF00FFFF0000FFFFFF0000008400000000000000
      000000000000000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000084000000
      00000000000000008400000084000000000000000000FFFFFF00FFFFFF000000
      84000000840084848400FFFFFF000000840000008400FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000008400FFFF0000FFFFFF00FFFF000000008400000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400000084000000840000008400000084000000
      0000000000000000840000000000000000000000000084848400848484008484
      8400000084000000840000008400000084008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000008400FFFFFF00FFFF0000FFFFFF0000008400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF00008484
      8400000084000000840000008400FFFF0000FFFF0000FFFF000084848400FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000008400FFFF0000FFFFFF00FFFF000000008400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000848484000000
      840000008400000084000000840084848400FFFF0000FFFF000084848400FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000008400FFFFFF00FFFF0000FFFFFF0000008400FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400848484000000000000008400000084008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000008400FFFF0000FFFFFF00FFFF000000008400FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000008400FFFFFF00FFFF0000FFFFFF0000008400FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000000000000000000000000000000000000084848400000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000008484840000000000000000000000000084848400000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000008484840000000000000000000000000000000000000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000008484840000000000000000000000000084848400000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEB59400DEB59400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB594007363630073636300E7CEAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000DEA55A00DEA5
      5200D69C4200000000000000000000000000000000000000000000000000E7E7
      E700E7E7E70000000000BD73080000000000000000000000000042CEEF0039C6
      EF0031C6EF00000000000000000000000000000000000000000000000000E7E7
      E700E7E7E7000000000000A5DE0000000000000000000000000000000000E7D6
      B500736363007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000007B7B7B000000000000000000DEAD6300DEA5
      5A00DEA55200000000000000000000000000000000000000000000000000E7E7
      E700E7E7E70000000000BD7308000000000000000000000000004ACEEF0042CE
      EF0039C6EF00000000000000000000000000000000000000000000000000E7E7
      E700E7E7E7000000000000A5DE00000000000000000000000000E7DED6007363
      63007363630073636300E7DED600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000007B7B7B000000000000000000E7B56B00DEAD
      6300DEA55A00000000000000000000000000000000000000000000000000E7E7
      E700E7E7E70000000000BD7308000000000000000000000000004ACEF7004ACE
      EF0042CEEF00000000000000000000000000000000000000000000000000E7E7
      E700E7E7E7000000000000A5DE00000000000000000000000000736363007363
      630073636300E7C6A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000E7B57300E7B5
      6B00DEAD63000000000000000000000000000000000000000000000000000000
      00000000000000000000C67B100000000000000000000000000052D6F7004ACE
      F7004ACEEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5DE000000000000000000E7CEAD00736363007363
      6300DEB594000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000007B7B7B000000000000000000EFBD7B00E7B5
      7300E7B56B00E7AD6300DEA55A00DEA55200D69C4200D69C4200D6943900CE8C
      3100CE8C2900CE8C2900C68418000000000000000000000000005AD6F70052D6
      F7004ACEF7004ACEEF0039C6EF0039C6EF0031C6EF0029BDE70021BDE70021B5
      E70018B5E70010ADDE0010ADDE00000000000000000073636300736363007363
      630000000000000000000000000000000000E7CEAD0073636300736363007363
      6300736363007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000007B7B7B000000000000000000EFC68C00EFBD
      7B00E7B57300E7B56B00E7AD6300DEA55A00DEA55200D69C4A00D69C4200D694
      3900CE8C3100CE8C2900CE8C290000000000000000000000000063DEF7005AD6
      F70052D6F7004ACEF70042CEEF0039C6EF0031C6EF0031C6EF0029BDE70021BD
      E70018B5E70018B5E70010ADDE0000000000000000007363630073636300E7D6
      B50000000000000000000000000000000000E7CEAD0073636300736363007363
      6300736363007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000EFC68C00EFC6
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000CE8C3100CE8C290000000000000000000000000063DEFF0063DE
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000018B5E70018B5E70000000000000000007363630073636300E7DE
      D600000000000000000000000000000000000000000000000000E7DED6007363
      6300736363007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7CE9C000000
      0000FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E70000000000CE8C310000000000000000000000000063DEFF000000
      0000FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E7000000000018B5E70000000000000000007363630073636300E7DE
      D6000000000000000000000000000000000000000000E7CEAD00736363007363
      6300736363007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7CE9C000000
      0000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7
      E700E7E7E70000000000D694390000000000000000000000000063DEFF000000
      0000FFFFFF00FFFFFF00F7F7F700F7F7F7000000000000000000EFEFEF00E7E7
      E700E7E7E7000000000021B5E70000000000000000007363630073636300E7C6
      A50000000000000000000000000000000000DEB5940073636300736363007363
      6300DEC6B5007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD000000
      0000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEF
      EF00E7E7E70000000000D69C420000000000000000000000000073E7FF000000
      0000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700EFEFEF00EFEF
      EF00E7E7E7000000000021BDE700000000000000000073636300736363007363
      6300E7D6B500E7DED600E7D6B50073636300736363007363630073636300E7D6
      B500000000007363630073636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF0000000000D69C4A0000000000000000000000000073E7FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFEFEF00EFEF
      EF00EFEFEF000000000029BDE7000000000000000000E7D6B500736363007363
      63007363630073636300736363007363630073636300DEB59400000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEF
      EF00EFEFEF00000000000000000000000000000000000000000073E7FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFEF
      EF00EFEFEF000000000000000000000000000000000000000000E7CEAD007363
      630073636300736363007363630073636300E7CEAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFD6AD000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700EFEFEF0000000000FFFFFF0000000000000000000000000073E7FF000000
      0000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00000000000000
      0000EFEFEF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7000000000000000000E7E7E700E7E7E700000000000000
      0000E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007363630052423100524231004A39
      29004A3929004A3929005242310063524A000000000000000000006394000039
      5200003952000039520000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E878A007E6C69008E87
      8A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000007B848C00737B7B006B73
      73006B7373006B6B73006B6B7300E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD
      9C00E7BD9C00E7BD9C00E7BD9C004A39290000000000003952000039520084D6
      FF009CDE7D0094949400FFFFFF00FFFFFF005345400053454000534540005345
      40005345400053454000FFFFFF0000000000000000007F8F9C005787CB009983
      76008E878A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000949494005A5A5A004242420042424200524A4A007B7B7300524A4A00524A
      4A006B6B6B00848484000000000000000000A5D6F70042739C00396B8400396B
      8400315A8400315A8400315A8400E7BD9C00FFE7C600FFE7BD00FFE7BD00FFE7
      BD00FFE7BD00FFE7BD00E7BD9C0039211800003952000063940063C6F7008CDE
      FF009CE7FF0094949400FFFFFF00D4D5D400676A690027272500251610005E5A
      53002A2E2C00444B440053454000000000000000000066D4FF005ACEFF005787
      CB00998376008E878A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      6300A5A5A500EFEFEF00ADB5AD009C8C8400A5848400B5B5AD00E7E7E700B5B5
      B50052525200524A4A00737B7300000000007BCEFF0042DEF70031CEEF0031CE
      EF0029C6EF0018BDE70010ADD600E7BD9C00FFE7BD0039211800392118003921
      180039211800FFE7BD00E7BD9C00392118000039520039B5F70063C6F7008CD6
      FF00A5E7FF0094949400E6E7E600B3B9B300F4F9F400A29D9D0053454000766D
      7500ABA6A9006769670053454000000000000000000000000000B3D2DF005ACE
      FF005787CB008E6C65008E878A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000949C9400EFEF
      EF00EFEFEF00E7E7E700ADADAD00949494005A5A5A006B6B6B008C8C8C00BDBD
      BD00E7E7E700ADB5AD006B6B6B000000000084CEFF004ADEF70042D6F70031CE
      EF0029C6EF0021C6E70010ADD600E7BD9C00FFEFCE00FFE7C600FFE7C600FFE7
      C600FFE7C600FFE7C600E7BD9C00392118000039520039B5F70063CEF7008CDE
      FF00A5E7FF0094949400BDBFBD00E0E7E0009DA79D00686C6800646868006363
      630075847A001E3B25005345400000000000000000008E878A008E878A005B86
      C4005ACEFF005787CB0068555E008E878A007E6C6900998376007E6C69008E87
      8A008E878A008E878A008E878A000000000000000000B5B5B500F7FFF700EFF7
      EF00D6D6D600949494007B847B00949C9400ADB5AD00A5A5A500949494009494
      94008484840063636300737B73000000000084CEFF004ADEF70042DEF70039D6
      F70031CEEF0021C6E70021B5DE00E7BD9C00FFEFCE0039211800392118003921
      180039211800FFEFCE00E7BD9C00392118000039520042B5F7006BCEF7008CD6
      FF00A5E7FF00949494007D827D00BCC8BC00C8D6C800D6DCD600BFBCBF00A198
      9E00818F86001C372500534540000000000000000000BF7F4C00BF7F4C00BF7F
      4C00BBC7D1009DA6AD00B28B8500FFEFC300FFFFEB00FFFFFF00FFFFFE009983
      760088552B00D29D740088552B000000000000000000B5B5B500D6D6D6009C9C
      9C00949C9400C6C6C600A5A5A5008C8C8C007B847B007B847B009C9C9C00BDBD
      BD0073AD8400525252007B7B7B000000000084CEFF0052E7FF004ADEF70042D6
      F70031CEEF0029C6EF0021B5DE00E7BD9C00FFEFCE00FFEFCE00FFEFC600FFEF
      C600FFEFC600FFEFCE00E7BD9C00392118000039520042B5F7006BCEF700CE42
      1000CE42100094949400BCBBBC00CFD6D20099A3A100C3C8C800E7E7E900DCE0
      DC00D3CED2007C7E7B00534540000000000000000000EDD0B100EAFFFF00EAFF
      FF00E4F5FB00CCC2B500EDD0B100FFEFC300EEEBD100EEE6DF00EEFCFF00FFFF
      FE007E6C6900E4F5FB008E6C65000000000000000000737B7300A5A5A500D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00CECECE00BDBDBD009C9C9C008484
      840063846B00525252007B847B00000000008CD6FF005AE7FF0052E7FF0042DE
      F70039D6F70031CEEF0021B5DE00E7BD9C00FFEFD60018BDE70042739C0018BD
      E70042739C00FFF7D600E7BD9C00392118000039520042B5F700CE4210008CDE
      FF009CE7FF0094949400F3F3F40099A3A100FACFC400D2BCAF00D6D2CD00B6B6
      B7007377730000000000FFFFFF000000000000000000DCB58B00D6ECF500C6D4
      DE00C8D4DA00D1C2A600DFD4B700D4C6A900DCDBC100E1E3DD00E1E3DD00FFFF
      EB00BEABA5009DA6AD008E6C650000000000000000009C9C9C00DEDEDE00D6D6
      D600D6D6D600C6C6C600D6D6D600CECECE00BDC6BD00BDBDBD00CECECE00D6D6
      D600CECECE006B6B6B00848484000000000094D6FF0063EFFF005AE7FF004ADE
      F70042DEF70031CEEF0031C6DE00E7BD9C00FFEFD60042739C006BF7FF0018BD
      E70018BDE700FFFFEF00E7BD9C00392118000039520042B5F7006BCEF7008CDE
      FF009CE7FF0094949400FFFFFF0099A3A100FFE2A200FFEFAD00FFD9A7005C55
      4F0000000000FFFFFF00FFFFFF000000000000000000E7B57B00D6ECF500CBD7
      DD00C5CFD000D3C4AF00DAC59B00DAC59B00DBD6BA00DCDBC100E5E4C900EEEB
      D100CFC0A200B2B0B1008E6C65000000000000000000B5B5B500D6D6D600BDC6
      BD00A5A5A5009C9C9C00CECECE00EFEFEF00EFEFEF00E7EFE700D6D6D600BDBD
      BD00BDBDBD0084848400000000000000000094D6FF006BF7FF005AEFFF0052E7
      FF004ADEF70039D6F70031C6DE00E7BD9C00FFF7D60018BDE70042739C0018BD
      E70042739C00FFEFD600E7BD9C00524231000039520042B5F70063CEF7008CDE
      FF009CE7FF0094949400FDFCFC0099A3A100FFFFE500FFFFEF00ECC9AF00444A
      4D0000000000FFFFFF00FFFFFF000000000000000000E7B57B00D6ECF500CBD7
      DD00CBD7DD00D1C2A600E7E0C100DCCBB600DFD4B700DFD4B700E7E0C100FFFF
      D700C59E8100C8D4DA008E6C6500000000000000000000000000B5B5B500C6C6
      C600EFEFEF00ADB5AD00B5BDB500ADB5AD00B5BDB500BDBDBD00BDBDBD00ADB5
      AD008484840000000000000000000000000094D6FF006BF7FF0063EFFF005AE7
      FF004ADEF70042DEF70031CEEF00E7BD9C00FFFFF700FFFFEF00FFFFEF00FFFF
      F700FFFFF700FFD69C00F7943100948473000039520042B5F7006BCEF7008CDE
      FF009CE7FF0094949400A59F9C0099A3A100FFFFF900FFFFFA00D7C6C100444A
      4D000000000094949400949494000000000000000000E7B57B00D6ECF500CCD7
      DD00D0DEE100C5BCBC00DCCBB600EFF9F600EEDDBD00EDD0B100FFEFC300DAC5
      9B00A18B8500F1FFFF008E6C650000000000000000000000000000000000C6BD
      B500FFD6C600FFD6C600F7D6CE00EFDED600E7DEDE00E7E7E700848484008484
      8400000000000000000000000000000000009CD6FF007BFFFF006BF7FF005AEF
      FF0052E7FF004ADEF70042D6EF00E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD
      9C00E7BD9C00E7BD9C00D6B58400000000000039520042B5F70063CEF7008CDE
      FF000063940000639400006394000063940099A3A10099A3A10099A3A10099A3
      A1001884CE001884CE00003952000000000000000000E7B57B00D6ECF500C9D6
      DA00CBD7DD00C8D4DA00C5B8B700CFC2B400DFD4B700EDD0B100D4C5A900B59A
      8D00C6D4DE00FFFFFF008E6C650000000000000000000000000000000000D6BD
      B500FFDEB500FFDEB500FFDEB500FFDEB500FFD6AD0073635A00848484000000
      0000000000000000000000000000000000009CD6FF007BFFFF006BF7FF006BF7
      FF005AEFFF0052E7FF0042DEF70039D6F70031CEEF0029C6EF0021C6E700396B
      8400737B7B0000000000000000000000000000395200003129000063940042B5
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042B5
      F700006394001884CE00003952000000000000000000DCB58B00D6ECF500CEDD
      E400CEDDE400D5E2E800D5E2E800C5CACC00AFA6AA00BFB4B100BBC7D100D6EC
      F500DFF0F700FEFFFF008E6C650000000000000000000000000000000000C6AD
      9C00FFE7C600FFE7C600FFE7C600FFE7C600F7DEC6006B636300000000000000
      000000000000000000000000000000000000A5DEFF007BFFFF004A9CAD00396B
      8400396B8400396B8400396B8400396B8400396B8400006BA50021C6E7004273
      9C008494940000000000000000000000000000395200003129001884CE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000639400636363000000000000000000DAC59B00E4F6FC00D5E9
      F200D5E9F200D5E9F200D6ECF500D6ECF500E4F5FB00E4F5FB00DFF0F700DFF0
      F700DFF0F700FFFFFF008E6C650000000000000000000000000000000000DEC6
      B500FFEFDE00FFEFDE00FFEFDE00FFEFDE00D6BDB50094949400000000000000
      000000000000000000000000000000000000A5DEFF0063EFFF0073BDCE00C6BD
      B500DECEC600DECEC600DECEC600DECEC6009CA5AD00006BA50021B5DE0073BD
      CE000000000000000000000000000000000042B5F70094949400007B7B001884
      CE001884CE0042B5F70042B5F70042B5F70042B5F70042B5F70042B5F7001884
      CE001884CE006363630042B5F7000000000000000000DB862200DB862200DB86
      2200DB862200DB862200DB862200DB862200DB862200DB862200C7824600C782
      4600BF7F4C009983760088552B00000000000000000000000000CEBDB500FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00AD9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CA5
      AD00DECEC600DECEC600DECEC600DECEC6009CBDCE0000000000000000000000
      0000000000000000000000000000000000000000000042B5F70094949400007B
      7B00006363000063630000636300006363000063630000636300006363000063
      6300007B7B0042B5F700000000000000000000000000E1810B00DB862200E181
      0B00E1810B00E1810B00E1810B00E1810B00E1810800E07A0000E9870C00E987
      0C00DB862200CC875100B0957B00000000000000000000000000E7D6D600E7D6
      D600E7D6D600E7D6D600E7D6D600E7D6D600E7D6D60000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6008484840084848400000000000000
      0000000000008400000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084000000840000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C60084848400848484000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000840000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C6000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      8400840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000840000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000C6C6C60000000000C6C6C600C6C6C6008484
      8400840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084000000840000008400
      0000840000008400000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000008400000000000000C6C6C6008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000084000000C6C6C600848484008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000C6C6C6008400000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000008400000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001073
      9C0010739C0010739C0010739C0010739C0010739C0010739C0010739C001073
      9C0010739C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084633100846331008463
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001094BD001094
      BD001094BD001094BD001094BD001094BD001094BD001094BD001094BD001094
      BD001094BD0010739C0000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF0000000000000000000000000084633100846331008463
      3100000000008463310084633100846331008463310084633100846331008463
      310084633100846331008463310000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC600109CC6009CFF
      FF0063D6FF0063D6FF0063D6FF0063D6FF0063D6FF0063D6FF0063D6FF0063D6
      FF0063D6FF002194BD000873A500000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000084633100846331008463
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC600109CC60073E7
      EF009CFFFF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7
      FF0073DEFF0039B5DE000873A500000000000000000000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0084000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC60021A5CE0039B5
      D6009CFFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EF
      FF0084E7FF0039BDEF000873A500000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF0084000000FFFFFF0084000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000084633100846331008463
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC60039B5DE00189C
      C600A5FFFF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF004ABDE70052BDCE000873A5000000000000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0084000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF0000000000000000000000000084633100846331008463
      3100000000008463310084633100846331008463310084633100846331008463
      310084633100846331008463310000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC6006BD6FF00109C
      C60084EFF7009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0052C6FF0094F7F7000873A5000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF0084000000FFFFFF0084000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000084633100846331008463
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC60084D6FF00109C
      C60063BDD600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084E7FF00FFFFFF000873A5000000000000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF008400000084000000FFFFFF0084000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC60084EFFF004ABD
      DE00109CC600109CC600109CC600109CC600109CC600109CC600109CC600109C
      C600109CC600109CC600109CC6000873A5000000000000000000FFFFFF00FFFF
      FF00FFFFFF00840000008400000084000000FFFFFF0084000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000084633100846331008463
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000109CC6009CF7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CF7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00109CC600107B9C00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF00840000008400000084000000FFFFFF0084000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF0000000000000000000000000084633100846331008463
      3100000000008463310084633100846331008463310084633100846331008463
      310084633100846331008463310000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000109CC600FFFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00FFFFFF00109CC600109CC600109CC600109C
      C600109CC600109CC60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00840000008400000084000000FFFFFF0084000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000084633100846331008463
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000018A5CE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00109CC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF008400000084000000840000008400000000FF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      CE0018A5CE0018A5CE0018A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF000000000000000000000000000000CE000000CE000000
      CE000000CE000000CE000000CE000000CE000000CE000000CE000000CE000000
      CE000000CE000000CE000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE000000CE000000
      CE000000CE000000CE000000CE000000CE000000CE000000CE000000CE000000
      CE000000CE000000CE000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007363630073636300736363004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073636300F7EFE700F7EFE700F7EF
      E700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE7004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B8C9400FFFFF7004A4A4A00F7EF
      E7004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00F7EFE7004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400FFFFF700FFFFF700F7EF
      E700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE7004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400FFFFF7004A4A4A004A4A
      4A004A4A4A00F7EFE7004A4A4A004A4A4A004A4A4A00F7EFE7004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400FFFFF700FFFFF700FFFF
      F700FFFFF700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE7004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400FFFFF7004A4A4A004A4A
      4A00FFFFF7004A4A4A004A4A4A00F7EFE7004A4A4A00F7EFE7004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400FFFFFF004A4A4A004A4A
      4A00FFFFF700FFFFF700FFFFF7004A4A4A0063CEFF004A4A4A004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400FFFFFF004A4A4A008CF7
      FF004A4A4A00FFFFF7004A4A4A008CF7FF004A4A4A0063CEFF004A4A4A004A4A
      4A004A4A4A00000000004A4A4A004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400FFFFFF00FFFFFF004A4A
      4A008CF7FF004A4A4A0063CEFF004A4A4A008CF7FF004A4A4A0042ADD60042AD
      D60042ADD6004A4A4A0052525200525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB59400DEB59400DEB59400DEB5
      94004A4A4A008CF7FF004A4A4A0063CEFF004A4A4A0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0073636300736363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A008CF7FF004A4A4A008CF7FF008CF7FF008CF7FF008CF7
      FF008CF7FF008CF7FF0073636300736363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A00D6FFFF00D6FFFF00D6FFFF00D6FFFF00D6FF
      FF00D6FFFF004A4A4A0052525200525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A00000000004A4A4A004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFD6DE00E78C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E78C8C00FFBDC600A5424A00E77B8400FFD6DE00FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCED600FFC6CE00FFC6CE00FFBD
      C600FFBDC600FFBDC600FFBDC600A5424A00E77B8400FFD6DE00FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6CE00FFC6
      C600FFBDC600FFBDC600FFBDC600A5424A008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A0000E77B8400FFEFEF00E78C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E78C8C00FFBDC600A5424A00E77B8400FFEFEF00E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400FFBDC600A5424A00E77B8400FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6
      CE00FFC6C600FFBDC600FFBDC600A5424A008C4A0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6520000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A0000E77B8400FFEFEF00E78C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E78C8C00FFBDC600A5424A00E77B8400FFEFEF00E77B840084C6
      84007BCE7B0084D68C0084D69C0084D69C008CDEAD008CE7BD008CE7BD008CF7
      D6009CDEC600E77B8400FFBDC600A5424A00E77B8400FFEFEF00FFEFEF00F7D6
      D600D6949C00BD6B7300BD6B7300BD636B00D68C9400FFCED600FFCECE00F7B5
      B500DE949C00DE949C00FFC6C600A5424A008C4A0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6520000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A0000E77B8400FFF7F700E78C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E78C8C00FFC6C600A5424A00E77B8400FFF7F700E77B8400217B
      390000630000106B1800106B1800106B1800217B3900217B39007BE7C6009CFF
      FF009CFFFF00E77B8400FFC6CE00A5424A00E77B8400FFF7F700FFEFEF00DEAD
      AD00CE848400D6848C00EFBDC600E7A5AD00B55A6300D6848C00FFCED600E79C
      A500C67B8400F7ADB500FFC6C600A5424A008C4A0000C6520000C6520000C652
      0000C6520000C6520000C6520000C6520000C6520000C6520000C6520000C652
      0000C6520000C6520000C65200008C4A0000E77B8400FFF7F700E78C8C00E78C
      8C00E78C8C00E78C8C00E78C8C00E78C8C00E78C8C00E78C8C00E78C8C00E78C
      8C00E78C8C00E78C8C00FFC6CE00A5424A00E77B8400FFF7F700E77B8400084A
      08000029000000290000002900000029000000290000084A08006BDE94008CF7
      D6007BE7C600E77B8400FFC6CE00A5424A00E77B8400FFF7F700F7DEDE00C67B
      8400D6949400F7D6D600FFE7E700FFDEDE00EFB5B500BD636B00D6949C00DE94
      9C00D6848C00FFC6C600FFC6CE00A5424A008C4A0000FFDEB500FFDEB500FFDE
      B500FFDEB500C6520000FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A0000E77B8400FFF7F700FFF7F700FFEF
      F700FFEFEF00FFEFEF00FFE7E700FFE7E700FFDEDE00FFDEDE00FFD6DE00FFD6
      D600FFCED600FFCECE00FFCECE00A5424A00E77B8400FFF7F700E77B8400106B
      18000063000000290000002900000029000021A5290042C65A007BCE5A00C6AD
      3100C6AD3100E77B8400FFC6CE00A5424A00E77B8400FFF7F700EFCECE00BD6B
      7300D69CA500FFEFEF00FFE7E700FFE7E700FFDEDE00D69C9C00B55A6300D684
      8C00E79CA500FFCECE00FFCECE00A5424A008C4A0000FFDEB500FFDEB500FFDE
      B500FFDEB500C6520000FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A0000E77B84000000CE000000CE00FFF7
      F700FFF7F7000000CE000000CE00FFE7E700FFE7E7000000CE000000CE00FFD6
      DE00FFD6D6000000CE000000CE00A5424A00E77B8400FFFFFF00E77B84004ABD
      520021A5290000290000084A0800006300008C941800B5941000E7840800F77B
      0000E7840800E77B8400FFCED600A5424A00E77B8400FFFFFF00F7DEDE00BD6B
      7300D69C9C00FFEFEF00FFEFEF00FFE7E700FFE7E700F7CECE00B5525A00BD63
      6B00F7BDC600FFCED600FFCECE00A5424A008C4A0000C6520000C6520000C652
      0000C6520000C6520000C6520000C6520000C6520000C6520000C6520000C652
      0000C6520000C6520000C65200008C4A0000E77B84000000CE000000CE00FFF7
      F700FFF7F7000000CE000000CE00FFEFEF00FFE7E7000000CE000000CE00FFDE
      DE00FFD6DE000000CE000000CE00A5424A00E77B8400FFFFFF00E77B84004ABD
      520021A52900107B0800107B08007B731800D6631000CE520000CE520000CE52
      0000D6631000E77B8400FFCED600A5424A00E77B8400FFFFFF00FFFFFF00DEB5
      BD00CE848400FFE7E700FFEFEF00FFEFEF00FFE7E700EFBDC600B55A6300B55A
      6300FFCECE00FFD6D600FFCED600A5424A008C4A0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6520000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A0000E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600A5424A00E77B8400FFFFFF00E77B84008CC6
      520084C63900C6D66B00E7DE7B00FFF79400FFDE8400C6AD3100D6733100CE52
      0000A5390800E77B8400FFD6D600A5424A00E77B8400FFFFFF00FFFFFF00EFD6
      D600CE8C9400D69C9C00EFCECE00F7D6DE00EFBDC600CE848400CE848400B55A
      6300E7A5AD00FFD6DE00FFD6D600A5424A008C4A0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6520000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6520000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C4A0000E77B8400FFFFFF00FFBDC600FFBD
      C600FFBDC600FFBDC600FFBDC600FFBDC600FFBDC600FFBDC600FFBDC600FFBD
      C600FFBDC600FFBDC600FFD6DE00A5424A00E77B8400FFFFFF00E77B8400FFDE
      8400FFDE6B00FFC63900FFC63900FFC63900FFC63900FFF79400FFFFBD00F7E7
      B500CEA57B00E77B8400FFD6DE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00EFBDC600CE949C00CE848400C67B8400C6737B00DEADAD00F7D6DE00C673
      7B00BD636B00F7CECE00FFD6DE00A5424A008C4A0000C6520000C6520000C652
      0000C6520000C6520000C6520000C6520000C6520000C6520000C6520000C652
      0000C6520000C6520000C65200008C4A0000E77B8400FFFFFF00FFBDC600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFBDC600FFDEDE00A5424A00E77B8400FFFFFF00E77B8400FFE7
      A500FFDE9400FFCE6300FFDE8400FFDE9400FFDE9400FFE7A500F7E7B500FFFF
      BD00F7E7B500E77B8400FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFEF00F7DEE700EFD6D600FFEFEF00FFEFEF00FFEFEF00EFBD
      BD00B55A6300D6949C00FFDEDE00A5424A008C4A0000FFDEB500FFDEB500FFDE
      B500FFDEB500C6520000FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A0000E77B8400FFFFFF00FFBDC600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFBDC600FFDEDE00A5424A00E77B8400FFFFFF00E77B8400F7D6
      A500F7D6A500F7D6A500F7D6A500F7D6A500F7CE9C00F7CE9C00F7CE9C00F7CE
      9C00E7C69C00E77B8400FFDEDE00A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEFEF00FFDE
      E700DEADAD00EFBDC600FFDEDE00A5424A008C4A0000FFDEB500FFDEB500FFDE
      B500FFDEB500C6520000FFDEB500FFDEB500FFDEB500FFDEB500C6520000FFDE
      B500FFDEB500FFDEB500FFDEB5008C4A0000E77B8400FFFFFF00FFBDC600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFBDC600FFE7E700A5424A00E77B8400FFFFFF00E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400FFE7E700A5424A00E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEF
      EF00FFEFEF00FFE7E700FFE7E700A5424A008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A00008C4A
      00008C4A00008C4A00008C4A00008C4A0000E77B8400FFE7E700FFBDC600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFBDC600FFDEDE00A5424A00E77B8400FFE7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7
      F700FFEFEF00FFEFEF00FFDEDE00A5424A00E77B8400FFE7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7
      F700FFEFEF00FFEFEF00FFDEDE00A5424A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B84000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B84000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00A5424A000000000000000000000000009C1800009C18
      00009C1800009C1800009C18000000000000000000009C1800009C1800009C18
      00009C1800009C18000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFD6DE00FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6CE00FFC6
      C600FFBDC600FFBDC600FFBDC600A5424A0000000000C6210000FFEFE700FFEF
      E700FFEFE700FFEFE700FFEFE700C6210000C6210000FFEFE700FFEFE700FFC6
      BD00FFC6BD00FFC6BD009C180000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFEFEF00FFE7E700FFE7
      E700FFDEE700FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6CE00FFC6
      CE00FFC6C600FFBDC600FFBDC600A5424A00F7290000FFFFFF00FFEFE700C621
      0000C6210000C6210000C6210000C6210000C6210000C6210000C6210000C621
      0000C6210000FFC6BD00FFC6BD009C1800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFDEDE00FFD6DE00FFD6D600FFCED600FFCECE00FFC6
      CE00FFC6CE00FFC6C600FFBDC600A5424A00F7290000FFFFFF009C1800000000
      0000C6210000FFFFFF00FFFFFF00FFEFE700FFEFE700FFEFE700FFEFE700C621
      000000000000C6210000FFC6BD009C1800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFF7F700E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400FFC6C600A5424A00F7290000FFFFFF00FFFFFF009C18
      00009C1800009C1800009C180000C6210000C62100009C1800009C1800009C18
      00009C180000FFEFE700FFC6BD009C1800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFF7F700A5424A00A542
      4A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A5424A00A542
      4A00A5424A00A5424A00FFC6CE00A5424A00BD6B3100F7290000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6210000C6210000FFFFFF00FFFFFF00FFEF
      E700FFEFE700FFEFE700C6210000423118000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFF7F700FFF7F700FFEF
      F700FFEFEF00FFEFEF00FFE7E700FFE7E700FFDEDE00FFDEDE00FFD6DE00FFD6
      D600FFCED600FFCECE00FFCECE00A5424A00CE630000B54A0000F7290000F729
      0000F7290000F7290000F729000094730000DE730000F7290000F7290000F729
      0000F7290000F7290000C6210000423118000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFFFFF00FFF7F700FFF7
      F700FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7E700FFDEDE00FFDEDE00FFD6
      DE00FFD6D600FFCED600FFCECE00A5424A00CE630000CE6B0000DE730000638C
      0000739C0000739C0000D6840000F78C0000F78C000094730000007300000073
      0000006B000052630000634A2100423118000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFFFFF00FFFFFF00FFF7
      F700FFF7F700FFEFF700FFEFEF00FFEFEF00FFE7E700FFE7E700FFDEDE00FFDE
      DE00FFD6DE00FFD6D600FFCED600A5424A00CE6B0000DE730000739C000000AD
      21004A941000ADA52900FFB51000F79C0800FF8C0000F78C0000297B00001884
      00003173000031730000634A2100423118008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7E700FFDE
      DE00FFDEDE00FFD6DE00FFD6D600A5424A00E78C1800DE73000008B5310008BD
      390010C6520021C65200C6C66300EFBD4A00FFB51000FF8C0000638C00000084
      000000730000106300008C6B3900423118000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFFFFF00E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400FFD6DE00A5424A00EFBD4A00638C000008BD390042C6
      630073D67B0042DE7B0073DE8400FFD68400EFBD4A00FF8C00008C840000297B
      000000730000317300008C6B3900423118000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFF700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDEE700FFDEDE00A5424A000000000008B5310021C65A0042DE
      7B00E7E79400D6F7B500D6F7B500D6EFB500C6C66300BD940000F78C0000638C
      0000007300008C6B390042311800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFF700FFEFEF00FFEF
      EF00FFE7E700FFE7E700FFDEDE00A5424A0000000000D6EFB50042C6630073D6
      7B00C6EFAD00D6EFB500D6EFB50073DE840021C65A007B941000F78C0000CE6B
      00008C8400008C84000042311800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEF
      EF00FFEFEF00FFE7E700FFE7E700A5424A000000000000000000D6EFB5007BD6
      7300A5DE8400A5DE840084DE840042CE730010C652004A941000F78C0000DE9C
      3900DE9C39004231180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E77B8400FFE7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEF
      F700FFEFEF00FFEFEF00FFDEDE00A5424A00000000000000000000000000D6EF
      B500E7D68400BDD67B007BD673007BBD6B0042C66300B5BD5A00EFBD4A00EFBD
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B8400E77B
      8400E77B8400E77B8400E77B8400000000000000000000000000000000000000
      000000000000E7D68400E7D68400E7D68400E7D68400E7D68400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000000000000000000000000000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000084848400840000008400
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000084848400840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000084000000840000008484
      8400000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008400000000000000000000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000084000000840000008400
      0000840000000000000000000000000000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000084848400840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      00000000000000000000000000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000084848400840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B0000000000
      0000000000000000000000000000000000007B7B7B007B0000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000084000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      0000000000000000000000000000000000007B7B7B007B0000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B00
      0000000000000000000000000000000000007B0000007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008400000000000000000000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B0000007B0000007B0000007B0000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B00000000000000000000007B0000007B0000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B000000000000007B0000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B0000007B0000007B0000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00525252007B73
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00A5A5A5007B737300A58484005252
      52007B7373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0084ADC6003984D6007373A500B58C
      8400525252007B73730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00BDE7FF004AB5FF003984D6007373
      A500B58C8400525252007B737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000000000007B000000000000007B000000000000007B0000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000008484840000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00000000009CD6FF004AB5FF003984
      D6007373A500B58C840052525200A59C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CD6FF004AB5
      FF003984D6007373A500A58484007B737300A5A5A5006B636B00525252005252
      52006B636B008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CD6
      FF004AB5FF00528CCE008C8C8C007B737300B58C8400D6AD9400EFCEA500D6AD
      94007B737300525252008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CD6FF00D6CECE00A5848400EFCEA500FFF7BD00FFF7CE00FFFFD600FFFF
      E700EFEFDE00A5848400525252008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000000000FF000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6CECE00EFCEA500FFF7BD00FFF7C600FFFFD600FFFFE700FFFF
      F700FFFFF700EFEFDE006B636B006B636B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEBDAD00FFF7BD00FFE7AD00FFF7C600FFFFD600FFFFF700FFFF
      F700FFFFF700FFFFD600A59C940052525200000000007B7B7B00000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000848484000084000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEBDAD00FFF7BD00FFDEA500FFF7BD00FFFFD600FFFFE700FFFF
      F700FFFFE700FFFFD600D6AD94005252520000000000BDBDBD00000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000840000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEBDAD00FFF7BD00FFE7AD00FFF7BD00FFFFD600FFFFD600FFFF
      D600FFFFD600FFF7CE00D6AD94006B636B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000DEBDAD00FFF7CE00FFF7CE00FFE7AD00FFEFBD00FFF7BD00FFF7
      C600FFF7C600FFF7C600B58C84008C8C8C0000000000000000007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000D6CECE00EFDEBD00FFFFF700FFFFE700FFEFBD00FFE7AD00FFE7
      AD00FFF7BD00FFDEA5007B737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEBDAD00EFEFDE00FFFFE700FFF7CE00FFF7BD00FFF7
      BD00EFCEA500B58C840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6CECE00D6AD9400D6AD9400DEBDAD00D6AD
      94008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDC6BD006B5A52004A3929003929180039291800392918004229
      180042291800422921004A3929006B5A52000000000000000000000000000000
      00009484730084736300A59C8C00C6BDBD0000000000C6BDBD00C6BDBD00947B
      6B0084736300B5ADA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFCEBD00FFCEB500FFCEB500FFCEAD00FFCEAD00FFC6A500FFC6
      A500FFC6A500FFC6A500EFAD8C004A3929000000000000000000000000009C6B
      3100944A08007B4A2900735A4A00A59C8C00C6BDBD00B5B5AD0094522100944A
      08006B4A29007B6B5A0000000000000000000000000084848400848484008484
      8400848484008484840084848400000000008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF0000000000000000004A392900422921004229
      21008C634200E7D6CE00FFF7D600FFEFCE00FFEFC600FFEFC600FFE7BD00FFE7
      B500FFDEB500FFE7B500FFC6A500422921000000000000000000BDA58400DE63
      0000A55A0800DE6300008C6339007B6B5200B5B5AD00AD631800CE630800CE63
      0800CE5A000073635200C6BDBD000000000000000000FFFFFF00848484008484
      840084848400C6C6C600C6C6C60000000000FFFFFF0084848400848484008484
      8400C6C6C600C6C6C60000000000000000000000000000000000000000008484
      8400FFFFFF000000000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF0000000000E7B59400FFCEB500FFCEB500FFCE
      AD00E7B59400E7D6CE00FFF7CE00FFE7BD00FFE7BD00FFE7BD00FFE7BD00FFE7
      B500FFE7B500FFE7B500FFBDA500422918000000000000000000C69C6B00DE73
      10006B524A009C733900DE7310006B5239009C846B00E76B00006B523900946B
      5200DE63000073635200C6BDBD000000000000000000FFFF0000FFFFFF008484
      8400FFFFFF00C6C6C600FFFFFF0000000000FFFF0000FFFFFF0084848400FFFF
      FF00C6C6C600FFFFFF0000000000000000000000000000000000000000008484
      8400000000008484840000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF0000000000E7B59400FFF7CE00FFEFC600FFEF
      C600E7B59400EFDED600FFFFDE00FFEFCE00FFF7CE00FFEFCE00FFEFC600FFE7
      BD00FFE7BD00FFE7BD00FFBDA500422918000000000000000000D6BDA500EF7B
      00007B6B52006B4A2900E76B0000523929009C6B3100DE7B0800523929008C5A
      1800DE630000948C7300000000000000000000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000000000000000000000000
      000084848400848484008484840000000000FFFFFF00FFFFFF0000FFFF008484
      8400FFFFFF00FFFFFF0000FFFF0000000000E7B59400FFEFC600FFDEB500FFDE
      B500E7B59400F7DED600FFFFEF00FFFFE700FFFFE700FFFFDE00FFF7D600FFEF
      CE00FFEFC600FFEFC600FFC6A50042291800000000000000000000000000C673
      1000F77B0000EF7B0000E76B00005A423100844A1800F77B0000DE7B0800CE7B
      00009C6B3100C6BDBD00000000000000000000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF0000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600848484008484840000000000FFFFFF00FFFFFF008400
      000084848400FFFFFF00FFFFFF0000000000E7B59400FFEFCE00FFE7B500FFE7
      B500E7B59400F7E7D600FFFFF700FFFFE700FFFFE700FFFFE700FFFFE700FFF7
      E700FFEFD600FFEFCE00FFC6A500422918000000000000000000000000000000
      0000B5844A00B56B2900B5390000946B5200B56B2900BD4A0000A55A1000B584
      4A00C6BDBD0000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C60084848400848484000000000000FFFF008400
      000084000000FFFFFF0000FFFF0000000000E7B59400FFF7D600FFEFC600FFEF
      C600E7B59400FFE7DE00FFFFFF00FFFFEF00FFFFEF00FFFFEF00FFFFE700FFF7
      D600FFF7CE00FFF7D600FFC6A500422918000000000000000000000000000000
      00000000000000000000946B5200947B6B00A5948400523929008C847B00D6CE
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C6008484840084848400840000008400
      000084000000FFFFFF00FFFFFF0000000000E7B59400FFF7DE00FFEFC600FFEF
      C600E7B59400FFEFDE00FFFFFF00FFFFEF00FFFFF700FFFFEF00FFFFEF00FFFF
      E700FFFFDE00FFF7DE00FFC6A500422921000000000000000000000000000000
      000000000000000000009C847300C6BDBD00A58C7B00523929006B524A00BDBD
      B500000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400000000008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00C6C6C60000000000C6C6C600C6C6C60084848400840000008400
      000084000000FFFFFF0000FFFF0000000000E7B59400FFFFDE00FFEFC600FFEF
      C600E7B59400FFEFDE00FFFFFF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFF
      E700FFFFE700FFFFE700FFC6AD00422921000000000000000000000000000000
      000000000000B5A59C00CEBDB500CEBDB500B5A59C00A58C7B005A423100948C
      84000000000000000000000000000000000000000000FFFFFF00848484008484
      840084848400C6C6C600C6C6C60000000000FFFFFF0084848400848484008484
      8400C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00000000008400000000000000C6C6C60084000000840000008400
      000084848400FFFFFF00FFFFFF0000000000E7B59400FFFFE700FFEFCE00FFEF
      CE00E7B59400FFF7E700FFFFFF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFF
      DE00FFFFDE00FFFFF700FFC6B500523929000000000000000000000000000000
      000000000000B5ADA500C6BDBD0084736300B59C9400D6CEC600735A4A007363
      5A00C6BDBD0000000000000000000000000000000000FFFF0000FFFFFF008484
      8400FFFFFF00C6C6C600FFFFFF0000000000FFFF0000FFFFFF0084848400FFFF
      FF00C6C6C600FFFFFF0000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF0084000000C6C6C6008484840084000000840000008484
      8400FFFFFF00FFFFFF00FFFFFF0000000000E7B59400FFFFE700FFEFC600FFEF
      CE00E7B59400FFF7E700FFFFFF00FFFFF700FFFFF700FFFFEF00FFFFF700FFFF
      FF00FFE7CE00F78C4A00F78C4A008C7B6B000000000000000000000000000000
      0000C6BDBD00C6BDBD00B5A59C00ADADA500C6BDBD00D6CEC600D6CEC6006B5A
      5200ADADA50000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000000000000000000008400
      000000000000C6C6C60084000000848484000000000084848400FFFFFF00FFFF
      FF0000000000000000000000000000000000E7B59400FFFFEF00FFEFCE00FFEF
      CE00E7B59400FFFFE700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFEFC600FFA51800AD845200000000000000000000000000000000000000
      0000ADA59C00C6BDBD008C847B00C6BDBD0000000000C6BDBD00ADADA5007B6B
      6300948C840000000000000000000000000000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF0000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000000000000000000008400
      0000C6C6C60000000000840000000000000084848400FFFFFF0000FFFF00FFFF
      FF0084848400C6C6C6000000000000000000E7B59400FFFFF700FFF7D600FFF7
      D600E7B59400E7B59400E7B59400E7B59400E7B59400E7B59400E7B59400E7B5
      9400E7B59400E7B5940000000000000000000000000000000000000000000000
      0000ADA59C00A58C7B00C6BDBD00000000000000000000000000C6BDBD00AD9C
      9C008C847B0000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000000000000000000008400
      0000C6C6C600C6C6C600840000008484840000FFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400000000000000000000000000E7B59400FFFFFF00FFFFFF00FFFF
      FF00FFFFE700FFE7C600FFF7E700FFDEB500FFA518008C634200000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      B500A58C7B00ADADA5000000000000000000000000000000000000000000A594
      8400948C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000008400000084848400848484008484840084848400848484008484
      840084848400000000000000000000000000E7B59400E7B59400E7B59400E7B5
      9400E7B59400E7B59400E7B59400E7B59400E7B5940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A58C
      7B00C6BDBD00000000000000000000000000000000000000000000000000C6BD
      BD00A58C7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000846331008463310084633100846331008463310084633100846331008463
      3100000000000000000000000000000000000000000084633100846331008463
      3100846331008463310000000000846331008463310084633100846331000000
      0000846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000846331008463310084633100846331008463
      3100846331008463310084633100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000084633100846331000000
      0000846331008463310084633100846331008463310000000000846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000846331008463310084633100846331008463310084633100846331008463
      3100000000000000000000000000000000000000000084633100846331008463
      3100846331000000000084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000846331008463310084633100846331008463
      3100846331008463310084633100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331000000000084633100846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000846331008463310084633100846331008463310084633100846331008463
      3100000000000000000000000000000000000000000084633100846331000000
      0000846331008463310084633100846331008463310084633100846331008463
      3100000000008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000846331008463310084633100846331008463
      3100846331008463310084633100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310000000000846331008463310084633100846331000000
      0000846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000084633100846331008463
      3100846331008463310084633100846331008463310084633100846331008463
      3100846331008463310084633100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE000000CE000000CE000000CE00000000000000
      000000000000000000000000000000000000000000000000CE000000CE000000
      CE000000CE000000CE000000CE000000CE000000CE000000CE000000CE000000
      CE000000CE000000CE000000CE0000000000000000000000CE000000CE000000
      CE000000CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      CE000000CE000000CE000000CE00000000000000000000000000000000000000
      000000000000000000000000CE000000CE000000CE000000CE00000000000000
      000000000000000000000000000000000000000000000000CE000000CE000000
      CE000000CE000000CE000000CE000000CE000000CE000000CE000000CE000000
      CE000000CE000000CE000000CE0000000000000000000000CE000000CE000000
      CE000000CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      CE000000CE000000CE000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900100000100010000000000800C00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF3FFFFFFFFFFF0001
      DFFFFFFFFFFF0001B803FFFFFFFF00011FFFFF8FE67F0001FFFFFFBFF0FF0001
      1FFFFFDFF9FF0001BFFFFFEFF0FF0001D803CC9FE67F00013FFFE1FFFFC70001
      FFFFF3FFFFDF00011FFFE1FFFFEF0001BFFFCCFFFFF700013803FFFFFFCF0001
      BFFFFFFFFFFF0001FFFFFFFFFFFFFFFF80008001FFFFFFFF80000000FFFFFFFF
      800000001FFF1FFF8000000018031803800000001FFF1FFF80000000FFFFFFFF
      80000000FFFFFFFF800000001FFF1FFF8000000018031803800000001FFF1FFF
      80000000FFFFFFFF80000000FFFFFFFF800100001FFF1FFF8003000018031803
      800700001FFF1FFFFFFF8001FFFFFFFFC183FFFFFFFFFFFF80010001FFFFF9FF
      0000000107C1F0FF0000000107C1E0FF0000000107C1C07F800100010101863F
      800100010001CF3F800100010201FF9F800100010201FFCF800160018003FFE7
      80010001C107A9C380010001C107AAB980010001E38F89BD80030001E38FAABF
      80070001E38FD9CF800F0001FFFFFFFFFFFFC000C183C183FFF3800080018001
      8003800000000000000380000008000000018000000000000001800080010000
      00018000C081000000008000F80F001000008000FC1F000000008000FE1F0000
      00018000FC0F000000038000F8C7000000078000F1E3000081FF8000E3F30001
      C3FF8000C7FF81FFFFFFFFFFCFFFC3FF80018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008001800180018001FF9FFFFFFF00FF00FF0FFFFF80008000
      FF0781FF00000000FF83FFFF00000000FFC3843F0000000080E1FFFF00000000
      80E1821F0000000080F0FFF70000000083F084610000000081F0FFF500000000
      80F0821D000000009001FFFF000100019801841F00070007FE03FFFF00070007
      FF078107000F000FFFFFFFFFE07FE07FFFFFFFFFFFFFFFFFFF80000000070000
      FF80000000070000FF80000000070000FF80000000070000FF80000000070000
      06FF000000070000067F000000070000003F000000070000067F000000040000
      06FF000000000000FF80000000000000FF800000F8000000FF800000FC000000
      FF80FFFFFE04FFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C1C1C1C1FF80
      6EEEC1C1C1C1FF806EEEC1C1C1C1FF806000C1C1C1C1FF806EEEFF7FFF7FFF80
      6EEEFE3FFE3F06FF6000FC1FFC1F067F6EEEFF7FFF7F003F6EEEFF7FFF7F067F
      0000FC1FFC1F06FF6FFEFC1FFC1FFF806FFEFC1FFC1FFF800000FC1FFC1FFF80
      FFFFFC1FFC1FFF80FFFFFC1FFC1FFF80FFFFFFFFFFFFFFFFBFFDFFFFFFFF0000
      0000FEFF00FF00008001FC7F00FF00008001F83F00FF00008001FEFF00FF0000
      8001FEFF001B00008001F83F001900008001F83F000000008001F83F00190000
      8001F83F001B00008001F83F00FF00008001800300FF00008001800300FF0000
      0000800300FFFE3FBFFD8003FFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFBFFDBFFD
      AAABAAAB00000000FFFBFFFF80018001BFFBBFFB80018001FFFBFFFF80018001
      BFFBBFFB80018001FFFBFFFF80018001BFFBBFFB80018001FFFBFFFF80018001
      BFFBBFFB80018001FFFBFFFF80018001BFFBBFFB80018001FFFBFFFF80018001
      AAAB800300000000FFFFFFFFBFFDBFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      80038003AAABAAABBFFBFFFFBFFFFFFFBFFBBFFBBFFBBFFBBFFBFFFFBFFFFFFF
      BFFBBFFBBFFBBFFBBFFBFFFFBFFFFFFFBFFBBFFBBFFBBFFBBFFBFFFFBFFFFFFF
      BFFBBFFBBFFBBFFBBFFBFFFFBFFFFFFFBFFBBFFBBFFBBFFBBFFBFFFFBFFFFFFF
      8003AAABAAABAAABFFFFFFFFFFFFFFFFF9FFFFFFC000C000F0FFFF7180008000
      E1FFFF3680008000C1FFF51680008000C3FFDF318000800087FFFF7680008000
      8F01BFF6800080008F01FFD1800080008FC1DFFF800080008F81FFBF80008000
      8F0177FF80008000800977BF80008000803F07FF80008000C07FAFD780008000
      FFFF8FE780008000FFFFDFC7FFFFFE1FFF00C0008FFFF80F8000800087FFF003
      0000000083FFE00100000000C1FFC00100000000800180010000000080018001
      000000008001800100000000800180010000000080018003000000008001C007
      000000008001E00F000100018001E01F000700018001E03F000700018001E03F
      000F00018001C07FE07F80038001C07F0000FFFFFFFFFFFF0000FFFFFFFF3FFF
      000081D71FFFDFFF0000FFD71803B803FC7FFFD71FFF1FFFF83B81D7FFFFFFFF
      F019FF17FFFF1FFFE809FF171FFFBFFFCC0181171803D803E601FF031FFF3FFF
      F201FFFFFFFFFFFFF9038003FFFF1FFFF80FFFFF1FFFBFFFFA1FFFFF18033803
      FB3FF8031FFFBFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00780018FFF
      C007C00380018801C007800180018FFFC00780018001FFFFC007800180018FFF
      C007800080018801C007800080018FFFC00780008001FFFFC007800080018FFF
      C007800180018801C007800380018FFFC00FC0FF8001FFFFC01FE1FF80018001
      C03FFFFF80018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFF
      001FFFFFFFFFFFFF001FFFFFFFFFFFFF001FFFFFFFFFFFFF001FFFFFFFFF8003
      001FFFFF8003FFFF001F8003FFFFFFFF001FFFFFFFFFFFFF0004800380038003
      0000FFFFFFFFFFFF0000FFFFFFFFFFFFF800FFFFFFFFFFFFFC00FFFFFFFFFFFF
      FE04FFFFFFFFFFFFFFFFFFFFFFFFFFFF800180018001FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF800180018001FFFFFFFFFFFF8001C183FEFFFFFF00008001
      FFFF800700000000C27FFFFF00001008FFFF800100000000C200FFFF00000000
      FFFFEE0700000000DE07E607000000009E0783FF0000000007FFE60100000000
      9E00EE0100000000DE00FFFF00008001FFFF800700008001C200FFFF0000C003
      FFFF80010000E00FFEFFFFFF8001F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE00FFFFFC47FFFFFFFFFFFFFCE7FFC1FF83F7DEEE0FFF9CFF39F
      7D6EE4FFF9CFF39F8331F1FFFFCFF39FBB15F1FFC001F39FD73BFBFFF9FFF39F
      D77BFFFFF9CFF39FEFFFFFFFF9CFF39FEFFFFFEFFC1FE10FFFFFFFC7FFFFFFFF
      FFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FE0FFFFFFFFFFFF
      9FE1FFFFFFFFFFFF8FE3FFFFFFFF8703CFC381FFFC1FCF87C007E3FFF9CFE78F
      E787F1FFF9CFE78FE38FF8FFF9CFF01FF30FFC7FF9CFF31FF11FFE3FF9CFF93F
      F81FFF1FF9CFF83FF83FFF8FF9CFFC7FFC3FFF03FC1FFC7FFC60FFFFFFFFFEFF
      FE71FFFFF007FFFFFFFBFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF
      FFFF0000FFFFFFFFFFFF00008703FFFFF00FFFFFCF87FFFFF8C70E07E78F77BE
      F8C79F0FE78F75BEF8C7CF1FF01F8CC1F80FCF1FF31FAC5DF8C7E03FF93FDCEB
      F8C7E63FF83FDDEBF8C7F27FFC7FFFF7F00FF07FFC7FFFF7FFFFF8FFFEFFFFFF
      FFFFF8FFFFFFFFFFFFFFFDFFFFFFFFFF8FFFFFFFFFFF000007FFFFF7FC710000
      03FFFFF3FEFB000001FFEA819603000080FFFFF36F27FFFFC003FFF76F27C1FF
      E001FFFF8F8FCEFFF0001C7F6F8FE47FF8001C7F9FDFF03FF800087FFFFFF81F
      F800087FFC3FFD8FF800007FBE3FFEC7F80080FFBE3FFF63F801C9FFDDBFFF93
      FC03C9FFE3FFFFC7FE07FFFFFFFFFFFFFFFFFFFFF800F0830001E000F800E003
      0001E0008000C0010001E0000000C0010001E0000000C0030001E0000000E003
      0001C0000000F007000180000000FC0F000100000000FC0F000180000000F80F
      0001C0000000F8070001E0000000F0070001E0000001F0870001E0010003F1C7
      0001E003003FE3E70001E007007FE7E7FFFFFFFFFFFFFFFFF00F8211807FFE01
      FFFFFFFFFFFFFFFF8001904180018001FFFFFFFFFFFFFFFFF00F8401807FFE01
      FFFFFFFFFFFFFFFF8001808180018001FFFFFFFFFFFFFFFFF00F9009807FFE01
      FFFFFFFFFFFFFFFF8001821180018001FFFFFFFFFFFFFFFFFC3F800187FFFFE1
      FC3F800187FFFFE1FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ColorDialog: TColorDialog
    Left = 200
    Top = 200
  end
  object FontDialog: TFontDialog
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Options = [fdEffects, fdForceFontExist]
    Left = 232
    Top = 200
  end
  object pmEditor: TRVATBXPopupMenu
    Images = RVImageList
    ActionList = RVActionList
    Left = 200
    Top = 232
  end
end
