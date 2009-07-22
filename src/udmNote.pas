{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(笔记窗框的数据访问模块)
  @created(2008-7-18)
  @author(宁静·星空)

  本单元建立了笔记窗框访问数据库所用到的一切方法。
}

unit udmNote;

interface

uses
  SysUtils, Classes, Forms, ComCtrls, DB, ExtCtrls, SyncObjs, CITreeView, ufrmNote, TypeDefs;

const
  { 各种操作所需的 SQL 语句 } {}
  sqlGetMaxNoteID = 'select max(NoteID) from NoteCatalog';
  sqlCanDeleteNode = 'select count(NoteID) from NoteCatalog where PID=%d';
  sqlCreateMemo = 'select * from NoteCatalog where 1=2';
  sqlTrashNote = 'update NoteCatalog set Deleted=True where NoteID=%d';
  sqlUntrashMemo = 'update NoteCatalog set Deleted=False where NoteID=%d';
  sqlDeleteMemo1 = 'delete from NoteContent where NoteID=%d';
  sqlDeleteMemo2 = 'delete from NoteCatalog where NoteID=%d';

  sqlEditNode = 'update NoteCatalog set Caption=''%s'', ImageIndex=%d, Protect=%d, PassHash=''%s'', ModifyDate=Now() where NoteID=%d';
  sqlLoadMemo = 'select A.*, B.NoteID as MID, B.ModifyDate from NoteContent A, NoteCatalog B where A.NoteID=B.NoteID and A.NoteID=%d';
  sqlLoadSubtree = 'select * from NoteCatalog where PID=%d and not Deleted order by Pos';
  sqlModifyPwd = 'update NoteCatalog set PassHash=''%s'' where NoteID=%d';
  sqlMovePos = 'update NoteCatalog set PID=%d, Pos=%d where NoteID=%d';

  sqlGetDiaryYears = 'select * from (select distinct Year(CreateDate) as Years from NoteCatalog) where Years is not null order by Years';
  sqlGetDiaryMonths = 'select * from (select distinct Month(CreateDate) as Months from NoteCatalog where Year(CreateDate)=%d) order by Months';
  sqlGetDiaryDays = 'select * from (select distinct Day(CreateDate) as Days from NoteCatalog where Year(CreateDate)=%d and Month(CreateDate)=%d) order by Days';
  sqlGetDiarys = 'select * from NoteCatalog where Year(CreateDate)=%d and Month(CreateDate)=%d and Day(CreateDate)=%d order by NoteID';

type
  // 备忘录窗框数据模块
  TdmNote = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    FLastNoteID: Integer;
    FDBLock: TCriticalSection;
    function GetNewNoteID: Integer;
  public
    function ChildCount(NoteID: Integer): Integer;
    function CreateNote(PNode: TTreeNodeType; PID, Pos: Integer): TDataSet;
    procedure DeleteNote(NoteID: Integer);
    procedure TrashNote(NoteID: Integer);
    procedure EditNode(NodeData: PNodeData);
    procedure Init;
    procedure LoadDiaryDays(ANode: TTreeNodeType; AYear, AMonth: Integer);
    procedure LoadDiaryMonths(ANode: TTreeNodeType; AYear: Integer);
    procedure LoadDiaryNode(ANode: TTreeNodeType; ExpandNode: Boolean = False);
    procedure LoadDiarys(ANode: TTreeNodeType; AYear, AMonth, ADay: Integer);
    procedure LoadDiaryYears;
    procedure LoadNoteContent(NodeData: PNodeData; var ContentDataSet: TDataSet; var ContentStream: TMemoryStream);
    function LoadNoteChilds(PID: Integer): TDataSet;
    function ModifyPwd(NewPwd: ShortString; Data: Pointer): Boolean;
    procedure MovePos(NoteID, NewPID: Integer; NewPos: Integer = -1);
    procedure SaveNoteContent(NodeData: PNodeData; ContentDataSet: TDataSet; ContentStream: TStream);
  end;

var
  dmNote: TdmNote;

implementation

uses
  Global, Security, DateUtils;

{$R *.dfm}

procedure TdmNote.DataModuleCreate(Sender: TObject);
begin
  FDBLock := TCriticalSection.Create;
end;

function TdmNote.GetNewNoteID: Integer;
begin
  FDBLock.Enter;
  try
    Inc(FLastNoteID);
    Result := FLastNoteID;
  finally
    FDBLock.Leave;
  end;
