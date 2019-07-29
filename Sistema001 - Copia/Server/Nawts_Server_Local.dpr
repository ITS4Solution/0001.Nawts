program Nawts_Server_Local;

uses
  Forms,
  midaslib,
  U_Principal in 'U_Principal.pas' {FSisNFServidor},
  ServerContainerUnit in 'ServerContainerUnit.pas' {ServerContainer: TDataModule},
  UDMCnn in 'UDMCnn.pas' {DMCnn: TDataModule},
  ServerMethodsUnitGen in 'ServerMethodsUnitGen.pas' {ServerMethodsGen: TDSServerModule},
  U_UtilsServer in 'U_UtilsServer.pas',
  U_Utils in '..\Utils\U_Utils.pas',
  U_Email in '..\Utils\U_Email.pas',
  U_Const in '..\Utils\U_Const.pas',
  U_Classes in 'U_Classes.pas',
  U_FunctionsNF in 'U_FunctionsNF.pas' {/  UMail in 'UMail.pas';},
  UMail in 'UMail.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMCnn, DMCnn);
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.CreateForm(TFSisNFServidor, FSisNFServidor);
  Application.Run;
end.

