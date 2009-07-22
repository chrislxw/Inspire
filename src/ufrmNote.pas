{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(备忘录窗框)
  @created(2008-7-18)
  @author(宁静·星空)

  本单元包含 Inspire 的备忘录窗框。
}

unit ufrmNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StdCtrls, ComCtrls, DB, SyncObjs,
  udmCommon, ExtCtrls, Menus, TB2Item, TBX, ActiveX, ActnList, CITreeView, RzTabs, TypeDefs,
  Global, CITypes, uBaseFrame, ciRichViewEditorFrameUnit, ciRichViewEditorIntf, Dialogs, RVOfficeCnv, StdActns;

const
//  CILibRVE = 'CILib.RichViewEditor.dll';

  CM_MemoInitTree = CM_BASE + $400;
  CM_MemoLoadNode = CM_BASE + $401;

  IMG_YEAR = 39;
  IMG_MONTH = 126;
  IMG_DAY = 31;

  TLV_YEAR = 0;
  TLV_MONTH = 1;
  //TLV_WEEK = 2;
  TLV_DAY = 2;
  TLV_MEMO = 3;

type
  TTreeNodeType = TTreeNode;

  // 备忘录窗框
  TfrmNote = class(TFrame, IBaseFrame)
    actDiaryAddMemo: TAction;
    actFileExport: TAction;
    actFileImport: TAction;
    actlstMemo: TActionList;
    actNoteAddChild: TAction;
    actNoteAddSibiling: TAction;
    actNoteDelete: TAction;
    actNoteEdit: TAction;
    actNoteModifyPwd: TAction;
    actNoteMoveDown: TAction;
    actNoteMoveUp: TAction;
    actNoteRefresh: TAction;
    actNoteRename: TAction;
    actNoteSave: TAction;
    dlgOpen: TOpenDialog;
    dlgSave: TSaveDialog;
    pmEditor2: TTBXPopupMenu;
    pmtvDiary: TTBXPopupMenu;
    pmtvNote: TTBXPopupMenu;
    rvOfficeConv: TRVOfficeConverter;
    RzPageControl1: TRzPageControl;
    Splitter1: TSplitter;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TBXItem1: TTBXItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tvDiary: TCITreeView;
    tvNote: TCITreeView;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    procedure actFileExportExecute(Sender: TObject);
    procedure actFileImportExecute(Sender: TObject);
    procedure actlstMemoUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure actNoteAddSibilingExecute(Sender: TObject);
    procedure actNoteDeleteExecute(Sender: TObject);
    procedure actNoteEditExecute(Sender: TObject);
    procedure actNoteModifyPwdExecute(Sender: TObject);
    procedure actNoteMovePosExecute(Sender: TObject);
    procedure actNoteRefreshExecute(Sender: TObject);
    procedure actNoteRenameExecute(Sender: TObject);
    procedure actNoteSaveExecute(Sender: TObject);
    procedure tvDiaryChanging(Sender: TObject; Node: TTreeNode; var AllowChange: Boolean);
    procedure tvDiaryExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
    procedure tvNoteChange(Sender: TObject; Node: TTreeNode);
    procedure tvNoteChanging(Sender: TObject; Node: TTreeNode; var AllowChange: Boolean);
    procedure tvNoteDeletion(Sender: TObject; Node: TTreeNode);
    procedure tvNoteDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvNoteDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure tvNoteEdited(Sender: TObject; Node: TTreeNode; var S: string);
    procedure tvNoteExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
    procedure tvNoteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvNoteKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FCurrentNode: TTreeNodeType;
    FCurrentNoteID: Integer;
    FEditor: IciRichViewEditor;
    FFrameInited: Boolean;
    FLoadMemoLock: TCriticalSection;
    FNoteDataSet: TDataSet;
    FNoteStream: TMemoryStream;
    procedure CheckDiaryNodeLoaded(ANode: TTreeNodeType);
    procedure CheckMemoNodeLoaded(ANode: TTreeNodeType; ChangeFocus: Boolean = False);
    procedure CheckNodeSecurity(NodeData: PNodeData; var Allowed: Boolean);
    procedure LoadLastNote(Path: string);
    procedure LoadNoteSubtree(ANode: TTreeNodeType; ExpandNode: Boolean = False);
    // 这个方法将重新设置 Node 和它以下所有节点的 Pos 属性
    procedure ResetNodePos(Node: TTreeNodeType);
    procedure SaveNote;
  protected
    procedure CMMemoInitTree(var Message: TMessage); message CM_MemoInitTree;
    procedure CMMemoLoadNode(var Message: TMessage); message CM_MemoLoadNode;
  public
    RVEFrame: TciRichViewEditorFrame;
    procedure Activate; stdcall;
    function AddMemoNode(TV: TCITreeView; PNode: TTreeNodeType; DataSet: TDataSet; AddNew: Boolean = True): TTreeNodeType;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function CheckPassword(Passwd: ShortString; Data: Pointer): Boolean;
    procedure Deactivate; stdcall;
    procedure FinalizeFrame; stdcall;
    function GetFrameName: string; stdcall;
    function GetImageIndex: Integer; stdcall;
    procedure InitializeFrame(Container: TWinControl); stdcall;
    procedure LoadFromFile(AFileName: string); stdcall;
    procedure LoadFromStream(AStream: TStream); stdcall;
    procedure LoadNote(NoteData: PNodeData);
    procedure PaintFrameTitleBar(Canvas: TCanvas); stdcall;
    procedure PaintMemoCaption(Repaint: Boolean = True); stdcall;
    procedure SaveToFile(AFileName: string); stdcall;
    procedure SaveToStream(AStream: TStream); stdcall;
    property Editor: IciRichViewEditor read FEditor;
  end;

