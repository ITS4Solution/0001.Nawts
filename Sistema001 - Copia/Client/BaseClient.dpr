program BaseClient;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  UDM in 'UDM.pas' {DM: TDataModule},
  U_Abstrato001 in '..\Abstrato\U_Abstrato001.pas' {F_Abstrato001},
  U_Abstrato002 in '..\Abstrato\U_Abstrato002.pas' {F_Abstrato002},
  U_Abstrato000 in '..\Abstrato\U_Abstrato000.pas' {F_Abstrato000},
  ULogin in 'ULogin.pas' {F_Login},
  U_MensagemForm in 'U_MensagemForm.pas' {F_MensagemForm},
  U_SobreSistema in 'U_SobreSistema.pas' {F_Sobre},
  UFuncDS in 'UFuncDS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_Login, F_Login);
  Application.Run;
end.
