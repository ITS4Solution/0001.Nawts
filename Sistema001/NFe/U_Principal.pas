unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus, Vcl.AppEvnts;

type
  TF_Principal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    MainMenu1: TMainMenu;
    Cadastros: TMenuItem;
    Clientes: TMenuItem;
    Manuteno1: TMenuItem;
    Usurios1: TMenuItem;
    StatusBar: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    Produtos: TMenuItem;
    NFSaida1: TMenuItem;
    Lanamentos1: TMenuItem;
    Emitente: TMenuItem;
    Configurao1: TMenuItem;
    ICMSNCM1: TMenuItem;
    NCM1: TMenuItem;
    procedure ClientesClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure NFSaida1Click(Sender: TObject);
    procedure EmitenteClick(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure ICMSNCM1Click(Sender: TObject);
    procedure NCM1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_CadClientes, U_Produtos, U_Transportadoras, U_NFeSaida,
  U_CadClientesBt, U_Emitente, U_Configuracao, U_ICMS, U_ICMSGrid, U_NCMGrid;

procedure TF_Principal.ClientesClick(Sender: TObject);
begin
  F_CadClientes := TF_CadClientes.Create(nil);
  F_CadClientes.ShowModal;
  F_CadClientes.Free;
end;

procedure TF_Principal.Configurao1Click(Sender: TObject);
begin
   F_Configuracao := TF_Configuracao.Create(nil);
   F_Configuracao.oCds.Close;
   F_Configuracao.oCds.Open;
   F_Configuracao.ShowModal;
   F_Configuracao.Free;
end;

procedure TF_Principal.EmitenteClick(Sender: TObject);
begin
  F_Emitente := TF_Emitente.Create(nil);
  F_Emitente.ShowModal;
  F_Emitente.Free;
end;

procedure TF_Principal.ICMSNCM1Click(Sender: TObject);
begin
  F_ICMSGrid := TF_ICMSGrid.Create(nil);
  F_ICMSGrid.ShowModal;
  F_ICMSGrid.Free;
end;

procedure TF_Principal.NCM1Click(Sender: TObject);
begin
  F_NCMGrid := TF_NCMGrid.Create(nil);
  F_NCMGrid.ShowModal;
  F_NCMGrid.Free;
end;

procedure TF_Principal.NFSaida1Click(Sender: TObject);
begin
  F_NFeSaida := TF_NFeSaida.Create(nil);
  F_NFeSaida.ShowModal;
  F_NFeSaida.Free;
end;

procedure TF_Principal.ProdutosClick(Sender: TObject);
begin
  F_Produtos := TF_Produtos.Create(nil);
  F_Produtos.ShowModal;
  F_Produtos.Free;
end;

procedure TF_Principal.T1Click(Sender: TObject);
begin
  F_Transportadoras := TF_Transportadoras.Create(nil);
  F_Transportadoras.ShowModal;
  F_Transportadoras.Free;
end;

end.

