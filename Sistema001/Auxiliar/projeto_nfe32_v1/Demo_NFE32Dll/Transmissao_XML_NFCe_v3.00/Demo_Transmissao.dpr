program Demo_Transmissao;

uses
  ShareMem,                   //A unit ShareMem deve ser a primeira unit do projeto
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit_NetworkTest in 'Unit_NetworkTest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