procedure InitFrame;

var
  NoteFrame: TfrmNote;

implementation

uses
  DateUtils,
  ufmMain,
  udmNote, ufmEditNote,
  ufmSecurity, Security;

{$R *.dfm}

{
procedure RVEInitialize(App: TApplication); stdcall; external CILibRVE name 'RVEInitialize';
procedure RVEFinalize; stdcall; external CILibRVE name 'RVEFinalize';
function RVECreateEditor: IciRichViewEditor; stdcall; external CILibRVE name 'RVECreateEditor';
procedure RVEFreeEditor(AEditor: IciRichViewEditor); stdcall; external CILibRVE name 'RVEFreeEditor';
}

procedure InitFrame;
begin
  dmNote := TdmNote.Create(Application);
  NoteFrame := TfrmNote.Create(Application.MainForm);
  fmEditNote := TfmEditNote.Create(Application);

  RegisterFrame(NoteFrame);
end;

procedure TfrmNote.actFileExportExecute(Sender: TObject);
var
  s: string;
  fid: Integer;
begin
  dlgSave.Filter := 'Inspire 单页 (*.ntp)|*.ntp' +
                    '|RichView 文档 (*.rvf)|*.rvf' +
                    '|Rich Text Format 文档 (*.rtf)|*.rtf' +
                    '|HTML 页面 (*.html;*.htm)|*.html;*.htm' +
                    '|MHTML 页面 (*.mhtml;*.mht)|*.mhtml;*.mht' +
                    '|' + rvOfficeConv.GetExportFilter;
  if dlgSave.Execute then
  begin
    fid := dlgSave.FilterIndex;
    s := dlgSave.FileName;
    if ExtractFileExt(s) = '.ntp' then
      fid := 1;
    case fid of
      1, 2: SaveToFile(s);
      3: RVEFrame.RVE.SaveRTF(s, False);
    else
      rvOfficeConv.ExportRV(s, RVEFrame.RVE, dlgSave.FilterIndex-6);
    end;
  end;
end;

procedure TfrmNote.actFileImportExecute(Sender: TObject);
var
  s: string;
begin
  dlgOpen.Filter := 'Inspire 单页 (*.ntp)|*.ntp' +
                    '|RichView 文档 (*.rvf)|*.rvf' +
                    '|Rich Text Format 文档 (*.rtf)|*.rtf' +
                    '|HTML 页面 (*.html;*.htm;*.mhtml;*.mht)|*.html;*.htm;*.mhtml;*.mht' +
                    '|' + rvOfficeConv.GetImportFilter;
  if dlgOpen.Execute then
  begin
    s := dlgOpen.FileName;
    case dlgOpen.FilterIndex of
      1, 2: LoadFromFile(s);
      3: RVEFrame.RVE.LoadRTF(s);
    else
      rvOfficeConv.ImportRV(s, RVEFrame.RVE, dlgOpen.FilterIndex-5);
    end;
  end;
  RVEFrame.RVE.Format;
  RVEFrame.RVE.SetFocus;
