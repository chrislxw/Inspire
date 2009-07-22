program Inspire;

uses
  FastMM4,
  Forms,
  Windows,
  Controls,
  CIOneInstance,
  Global in '..\src\Global.pas',
  Security in '..\src\Security.pas',
  ufmMain in '..\src\ufmMain.pas' {fmMain},
  udmCommon in '..\src\udmCommon.pas' {dmCommon: TDataModule},
  ufmSecurity in '..\src\ufmSecurity.pas' {fmSecurity},
  uBaseFrame in '..\src\uBaseFrame.pas',
  ciRichViewEditorFrameUnit in '..\src\ciRichViewEditorFrameUnit.pas' {ciRichViewEditorFrame: TFrame},
  ciRichViewEditorIntf in '..\src\ciRichViewEditorIntf.pas',
  udmNote in '..\src\udmNote.pas' {dmNote: TDataModule},
  ufmEditNote in '..\src\ufmEditNote.pas' {fmEditNote},
  ufrmNote in '..\src\ufrmNote.pas' {frmNote: TFrame},
  ufrmTrash in '..\src\ufrmTrash.pas' {frmTrash: TFrame},
  TypeDefs in '..\src\TypeDefs.pas';

{$R *.res}

var
  OneInst: TCIOneInstance;

begin
  Application.Initialize;
  Application.Title := 'Inspire Me !';
  OneInst := TCIOneInstance.Create(Application);
  if OneInst.Check then Exit;
  OneInst.Free;

  dmCommon := TdmCommon.Create(Application);
//  fmSecurity := TfmSecurity.Create(Application);
//  if not AppSecurityCheck then Exit;

  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmSecurity, fmSecurity);
  Application.CreateForm(TfmEditNote, fmEditNote);
  PostMessage(fmMain.Handle, CM_APPINIT, 0, 0);
  Application.Run;
end.

