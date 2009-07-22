{===============================================================================

  Chris Infinity - Inspire

  ��Ȩ���� (C) Chris Infinity��2003-2009. ����Ȩ������

===============================================================================}

{ @abstract(ȫ�ֹ�����Ԫ)
  @created(2008-7-18)
  @author(�������ǿ�)

  ����Ԫ������ȫ����Χ�ڵĹ��������������������ȵȣ��Լ���Ҫ�ĳ�ʼ������ֹ�����롣
}

unit Global;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, GraphUtil, Forms, IniFiles, CICommon, CIConsts,
  CI.Database.Factory.Intf;

const
  CM_BASE              = WM_USER  + $1000;
  CM_APPINIT           = CM_BASE  + $0;

type
  TShowStatusHint = procedure(PanelIndex: Integer; Text: string; Image: Integer; Timeout: Integer = 2000) of object;

var
  Config: TIniFile;
  Storage: ICIDBFactory;

var
  ShowStatusHint: TShowStatusHint;

procedure WriteLog(LogLevel: SmallInt; LogText: string);

procedure ClearCanvas(ACanvas: TCanvas; ARect: TRect);

implementation

uses
  CI.Database.Factory.ADO;

procedure WriteLog(LogLevel: SmallInt; LogText: string);
begin
{$IFDEF FULLDEBUG}
  GlobalLog.Add(LogText);
{$ENDIF}
end;

procedure ClearCanvas(ACanvas: TCanvas; ARect: TRect);
begin
  ACanvas.Pen.Style := psClear;
  ACanvas.Brush.Style := bsClear;
  ACanvas.Rectangle(ARect);
end;

initialization
  Config := TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini'));
  Storage := TCIDBADOFactory.Create(nil);

finalization

end.

