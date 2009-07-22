{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(公共资源模块)
  @created(2008-7-18)
  @author(宁静·星空)

  本单元包含可供设计期使用的资源模块，以及绘制界面所需的一些颜色等常量。
}

unit udmCommon;

interface

uses
  SysUtils, Classes, TBXSwitcher, cxLookAndFeels, ImgList,
  TBXOfficeKTheme, TBXAthenTheme, Controls, cxGraphics;

type
  TdmCommon = class(TDataModule)
    LookAndFeel: TcxLookAndFeelController;
    TBXSwitcher: TTBXSwitcher;
    ILNav: TcxImageList;
    ILMain: TcxImageList;
    ILTree: TcxImageList;
    ILAppBtn: TcxImageList;
  public
  end;

var
  dmCommon: TdmCommon;

const
  { MainForm paint colors } {}
  { 默认风格：00933803  00D68759
    Live风格：00965B00  00CFAC6E
    Live风格2：00D2757D 00BA8636  00965B00  00CFAC6E
  } {}
  CL_FrameTitleBar_GradientStart = $00D2B17D;
  CL_FrameTitleBar_GradientEnd   = $00BA8636;
  CL_FrameTitleBar_GradientStart2= $00965B00;
  CL_FrameTitleBar_GradientEnd2  = $00CFAC6E;
  CL_NavTitleBar_GradientStart   = $00E6B490;
  CL_NavTitleBar_GradientEnd     = $00F9E1CE;

implementation

{$R *.dfm}

{.$R ExtraRes.res}

end.
