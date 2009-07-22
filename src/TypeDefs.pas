unit TypeDefs;

interface

uses
  CITypes;

type
  PNodeData = ^TNodeData;
  // 备忘录节点数据
  TNodeData = record
    NoteID: LongInt;        //< 备忘录ID
    PID: LongInt;           //< 上级备忘ID
    Pos: ShortInt;          //< 节点位置
    ImageIndex: LongInt;    //< 图标
    Caption: UnicodeString; //< 标题
    Protect: Boolean;       //< 是否保护
    PwdHash: AnsiString;    //< 密码摘要
    CreateDate: TDateTime;  //< 创建时间
    ModifyDate: TDateTime;  //< 修改时间
      
    PwdPassed: Boolean;     //< 密码已验证
    Loaded: Boolean;        //< 节点已加载(下级节点已加载)
  end;

implementation

end.