end;

function TdmNote.ChildCount(NoteID: Integer): Integer;
var
  ds: TDataSet;
begin
  ds := Storage.Query(Format(sqlCanDeleteNode, [NoteID]));
  try
    Result := ds.Fields[0].AsInteger;
  finally
    ds.Free;
  end;
end;

function TdmNote.CreateNote(PNode: TTreeNodeType; PID, Pos: Integer): TDataSet;
var
  dt: TDateTime;
  id: Integer;
begin
  Result := Storage.Query(sqlCreateMemo);
  with Result do
  begin
    dt := Now;
    id := GetNewNoteID;
    Append;
    FieldByName('NoteID').AsInteger := id;
    FieldByName('PID').AsInteger := PID;
    FieldByName('Pos').AsInteger := Pos;
    FieldByName('Caption').AsString  := '新建文档';
    FieldByName('CreateDate').AsDateTime := dt;
    FieldByName('ModifyDate').AsDateTime := dt;
    FieldByName('PassHash').AsString := GetEmptyPassword('新建文档', id);
    Post;
  end;
end;

procedure TdmNote.DeleteNote(NoteID: Integer);
begin
  Storage.BeginTrans;
  try
    Storage.Execute(Format(sqlDeleteMemo1, [NoteID]));
    Storage.Execute(Format(sqlDeleteMemo2, [NoteID]));
    Storage.Commit;
  except
    Storage.Rollback;
    raise;
  end;
end;

procedure TdmNote.TrashNote(NoteID: Integer);
begin
  Storage.Execute(Format(sqlTrashNote, [NoteID]));
end;

procedure TdmNote.EditNode(NodeData: PNodeData);
begin
  if NodeData = nil then Exit;
  with NodeData^ do
    Storage.Execute(Format(sqlEditNode, [Caption, ImageIndex, Integer(Protect), PwdHash, NoteID]));
end;

procedure TdmNote.Init;
var
  ds: TDataSet;
begin
  ds := Storage.Query(sqlGetMaxNoteID);
  try
    FLastNoteID := ds.Fields[0].AsInteger;
  finally
    ds.Free;
  end;
end;

procedure TdmNote.LoadDiaryDays(ANode: TTreeNodeType; AYear, AMonth: Integer);
var
  ds: TDataSet;
  CNode: TTreeNodeType;
begin
  if ANode = nil then Exit;
  NoteFrame.tvDiary.Items.BeginUpdate;
  ANode.DeleteChildren;
  ds := Storage.Query(Format(sqlGetDiaryDays, [AYear, AMonth]));
  try
    while not ds.Eof do
    begin
      CNode := NoteFrame.tvDiary.Items.AddChild(ANode, ds.Fields[0].AsString);
      CNode.ImageIndex := IMG_DAY;
      CNode.SelectedIndex := IMG_DAY;
      CNode.StateIndex := ds.Fields[0].AsInteger;
      NoteFrame.tvDiary.Items.AddChildFirst(CNode, '正在读取...').ImageIndex := -1;
      ds.Next;
    end;
  finally
    ds.Free;
    NoteFrame.tvDiary.Items.EndUpdate;
  end;  // try
end;

procedure TdmNote.LoadDiaryMonths(ANode: TTreeNodeType; AYear: Integer);
var
  ds: TDataSet;
  CNode: TTreeNodeType;
begin
  if ANode = nil then Exit;
  NoteFrame.tvDiary.Items.BeginUpdate;
  ANode.DeleteChildren;
  ds := Storage.Query(Format(sqlGetDiaryMonths, [AYear]));
  try
    while not ds.Eof do
    begin
      CNode := NoteFrame.tvDiary.Items.AddChild(ANode, ds.Fields[0].AsString);
      CNode.ImageIndex := IMG_MONTH;
      CNode.SelectedIndex := IMG_MONTH;
      CNode.StateIndex := ds.Fields[0].AsInteger;
      NoteFrame.tvDiary.Items.AddChildFirst(CNode, '正在读取...').ImageIndex := -1;
      ds.Next;
    end;
  finally
    ds.Free;
    NoteFrame.tvDiary.Items.EndUpdate;
  end;  // try
end;

