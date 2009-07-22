object fmSplash: TfmSplash
  Left = 277
  Top = 111
  BorderStyle = bsNone
  Caption = #20851#20110
  ClientHeight = 182
  ClientWidth = 312
  Color = clBtnFace
  TransparentColorValue = clBtnShadow
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  GlassFrame.Enabled = True
  GlassFrame.SheetOfGlass = True
  object StaticText1: TStaticText
    Left = 56
    Top = 24
    Width = 104
    Height = 29
    Caption = 'Chris PIM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 40
    Top = 152
    Width = 238
    Height = 16
    Caption = 'Copyright (C) Chris Infinity, 2003-2009'
    TabOrder = 1
  end
  object StatusLabel: TStaticText
    Left = 40
    Top = 120
    Width = 64
    Height = 16
    Caption = 'Loading...'
    TabOrder = 2
  end
end
