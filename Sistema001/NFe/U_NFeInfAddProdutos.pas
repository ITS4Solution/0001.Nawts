unit U_NFeInfAddProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Abstrato001, System.Actions,
  Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  TF_NFeInfAddProdutos = class(TF_Abstrato001)
    pnCentro: TPanel;
    DBMemo1: TDBMemo;
    pnTitulo: TPanel;
    imgLogo: TImage;
    BitBtn1: TAdvGlassButton;
    procedure FormCreate(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_NFeInfAddProdutos: TF_NFeInfAddProdutos;

implementation

{$R *.dfm}

uses UDm, U_NFeSaidaBt, UKernel_VariaveisPublic;

procedure TF_NFeInfAddProdutos.ActSairExecute(Sender: TObject);
begin
  inherited;
  if F_NFeSaidaBt.oCdsItens.Active = true then
    F_NFeSaidaBt.oCdsItens.Cancel;

  close;
end;

procedure TF_NFeInfAddProdutos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if F_NFeSaidaBt.oCdsItens.Active = true then
    F_NFeSaidaBt.oCdsItens.Post;

  close;
end;

procedure TF_NFeInfAddProdutos.FormCreate(Sender: TObject);
begin
  pnTitulo.Caption := 'Informções adicionais no item';
  inherited;

end;

end.
