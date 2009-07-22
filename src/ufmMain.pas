{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(主窗体)
  @created(2008-7-18)
  @author(宁静·星空)

  Inspire 主窗体单元
}
unit ufmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ToolWin, ComCtrls, Types, GraphUtil,
  StdCtrls, ExtCtrls, Dialogs, Menus, ActnList, Buttons, {GDIPAPI, GDIPOBJ, GDIPUtils, }Themes, UxTheme, DWMUtils,
  // CI RTL
  CICommon, CIFormUtils, CIUtils, CIExtCtrls,
  // CI Components
  CIHint, CoolTrayIcon,
  // TB2k and TBX
  TB2Item, TBX, TBXSwitcher, TBXToolPals, TB2Dock, TB2Toolbar, TBXSwitcherItem, TBXDkPanels,
  // DevExpress
  // Other
  mbTBXComboBox, AppEvnts,
  // Frames
  uBaseFrame, ufrmNote, ufrmTrash, 
  // Global Modules
  Global, udmCommon, CIButtons, StdActns;

const
  CM_HINTTIMEOUT      = CM_BASE + $100;
  CM_LOADCONFIG       = CM_BASE + $101;

type
  // 主窗体
  TfmMain = class(TForm)
    actFileClose: TAction;
    actFileExit: TAction;
    actFileNew: TAction;
    actFileOpen: TAction;
    ActionList: TActionList;
    actShowMainWindow: TAction;
    actStayOnTop: TAction;
    actToolsOptions: TAction;
    AppEvents: TApplicationEvents;
    btnAddMemo: TCIToolButton;
    btnDelete: TCIToolButton;
    btnSave: TCIToolButton;
    CIHint: TCIHint;
    dlgOpen: TOpenDialog;
    dlgSave: TSaveDialog;
    MainMenu: TMainMenu;
    miExit: TTBXItem;
    miFile: TMenuItem;
    miFileClose: TMenuItem;
    miFileExit: TMenuItem;
    miFileExport: TMenuItem;
    miFileImport: TMenuItem;
    miFileNew: TMenuItem;
    miFileOpen: TMenuItem;
    miNavMemo: TTBXItem;
    miNavTrashBin: TTBXItem;
    miS1: TMenuItem;
    miTools: TMenuItem;
    miToolsOptions: TMenuItem;
    miViewStayOnTop: TMenuItem;
    pbFrameTitleBar: TPaintBox;
    pbIcon: TPaintBox;
    pmNav: TTBXPopupMenu;
    pmTray: TTBXPopupMenu;
    ProgressBar: TProgressBar;
    Status0: TCILabel;
    TBXSep1: TTBXSeparatorItem;
    TitleBar: TCILabel;
    TrayIcon: TCoolTrayIcon;
    sbtnMin: TCIToolButton;
    sbtnClose: TCIToolButton;
    FrameContainer: TPanel;
    lbPlaceHolder1: TLabel;
    procedure actFileCloseExecute(Sender: TObject);
    procedure actFileExitExecute(Sender: TObject);
    procedure actFileOpenExecute(Sender: TObject);
    procedure actShowMainWindowExecute(Sender: TObject);
    procedure actStayOnTopExecute(Sender: TObject);
    procedure actToolsOptionsExecute(Sender: TObject);
    procedure AppEventsException(Sender: TObject; E: Exception);
    procedure AppEventsIdle(Sender: TObject; var Done: Boolean);
    procedure cboSearchTextEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure miNavItemClick(Sender: TObject);
    procedure pbFrameTitleBarPaint(Sender: TObject);
    procedure pbIconClick(Sender: TObject);
    procedure pbIconMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pbIconMouseEnter(Sender: TObject);
    procedure pbIconMouseLeave(Sender: TObject);
    procedure pbIconMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pbIconPaint(Sender: TObject);
    procedure sbtnMinClick(Sender: TObject);
    procedure TitleBarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TrayIconClick(Sender: TObject);
    procedure TrayIconMinimizeToTray(Sender: TObject);
  private
    FCurFrame: TFrame;
    procedure CloseStorage;
    procedure InitFrames;
    procedure LoadConfig;
    procedure OpenStorage(Filename: string);
    procedure SaveConfig;
    procedure SwitchFrame(FrameTag: Integer);
  protected
    procedure CMAppInit(var Message: TMessage); message CM_APPINIT;
    procedure CMHintTimeout(var Message: TMessage); message CM_HINTTIMEOUT;
    procedure CMLoadConfig(var Message: TMessage); message CM_LOADCONFIG;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    procedure AfterConstruction; override;
    procedure ShowStatusHint(PanelIndex: Integer; Text: string; Image: Integer; Timeout: Integer = 2000);
  end;

