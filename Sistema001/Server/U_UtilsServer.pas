unit U_UtilsServer;

interface

uses

sysutils,forms;

function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
procedure GravaLog(err,form,proc,sSql: Widestring);

implementation

uses
  Winapi.Windows;

function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
end;

procedure GravaLog(err,form,proc,sSql: widestring);
var
   Log      : textFile;
   Arquivo  : String;
begin
   Arquivo := ExtractFilePath(Application.ExeName) + 'Reports\log-' + FormatDatetime('yyyymmdd-hhmmss',now()) + '.err';
   if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Reports') then
   begin
      CreateDir(ExtractFilePath(Application.ExeName) + 'Reports');
   end;
   if Not FileExists(Arquivo) then
   begin
      AssignFile(Log,Arquivo);
      Rewrite(Log);
   end
   else
   begin
      AssignFile(Log, Arquivo); // Associa o arquivo
   end;
   Append(Log); // Atualiza o arquivo
   Writeln(Log, 'Data...........: ' + FormatDatetime('YYYY/MM/DD',now()));
   Writeln(Log, 'Hora...........: ' + FormatDatetime('HH:MM:SS',now()));
   Writeln(Log, 'Form...........: ' + form);
   Writeln(Log, 'Proc/Func......: ' + proc);
   Writeln(Log, 'Sql............: ' + sSql);
   Writeln(Log, err); // Escreve o erro no arquivo
   CloseFile(Log); // Fecha o arquivo
end;

procedure DoMessage(Message, Filename: String; LineNumber: Integer; ErrorAddr: Pointer);
var
  S: String;
begin
  S := Format('%s (%s, line %d, address $%x)',
    [Message, Filename, LineNumber, Pred(Integer(ErrorAddr))]);
  OutputDebugString(PChar(S));
end;

end.