end;

procedure TfrmNote.actlstMemoUpdate(Action: TBasicAction; var Handled: Boolean);
var
  HasNode: Boolean;
begin
  HasNode := FCurrentNode <> nil;

  actNoteDelete.Enabled := HasNode;
  actNoteMoveUp.Enabled := HasNode;
  actNoteMoveDown.Enabled := HasNode;
  actNoteEdit.Enabled := HasNode;
  actNoteModifyPwd.Enabled := HasNode;

  Handled := True;
end;

procedure TfrmNote.actNoteAddSibilingExecute(Sender: TObject);
const
  CC_THIS_NODE_THIS_LEVEL = 0;
  CC_THIS_NODE_CHILD_LEVEL = 1;
  CreateMode: array[False..True, False..True]of Byte = ((CC_THIS_NODE_THIS_LEVEL, CC_THIS_NODE_CHILD_LEVEL), (2, 3));
var
  DataSet: TDataSet;
  PID, Pos: Integer;
  PNode: TTreeNodeType;
  ANode: TTreeNodeType;
begin
  FCurrentNode.Expand(False);

  case CreateMode[FCurrentNode = nil, (Sender as TAction).Tag = 1] of
    CC_THIS_NODE_THIS_LEVEL: begin    //< 某节点，同级备忘
      PID := PNodeData(FCurrentNode.Data)^.PID;
      if FCurrentNode.Level = 0 then
        Pos := tvNote.RootNodeCount
      else
        Pos := FCurrentNode.Parent.Count;
      PNode := FCurrentNode.Parent;
    end;
    CC_THIS_NODE_CHILD_LEVEL: begin    //< 某节点，子备忘
      PID := PNodeData(FCurrentNode.Data)^.NoteID;
      Pos := FCurrentNode.Count;
      PNode := FCurrentNode;
    end;
    else begin //< 空节点，同级备忘    //< 空节点，子备忘
      PID := 0;
      Pos := tvNote.RootNodeCount;
      PNode := nil;
    end;
  end;

  DataSet := dmNote.CreateNote(PNode, PID, Pos);
  ANode := AddMemoNode(tvNote, PNode, DataSet);
  DataSet.Free;
  ANode.Selected := True;
  ANode.EditText;
end;

procedure TfrmNote.actNoteDeleteExecute(Sender: TObject);
var
  Data: PNodeData;
  ShowNode: TTreeNodeType;
