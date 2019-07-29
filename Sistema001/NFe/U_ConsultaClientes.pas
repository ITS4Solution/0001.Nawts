unit U_ConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoConsulta, Data.DB,
  Datasnap.DBClient, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, AdvGlassButton, Vcl.ComCtrls, Datasnap.Provider;

type
  TF_ConsultaClientes = class(TF_AbstratoConsulta)
    dspCliFor: TDataSetProvider;
    oCdsID: TIntegerField;
    oCdsNOMERAZAO: TStringField;
    oCdsNOMEFANTASIA: TStringField;
    oCdsENDERECO: TStringField;
    oCdsNUMERO: TStringField;
    oCdsBAIRRO: TStringField;
    oCdsCIDADE: TStringField;
    oCdsCODCIDADE: TIntegerField;
    oCdsUF: TStringField;
    oCdsCODUF: TIntegerField;
    oCdsCEP: TStringField;
    oCdsCGC: TStringField;
    oCdsIERG: TStringField;
    oCdsFJ: TStringField;
    oCdsTELEFONE: TStringField;
    oCdsDATACADASTRO: TSQLTimeStampField;
    oCdsEMAI: TStringField;
    oCdsCLIFORTRANSP: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EfetuarPesquisa(strPesquisa: string); override;
  end;

var
  F_ConsultaClientes: TF_ConsultaClientes;

implementation

{$R *.dfm}

uses UDm;

procedure TF_ConsultaClientes.EfetuarPesquisa(strPesquisa: string);
var
  SQL: string;
begin
  inherited;

  SQL :=('Select * from NFE_CliFor');
  SQL := SQL +('Where ID like ' + QuotedStr(strPesquisa + '%'));
  SQL := SQL +('or NomeRazao like ' + QuotedStr(strPesquisa + '%'));
  SQL := SQL +('or NomeFantasia like ' + QuotedStr(strPesquisa + '%'));
  SQL := SQL +('or CGC like ' + QuotedStr(strPesquisa + '%'));
  SQL := SQL +('or Endereco like ' + QuotedStr(strPesquisa + '%'));
  SQL := SQL +('or Bairro like ' + QuotedStr(strPesquisa + '%'));
  SQL := SQL +('or Cidade like ' + QuotedStr(strPesquisa + '%'));

  DM.sqlCliFor.Close;
  DM.sqlCliFor.CommandText:= SQL;
  DM.sqlCliFor.OPen;

  oCds.Close;
  oCds.Open;
end;

procedure TF_ConsultaClientes.FormCreate(Sender: TObject);
begin
  lbTitulo.caption := 'Consulta Clientes';
  EditPesquisa.Text :=  IDPesquisa;

// sys.Sistema_Tela_Consulta_SubTitulo := 'Consulta por: Código, Nome, CPF/CNPJ, Endereço, Bairro e Cidade';
  inherited;

end;

procedure TF_ConsultaClientes.FormShow(Sender: TObject);
begin
  EditPesquisa.Text :=  IDPesquisa;

end;

end.
