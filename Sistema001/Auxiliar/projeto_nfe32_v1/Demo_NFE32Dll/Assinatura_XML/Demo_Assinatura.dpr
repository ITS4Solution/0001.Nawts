program Demo_Assinatura;

uses
  ShareMem,                            //A unit ShareMem deve ser a primeira unit do projeto
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