begin
  Data := FCurrentNode.Data;
  if Data^.Protect then
  begin
    MessageBox(Application.Handle, '无法删除被保护的备忘录。', '错误', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

  // 检查节点是否有下级节点
  if dmNote.ChildCount(Data^.NoteID) = 0 then
  begin
//    if MessageBox(Application.Handle, '真的要删除这条备忘录吗？', '提示', MB_YESNOCANCEL + MB_DEFBUTTON2 + MB_ICONQUESTION) = ID_YES then
//    begin
      ShowNode := FCurrentNode.getNextSibling;
      if ShowNode = nil then ShowNode := FCurrentNode.getPrevSibling;
      if ShowNode = nil then ShowNode := FCurrentNode.Parent;
      if ShowNode = nil then ShowNode := tvNote.Items.GetFirstNode;
      dmNote.TrashNote(Data^.NoteID);
      FCurrentNode.Delete;
      if ShowNode <> nil then
      begin
        ShowNode.MakeVisible;
        ShowNode.Focused := True;
        ShowNode.Selected := True;
      end;
      FCurrentNode := ShowNode;
//    end
  end
  else
    MessageBox(Application.Handle, '无法删除包含子备忘的备忘录', '错误', 16);
end;

procedure TfrmNote.actNoteEditExecute(Sender: TObject);
var
  Data: PNodeData;
begin
  Data := FCurrentNode.Data;
  if Data = nil then Exit;
  with fmEditNote do
  begin
    edNoteID.Text := IntToStr(Data^.NoteID);
    btnSelectImage.ImageIndex := Data^.ImageIndex;
    edCaption.Text := Data^.Caption;
    Protect := Data^.Protect;
    if ShowModal = mrOK then
    begin
      Data^.ImageIndex := btnSelectImage.ImageIndex;
      Data^.Caption := edCaption.Text;
      Data^.Protect := Protect;
      Data^.PwdHash := GetEmptyPassword(Data^.Caption, Data^.NoteID);
      Data^.PwdPassed := True;
      FCurrentNode.ImageIndex := Data^.ImageIndex;

      dmNote.EditNode(Data);
    end;
  end;
end;

procedure TfrmNote.actNoteModifyPwdExecute(Sender: TObject);
begin
  with fmSecurity do
  begin
    OnCheckPassword := dmNote.ModifyPwd;
    CheckSecurity(csModifyPwd, FCurrentNode.Data);
  end;
end;

procedure TfrmNote.actNoteMovePosExecute(Sender: TObject);
var
  TarNode: TTreeNodeType;
  nam: TNodeAttachMode;
  d: PNodeData;
begin
  if FCurrentNode = nil then Exit;
  if (Sender as TAction).Tag = 1 then   //< 向下移动
  begin
    TarNode := FCurrentNode.getNextSibling;   //< 目标节点为下一个邻接节点
    if TarNode = nil then Exit;
    if TarNode.getNextSibling = nil then
      nam := naAdd
    else
    begin
      nam := naInsert;
      TarNode := TarNode.getNextSibling;
    end;
  end
  else            //< 向上移动
  begin
    TarNode := FCurrentNode.getPrevSibling;   //< 目标节点为上一个邻接节点
    if TarNode = nil then Exit;
    nam := naInsert;
  end;
  FCurrentNode.MoveTo(TarNode, nam);
  d := FCurrentNode.Data;
  dmNote.MovePos(d^.NoteID, d^.PID, FCurrentNode.Index);
end;

procedure TfrmNote.actNoteRefreshExecute(Sender: TObject);
var
  Path: string;
begin
  Path := tvNote.PathFromNode(FCurrentNode);
  tvNote.Items.BeginUpdate;
  tvDiary.Items.BeginUpdate;
  try
    tvNote.Items.Clear;
    tvDiary.Items.Clear;
    LoadNoteSubtree(nil);
    //dmNote.LoadDiaryNode(nil);
  finally
    tvDiary.Items.EndUpdate;
    tvNote.Items.EndUpdate;
  end;
  LoadLastNote(Path);
end;

procedure TfrmNote.actNoteRenameExecute(Sender: TObject);
begin
  FCurrentNode.EditText;
end;

procedure TfrmNote.actNoteSaveExecute(Sender: TObject);
begin
  SaveNote;
  ShowStatusHint(0, '已保存', 30);
end;

procedure TfrmNote.tvDiaryChanging(Sender: TObject; Node: TTreeNode; var AllowChange: Boolean);
begin
  if Node.Level <> TLV_MEMO then Exit;
  // 保存 OldNode 的文档
  if RVEFrame.RVE.Modified then SaveNote;
  // 判断是否允许打开节点
  CheckNodeSecurity(PNodeData(Node.Data), AllowChange);
end;

procedure TfrmNote.tvDiaryExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
begin
  CheckDiaryNodeLoaded(Node);
end;

procedure TfrmNote.tvNoteChange(Sender: TObject; Node: TTreeNode);
begin
  if Node = nil then Exit;
  //CheckMemoNodeLoaded(Node);
  FCurrentNode := Node;
  PostMessage(Handle, CM_MemoLoadNode, 0, 0);
  PaintMemoCaption;
end;

procedure TfrmNote.tvNoteChanging(Sender: TObject; Node: TTreeNode; var AllowChange: Boolean);
begin
  // 保存 OldNode 的文档
  if RVEFrame.RVE.Modified then
    SaveNote;

  // 判断是否允许打开节点
  CheckNodeSecurity(PNodeData(Node.Data), AllowChange);
end;

procedure TfrmNote.tvNoteDeletion(Sender: TObject; Node: TTreeNode);
var
  Data: PNodeData;
begin
  Data := Node.Data;
  if Data <> nil then Finalize(Data^);
end;

procedure TfrmNote.tvNoteDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  CurData, TarData: PNodeData;
  TarNode, OverNode: TTreeNodeType;
  id: Integer;
begin
  try
    TarNode := tvNote.DropTarget;
    OverNode := tvNote.GetNodeAt(X, Y);
    CurData := FCurrentNode.Data;
    if OverNode <> nil then
    begin
      id := CurData^.NoteID;
      TarData := TarNode.Data;
      if CurData^.NoteID = TarData^.NoteID then Exit;
      CurData^.PID := TarData^.NoteID;
      FCurrentNode.MoveTo(TarNode, naAddChild);
      dmNote.MovePos(CurData^.NoteID, TarData^.NoteID, TarNode.Count-1);
      LoadNoteSubtree(TarNode, True);
      FCurrentNode := TarNode.getFirstChild;
      while FCurrentNode <> nil do
        if PNodeData(FCurrentNode.Data)^.NoteID = id then Break
        else FCurrentNode := FCurrentNode.getNextSibling;
      tvNote.Selected := FCurrentNode;
    end
    else
    begin
      CurData^.PID := 0;
      FCurrentNode.MoveTo(nil, naAdd);
      dmNote.MovePos(CurData^.NoteID, 0, tvNote.RootNodeCount-1);
    end;
  except
  end;
end;

procedure TfrmNote.tvNoteDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Sender = Source);
end;

