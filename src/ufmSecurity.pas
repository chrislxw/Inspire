{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

unit ufmSecurity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls, Buttons, ExtCtrls;

const
  csLogin = 0;        //< 登录
  csCheckPwd = 1;     //< 验证密码
  csNewUserPwd = 2;   //< 新建用户输入密码
  csModifyPwd = 3;    //< 修改密码

type
  TCheckPasswordEvent = function(Passwd: ShortString; Data: Pointer): Boolean of object;
  TLoginEvent = function(Username, Passwd: ShortString): Boolean of object;

  TfmSecurity = class(TForm)
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    edConfirmPW: TLabeledEdit;
    edPassword: TLabeledEdit;
    edUsername: TLabeledEdit;
    pButtons: TPanel;
    pConfirmPW: TPanel;
    pPassword: TPanel;
    pUsername: TPanel;
    TitlePanel: TPanel;
    procedure btnOKClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TitlePanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    FExtraData: Pointer;
    FMode: Byte;
    FOnCheckPassword: TCheckPasswordEvent;
    FOnLogin: TLoginEvent;
  public
    function CheckSecurity(Mode: Byte; ExtraData: Pointer): Boolean;
  published
    property OnCheckPassword: TCheckPasswordEvent read FOnCheckPassword write FOnCheckPassword;
    property OnLogin: TLoginEvent read FOnLogin write FOnLogin;
  end;

var
  fmSecurity: TfmSecurity;

implementation

{$R *.dfm}

procedure TfmSecurity.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
  case FMode of
    csLogin:
        if Assigned(FOnLogin) then
          if not FOnLogin(edUsername.Text, edPassword.Text) then
          begin
            ModalResult := mrNone;
            MessageBox(Handle, '登录失败！', '错误', 16);
          end;
    csCheckPwd:
        if Assigned(FOnCheckPassword) then
          if not FOnCheckPassword(edPassword.Text, FExtraData) then
          begin
            ModalResult := mrNone;
            MessageBox(Handle, '密码错误！', '错误', 16);
          end;
    //csNewUserPwd: ;
    csModifyPwd:
      begin
        if edPassword.Text <> edConfirmPW.Text then
        begin
          ModalResult := mrNone;
          MessageBox(Handle, '两次输入的密码不一致！', '错误', 16);
        end
        else if Assigned(FOnCheckPassword) then
          FOnCheckPassword(edPassword.Text, FExtraData);
      end;
  end;
end;

procedure TfmSecurity.FormPaint(Sender: TObject);
begin
  with Canvas do
  begin
    Pen.Color := $00FF8000;
    Pen.Width := 2;
    Rectangle(1, 1, Width, Height);

    Pen.Color := clBtnShadow;
    Pen.Width := 1;
    MoveTo(2, 57);
    LineTo(Width-2, 57);

    Pen.Color := clWhite;
    MoveTo(2, 58);
    LineTo(Width-2, 58);
  end;
end;

procedure TfmSecurity.FormShow(Sender: TObject);
begin
  edUsername.Text := '';
  edPassword.Text := '';
  edConfirmPW.Text := '';
  edPassword.SetFocus;
end;

procedure TfmSecurity.TitlePanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
    Y: Integer);
begin
  ReleaseCapture;
  Perform( wm_SysCommand, $F012, 0 );
end;

function TfmSecurity.CheckSecurity(Mode: Byte; ExtraData: Pointer): Boolean;
begin
  AutoSize := False;
  FMode := Mode;
  FExtraData := ExtraData;
  
  case Mode of
    csLogin:
      begin
        pUsername.Visible := True;
        pPassword.Visible := True;
        pConfirmPW.Visible := False;
      end;
    csCheckPwd:
      begin
        pUsername.Visible := False;
        pPassword.Visible := True;
        pConfirmPW.Visible := False;
      end;
    csNewUserPwd:
      begin
        pUsername.Visible := True;
        pPassword.Visible := True;
        pConfirmPW.Visible := True;
      end;
    csModifyPwd:
      begin
        pUsername.Visible := False;
        pPassword.Visible := True;
        pConfirmPW.Visible := True;
      end;
  end;
  AutoSize := True;
  Result := ShowModal = mrOk;
end;

end.
