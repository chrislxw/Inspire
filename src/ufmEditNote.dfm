object fmEditNote: TfmEditNote
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #32534#36753#22791#24536#24405
  ClientHeight = 199
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 36
    Height = 12
    Caption = #26631#39064#65306
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 36
    Height = 12
    Caption = #22270#26631#65306
  end
  object Label3: TLabel
    Left = 32
    Top = 22
    Width = 36
    Height = 12
    Caption = #65321#65316#65306
  end
  object CIToolButton1: TCIToolButton
    Left = 253
    Top = 17
    DropDownMenu = pmTreeImages
    ImageIndex = 0
    Images = dmCommon.ILTree
    ToolStyle = tsDropDown
    ShowDropDownArrow = False
  end
  object CIToolButton2: TCIToolButton
    Left = 253
    Top = 50
  end
  object edCaption: TEdit
    Left = 74
    Top = 53
    Width = 175
    Height = 20
    TabOrder = 0
  end
  object btnSelectImage: TTBXButton
    Left = 74
    Top = 90
    Width = 43
    Height = 24
    DropDownMenu = pmTreeImages
    ImageIndex = 0
    Images = dmCommon.ILTree
    TabOrder = 1
  end
  object TTBXButton
    Left = 32
    Top = 148
    Width = 100
    Height = 24
    Caption = #30830#23450
    ImageIndex = 50
    Images = dmCommon.ILMain
    ModalResult = 1
    TabOrder = 2
  end
  object TTBXButton
    Left = 149
    Top = 148
    Width = 100
    Height = 24
    Caption = #21462#28040
    ImageIndex = 51
    Images = dmCommon.ILMain
    ModalResult = 2
    TabOrder = 3
  end
  object btnProtect: TTBXButton
    Left = 149
    Top = 90
    Width = 100
    Height = 24
    GroupIndex = 1
    AllowAllUnchecked = True
    ButtonStyle = bsFlat
    Caption = #26410#20445#25252
    ImageIndex = 49
    Images = dmCommon.ILMain
    TabOrder = 4
  end
  object edNoteID: TEdit
    Left = 74
    Top = 19
    Width = 175
    Height = 20
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object pmTreeImages: TTBXPopupMenu
    Top = 56
    object miTreeImageSelect: TTBXToolPalette
      ColCount = 16
      Images = dmCommon.ILTree
      PaletteOptions = []
      RowCount = 13
      OnCellClick = miTreeImageSelectCellClick
    end
  end
end
