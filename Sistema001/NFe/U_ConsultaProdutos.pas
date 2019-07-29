unit U_ConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoConsulta, Data.DB,
  Datasnap.DBClient, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, AdvGlassButton, Vcl.ComCtrls, Datasnap.Provider;

type
  TF_ConsultaProdutos = class(TF_AbstratoConsulta)
    dspProdutos: TDataSetProvider;
    oCdsID: TIntegerField;
    oCdsCODBARRAS: TStringField;
    oCdsNOMEPRODUTO: TStringField;
    oCdsUN: TStringField;
    oCdsMARCA: TStringField;
    oCdsPRECOVENDA: TFloatField;
    oCdsIDGRUPO: TIntegerField;
    oCdsPRECOCUSTO: TFloatField;
    oCdsMARGEM: TFloatField;
    oCdsCODORIGEM: TIntegerField;
    oCdsCODCST: TIntegerField;
    oCdsALIQICMS: TFloatField;
    oCdsNCM: TStringField;
    oCdsCODCSTIPI: TIntegerField;
    oCdsCODCSTPIS: TIntegerField;
    oCdsCODCSTCOFINS: TIntegerField;
    oCdsALIQIPI: TFloatField;
    oCdsALIQPIS: TFloatField;
    oCdsALIQCOFINS: TFloatField;
    oCdsREDICMS: TFloatField;
    oCdsALIQMVA: TFloatField;
    oCdsALIQIVA: TFloatField;
    oCdsMODBCICMS: TIntegerField;
    oCdsMODBCICMSST: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function Pesquisar(strPesquisa: String; bAbreTela: Boolean; strCampoWhere, strFieldRetorno, strTabela,
      strPsqPadrao: string): String;
    { Pesquisa registros conforme os parametros informados }
    procedure EfetuarPesquisa(strPesquisa: string); override;
  end;

var
  F_ConsultaProdutos: TF_ConsultaProdutos;


implementation

{$R *.dfm}

uses UDm, UKernel_VariaveisPublic;

{ TF_ConsultaProdutos }

procedure TF_ConsultaProdutos.EfetuarPesquisa(strPesquisa: string);
var
  SQL: string;
begin
  inherited;

  SQL := 'Select * from nfe_produtos ';
  SQL := SQL + ' Where ID like ' + QuotedStr(strPesquisa + '%');
  SQL := SQL + ' or CodBarras like ' + QuotedStr(UpperCase(strPesquisa + '%'));
  SQL := SQL + ' or Nomeproduto like ' + QuotedStr(UpperCase(strPesquisa + '%'));
  SQL := SQL + ' or marca like ' + QuotedStr(UpperCase(strPesquisa + '%'));
  SQL := SQL + ' or precovenda like ' + QuotedStr(strPesquisa + '%');

  DM.sqlProdutos.Close;
  DM.sqlProdutos.CommandText:= SQL;
  DM.sqlProdutos.OPen;

  oCds.Close;
  oCds.Open;

end;

procedure TF_ConsultaProdutos.FormCreate(Sender: TObject);
begin
  lbTitulo.caption := 'Consulta Produtos';

  EditPesquisa.Text :=  IDPesquisa;
  inherited;
end;

procedure TF_ConsultaProdutos.FormShow(Sender: TObject);
begin

  EditPesquisa.Text :=  IDPesquisa;
end;

class function TF_ConsultaProdutos.Pesquisar(strPesquisa: String;
  bAbreTela: Boolean; strCampoWhere, strFieldRetorno, strTabela,
  strPsqPadrao: string): String;
begin
  Result := Pesquisa.sResult;
end;

end.
