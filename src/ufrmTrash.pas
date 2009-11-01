unit ufrmTrash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ComCtrls, udmCommon, ExtCtrls, CIButtons,
  uBaseFrame, Global, ActnList, DB, RVStyle, RVScroll, RichView;

type
  TfrmTrash = class(TFrame, IBaseFrame)
    lvTrashList: TListView;
    Panel1: TPanel;
    CIToolButton1: TCIToolButton;
    CIToolButton2: TCIToolButton;
    ActionList: TActionList;
    actRefresh: TAction;
    actDelete: TAction;
    actUndelete: TAction;
    CIToolButton3: TCIToolButton;
    actSelectAll: TAction;
    CIToolButton4: TCIToolButton;
    Splitter1: TSplitter;
    rvPreview: TRichView;
    rvsPreview: TRVStyle;
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actUndeleteExecute(Sender: TObject);
    procedure lvTrashListClick(Sender: TObject);
    procedure lvTrashListDeletion(Sender: TObject; Item: TListItem);
  private
  public
    procedure InitializeFrame(Container: TWinControl); stdcall;
    procedure FinalizeFrame; stdcall;

    procedure Activate; stdcall;
    procedure AfterConstruction; override;
    procedure Deactivate; stdcall;

    function GetFrameName: string; stdcall;
    function GetImageIndex: Integer; stdcall;
    procedure PaintFrameTitleBar(Canvas: TCanvas); stdcall;
  end;

var
  TrashFrame: TfrmTrash;

procedure InitFrame;

implementation

{$R *.dfm}

uses
  udmNote, ufrmNote, TypeDefs;

procedure InitFrame;
begin
  TrashFrame := TfrmTrash.Create(Application.MainForm);
end;

{ TfrmTrash }

procedure TfrmTrash.actDeleteExecute(Sender: TObject);
var
  i: Integer;
begin
  lvTrashList.Items.BeginUpdate;
  for i:= lvTrashList.Items.Count-1 downto 0 do
    if lvTrashList.Items[i].Selected then
    begin
      dmNote.DeleteNote(StrToInt(lvTrashList.Items[i].Caption));
      lvTrashList.Items[i].Delete;
    end;
  lvTrashList.Items.EndUpdate;
end;

procedure TfrmTrash.Activate;
begin
  BringToFront;
end;

procedure TfrmTrash.actRefreshExecute(Sender: TObject);
var
  ds: TDataSet;
  li: TListItem;
  pd: PNodeData;
begin
  lvTrashList.Items.BeginUpdate;
  lvTrashList.Items.Clear;
  // 加载笔记的已删除项
  ds := Storage.Query('select * from NoteCatalog where Deleted=True');
  with ds do
  while not Eof do
  begin
    New(pd);
    pd^.NoteID := FieldByName('NoteID').AsInteger;
    pd^.PID := FieldByName('PID').AsInteger;
    pd^.Pos := FieldByName('POS').AsInteger;
    pd^.ImageIndex := FieldByName('ImageIndex').AsInteger;
    pd^.Caption := FieldByName('Caption').AsString;
    pd^.Protect := FieldByName('Protect').AsBoolean;
    pd^.PwdHash := FieldByName('PassHash').AsString;
    pd^.CreateDate := FieldByName('CreateDate').AsDateTime;
    pd^.ModifyDate := FieldByName('ModifyDate').AsDateTime;

    li := lvTrashList.Items.Add;
    li.Caption := IntToStr(pd^.NoteID);
    li.SubItems.Add(pd^.Caption);
    li.SubItems.Add(ds.FieldByName('Path').AsString);
    li.SubItems.Add(DateToStr(pd^.CreateDate));
    li.SubItems.Add(DateToStr(pd^.ModifyDate));
    li.Data := pd;

    Next;
  end;
  lvTrashList.Items.EndUpdate;
end;

procedure TfrmTrash.actSelectAllExecute(Sender: TObject);
begin
  lvTrashList.SelectAll;
end;

procedure TfrmTrash.actUndeleteExecute(Sender: TObject);
var
  i: Integer;
begin
  lvTrashList.Items.BeginUpdate;
  Storage.BeginTrans;
  try
    for i:= lvTrashList.Items.Count-1 downto 0 do
      if lvTrashList.Items[i].Selected then
      begin
        Storage.Execute(Format(sqlUntrashMemo, [StrToInt(lvTrashList.Items[i].Caption)]));
        lvTrashList.Items[i].Delete;
      end;
    Storage.Commit;
  except
    Storage.Rollback;
  end;
  lvTrashList.Items.EndUpdate;
  NoteFrame.actNoteRefreshExecute(nil);
end;

procedure TfrmTrash.AfterConstruction;
begin
  inherited;
  lvTrashList.DoubleBuffered := True;
end;

procedure TfrmTrash.Deactivate;
begin

end;

procedure TfrmTrash.FinalizeFrame;
begin

end;

function TfrmTrash.GetFrameName: string;
begin
  Result := '回收站';
end;

function TfrmTrash.GetImageIndex: Integer;
begin
  Result := 5;
end;

procedure TfrmTrash.InitializeFrame(Container: TWinControl);
begin
  Parent := Container;
  Align := alClient;
end;

procedure TfrmTrash.lvTrashListClick(Sender: TObject);
var
  pd: PNodeData;
  ms: TMemoryStream;
  ds: TDataSet;
begin
  if lvTrashList.Selected = nil then Exit;
  pd := lvTrashList.Selected.Data;
  ms := TMemoryStream.Create;
  ds := nil;
  try
    dmNote.LoadNoteContent(pd, ds, ms);
    ms.Position := 0;
    rvPreview.LoadRVFFromStream(ms);
    rvPreview.Format;
  finally
    ms.Free;
    ds.Free;
  end;
end;

procedure TfrmTrash.lvTrashListDeletion(Sender: TObject; Item: TListItem);
var
  pd: PNodeData;
begin
  pd := Item.Data;
  Finalize(pd^);
end;

procedure TfrmTrash.PaintFrameTitleBar(Canvas: TCanvas);
begin

end;

end.