var
  fmMain: TfmMain;    //< 主窗体实例

implementation

{$R *.dfm}

procedure TfmMain.actFileCloseExecute(Sender: TObject);
begin
  CloseStorage;
end;

procedure TfmMain.actFileExitExecute(Sender: TObject);
begin
  try
    SaveConfig();

    CloseStorage;
  finally
    Application.Terminate;
  end;
end;

procedure TfmMain.actFileOpenExecute(Sender: TObject);
begin
  if dlgOpen.Execute() then
    OpenStorage(dlgOpen.FileName);
end;

procedure TfmMain.actShowMainWindowExecute(Sender: TObject);
begin
  TrayIcon.ShowMainForm;
  TrayIcon.ShowTaskbarIcon;
end;

procedure TfmMain.actStayOnTopExecute(Sender: TObject);
begin
  if actStayOnTop.Checked then
    SetWindowPos(Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_SHOWWINDOW)
  else
    SetWindowPos(Handle, HWND_NOTOPMOST, Left, Top, Width, Height, SWP_SHOWWINDOW);
end;

procedure TfmMain.actToolsOptionsExecute(Sender: TObject);
begin
{
  with fmConfig do
  begin
    if ShowModal = mrOK then
    begin
      Self.AlphaBlend := chkAlphaBlend.Checked;
      Self.AlphaBlendValue := Trunc(edAlphaBlend.Value*255/100);
    end;
  end;
}  
end;

procedure TfmMain.AppEventsException(Sender: TObject; E: Exception);
begin
  WriteLog(0, 'EXCP: '+ E.Message);
end;

procedure TfmMain.AppEventsIdle(Sender: TObject; var Done: Boolean);
begin
//  Done := True;
{
  if ActiveControl <> cboSearchText then
  with cboSearchText do
  begin
    Font.Color := clGrayText;
    Text := '搜索...';
  end;
}
end;

procedure TfmMain.cboSearchTextEnter(Sender: TObject);
begin
{
  with cboSearchText do
  if not ParentFont then
  begin
    ParentFont := True;
    Text := '';
  end;
}
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  actFileExitExecute(nil)
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;
  FrameContainer.Align := alClient;

  FCurFrame := nil;
  //dmCommon.TBXSwitcher.Theme := Config.ReadString('Global', 'VisualStyle', 'OfficeK');

  TrayIcon.Icon.Assign(Application.Icon);
  TrayIcon.IconVisible := True;
end;

procedure TfmMain.FormPaint(Sender: TObject);
var
  pHeight, pCenter: Integer;
begin
    pHeight := pbFrameTitleBar.Top + pbFrameTitleBar.Height;
    pCenter := pbFrameTitleBar.Top + pbFrameTitleBar.Height div 2;
    // 背景效果
    // 1 顶、底线
    Canvas.Pen.Color := $00E4D1A7;
    Canvas.MoveTo(0, pbFrameTitleBar.Top);
    Canvas.LineTo(Width, pbFrameTitleBar.Top);

    Canvas.Pen.Color := $00E4D1A7;
    Canvas.MoveTo(0, pHeight-2);
    Canvas.LineTo(Width, pHeight-2);

    Canvas.Pen.Color := $00707070;
    Canvas.MoveTo(0, pHeight-1);
    Canvas.LineTo(Width, pHeight-1);
    // 2 渐变
    GradientFillCanvas(Canvas,
                 CL_FrameTitleBar_GradientStart,
                 CL_FrameTitleBar_GradientEnd,
                 Rect(0, pbFrameTitleBar.Top+1, Width, pCenter),
                 gdVertical);
    GradientFillCanvas(Canvas,
                 CL_FrameTitleBar_GradientStart2,
                 CL_FrameTitleBar_GradientEnd2,
                 Rect(0, pCenter, Width, pHeight-2),
                 gdVertical);

