object frmNote: TfrmNote
  Tag = 3
  Left = 0
  Top = 0
  Width = 811
  Height = 400
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 200
    Top = 0
    Height = 400
    ExplicitLeft = 296
    ExplicitTop = 176
    ExplicitHeight = 100
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 200
    Height = 400
    ActivePage = TabSheet1
    Align = alLeft
    HotTrackStyle = htsTabBar
    ShowCardFrame = False
    ShowFocusRect = False
    ShowFullFrame = False
    ShowShadow = False
    TabIndex = 0
    TabOrder = 0
    TabOrientation = toBottom
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = #22791#24536#35270#22270
      object tvNote: TCITreeView
        Left = 0
        Top = 0
        Width = 200
        Height = 382
        SelectionPen.Color = 16744448
        SelectionPen.Style = psDot
        Align = alClient
        DragMode = dmAutomatic
        HideSelection = False
        HotTrack = True
        Images = dmCommon.ILTree
        Indent = 19
        ItemHeight = 20
        ParentDoubleBuffered = False
        ParentShowHint = False
        PopupMenu = pmtvNote
        ShowHint = True
        TabOrder = 0
        OnChange = tvNoteChange
        OnChanging = tvNoteChanging
        OnDeletion = tvNoteDeletion
        OnDragDrop = tvNoteDragDrop
        OnDragOver = tvNoteDragOver
        OnEdited = tvNoteEdited
        OnExpanding = tvNoteExpanding
        OnKeyUp = tvNoteKeyUp
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #26085#35760#35270#22270
      object tvDiary: TCITreeView
        Left = 0
        Top = 0
        Width = 200
        Height = 382
        SelectionPen.Color = 16744448
        SelectionPen.Style = psDot
        Align = alClient
        HideSelection = False
        HotTrack = True
        Images = dmCommon.ILTree
        Indent = 19
        ItemHeight = 20
        ParentDoubleBuffered = False
        PopupMenu = pmtvDiary
        TabOrder = 0
        OnChange = tvNoteChange
        OnChanging = tvDiaryChanging
        OnExpanding = tvDiaryExpanding
      end
    end
  end
  object pmtvNote: TTBXPopupMenu
    Images = dmCommon.ILMain
    Left = 104
    Top = 128
    object TBXItem1: TTBXItem
      Action = actNoteAddSibiling
    end
    object TBXItem2: TTBXItem
      Action = actNoteAddChild
    end
    object TBXItem3: TTBXItem
      Action = actNoteDelete
    end
    object TBXItem4: TTBXItem
      Action = actNoteRename
    end
    object TBXItem7: TTBXItem
      Action = actNoteEdit
    end
    object TBXItem9: TTBXItem
      Action = actNoteModifyPwd
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem5: TTBXItem
      Action = actNoteMoveUp
    end
    object TBXItem6: TTBXItem
      Action = actNoteMoveDown
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXItem12: TTBXItem
      Action = actFileImport
    end
    object TBXItem13: TTBXItem
      Action = actFileExport
    end
    object TBXSeparatorItem3: TTBXSeparatorItem
    end
    object TBXItem8: TTBXItem
      Action = actNoteRefresh
    end
  end
  object actlstMemo: TActionList
    Images = dmCommon.ILMain
    OnUpdate = actlstMemoUpdate
    Left = 40
    Top = 128
    object actNoteAddSibiling: TAction
      Category = #22791#24536
      Caption = #28155#21152
      Hint = #26032#24314
      ImageIndex = 12
      OnExecute = actNoteAddSibilingExecute
    end
    object actNoteAddChild: TAction
      Tag = 1
      Category = #22791#24536
      Caption = #28155#21152#23376#39033'(&A)'
      ImageIndex = 12
      OnExecute = actNoteAddSibilingExecute
    end
    object actNoteDelete: TAction
      Category = #22791#24536
      Caption = #21024#38500'(&D)'
      Hint = #21024#38500
      ImageIndex = 14
      ShortCut = 16452
      OnExecute = actNoteDeleteExecute
    end
    object actNoteRename: TAction
      Category = #22791#24536
      Caption = #37325#21629#21517'(&R)'
      ShortCut = 113
      OnExecute = actNoteRenameExecute
    end
    object actNoteEdit: TAction
      Category = #22791#24536
      Caption = #32534#36753'(&E)'
      ImageIndex = 13
      ShortCut = 49221
      OnExecute = actNoteEditExecute
    end
    object actNoteMoveUp: TAction
      Tag = -1
      Category = #22791#24536
      Caption = #19978#31227'(&U)'
      ImageIndex = 19
      ShortCut = 49190
      OnExecute = actNoteMovePosExecute
    end
    object actNoteMoveDown: TAction
      Tag = 1
      Category = #22791#24536
      Caption = #19979#31227'(&N)'
      ImageIndex = 20
      ShortCut = 49192
      OnExecute = actNoteMovePosExecute
    end
    object actNoteRefresh: TAction
      Category = #22791#24536
      Caption = #21047#26032'(&S)'
      ImageIndex = 26
      OnExecute = actNoteRefreshExecute
    end
    object actNoteSave: TAction
      Category = #22791#24536
      Caption = #20445#23384
      Hint = #20445#23384
      ImageIndex = 30
      ShortCut = 16467
      OnExecute = actNoteSaveExecute
    end
    object actNoteModifyPwd: TAction
      Category = #22791#24536
      Caption = #20462#25913#23494#30721
      ImageIndex = 49
      OnExecute = actNoteModifyPwdExecute
    end
    object actDiaryAddMemo: TAction
      Category = #26085#35760
      Caption = #28155#21152#26085#35760'(&A)'
      ImageIndex = 12
    end
    object actFileImport: TAction
      Caption = #23548#20837
      Hint = #23548#20837
      ImageIndex = 33
      OnExecute = actFileImportExecute
    end
    object actFileExport: TAction
      Caption = #23548#20986
      Hint = #23548#20986
      ImageIndex = 32
      OnExecute = actFileExportExecute
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      ImageIndex = 38
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      ImageIndex = 39
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      ImageIndex = 40
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      ImageIndex = 36
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      ImageIndex = 5
      ShortCut = 46
    end
  end
  object pmEditor2: TTBXPopupMenu
    Images = dmCommon.ILMain
    Left = 264
    Top = 128
    object TBXItem10: TTBXItem
      Action = actNoteSave
    end
  end
  object pmtvDiary: TTBXPopupMenu
    Images = dmCommon.ILMain
    Left = 103
    Top = 180
    object TBXItem11: TTBXItem
      Action = actDiaryAddMemo
    end
  end
  object dlgOpen: TOpenDialog
    DefaultExt = 'ndp'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = #23548#20837
    Left = 40
    Top = 235
  end
  object dlgSave: TSaveDialog
    DefaultExt = 'ndp'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = #23548#20986
    Left = 75
    Top = 235
  end
  object rvOfficeConv: TRVOfficeConverter
    ExtensionsInFilter = True
    Left = 40
    Top = 270
  end
end
