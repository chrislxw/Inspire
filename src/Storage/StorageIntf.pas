unit StorageIntf;

interface

uses
  TypeDefs;

type
  IStorage = interface(IInterface)
  ['{1776488A-4024-4F1F-8A85-31659C9D4F13}']
    function ChildCount(NoteID: Integer): Integer; stdcall;
    function CreateMemo(PID, APos: Integer): Boolean; stdcall;
    procedure DeleteMemo(NoteID: Integer); stdcall;
    procedure EditNode(NodeData: PNodeData); stdcall;
    procedure LoadMemo(NoteID: Integer); stdcall;
    function ModifyPwd(NewPwd: ShortString; Data: Pointer): Boolean; stdcall;
    procedure MovePos(NoteID, NewPID: Integer; NewPos: Integer = -1); stdcall;
    procedure RecycleMemo(NoteID: Integer); stdcall;
    procedure SaveMemo; stdcall;
  end;

implementation

end.
