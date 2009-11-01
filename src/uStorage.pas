{===============================================================================

  Chris Infinity - Inspire

  ��Ȩ���� (C) Chris Infinity��2003-2009. ����Ȩ������

===============================================================================}

{ @abstract(Inspire ���ݴ洢���ýӿ�)
  @created(2009-10-31)
  @author(Chris Liu)

  ����Ԫ���� Inspire �Ļ������ݴ洢���ö���
}

unit uStorage;

interface

uses
  SysUtils, Classes, GpStructuredStorage, msxml, CIXmlDom;

type
  TStorageIndex = class(TObject)
  end;

  TStorageXMLIndex = class(TStorageIndex)
  end;

  { Inspire ���ݴ洢���� }
  TStorage = class(TComponent)
  private
    FStg: IGpStructuredStorage;
    FFilename: string;
    FIndexTable: IXMLDomDocument;
    FPropertyTable: IXMLDomDocument;
    function GetProperties(Key: string): Variant;
    procedure InitStorage;
    procedure SetFilename(const Value: string);
    procedure SetProperties(Key: string; const Value: Variant);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Open(storageFile: string);
    property Filename: string read FFilename write SetFilename;
    property Properties[Key: string]: Variant read GetProperties write SetProperties;
  end;

implementation

uses
  Global;

function TStorage.GetProperties(Key: string): Variant;
begin
end;

procedure TStorage.SetFilename(const Value: string);
begin
  if FFilename <> Value then
  begin
//    CheckInactive;
    FFilename := Value;
  end;
end;

procedure TStorage.SetProperties(Key: string; const Value: Variant);
begin
end;

constructor TStorage.Create(AOwner: TComponent);
begin
  inherited;

  FStg := CreateStructuredStorage;
end;

destructor TStorage.Destroy;
begin
  FStg := nil;

  inherited;
end;

procedure TStorage.InitStorage;
begin


end;

procedure TStorage.Open(storageFile: string);
begin
  if FStg.IsStructuredStorage(storageFile) then
    FStg.Initialize(storageFile, fmOpenRead)
  else
    FStg.Initialize(storageFile, fmCreate);
end;

end.
