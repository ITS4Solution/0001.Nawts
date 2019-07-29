unit U_EnvaseDetalheGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TF_EnvaseDetalheGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdscodenvase: TIntegerField;
    oCdsidproduto: TIntegerField;
    oCdsqtdprevista: TSingleField;
    oCdsqtdreal: TSingleField;
    oCdshora: TTimeField;
    oCdsdata: TDateField;
    oCdsue: TStringField;
    oCdslote: TStringField;
    oCdscpa: TStringField;
    oCdsoperador: TStringField;
    oCdsstatus: TStringField;
    oCdsidordemenvase: TIntegerField;
    cxGrid1DBTableView1codenvase: TcxGridDBColumn;
    cxGrid1DBTableView1idproduto: TcxGridDBColumn;
    cxGrid1DBTableView1qtdprevista: TcxGridDBColumn;
    cxGrid1DBTableView1qtdreal: TcxGridDBColumn;
    cxGrid1DBTableView1hora: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1cpa: TcxGridDBColumn;
    cxGrid1DBTableView1operador: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1idordemenvase: TcxGridDBColumn;
    BtNovo: TAdvGlassButton;
    procedure BtNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EnvaseDetalheGrid: TF_EnvaseDetalheGrid;

implementation

{$R *.dfm}

uses UDM, U_EnvaseDetalheBt;

procedure TF_EnvaseDetalheGrid.BtNovoClick(Sender: TObject);
begin
  inherited;
    F_EnvaseDetalheBt := TF_EnvaseDetalheBt.Create(nil);
    F_EnvaseDetalheBt.oCds.Insert;
    F_EnvaseDetalheBt.oCdshora.Value := time;
    F_EnvaseDetalheBt.oCdsdata.Value := date;
    F_EnvaseDetalheBt.cdsProduto.Close;
    F_EnvaseDetalheBt.cdsProduto.Open;
    F_EnvaseDetalheBt.ShowModal;
    F_EnvaseDetalheBt.Free;
    oCds.Refresh;
end;

procedure TF_EnvaseDetalheGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
    if oCds.RecordCount > 0 then
   begin
    F_EnvaseDetalheBt := TF_EnvaseDetalheBt.Create(nil);
    F_EnvaseDetalheBt.oCds.Locate('id',oCdsid.AsInteger,[]);
    //F_EnvaseDetalheBt.sState := 'editar';
    F_EnvaseDetalheBt.cdsProduto.Close;
    F_EnvaseDetalheBt.cdsProduto.Open;
    F_EnvaseDetalheBt.ShowModal;
    F_EnvaseDetalheBt.Free;
    oCds.Refresh;
   end;

end;

end.
