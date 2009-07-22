{===============================================================================

  Chris Infinity - Common Library

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

unit ciRichViewEditorFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ImgList, Menus, StdCtrls,
  ExtCtrls,  ActnList, ShellAPI,
  RichViewActions, RVTypes, RVStyle, RVScroll, RichView, RVEdit, Ruler, RVRuler, CRVData, CRVFData,
  TBX, TB2Item, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, mbTBXComboBox, mbTBXFontCombo;

const
// Parameters for ApplyStyleConversion
  TEXT_BOLD       = 1;
  TEXT_ITALIC     = 2;
  TEXT_UNDERLINE  = 3;
  TEXT_APPLYFONTNAME  = 4;
  TEXT_APPLYFONT      = 5;
  TEXT_APPLYFONTSIZE  = 6;
  TEXT_COLOR      = 7;
  TEXT_BACKCOLOR  = 8;
// Parameters for ApplyParaStyleConversion
  PARA_ALIGNMENT  = 1;
  PARA_INDENTINC  = 2;
  PARA_INDENTDEC  = 3;
  PARA_COLOR      = 4;

  TEXT_SUBSCRIPT  = 5;
  TEXT_SUPERSCRIPT = 6;

type
  TciRichViewEditorFrame = class(TFrame)
    actWordWrap: TAction;
    ColorDialog: TColorDialog;
    FontDialog: TFontDialog;
    miInsert: TTBXSubmenuItem;
    miInsertTable: TTBXSubmenuItem;
    pCornerNW: TPanel;
    pmEditor: TRVATBXPopupMenu;
    pRulerHorz: TPanel;
    RVAControlPanel: TRVAControlPanel;
    rvActionBackground: TrvActionBackground;
    rvActionColor: TrvActionColor;
    rvActionFillColor: TrvActionFillColor;
    rvActionInsertPageBreak: TrvActionInsertPageBreak;
    rvActionItemProperties: TrvActionItemProperties;
    RVActionList: TActionList;
    rvActionRemovePageBreak: TrvActionRemovePageBreak;
    rvActionShowSpecialCharacters: TrvActionShowSpecialCharacters;
    RVE: TRichViewEdit;
    rvEditCopy: TrvActionCopy;
    rvEditCut: TrvActionCut;
    rvEditFind: TrvActionFind;
    rvEditFindNext: TrvActionFindNext;
    rvEditPaste: TrvActionPaste;
    rvEditPasteSpecial: TrvActionPasteSpecial;
    rvEditRedo: TrvActionRedo;
    rvEditReplace: TrvActionReplace;
    rvEditSelectAll: TrvActionSelectAll;
    rvEditUndo: TrvActionUndo;
    rvFileExport: TrvActionExport;
    rvFileNew: TrvActionNew;
    rvFileOpen: TrvActionOpen;
    rvFilePageSetup: TrvActionPageSetup;
    rvFilePrint: TrvActionPrint;
    rvFilePrintPreview: TrvActionPrintPreview;
    rvFileQuickPrint: TrvActionQuickPrint;
    rvFileSave: TrvActionSave;
    rvFileSaveAs: TrvActionSaveAs;
    RVFont: TmbTBXFontCombo;
    rvFontAllCaps: TrvActionFontAllCaps;
    rvFontBackColor: TrvActionFontBackColor;
    rvFontBold: TrvActionFontBold;
    rvFontColor: TrvActionFontColor;
    rvFontEx: TrvActionFontEx;
    rvFontGrow: TrvActionFontGrow;
    rvFontGrowOnePoint: TrvActionFontGrowOnePoint;
    rvFontItalic: TrvActionFontItalic;
    rvFontOverline: TrvActionFontOverline;
    rvFonts: TrvActionFonts;
    rvFontShrink: TrvActionFontShrink;
    rvFontShrinkOnePoint: TrvActionFontShrinkOnePoint;
    rvFontStrikeout: TrvActionFontStrikeout;
    rvFontSubscript: TAction;
    rvFontSuperscript: TAction;
    rvFontUnderline: TrvActionFontUnderline;
    RVImageList: TImageList;
    rvInsertFile: TrvActionInsertFile;
    rvInsertHLine: TrvActionInsertHLine;
    rvInsertHyperlink: TrvActionInsertHyperlink;
    rvInsertPicture: TrvActionInsertPicture;
    rvInsertSymbol: TrvActionInsertSymbol;
    rvInsertText: TrvActionInsertText;
    rvParaAlignCenter: TrvActionAlignCenter;
    rvParaAlignJustify: TrvActionAlignJustify;
    rvParaAlignLeft: TrvActionAlignLeft;
    rvParaAlignRight: TrvActionAlignRight;
    rvParaBorder: TrvActionParaBorder;
    rvParaBullets: TrvActionParaBullets;
    rvParagraph: TrvActionParagraph;
    rvParaIndentDec: TrvActionIndentDec;
    rvParaIndentInc: TrvActionIndentInc;
    rvParaLineSpacing100: TrvActionLineSpacing100;
    rvParaLineSpacing150: TrvActionLineSpacing150;
    rvParaLineSpacing200: TrvActionLineSpacing200;
    rvParaList: TrvActionParaList;
    rvParaNumbering: TrvActionParaNumbering;
    rvParaParaColor: TrvActionParaColor;
    rvParaWordWrap: TrvActionWordWrap;
    RVRulerHorz: TRVRuler;
    RVRulerVert: TRVRuler;
    RVStyle: TRVStyle;
    rvTableCellAllBorders: TrvActionTableCellAllBorders;
    rvTableCellBottomBorder: TrvActionTableCellBottomBorder;
    rvTableCellLeftBorder: TrvActionTableCellLeftBorder;
    rvTableCellNoBorders: TrvActionTableCellNoBorders;
    rvTableCellRightBorder: TrvActionTableCellRightBorder;
    rvTableCellTopBorder: TrvActionTableCellTopBorder;
    rvTableCellVAlignBottom: TrvActionTableCellVAlignBottom;
    rvTableCellVAlignDefault: TrvActionTableCellVAlignDefault;
    rvTableCellVAlignMiddle: TrvActionTableCellVAlignMiddle;
    rvTableCellVAlignTop: TrvActionTableCellVAlignTop;
    rvTableDeleteCols: TrvActionTableDeleteCols;
    rvTableDeleteRows: TrvActionTableDeleteRows;
    rvTableDeleteTable: TrvActionTableDeleteTable;
    rvTableGrid: TrvActionTableGrid;
    rvTableInsertColLeft: TrvActionTableInsertColLeft;
    rvTableInsertColRight: TrvActionTableInsertColRight;
    rvTableInsertRowsAbove: TrvActionTableInsertRowsAbove;
    rvTableInsertRowsBelow: TrvActionTableInsertRowsBelow;
    rvTableInsertTable: TrvActionInsertTable;
    rvTableMergeCells: TrvActionTableMergeCells;
    rvTableProperties: TrvActionTableProperties;
    rvTableSelectCell: TrvActionTableSelectCell;
    rvTableSelectCols: TrvActionTableSelectCols;
    rvTableSelectRows: TrvActionTableSelectRows;
    rvTableSelectTable: TrvActionTableSelectTable;
    rvTableSplitCells: TrvActionTableSplitCells;
    TBControlItem1: TTBControlItem;
    tbRVFormat: TTBXToolbar;
    tbtnEditRedo: TTBXItem;
    tbtnEditUndo: TTBXItem;
    tbtnFont: TTBXItem;
    tbtnFontBackColor: TTBXItem;
    tbtnFontBold: TTBXItem;
    tbtnFontColor: TTBXItem;
    tbtnFontItalic: TTBXItem;
    tbtnFontStrikeout: TTBXItem;
    tbtnFontSubscript: TTBXItem;
    tbtnFontSuperscript: TTBXItem;
    tbtnFontUnderline: TTBXItem;
    tbtnParaAlignCenter: TTBXItem;
    tbtnParaAlignJustify: TTBXItem;
    tbtnParaAlignLeft: TTBXItem;
    tbtnParaAlignRight: TTBXItem;
    tbtnParaIndentDec: TTBXItem;
    tbtnParaIndentInc: TTBXItem;
    tbtnParaList: TTBXItem;
    tbtnTableDeleteCols: TTBXItem;
    tbtnTableDeleteRows: TTBXItem;
    tbtnTableInsertColLeft: TTBXItem;
    tbtnTableInsertColRight: TTBXItem;
    tbtnTableInsertRC: TTBXSubmenuItem;
    tbtnTableInsertRowsAbove: TTBXItem;
    tbtnTableInsertRowsBelow: TTBXItem;
    tbtnTableMergeCells: TTBXItem;
    tbtnTableProperties: TTBXItem;
    tbtnTableSplitCells: TTBXItem;
    TBXDock1: TTBXDock;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    rvActionSubscript1: TrvActionSubscript;
    rvActionSuperscript1: TrvActionSuperscript;
    RVFontSize: TmbTBXComboBox;
    TBControlItem2: TTBControlItem;
    procedure actWordWrapExecute(Sender: TObject);
    procedure miInsertTablePopup(Sender: TTBCustomItem; FromLink: Boolean);
    procedure pmEditorPopup(Sender: TObject);
    procedure RVAControlPanelMarginsChanged(Sender: TrvAction; Edit: TCustomRichViewEdit);
    procedure RVECurParaStyleChanged(Sender: TObject);
    procedure RVECurTextStyleChanged(Sender: TObject);
    procedure RVEJump(Sender: TObject; id: Integer);
    procedure RVEParaStyleConversion(Sender: TCustomRichViewEdit; StyleNo, UserData: Integer; AppliedToText: Boolean; var
        NewStyleNo: Integer);
    procedure RVEReadHyperlink(Sender: TCustomRichView; const Target, Extras: String; DocFormat: TRVLoadFormat; var
        StyleNo, ItemTag: Integer; var ItemName: TRVRawByteString);
    procedure RVEStyleConversion(Sender: TCustomRichViewEdit; StyleNo, UserData: Integer; AppliedToText: Boolean; var
        NewStyleNo: Integer);
    procedure RVEWriteHyperlink(Sender: TCustomRichView; id: Integer; RVData: TCustomRVData; ItemNo: Integer; SaveFormat:
        TRVSaveFormat; var Target, Extras: string);
    procedure RVFontClick(Sender: TObject);
    procedure RVFontDropDown(Sender: TObject);
    procedure RVFontSizeClick(Sender: TObject);
    procedure RVFontSizeKeyPress(Sender: TObject; var Key: Char);
    procedure rvFontSubscriptExecute(Sender: TObject);
    procedure rvFontSuperscriptExecute(Sender: TObject);
  private
    FontName: String;
    FontSize: Integer;
//    IgnoreChanges: Boolean;
    UpdatingCombos: Boolean;
    function GetAlignmentFromUI: TRVAlignment;
    procedure SetAlignmentToUI(Alignment: TRVAlignment);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    procedure LoadFromFile(AFileName: string); stdcall;
    procedure LoadFromStream(AStream: TStream); stdcall;
    procedure SaveToFile(AFileName: string); stdcall;
    procedure SaveToStream(AStream: TStream); stdcall;
  end;

implementation

{$R *.dfm}

procedure TciRichViewEditorFrame.actWordWrapExecute(Sender: TObject);
begin
  RVE.WordWrap := actWordWrap.Checked;
  RVE.Reformat;
end;

procedure TciRichViewEditorFrame.miInsertTablePopup(Sender: TTBCustomItem; FromLink: Boolean);
begin
  rvTableInsertTable.ShowTableSizeDialog(RVE, nil);
end;

procedure TciRichViewEditorFrame.pmEditorPopup(Sender: TObject);
var
  ASep: TTBXSeparatorItem;
  ASubmenu: TTBXSubmenuItem;
begin
  ASep := TTBXSeparatorItem.Create(Self);
  pmEditor.Items.Add(ASep);

  ASubmenu := TTBXSubmenuItem.Create(Self);
  ASubmenu.Caption := '插入(&I)';
  ASubmenu.LinkSubitems := miInsert;
  pmEditor.Items.Add(ASubmenu);
end;

procedure TciRichViewEditorFrame.RVAControlPanelMarginsChanged(Sender: TrvAction; Edit: TCustomRichViewEdit);
begin
  RVRulerHorz.UpdateRulerMargins;
  RVRulerVert.UpdateRulerMargins;
end;

procedure TciRichViewEditorFrame.RVECurParaStyleChanged(Sender: TObject);
begin
  SetAlignmentToUI(RVStyle.ParaStyles[RVE.CurParaStyleNo].Alignment);
end;

procedure TciRichViewEditorFrame.RVECurTextStyleChanged(Sender: TObject);
var
  CurStyle: TFontInfo;
begin
  UpdatingCombos := True;
  try
    CurStyle := RVStyle.TextStyles[RVE.CurTextStyleNo];
    RVFont.ItemIndex := RVFont.Items.IndexOf(CurStyle.FontName);
    //RVFontSize.FontName := CurStyle.FontName;
    RVFontSize.Text := IntToStr(CurStyle.Size);

    rvFontBold.Checked      := fsBold      in CurStyle.Style;
    rvFontItalic.Checked    := fsItalic    in CurStyle.Style;
    rvFontUnderline.Checked := fsUnderline in CurStyle.Style;
    rvFontSubscript.Checked := CurStyle.SubSuperScriptType = rvsssSubscript;
    rvFontSuperscript.Checked := CurStyle.SubSuperScriptType = rvsssSuperScript;
  finally
    UpdatingCombos := False;
  end;
end;

procedure TciRichViewEditorFrame.RVEJump(Sender: TObject; id: Integer);
var
  ItemNo: Integer;
  RVData: TCustomRVFormattedData;
  s: String;
begin
  RVE.GetJumpPointLocation(id, RVData, ItemNo);
  s := PChar(RVData.GetItemTag(ItemNo));
  ShellExecute(0, 'open', PChar(s), nil, nil, SW_SHOW);
end;

procedure TciRichViewEditorFrame.RVEParaStyleConversion(Sender: TCustomRichViewEdit; StyleNo, UserData: Integer; AppliedToText:
    Boolean; var NewStyleNo: Integer);
var ParaInfo: TParaInfo;
begin
  ParaInfo := TParaInfo.Create(nil);
  try
    ParaInfo.Assign(RVStyle.ParaStyles[StyleNo]);
    case UserData of
      PARA_ALIGNMENT:
        ParaInfo.Alignment := GetAlignmentFromUI;
      PARA_INDENTINC:
        begin
          ParaInfo.LeftIndent := ParaInfo.LeftIndent+20;
          if ParaInfo.LeftIndent>200 then
            ParaInfo.LeftIndent := 200;
        end;
      PARA_INDENTDEC:
        begin
          ParaInfo.LeftIndent := ParaInfo.LeftIndent-20;
          if ParaInfo.LeftIndent<0 then
            ParaInfo.LeftIndent := 0;
        end;
      PARA_COLOR:
        ParaInfo.Background.Color := ColorDialog.Color;
      // add your code here....
    end;
    NewStyleNo := RVStyle.ParaStyles.FindSuchStyle(StyleNo,ParaInfo,RVAllParaInfoProperties);
    if NewStyleNo=-1 then begin
      RVStyle.ParaStyles.Add;
      NewStyleNo := RVStyle.ParaStyles.Count-1;
      RVStyle.ParaStyles[NewStyleNo].Assign(ParaInfo);
      RVStyle.ParaStyles[NewStyleNo].Standard := False;
    end;
  finally
    ParaInfo.Free;
  end;
end;

// Importing hyperlink from RTF
procedure TciRichViewEditorFrame.RVEReadHyperlink(Sender: TCustomRichView; const Target, Extras: String; DocFormat: TRVLoadFormat; var
    StyleNo, ItemTag: Integer; var ItemName: TRVRawByteString);
var URL: String;
begin
  if DocFormat=rvlfURL then
    StyleNo := rvInsertHyperlink.GetHyperlinkStyleNo(RVE);
  URL := rvInsertHyperlink.EncodeTarget(Target);
  ItemTag := Integer(StrNew(PChar(URL)));
end;

procedure TciRichViewEditorFrame.RVEStyleConversion(Sender: TCustomRichViewEdit; StyleNo, UserData: Integer; AppliedToText: Boolean;
    var NewStyleNo: Integer);
var FontInfo: TFontInfo;
begin
  FontInfo := TFontInfo.Create(nil);
  try
    FontInfo.Assign(RVStyle.TextStyles[StyleNo]);
    case UserData of
      TEXT_BOLD:
        if rvFontBold.Checked then
          FontInfo.Style := FontInfo.Style+[fsBold]
        else
          FontInfo.Style := FontInfo.Style-[fsBold];
      TEXT_ITALIC:
        if rvFontItalic.Checked then
          FontInfo.Style := FontInfo.Style+[fsItalic]
        else
          FontInfo.Style := FontInfo.Style-[fsItalic];
      TEXT_UNDERLINE:
        if rvFontUnderline.Checked then
          FontInfo.Style := FontInfo.Style+[fsUnderline]
        else
          FontInfo.Style := FontInfo.Style-[fsUnderline];
      TEXT_APPLYFONTNAME:
        FontInfo.FontName := FontName;
      TEXT_APPLYFONTSIZE:
        FontInfo.Size     := FontSize;
      TEXT_APPLYFONT:
        FontInfo.Assign(FontDialog.Font);
      TEXT_COLOR:
        FontInfo.Color := ColorDialog.Color;
      TEXT_BACKCOLOR:
        FontInfo.BackColor := ColorDialog.Color;
      // add your code here....
    end;
    NewStyleNo := RVStyle.TextStyles.FindSuchStyle(StyleNo,FontInfo,RVAllFontInfoProperties);
    if NewStyleNo=-1 then begin
      RVStyle.TextStyles.Add;
      NewStyleNo := RVStyle.TextStyles.Count-1;
      RVStyle.TextStyles[NewStyleNo].Assign(FontInfo);
      RVStyle.TextStyles[NewStyleNo].Standard := False;
      //RVStyle.TextStyles[NewStyleNo].Unicode := True;
    end;
  finally
    FontInfo.Free;
  end;
end;

// Exporting hyperlink to RTF and HTML
procedure TciRichViewEditorFrame.RVEWriteHyperlink(Sender: TCustomRichView; id: Integer; RVData: TCustomRVData; ItemNo: Integer;
    SaveFormat: TRVSaveFormat; var Target, Extras: string);
begin
  Target := PChar(RVData.GetItemTag(ItemNo));
end;

procedure TciRichViewEditorFrame.RVFontClick(Sender: TObject);
var
  FontName: String;
begin
  if RVFont.ItemIndex<0 then
    FontName := RVFont.Selected
  else
    FontName := RVFont.Items[RVFont.ItemIndex];
  if UpdatingCombos then
    exit;
  //UpdatingCombos := True;
  //RVFontSize.FontName := FontName;
  //UpdatingCombos := False;
  if RVFont.ItemIndex<0 then
    RVFont.ItemIndex := RVFont.Items.IndexOf(FontName);
  if RVFont.ItemIndex<0 then begin
      Beep
    end
  else
    with rvFontEx do begin
      UserInterface := False;
      ValidProperties := [rvfimFontName, rvfimCharset];
      Font.Name := FontName;
      Font.Charset := DEFAULT_CHARSET;
      Execute;
      UserInterface := True;
    end;
  RVE.SetFocus;
end;

procedure TciRichViewEditorFrame.RVFontDropDown(Sender: TObject);
begin
  SendMessage(RVFont.Handle, cb_SetDroppedWidth, 200, 0);
end;

procedure TciRichViewEditorFrame.RVFontSizeClick(Sender: TObject);
var
  FontSize: Integer;
begin
  if UpdatingCombos then
    exit;
  try
    FontSize := StrToInt(RVFontSize.Text);
    with rvFontEx do begin
      UserInterface := False;
      ValidProperties := [rvfimSize];
      Font.Size := FontSize;
      Execute;
      UserInterface := True;
    end;
  except
    Beep;
  end;
  RVE.SetFocusSilent;
end;

procedure TciRichViewEditorFrame.RVFontSizeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key := #0;
    RVFontSizeClick(Sender);
  end;
end;

procedure TciRichViewEditorFrame.rvFontSubscriptExecute(Sender: TObject);
var
  NewStyle: TFontInfo;
  CurStyle: TFontInfo;
begin
  CurStyle := RVStyle.TextStyles[RVE.CurTextStyleNo];
  if rvFontSubscript.Checked then
  begin
    NewStyle := RVStyle.TextStyles.Add;
    NewStyle.Assign(CurStyle);
    NewStyle.SubSuperScriptType := rvsssSubscript;
    RVE.ApplyTextStyle(NewStyle.Index);
  end
  else
  begin
    CurStyle.SubSuperScriptType := rvsssNormal;
    RVE.ApplyTextStyle(CurStyle.Index);
  end;
end;

procedure TciRichViewEditorFrame.rvFontSuperscriptExecute(Sender: TObject);
var
  NewStyle: TFontInfo;
  CurStyle: TFontInfo;
begin
  CurStyle := RVStyle.TextStyles[RVE.CurTextStyleNo];
  if rvFontSuperscript.Checked then
  begin
    NewStyle := RVStyle.TextStyles.Add;
    NewStyle.Assign(CurStyle);
    NewStyle.SubSuperScriptType := rvsssSuperScript;
    RVE.ApplyTextStyle(NewStyle.Index);
  end
  else
  begin
    CurStyle.SubSuperScriptType := rvsssNormal;
    RVE.ApplyTextStyle(CurStyle.Index);
  end;
end;

function TciRichViewEditorFrame.GetAlignmentFromUI: TRVAlignment;
begin
  if rvParaAlignLeft.Checked then
    Result := rvaLeft
  else if rvParaAlignRight.Checked then
    Result := rvaRight
  else if rvParaAlignCenter.Checked then
    Result := rvaCenter
  else
    Result := rvaJustify;
end;

procedure TciRichViewEditorFrame.LoadFromFile(AFileName: string);
begin
  RVE.LoadRVF(AFileName);
  RVE.Format;
end;

procedure TciRichViewEditorFrame.LoadFromStream(AStream: TStream);
begin
  RVE.LoadFromStream(AStream, rvynaAuto);
  RVE.Format;
end;

procedure TciRichViewEditorFrame.SaveToFile(AFileName: string);
begin
  RVE.SaveRVF(AFileName, False);
end;

procedure TciRichViewEditorFrame.SaveToStream(AStream: TStream);
begin
  RVE.SaveRVFToStream(AStream, False);
end;

procedure TciRichViewEditorFrame.SetAlignmentToUI(Alignment: TRVAlignment);
begin
  case Alignment of
    rvaLeft:
      rvParaAlignLeft.Checked := True;
    rvaCenter:
      rvParaAlignCenter.Checked := True;
    rvaRight:
      rvParaAlignRight.Checked := True;
    rvaJustify:
      rvParaAlignJustify.Checked := True;
  end;
end;

procedure TciRichViewEditorFrame.AfterConstruction;
begin
  RVAControlPanel.ColorDialog := ColorDialog;
  RVAControlPanel.DefaultControl := RVE;
  pmEditor.OnPreparePopup := pmEditorPopup;
end;

procedure TciRichViewEditorFrame.BeforeDestruction;
begin
end;

end.
