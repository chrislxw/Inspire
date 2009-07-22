unit ufmEditNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, udmCommon, TBXToolPals, TBXDkPanels, TB2Item, TBX, Menus, CIButtons;

type
  TfmEditNote = class(TForm)
    Label1: TLabel;
    edCaption: TEdit;
    Label2: TLabel;
    btnSelectImage: TTBXButton;
    pmTreeImages: TTBXPopupMenu;
    miTreeImageSelect: TTBXToolPalette;
    btnProtect: TTBXButton;
    Label3: TLabel;
    edNoteID: TEdit;
    CIToolButton1: TCIToolButton;
    CIToolButton2: TCIToolButton;
    procedure miTreeImageSelectCellClick(Sender: TTBXCustomToolPalette; var ACol, ARow: Integer; var
        AllowChange: Boolean);
  private
    function GetProtect: Boolean;
    procedure SetProtect(const Value: Boolean);
  public
    property Protect: Boolean read GetProtect write SetProtect;
  end;

var
  fmEditNote: TfmEditNote;

implementation

{$R *.dfm}

function TfmEditNote.GetProtect: Boolean;
begin
  Result := btnProtect.Checked;
end;

procedure TfmEditNote.miTreeImageSelectCellClick(Sender: TTBXCustomToolPalette; var ACol, ARow: Integer;
    var AllowChange: Boolean);
begin
  btnSelectImage.ImageIndex := ARow * miTreeImageSelect.ColCount + ACol;
end;

procedure TfmEditNote.SetProtect(const Value: Boolean);
begin
  btnProtect.Checked := Value;
  if Value then
    btnProtect.Caption := '已保护'
  else
    btnProtect.Caption := '未保护';
end;

end.
