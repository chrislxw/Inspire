{===============================================================================

  Chris Infinity - Common Library

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

unit ciRichViewEditorIntf;

interface

uses
  Windows, Classes, Controls;

type
  IciRichViewEditor = interface(IInterface)
  ['{2F4A36B6-2756-47BC-A2B4-6E355B184381}']
    function GetControl: TWinControl; stdcall;
    function GetHandle: THandle; stdcall;
    function GetModified: Boolean; stdcall;
    procedure LoadFromFile(AFileName: PChar); stdcall;
    procedure LoadFromStream(AStream: TStream); stdcall;
    procedure Release; stdcall;
    procedure SaveToFile(AFileName: PChar); stdcall;
    procedure SaveToStream(AStream: TStream); stdcall;
    procedure SetFocusRVE; stdcall;
    procedure SetModified(const Value: Boolean); stdcall;
    procedure SetParentControl(AControl: TWinControl); stdcall;
    procedure ShowRVE; stdcall;
    property Handle: THandle read GetHandle;
    property Modified: Boolean read GetModified write SetModified;
  end;

implementation

end.