end;

procedure TfmMain.miNavItemClick(Sender: TObject);
begin
  SwitchFrame((Sender as TTBXItem).Tag);
end;

procedure TfmMain.pbFrameTitleBarPaint(Sender: TObject);
//var
//  pHeight, pCenter: Integer;
begin
  with pbFrameTitleBar do
  begin
{
    pHeight := Height;
    pCenter := pHeight div 2;
    // 背景效果
    // 1 顶、底线
    Canvas.Pen.Color := $00E4D1A7;
    Canvas.MoveTo(0, 0);
    Canvas.LineTo(Width, 0);

    Canvas.Pen.Color := $00E4D1A7;
    Canvas.MoveTo(0, pHeight-2);
    Canvas.LineTo(Width, pHeight-2);

    Canvas.Pen.Color := $00707070;
    Canvas.MoveTo(0, pHeight-1);
    Canvas.LineTo(Width, pHeight-1);
    // 2 渐变
    GradientFill(Canvas,
                 Rect(0, 1, Width, pCenter),
                 CL_FrameTitleBar_GradientEnd,
                 CL_FrameTitleBar_GradientStart,
                 tGTopBottom);
    GradientFill(Canvas,
                 Rect(0, pCenter, Width, pHeight-2),
                 CL_FrameTitleBar_GradientEnd2,
                 CL_FrameTitleBar_GradientStart2,
                 tGTopBottom);
}
    // 绘制当前窗框的标题
    if FCurFrame <> nil then
    begin
      Canvas.Brush.Style := bsClear;
      Canvas.Font.Style := [fsBold];
      Canvas.TextOut(53, 7, (FCurFrame as IBaseFrame).GetFrameName);
      Canvas.Font.Style := [];
    end;
    // 调用当前窗框的自定义绘制
    if FCurFrame <> nil then
    begin
      (FCurFrame as IBaseFrame).PaintFrameTitleBar(Canvas);
      dmCommon.ILNav.Draw(Canvas, Width-30, 3, (FCurFrame as IBaseFrame).GetImageIndex);
    end;
  end;
end;

procedure TfmMain.pbIconClick(Sender: TObject);
var
  p: TPoint;
begin
  p.X := 1;
  p.Y := 30;
  p := pbFrameTitleBar.ClientToScreen(p);
  pmNav.Popup(p.X, p.Y);
end;

procedure TfmMain.pbIconMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pbIcon.Tag := 2;
  pbIcon.Repaint;
end;

procedure TfmMain.pbIconMouseEnter(Sender: TObject);
begin
  pbIcon.Tag := 1;
  pbIcon.Repaint;
end;

procedure TfmMain.pbIconMouseLeave(Sender: TObject);
begin
  pbIcon.Tag := 0;
  pbIcon.Repaint;
end;

procedure TfmMain.pbIconMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pbIcon.Tag := 1;
  pbIcon.Repaint;
end;

procedure TfmMain.pbIconPaint(Sender: TObject);
begin
  dmCommon.ILAppBtn.Draw(pbIcon.Canvas, 0, 0, pbIcon.Tag);
  pbIcon.Canvas.Draw(4, 4, Application.Icon);
end;

procedure TfmMain.sbtnMinClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfmMain.TitleBarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TfmMain.TrayIconClick(Sender: TObject);
begin
  if Visible then
  begin
    TrayIcon.HideMainForm;
    TrayIcon.HideTaskbarIcon;
  end
  else
  begin
    TrayIcon.ShowMainForm;
    TrayIcon.ShowTaskbarIcon;
  end;
end;

procedure TfmMain.TrayIconMinimizeToTray(Sender: TObject);
begin
//  TrayIcon.HideTaskbarIcon;
end;

procedure TfmMain.CloseStorage;
var
  f: TFrame;
