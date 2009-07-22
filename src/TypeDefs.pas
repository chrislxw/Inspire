unit TypeDefs;

interface

uses
  CITypes;

type
  PNodeData = ^TNodeData;
  // ����¼�ڵ�����
  TNodeData = record
    NoteID: LongInt;        //< ����¼ID
    PID: LongInt;           //< �ϼ�����ID
    Pos: ShortInt;          //< �ڵ�λ��
    ImageIndex: LongInt;    //< ͼ��
    Caption: UnicodeString; //< ����
    Protect: Boolean;       //< �Ƿ񱣻�
    PwdHash: AnsiString;    //< ����ժҪ
    CreateDate: TDateTime;  //< ����ʱ��
    ModifyDate: TDateTime;  //< �޸�ʱ��
      
    PwdPassed: Boolean;     //< ��������֤
    Loaded: Boolean;        //< �ڵ��Ѽ���(�¼��ڵ��Ѽ���)
  end;

implementation

end.
