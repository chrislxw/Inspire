{===============================================================================
  Galaxy Software - QuickNote

  ufmConfig Unit  设置选项窗体单元

  作者：埃尔维斯·宁静

  版权所有 (C) 银河软件，2003-2008. 所有权保留。


  类
  ------------------------------------------------------------------------------


  版本历史
  ------------------------------------------------------------------------------
===============================================================================}

unit ufmConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Global, Security,
  StdCtrls, Mask, RzEdit, RzSpnEdt, ExtCtrls, RzPanel, RzDlgBtn, RzButton,
  RzRadChk, cxPC, cxControls, RzLabel;

type
  TfmConfig = class(TForm)
    DialogButtons: TRzDialogButtons;
    PC: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    chkAlphaBlend: TRzCheckBox;
    edAlphaBlend: TRzSpinEdit;
    chkStayOnTop: TRzCheckBox;
    chkMinimizeToTray: TRzCheckBox;
    gbModifyPass: TRzGroupBox;
    chkDoModifyPassword: TRzCheckBox;
    RzLabel1: TRzLabel;
    edOldPass: TRzEdit;
    edNewPass: TRzEdit;
    edConfirmPass: TRzEdit;
    btnModifyPassword: TRzBitBtn;
    btnClearDocPass: TRzBitBtn;
    edQNCTitle: TRzEdit;
    procedure chkAlphaBlendClick(Sender: TObject);
    procedure chkDoModifyPasswordClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
  end;

var
  fmConfig: TfmConfig;

implementation

{$R *.dfm}

procedure TfmConfig.chkAlphaBlendClick(Sender: TObject);
begin
  edAlphaBlend.Enabled := chkAlphaBlend.Checked;
end;

procedure TfmConfig.chkDoModifyPasswordClick(Sender: TObject);
begin
  gbModifyPass.Enabled := chkDoModifyPassword.Checked;
end;

procedure TfmConfig.FormShow(Sender: TObject);
begin
  PC.ActivePageIndex := 0;

  chkDoModifyPassword.Checked := False;
  gbModifyPass.Enabled := False;
end;

end.