begin
  for f in FrameList.Values do
    (f as IBaseFrame).FinalizeFrame;

  Storage.Disconnect;
  Storage := nil;
end;

procedure TfmMain.InitFrames;
begin
  Status0.Caption := '初始化笔记窗框...';
  Application.ProcessMessages;
  ufrmNote.InitFrame;

  Status0.Caption := '初始化回收站窗框...';
  Application.ProcessMessages;
  ufrmTrash.InitFrame;

  SwitchFrame(NoteFrame.Tag);
end;

procedure TfmMain.LoadConfig;
var
  s: string;
begin
  Status0.Caption := '还原窗体位置...';
  LoadFormState(Config, Self);
  actStayOnTop.Checked := Config.ReadBool('Global', 'StayOnTop', False);
  actStayOnTopExecute(actStayOnTop);

  Status0.Caption := '初始化窗框...';
  InitFrames;

  Status0.Caption := '连接存储矩阵...';
  Application.ProcessMessages;
  s := Config.ReadString('Global', 'Storage', '');
  OpenStorage(s);
  SwitchFrame(Config.ReadInteger('Global', 'StartPage', 3));
  Status0.Caption := '';
end;

procedure TfmMain.OpenStorage(Filename: string);
var
  f: TFrame;
begin
  Storage.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + Filename;
  Storage.Connect;
  if not Storage.Connected then
  begin
    MessageBox(Handle, PChar('无法打开文件 '+Filename+' ！'), '错误', 16);
    Exit;
  end;

  for f in FrameList.Values do
    (f as IBaseFrame).InitializeFrame(FrameContainer);
end;

procedure TfmMain.SaveConfig;
begin
  SaveFormState(Config, Self);
  Config.WriteBool('Global', 'StayOnTop', actStayOnTop.Checked);
  Config.WriteString('Global', 'VisualStyle', dmCommon.TBXSwitcher.Theme);
//  Config.WriteInteger('Global', 'StartPage', pcFrameContainer.ActivePageIndex);
//  Config.WriteString('Global', 'Storage', Storage.Filename);
end;

procedure TfmMain.SwitchFrame(FrameTag: Integer);
var
  cnt: Integer;
begin
//  cnt := FrameList.Count;
//  if (cnt=0)or(FrameTag>=cnt) then Exit;
  if not FrameList.TryGetValue(FrameTag, FCurFrame) then Exit;

  (FCurFrame as IBaseFrame).Activate;
  pbFrameTitleBar.Repaint;
//  pmNav.Items.Items[FrameTag].Checked := True;
end;

procedure TfmMain.CMAppInit(var Message: TMessage);
begin
  Invalidate;
  Application.ProcessMessages;
  Status0.Caption := '正在启动...';
  PostMessage(Handle, CM_LOADCONFIG, 0, 0);
  //TitleBar.Caption := 'Inspire - ' + Config.ReadString('Global', 'Caption', '');
end;

procedure TfmMain.CMHintTimeout(var Message: TMessage);
var
  StatusPane: TCILabel;
begin
  StatusPane := TCILabel(FindComponent('Status'+IntToStr(Message.WParam)));
  Delay(Message.LParam);
  StatusPane.ImageIndex := -1;
  StatusPane.Caption := '';
end;

procedure TfmMain.CMLoadConfig(var Message: TMessage);
begin
  LoadConfig;
end;

procedure TfmMain.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or WS_SIZEBOX;
end;

procedure TfmMain.AfterConstruction;
begin
  inherited;

  // 初始化全局方法
  Global.ShowStatusHint := Self.ShowStatusHint;

  // 初始化变量
end;

procedure TfmMain.ShowStatusHint(PanelIndex: Integer; Text: string; Image: Integer; Timeout: Integer = 2000);
var
  StatusPane: TCILabel;
begin
  StatusPane := TCILabel(FindComponent('Status'+IntToStr(PanelIndex)));
  if StatusPane = nil then Exit;
  StatusPane.Caption := Text;
  StatusPane.ImageIndex := Image;
  if Timeout > 0 then
    PostMessage(Handle, CM_HINTTIMEOUT, PanelIndex, Timeout);
end;

end.