procedure TfrmNote.tvNoteEdited(Sender: TObject; Node: TTreeNode; var S: string);
begin
  with PNodeData(Node.Data)^ do
  begin
    if PwdHash = GetEmptyPassword(Caption, NoteID) then
      PwdHash := GetEmptyPassword(S, NoteID);
    Caption := S;
  end;

  dmNote.EditNode(Node.Data);
end;

procedure TfrmNote.tvNoteExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
var
  Data: PNodeData;
begin
  CheckMemoNodeLoaded(Node);
  Data := Node.Data;
  with Data^ do
    if not (PwdPassed or (PwdHash='')) then    //< 尚未通过密码验证，或者不是空密码
      CheckNodeSecurity(Data, AllowExpansion);
end;

procedure TfrmNote.tvNoteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_TAB:
      begin
        RVEFrame.RVE.SetFocus;
        Key := 0;
      end;
  end;
end;

procedure TfrmNote.tvNoteKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
{
  case Key of
    VK_UP:
      if ssCtrl in Shift then  //< Do move node up
        actNoteMovePosExecute(actNoteMoveUp);
    VK_DOWN:
      if ssCtrl in Shift then  //< Do move node down
        actNoteMovePosExecute(actNoteMoveDown);
  end;
}
end;

procedure TfrmNote.CheckDiaryNodeLoaded(ANode: TTreeNodeType);
begin
  if (ANode = nil) or ANode.Deleting then Exit;
  if ANode.HasChildren and (ANode.getFirstChild.ImageIndex = -1) then
    dmNote.LoadDiaryNode(ANode);
end;

procedure TfrmNote.CheckMemoNodeLoaded(ANode: TTreeNodeType; ChangeFocus: Boolean = False);
var
  Data: PNodeData;
begin
  if (ANode = nil) or ANode.Deleting then Exit;
  Data := ANode.Data;
  if Data = nil then Exit;
  with Data^ do
  if not Loaded then
  begin
    LoadNoteSubtree(ANode);
    Loaded := True;
  end;
end;

procedure TfrmNote.CheckNodeSecurity(NodeData: PNodeData; var Allowed: Boolean);
begin
  Allowed := IsEmptyPassword(NodeData);
  if not Allowed then
  with fmSecurity do
  begin
    OnCheckPassword := CheckPassword;
    Allowed := CheckSecurity(csCheckPwd, NodeData);
  end;
end;

procedure TfrmNote.LoadLastNote(Path: string);
var
  s: string;
  OldCursor: TCursor;
  Node: TTreeNodeType;
