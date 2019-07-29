unit U_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.Provider;

type
  TF_Produtos = class(TF_AbstratoGrid)
    AdvGlassButton1: TAdvGlassButton;
    dspProdutos: TDataSetProvider;
    oCdsID: TIntegerField;
    cxGrid1DBTableView1CodBarras: TcxGridDBColumn;
    cxGrid1DBTableView1NomeProduto: TcxGridDBColumn;
    cxGrid1DBTableView1PrecoVenda: TcxGridDBColumn;
    oCdsCODBARRAS: TStringField;
    oCdsNOMEPRODUTO: TStringField;
    oCdsUN: TStringField;
    oCdsMARCA: TStringField;
    oCdsIDGRUPO: TIntegerField;
    oCdsPRECOCUSTO: TFloatField;
    oCdsMARGEM: TFloatField;
    oCdsPRECOVENDA: TFloatField;
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
    oCdsUF: TStringField;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Produtos: TF_Produtos;

implementation

{$R *.dfm}

uses U_ProdutosBt, UDM;

procedure TF_Produtos.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_ProdutosBt := TF_ProdutosBt.Create(nil);
  F_ProdutosBt.oCds.Insert;
  F_ProdutosBt.ShowModal;
  F_ProdutosBt.Free;
  oCds.Refresh;
end;

procedure TF_Produtos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  begin
    F_ProdutosBt := TF_ProdutosBt.Create(nil);
    F_ProdutosBt.oCds.Locate('id', oCdsID.Asinteger, []);
    F_ProdutosBt.ShowModal;
    F_ProdutosBt.Free;
    oCds.Refresh;
  end;
end;

end.
