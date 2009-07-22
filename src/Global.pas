{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(全局公共单元)
  @created(2008-7-18)
  @author(宁静·星空)

  本单元定义了全程序范围内的公共常量、变量、函数等等，以及必要的初始化和终止化代码。
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

