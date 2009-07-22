{===============================================================================

  Chris Infinity - e-Scroll

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(e-Scroll 数据存储调用接口)
  @created(2008-7-23)
  @author(Chris EVE)

  本单元包含 e-Scroll 的基本数据存储调用对象。
}

unit uStorage;

interface

uses
  SysUtils, Classes, DB, ADODB,
  CI.Database.Factory,
  CI.Database.Factory.ADO;

type
  { e-Scroll 数据存储对象 }
  TStorage = class(TComponent)
  private
    FStgDB: TCIDBADOFactory;
    FFilename: string;
    FPropertyTable: TADOTable;
    function GetProperties(Key: string): Variant;
    procedure SetFilename(const Value: string);
    procedure SetProperties(Key: string; const Value: Variant);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BeginTrans; inline;
    procedure CheckActive; inline;
    procedure CheckInactive; inline;
    procedure Commit; inline;
    function Connect: Boolean;
    function Execute(SQLText: string): Integer; inline;
    function Query(SQLText: string): TDataSet; inline;
    procedure Disconnect;
    procedure GetStrList(ASQL: string; AList: TStrings);
    function InTransaction: Boolean;
    procedure Rollback; inline;
    procedure ThreadExecute(SQLText: string; Callback: TThreadExecuteEvent);
    procedure ThreadQuery(SQLText: string; Callback: TThreadQueryEvent);
    property Filename: string read FFilename write SetFilename;
    property Properties[Key: string]: Variant read GetProperties write SetProperties;
  end;

implementation

uses
  Global;

function TStorage.GetProperties(Key: string): Variant;
begin
  Result := FPropertyTable.FieldByName(Key).Value;
end;

procedure TStorage.SetFilename(const Value: string);
begin
  if FFilename <> Value then
  begin
    CheckInactive;
    FFilename := Value;
  end;
end;

procedure TStorage.SetProperties(Key: string; const Value: Variant);
begin
  with FPropertyTable do
  begin
    Edit;
    FieldByName(Key).Value := Value;
    Post;
  end;
end;

constructor TStorage.Create(AOwner: TComponent);
begin
  inherited;

  FStgDB := TCIDBADOFactory.Create(Self);
  FPropertyTable := TADOTable.Create(Self);
end;

destructor TStorage.Destroy;
begin
  FPropertyTable.Free;
  FStgDB.Free;

  inherited;
end;

procedure TStorage.BeginTrans;
begin
  FStgDB.BeginTrans;
end;

procedure TStorage.CheckActive;
begin
  if not FStgDB.Connected then
    FStgDB.Connect;
end;

procedure TStorage.CheckInactive;
begin
  if FStgDB.Connected then
    FStgDB.Disconnect;
end;

procedure TStorage.Commit;
begin
  FStgDB.Commit;
end;

function TStorage.Connect: Boolean;
begin
  Result := False;
  if FFilename = '' then Exit;
  try
    CheckInactive;
    FStgDB.ConnectionString := Format(JET_CONN, [FFilename]);
    FStgDB.Connect;

    FPropertyTable.Connection := FStgDB.GetConnection as TADOConnection;
    FPropertyTable.TableName := 'Properties';
    FPropertyTable.Open;

    Result := True;
  except
  end;
end;

function TStorage.Execute(SQLText: string): Integer;
begin
  Result := FStgDB.Execute(SQLText);
end;

function TStorage.Query(SQLText: string): TDataSet;
begin
  Result := FStgDB.Query(SQLText);
end;

procedure TStorage.Disconnect;
begin
  FPropertyTable.Close;
  FStgDB.Disconnect;
end;

procedure TStorage.GetStrList(ASQL: string; AList: TStrings);
var
  ds: TDataSet;
begin
  AList.Clear;
  ds := Query(ASQL);
  try
    while not ds.Eof do
    begin
      AList.Add(ds.Fields[0].AsString);
      ds.Next;
    end;
  finally
    ds.Free;
  end;
end;

function TStorage.InTransaction: Boolean;
begin
  Result := FStgDB.InTransaction;
end;

procedure TStorage.Rollback;
begin
  FStgDB.Rollback;
end;

procedure TStorage.ThreadExecute(SQLText: string; Callback: TThreadExecuteEvent);
begin
  FStgDB.ThreadExecute(SQLText, Callback);
end;

procedure TStorage.ThreadQuery(SQLText: string; Callback: TThreadQueryEvent);
begin
  FStgDB.ThreadQuery(SQLText, Callback);
end;

end.
