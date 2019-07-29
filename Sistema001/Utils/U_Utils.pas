unit U_Utils;

interface

uses
  System.AnsiStrings,Forms, IniFiles, SysUtils, Messages, Windows;

function Cript(NormalTxt:string):string;
function Decript(CriptTxt:string):string;
function ValidarEMail(aStr: string): Boolean;
procedure tbLoadFormStatus(Form: TForm; const Section: string);
procedure tbSaveFormStatus(Form: TForm; const Section: string);

implementation



function Cript(NormalTxt:string):string;
var
   R  : string;
   Ch : byte;
   C  : integer;
begin
   R := '';
   for C := 1 to Length(NormalTxt) do
   begin
      Ch := Ord(NormalTxt[C]);
      Ch := (C mod 26)+Ch;
      R  := R + Chr(Ch);
   end;
   R := AnsiReplaceStr(R , '\'  , '¬' );
   R := AnsiReplaceStr(R , '''' , '¢' );
   R := AnsiReplaceStr(R , ':'  , '£' );
   Result := R;
end;

function Decript(CriptTxt:string):string;
var
   R  : string;
   Ch : byte;
   C  : integer;
begin
   CriptTxt := AnsiReplaceStr(CriptTxt, '¬' , '\');
   CriptTxt := AnsiReplaceStr(CriptTxt,  '¢' , '''');
   CriptTxt := AnsiReplaceStr(CriptTxt, '£' , ':'  );
   R := '';
   for C := 1 to Length(CriptTxt) do
   begin
      Ch := Ord(CriptTxt[C]);
      Ch := Ch-(C mod 26);
      R  := R + Chr(Ch);
   end;
   Result := R;
end;

function ValidarEMail(aStr: string): Boolean;
begin
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

procedure tbSaveFormStatus(Form: TForm; const Section: string);
var
  Ini: TIniFile;
  Maximized: boolean;
  sFile : String;
begin
   sFile := Form.Name + '.ini';
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ArqConfig\' + sFile);
  try
  Maximized := Form.WindowState = wsMaximized;
  Ini.WriteBool(Section, 'Maximized', Maximized);
  if not Maximized then begin
  Ini.WriteInteger(Section, 'Left', Form.Left);
  Ini.WriteInteger(Section, 'Top', Form.Top);
  Ini.WriteInteger(Section, 'Width', Form.Width);
  Ini.WriteInteger(Section, 'Height', Form.Height);
  end;
  finally
  Ini.Free;
  end;
end;

procedure tbLoadFormStatus(Form: TForm; const Section: string);
var
  Ini: TIniFile;
  Maximized: boolean;
  sFile : String;
begin
   sFile := Form.Name + '.ini';
  Maximized := false; { Evita msg do compilador }
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ArqConfig\' + sFile);
  try
  Maximized := Ini.ReadBool(Section, 'Maximized', Maximized);
  Form.Left := Ini.ReadInteger(Section, 'Left', Form.Left);
  Form.Top := Ini.ReadInteger(Section, 'Top', Form.Top);
  Form.Width := Ini.ReadInteger(Section, 'Width', Form.Width);
  Form.Height := Ini.ReadInteger(Section, 'Height', Form.Height);
  if Maximized then
  Form.Perform(WM_SIZE, SIZE_MAXIMIZED, 0);
  { A propriedade WindowState apresenta Bug.
  Por isto usei a mensagem WM_SIZE }
  finally
  Ini.Free;
  end;
end;




end.
