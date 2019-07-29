unit U_Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.ComCtrls, AdvProgr, Vcl.StdCtrls, AdvSmoothPanel;

type
  TFSplash = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label2: TLabel;
    lblModulos: TLabel;
    Timer: TTimer;
    lblVersao: TLabel;
    Image1: TImage;
    Label1: TLabel;
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Procedure LoadServer;
    procedure Loads;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

uses UDM, U_Principal, ULogin;

procedure TFSplash.LoadServer;
var
   H : THandle;
begin
   lblModulos.Caption := 'Servidor.....';
   Application.ProcessMessages;
   H := 1;
   while H > 0 do
   begin
      H := FindWindow(nil,'Servidor.....');
      if H > 0 then
         SendMessage(H,WM_CLOSE,0,0);
   end;
   WinExec('Usicomp_Server.exe', SW_NORMAL);

   H := FindWindow(nil,'Servidor.....');
   while H = 0 do
   begin
      WinExec('Usicomp_Server.exe', SW_NORMAL);
      H := FindWindow(nil,'Servidor.....');
   end;
   Sleep(2000);
end;


{$R *.dfm}

procedure TFSplash.TimerTimer(Sender: TObject);
Var
   i : Integer;
begin
   Timer.Enabled := False;
   for i := 0 to 255 do
   Begin
      self.AlphaBlendValue := i;
      sleep(5);
   End;
   Loads;
end;

procedure TFSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Application.Terminate;
end;

procedure TFSplash.FormCreate(Sender: TObject);
begin
   lblVersao.Caption := 'Versão: ' + DM.sVersao;
end;

procedure TFSplash.Loads;
begin
//   LoadServer;
   DM := TDM.Create(Application);
   Self.Hide;
   F_Principal.Show;
   F_Login := TF_Login.Create(self);
   F_Login.ShowModal;
   F_Login.Free;
end;

end.
