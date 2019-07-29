unit U_ProdutosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TF_ProdutosGrid = class(TF_AbstratoGrid)
    btnNovo: TAdvGlassButton;
    oCdsid: TIntegerField;
    oCdscodfornecedor: TIntegerField;
    oCdscodproduto: TIntegerField;
    oCdsprocedencia: TStringField;
    oCdsdescricao: TStringField;
    oCdsgrupopedido: TStringField;
    oCdsnumeropa: TIntegerField;
    oCdsnomeprodutopedido: TStringField;
    oCdsncm: TStringField;
    cxGrid1DBTableView1grupo: TcxGridDBColumn;
    cxGrid1DBTableView1codproduto: TcxGridDBColumn;
    cxGrid1DBTableView1procedencia: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1numeropa: TcxGridDBColumn;
    cxGrid1DBTableView1nomeprodutopedido: TcxGridDBColumn;
    oCdsgrupo: TIntegerField;
    procedure btnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProdutosGrid: TF_ProdutosGrid;

implementation

{$R *.dfm}

uses U_ProdutosButtons, UDM, U_ProdutosXInsumos;

procedure TF_ProdutosGrid.btnNovoClick(Sender: TObject);
begin
  inherited;
   F_ProdutosButtons := TF_ProdutosButtons.Create(nil);
   F_ProdutosButtons.oCds.Insert;
   F_ProdutosButtons.ShowModal;
   F_ProdutosButtons.Free;
   oCds.Refresh;
end;

procedure TF_ProdutosGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCds.RecordCount <> 0 then
   begin
      if tag = 0 then
      begin
         F_ProdutosButtons := TF_ProdutosButtons.Create(nil);
         F_ProdutosButtons.oCds.Locate('id',oCdsId.Asinteger,[]);
         F_ProdutosButtons.ShowModal;
         F_ProdutosButtons.Free;
         oCds.Refresh;
      end
      else if tag = 1 then
      begin
         F_ProdutosXInsumos := TF_ProdutosXInsumos.Create(nil);
         F_ProdutosXInsumos.oCdsRelacionamento.Close;
         F_ProdutosXInsumos.oCdsRelacionamento.Params[0].Value := oCdsid.AsString;
         F_ProdutosXInsumos.oCdsRelacionamento.Open;
         F_ProdutosXInsumos.Ocds.Locate('id',oCdsId.Asinteger,[]);
         F_ProdutosXInsumos.oCdsInsumos.close;
         F_ProdutosXInsumos.oCdsInsumos.Open;
         F_ProdutosXInsumos.ShowModal;
         F_ProdutosXInsumos.Free;
         //abre atribuição de insumos
      end;
   end;
end;

end.
