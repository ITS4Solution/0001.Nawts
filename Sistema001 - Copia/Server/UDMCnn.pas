unit UDMCnn;

interface

uses
  SysUtils, Classes, DBXMSSQL, DB, SqlExpr, FMTBcd,midaslib,TLHelp32,
  Data.DBXFirebird ;

type
  TDMCnn = class(TDataModule)
    dbxCnn: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure IniciaConexao;
    Procedure ProcessExists;
    { Private declarations }
  public
  //C:\Users\Public\NawtsServer\DB\dbNAWTS.FDB
  //C:\NawtsServer\DB\dbNAWTS.FDB
    { Public declarations }
  end;

var
  DMCnn: TDMCnn;


implementation

uses
  Windows, Forms,ShellAPI, UConst, System.IniFiles, U_Utils, U_UtilsServer,dialogs;

{$R *.dfm}



{ TDMCnn }

procedure TDMCnn.DataModuleCreate(Sender: TObject);
Var
   Ini    : TInifile;
begin
   //C:\NAWTSSERVER\DB\dbNAWTS.FDB

   dbxCnn.Connected := False;
   ProcessExists;
   IniciaConexao;
   dbxCnn.Connected := true;
end;

Procedure TDMCnn.ProcessExists;
var
   H : THandle;
begin
   //Fecha inst�ncias do SiPO aberto
   Application.ProcessMessages;
   H := 1;
//   while H > 0 do
   begin
      H := FindWindow(nil,'Servidor.....');
      if H > 0 then
      begin
         ShowMessage('O Servidor n�o pode ser aberto duas vezes. Feche primeiro a outra inst�ncia !');
         Application.Terminate;
      end;
   end;
end;

procedure TDMCnn.IniciaConexao;
var
   ArqIni: TIniFile;

   zero  : integer;
   valor : extended;
begin
   Try
   Begin
      ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\Conf.ini');
      //ArqIni.FileName;
      try
//         dbCnn.Database          := ArqIni.ReadString(          'Conexao' , 'DataBase','');
//         dbCnn.HostName          := ArqIni.ReadString(          'Conexao' , 'HostName','');
//         dbCnn.User              := Decript(ArqIni.ReadString(  'Conexao' , 'User'    ,''));
//         dbCnn.Password          := Decript(ArqIni.ReadString(  'Conexao' , 'Password',''));
//         dbCnn.Port              := ArqIni.ReadInteger(         'Conexao' , 'Port'    , 0);
//         dbCnn.LibraryLocation   := ArqIni.ReadString(          'Lib'     , 'Path'    ,'');
         //dbxCnn.Connected := True;
      finally
         ArqIni.Free;
      end;
   End;
   Except on E : Exception do
   begin
      GravaLog(E.message,self.name,e.ClassName,'');
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName);
   end;
   End;

end;




end.
