{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(窗框接口)
  @created(2008-8-4)
  @author(宁静·星空)

  本单元包含 Inspire 的窗框访问接口。
}

unit uBaseFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms;

type
  IBaseFrame = interface(IInterface)
  ['{33C5EBCC-500E-4D3E-94E1-DF08A0C2754A}']
    procedure InitializeFrame(Container: TWinControl); stdcall;
    procedure FinalizeFrame; stdcall;

    procedure Activate; stdcall;
    procedure Deactivate; stdcall;

    function GetFrameName: string; stdcall;
    function GetImageIndex: Integer; stdcall;
    procedure PaintFrameTitleBar(Canvas: TCanvas); stdcall;
  end;

implementation

end.
