{===============================================================================

  Chris Infinity - Inspire

  版权所有 (C) Chris Infinity，2003-2009. 所有权保留。

===============================================================================}

{ @abstract(加密算法单元)
  @created(2008-7-18)
  @author(宁静·星空)

  本单元包含系统内的各种加密算法。
  空密码算法: Hash(Encrypt(Caption, IntToStr(NoteID)))
}

unit Security;

interface

uses
  SysUtils, Classes, CryptoUtils, SHA, Gost, AES, TypeDefs, Global, ZLIB;

type
  THashFunc = function(src: AnsiString): AnsiString;
  TEncryptFunc = function(src, key: AnsiString): AnsiString;

var
  Hash: THashFunc;
  Encrypt, Decrypt: TEncryptFunc;

procedure DecodeStream(AStream: TMemoryStream; Key: AnsiString = '');

procedure EncodeStream(AStream: TMemoryStream; Key: AnsiString = ''; Mode: TZCompressionLevel = zcFastest);

function GetEmptyPassword(Caption: string; ID: Integer): AnsiString;

function IsEmptyPassword(NodeData: PNodeData): Boolean;

implementation

procedure DecodeStream(AStream: TMemoryStream; Key: AnsiString = '');
var
  tmp: TMemoryStream;
  zds: TZDecompressionStream;
begin
  // 先解压缩再解密
  zds:= TZDecompressionStream.Create(AStream);
  tmp := TMemoryStream.Create;
  try
    tmp.CopyFrom(zds, 0);
    if Key <> '' then
      tmp := TMemoryStream(AES.DecryptStream(tmp, Key));
    AStream.Free;
    AStream := tmp;
  finally
    zds.Free;
  end;
end;

procedure EncodeStream(AStream: TMemoryStream; Key: AnsiString = ''; Mode: TZCompressionLevel = zcFastest);
var
  zs: TZCompressionStream;
  tmp: TMemoryStream;
begin
  // 先加密再压缩
  if Key = '' then
    tmp := AStream
  else
    tmp := AES.EncryptStream(AStream, Key) as TMemoryStream;
  AStream.Free;
  AStream := TMemoryStream.Create;
  zs := TZCompressionStream.Create(AStream, Mode);
  try
    zs.CopyFrom(tmp, 0);
  finally
    tmp.Free;
    zs.Free;
  end;
end;

function GetEmptyPassword(Caption: string; ID: Integer): AnsiString;
begin
//  Result := Hash(IntToStr(ID));
  Result := Hash(Encrypt(Caption, IntToStr(ID)));
//  Result := '';
end;

function IsEmptyPassword(NodeData: PNodeData): Boolean;
begin
  with NodeData^ do
    Result := (GetEmptyPassword(Caption, NoteID) = PwdHash) or PwdPassed;
//  Result := NodeData^.PwdHash = '';
end;

function DoDecrypt(src, key: AnsiString): AnsiString;
begin
  Result := AES.DecryptString(src, key, kb128);
end;

function DoEncrypt(src, key: AnsiString): AnsiString;
begin
  Result := AES.EncryptString(src, key, kb128);
end;

function DoHash(src: AnsiString): AnsiString;
begin
  Result := GostHash(src, HASH_GOST);
end;

initialization
  Hash := DoHash;
  Encrypt := DoEncrypt;
  Decrypt := DoDecrypt;

end.

