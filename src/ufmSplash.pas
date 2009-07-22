unit ufmSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StdCtrls, ExtCtrls;

const
  CM_SPLASHSTATUS = WM_USER + 1000;

type
  TfmSplash = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StatusLabel: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SplashImageClick(Sender: TObject);
  private
  protected
    procedure CMSplashStatus(var Message: TMessage); message CM_SPLASHSTATUS;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    procedure UpdateStatus(StatusText: string);
  end;

var
  fmSplash: TfmSplash;
  SplashFormHandle: THandle;

procedure SplashStatus(Info: string);

implementation

{$R *.dfm}

procedure SplashStatus(Info: string);
begin
  PostMessage(fmSplash.Handle, CM_SPLASHSTATUS, Integer(Info), 0);
end;

procedure TfmSplash.CMSplashStatus(var Message: TMessage);
var
  s: string;
begin
  s := string(Message.WParam);
  Self.UpdateStatus(s);
end;

procedure TfmSplash.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or WS_THICKFRAME;
  Params.ExStyle := Params.ExStyle or WS_EX_TOPMOST;
  with Params.WindowClass do
    style := style or CS_DROPSHADOW;
end;

procedure TfmSplash.FormCreate(Sender: TObject);
begin
//  SplashImage.Picture.LoadFromFile('.\Splash.png');
  SplashFormHandle := Self.Handle;
  SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOMOVE or SWP_HIDEWINDOW);

  Update;
end;

procedure TfmSplash.UpdateStatus(StatusText: string);
begin
  Application.ProcessMessages;
  Sleep(1);
  StatusLabel.Caption := StatusText;

//  Sleep(1000);
  Update;
end;

procedure TfmSplash.FormShow(Sender: TObject);
begin

  Update;
end;

procedure TfmSplash.SplashImageClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