procedure TdmNote.LoadDiaryNode(ANode: TTreeNodeType; ExpandNode: Boolean = False);
begin
  if ANode = nil then LoadDiaryYears
  else case ANode.Level of
    TLV_YEAR: LoadDiaryMonths(ANode, ANode.StateIndex);
    TLV_MONTH: LoadDiaryDays(ANode, ANode.Parent.StateIndex, ANode.StateIndex);
    TLV_DAY: LoadDiarys(ANode, ANode.Parent.Parent.StateIndex, ANode.Parent.StateIndex, ANode.StateIndex);
  end;
end;

procedure TdmNote.LoadDiarys(ANode: TTreeNodeType; AYear, AMonth, ADay: Integer);
var
  ds: TDataSet;
begin
  if ANode = nil then Exit;
  NoteFrame.tvDiary.Items.BeginUpdate;
  ANode.DeleteChildren;
  ds := Storage.Query(Format(sqlGetDiarys, [AYear, AMonth, ADay]));
  try
    while not ds.Eof do
    begin
      NoteFrame.AddMemoNode(NoteFrame.tvDiary, ANode, ds, False);
      ds.Next;
    end;
  finally
    ds.Free;
    NoteFrame.tvDiary.Items.EndUpdate;
  end;  // try
end;

procedure TdmNote.LoadDiaryYears;
var
  ds: TDataSet;
  ANode: TTreeNodeType;
begin
  NoteFrame.tvDiary.Items.BeginUpdate;
  NoteFrame.tvDiary.Items.Clear;
  ds := Storage.Query(sqlGetDiaryYears);
  try
    while not ds.Eof do
    begin
      ANode := NoteFrame.tvDiary.Items.Add(nil, ds.Fields[0].AsString);
      ANode.ImageIndex := IMG_YEAR;
      ANode.SelectedIndex := IMG_YEAR;
      ANode.StateIndex := ds.Fields[0].AsInteger;
      NoteFrame.tvDiary.Items.AddChildFirst(ANode, '正在读取...').ImageIndex := -1;
      ds.Next;
    end;
  finally
    ds.Free;
    NoteFrame.tvDiary.Items.EndUpdate;
  end;
end;

procedure TdmNote.LoadNoteContent(NodeData: PNodeData; var ContentDataSet: TDataSet; var ContentStream: TMemoryStream);
begin
  FDBLock.Enter;
  try
    if Assigned(ContentDataSet) then
      Storage.Query(ContentDataSet, Format(sqlLoadMemo, [NodeData^.NoteID]))
    else
      ContentDataSet := Storage.Query(Format(sqlLoadMemo, [NodeData^.NoteID]));

    if ContentDataSet.RecordCount = 0 then
    begin
      ContentDataSet.Append;
      ContentDataSet.FieldByName('NoteID').AsInteger := NodeData^.NoteID;
      ContentDataSet.Post;
    end;
    ContentStream.Size := 0;
    TBlobField(ContentDataSet.FieldByName('Content')).SaveToStream(ContentStream);
    //DecodeStream(FNoteStream, NodeData^.PwdHash);
  finally
    FDBLock.Leave;
  end;
end;

function TdmNote.LoadNoteChilds(PID: Integer): TDataSet;
begin
  Result := Storage.Query(Format(sqlLoadSubtree, [PID]));
end;

function TdmNote.ModifyPwd(NewPwd: ShortString; Data: Pointer): Boolean;
begin
  with PNodeData(Data)^ do
  begin
    Result := (NewPwd = PwdHash);
    if NewPwd = '' then           //< 删除密码
      NewPwd := GetEmptyPassword(Caption, NoteID)
    else
      NewPwd := Hash(NewPwd);
    PwdHash := NewPwd;
    PwdPassed := True;
    Storage.Execute(Format(sqlModifyPwd, [NewPwd, NoteID]));
  end;
end;

procedure TdmNote.MovePos(NoteID, NewPID: Integer; NewPos: Integer = -1);
begin
  Storage.Execute(Format(sqlMovePos, [NewPID, NewPos, NoteID]));
end;

procedure TdmNote.SaveNoteContent(NodeData: PNodeData; ContentDataSet: TDataSet; ContentStream: TStream);
begin
  if not Assigned(ContentDataSet) or (ContentDataSet.RecordCount = 0) then Exit;
  with ContentDataSet do
  begin
    Edit;
    FieldByName('ModifyDate').AsDateTime := Now;
    TBlobField(FieldByName('Content')).LoadFromStream(ContentStream);
    Post;
  end;
end;

end.