begin
  if FCurrentNoteID <> -1 then Exit;
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    Node := tvNote.Items.GetFirstNode;
    if Node = nil then
    begin
      Screen.Cursor := OldCursor;
      Exit;
    end;

    if Path[Length(Path)] <> '\' then
      Path := Path + '\';

    while Path <> '' do
    begin
      Application.ProcessMessages();
      s := Copy(Path, 1, Pos('\', Path)-1);
      System.Delete(Path, 1, Pos('\', Path));

      while (Node <> nil) and (Node.Text <> s) do
      begin
        //Application.ProcessMessages();
        Node := Node.getNextSibling;
      end;

      if Node = nil then    //没找到，直接出循环
        Break
      else
      begin
        if Path = '' then   //到头了，显示节点
        begin
          Node.MakeVisible;
          Node.Focused := True;
          Node.Selected := True;
          Node.Expand(False);
        end
        else
        begin               //没到头，读树，展开
          LoadNoteSubtree(Node, True);
          PNodeData(Node.Data)^.Loaded := True;
          Node := Node.getFirstChild;
        end;
      end;
    end;
  finally
    Screen.Cursor := OldCursor;
  end;
end;

procedure TfrmNote.ResetNodePos(Node: TTreeNodeType);
var
  TempNode: TTreeNodeType;
begin
  if Node = nil then Exit;
  if Node.Parent = nil then
    TempNode := TCITreeView(Node.TreeView).Items.GetFirstNode
  else
    TempNode := Node.Parent.getFirstChild;
  while TempNode <> nil do
  begin
    Application.ProcessMessages;
    with PNodeData(TempNode.Data)^ do
      dmNote.MovePos(NoteID, PID, TempNode.Index);
    TempNode := TempNode.getNextSibling;
  end;
end;

procedure TfrmNote.CMMemoInitTree(var Message: TMessage);
begin
  // 加载目录
  LoadNoteSubtree(nil);
  //dmNote.LoadDiaryNode(nil);
  FFrameInited := True;
  LoadLastNote(Config.ReadString('Global', 'LastNote', ''));
end;

procedure TfrmNote.CMMemoLoadNode(var Message: TMessage);
var
  Data: PNodeData;
begin
  Data := FCurrentNode.Data;
  if Data = nil then Exit;
  with Data^ do
  if FCurrentNoteID <> NoteID then
  begin
    LoadNote(Data);
    FCurrentNoteID := NoteID;
    ShowStatusHint(1, '最后更新: ' + DateToStr(Data^.ModifyDate), 6, 0);
  end;
end;

procedure TfrmNote.Activate;
begin
  BringToFront;
end;

function TfrmNote.AddMemoNode(TV: TCITreeView; PNode: TTreeNodeType; DataSet: TDataSet; AddNew: Boolean = True):
    TTreeNodeType;
var
  Data: PNodeData;
begin
  with DataSet do
  begin
    New(Data);
    Data^.NoteID := FieldByName('NoteID').AsInteger;
    Data^.PID := FieldByName('PID').AsInteger;
    Data^.Pos := FieldByName('POS').AsInteger;
    Data^.ImageIndex := FieldByName('ImageIndex').AsInteger;
    Data^.Caption := FieldByName('Caption').AsString;
    Data^.Protect := FieldByName('Protect').AsBoolean;
    Data^.PwdHash := FieldByName('PassHash').AsString;
    Data^.CreateDate := FieldByName('CreateDate').AsDateTime;
    Data^.ModifyDate := FieldByName('ModifyDate').AsDateTime;

    Data^.PwdPassed := False;
    Data^.Loaded := False;

    Result := TV.Items.AddChild(PNode, Data.Caption);
    Result.ImageIndex := Data^.ImageIndex;
    Result.SelectedIndex := Data^.ImageIndex;
    Result.Data := Data;

    if AddNew then
    begin
      TV.Items.AddChild(Result, '正在读取...').ImageIndex := -1;

      Edit;
      FieldByName('Path').AsString := TV.PathFromNode(Result);
      Post;
    end;
  end;
end;

procedure TfrmNote.AfterConstruction;
begin
  inherited;

  RVEFrame := TciRichViewEditorFrame.Create(Self);
  RVEFrame.Parent := Self;
  RVEFrame.Align := alClient;

  FLoadMemoLock := TCriticalSection.Create;

  FNoteStream := TMemoryStream.Create;
  FCurrentNoteID := -1;
  FCurrentNode := nil;
  FFrameInited := False;
  with fmMain do
  begin
    btnAddMemo.Action := actNoteAddChild;
    btnAddMemo.ImageIndex := 3;
    btnSave.Action := actNoteSave;
    btnDelete.Action := actNoteDelete;
  end;
end;

procedure TfrmNote.BeforeDestruction;
begin
  //RVEFreeEditor(FEditor);
  //RVEFinalize;
  inherited;
end;

function TfrmNote.CheckPassword(Passwd: ShortString; Data: Pointer): Boolean;
begin
  with PNodeData(Data)^ do
  begin
    Result := (Hash(Passwd) = PwdHash);   //< 密码吻合
    PwdPassed := Result;
  end;
end;

procedure TfrmNote.Deactivate;
begin

end;

procedure TfrmNote.FinalizeFrame;
begin
  SaveNote;
  if FCurrentNode <> nil then
    Config.WriteString('Global', 'LastNote', tvNote.PathFromNode(FCurrentNode));
  tvNote.Items.Clear;
end;

function TfrmNote.GetFrameName: string;
begin
  Result := '备忘录';
end;

function TfrmNote.GetImageIndex: Integer;
begin
  Result := 3;
end;

procedure TfrmNote.InitializeFrame(Container: TWinControl);
begin
  Parent := Container;
  Align := alClient;
  dmNote.Init;
  PostMessage(Handle, CM_MemoInitTree, 0, 0);
end;

procedure TfrmNote.LoadFromFile(AFileName: string);
begin
  RVEFrame.LoadFromFile(AFileName);
end;

procedure TfrmNote.LoadFromStream(AStream: TStream);
begin
  AStream.Position := 0;
  RVEFrame.LoadFromStream(AStream);
end;

procedure TfrmNote.LoadNoteSubtree(ANode: TTreeNodeType; ExpandNode: Boolean = False);
var
  PID: Integer;
  NodeData: PNodeData;
  ADataSet: TDataSet;
begin
  tvNote.Items.BeginUpdate;
  // 准备父节点ID
  if ANode = nil then     // 要加载的节点为空，则加载所有根节点
    PID := 0
  else
  begin
    NodeData := ANode.Data;
    PID := NodeData^.NoteID;
  end;
  // 清空节点下的内容
  if Assigned(ANode) then ANode.DeleteChildren();
  // 取出数据，循环添加到节点下
  ADataSet := dmNote.LoadNoteChilds(PID);
  while not ADataSet.Eof do
  begin
    AddMemoNode(tvNote, ANode, ADataSet);
    ADataSet.Next;
  end;
  ADataSet.Free;
  // 展开节点
  if ANode <> nil then
    ANode.Expanded := ExpandNode;
  tvNote.Items.EndUpdate;
end;

procedure TfrmNote.LoadNote(NoteData: PNodeData);
begin
  dmNote.LoadNoteContent(NoteData, FNoteDataSet, FNoteStream);
  LoadFromStream(FNoteStream);
end;

procedure TfrmNote.PaintFrameTitleBar(Canvas: TCanvas);
begin
  PaintMemoCaption(False);
end;

procedure TfrmNote.PaintMemoCaption(Repaint: Boolean = True);
var
  s: string;
begin
  if Repaint then fmMain.pbFrameTitleBar.Repaint;
  if (FCurrentNode=nil)or(FCurrentNode.Data=nil) then Exit;
  with fmMain.pbFrameTitleBar.Canvas do
  begin
    Brush.Style := bsClear;
    TextOut(210, 7, PNodeData(FCurrentNode.Data)^.Caption);
    DateTimeToString(s, LongDateFormat, PNodeData(FCurrentNode.Data)^.CreateDate);
    TextOut(fmMain.pbFrameTitleBar.Width - 150, 7, s);
  end;
end;

procedure TfrmNote.SaveNote;
begin
  SaveToStream(FNoteStream);
  //EncodeStream(dmNote.NoteStream, PNodeData(FCurrentNode.Data)^.PwdHash);
  dmNote.SaveNoteContent(FCurrentNode.Data, FNoteDataSet, FNoteStream);
end;

procedure TfrmNote.SaveToFile(AFileName: string);
begin
  RVEFrame.SaveToFile(AFileName);
end;

procedure TfrmNote.SaveToStream(AStream: TStream);
begin
  AStream.Size := 0;
  RVEFrame.SaveToStream(AStream);
end;

initialization

end.


