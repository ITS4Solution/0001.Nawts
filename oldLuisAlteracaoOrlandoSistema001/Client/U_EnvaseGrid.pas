unit U_EnvaseGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_EnvaseGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdscodopenvase: TIntegerField;
    oCdsidprodutos: TIntegerField;
    oCdsqtdprevista: TSingleField;
    oCdsqtdreal: TSingleField;
    oCdshora: TTimeField;
    oCdsdata: TDateField;
    oCdsue: TStringField;
    oCdslote: TStringField;
    oCdscpa: TStringField;
    oCdsoperador: TStringField;
    oCdsstatus: TStringField;
    oCdsdescricao: TStringField;
    cxGrid1DBTableView1codopenvase: TcxGridDBColumn;
    cxGrid1DBTableView1qtdprevista: TcxGridDBColumn;
    cxGrid1DBTableView1qtdreal: TcxGridDBColumn;
    cxGrid1DBTableView1hora: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1cpa: TcxGridDBColumn;
    cxGrid1DBTableView1operador: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    btnNovo: TAdvGlassButton;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
//    procedure AdvGlassButton1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EnvaseGrid: TF_EnvaseGrid;

implementation

{$R *.dfm}

uses UDM, U_EnvaseBt;

procedure TF_EnvaseGrid.btnNovoClick(Sender: TObject);
var
  idEnvase : Integer;
begin
  inherited;
    F_EnvaseBt := TF_EnvaseBt.Create(nil);
    dm.opencnn;
    idEnvase := dm.SMGen.GetNextIdOrdemEnvase;
    dm.closecnn;
    F_EnvaseBt.oCds.Insert;
    F_EnvaseBt.oCdsid.AsInteger := idEnvase;
    F_EnvaseBt.oCdshora.Value := time;
    F_EnvaseBt.oCdsdata.Value := date;

    F_EnvaseBt.cdsQtdProduto.Close;
    F_EnvaseBt.cdsQtdProduto.Params[0].AsInteger := F_EnvaseBt.CdsProdutosid.AsInteger;
    F_EnvaseBt.cdsQtdProduto.Open;


    F_EnvaseBt.cdsDetalheEnvase.Close;
    F_EnvaseBt.cdsDetalheEnvase.Params[0].AsInteger := idEnvase;
    F_EnvaseBt.cdsDetalheEnvase.Open;

    F_EnvaseBt.CdsInsumoEnvase.Close;
    F_EnvaseBt.CdsInsumoEnvase.Params[0].AsInteger := F_EnvaseBt.oCdsid.AsInteger;
    F_EnvaseBt.CdsInsumoEnvase.Open;

    F_EnvaseBt.cdsEstoqueQuimico.Close;
    F_EnvaseBt.cdsEstoqueQuimico.Params[0].AsInteger := F_EnvaseBt.oCdsid.AsInteger;
    F_EnvaseBt.cdsEstoqueQuimico.Open;

    F_EnvaseBt.oCdsstatus.AsString := 'Aberto';

    F_EnvaseBt.cxGrid1DBTableView1.Navigator.Visible := True;
    F_EnvaseBt.ShowModal;
    F_EnvaseBt.Free;
    oCds.Refresh;
end;

procedure TF_EnvaseGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCds.RecordCount > 0 then
   begin
    F_EnvaseBt := TF_EnvaseBt.Create(nil);
    F_EnvaseBt.oCds.Locate('id',oCdsid.AsInteger,[]);
    F_EnvaseBt.sState := 'editar';

      if F_EnvaseBt.oCdsstatus.AsString = 'Finalizada' then
      begin
         F_EnvaseBt.btnEditar.Enabled := False;
      end;

    F_EnvaseBt.cxDBLookupComboBox1.Enabled := False;
    F_EnvaseBt.DBEdit1.Enabled := False;
    F_EnvaseBt.cxDBComboBox2.Enabled := False;

    F_EnvaseBt.cdsQtdProduto.Close;
    F_EnvaseBt.cdsQtdProduto.Params[0].AsInteger := F_EnvaseBt.CdsProdutosid.AsInteger;
    F_EnvaseBt.cdsQtdProduto.Open;

    F_EnvaseBt.cdsDetalheEnvase.Close;
    F_EnvaseBt.cdsDetalheEnvase.Params[0].AsInteger := F_EnvaseBt.oCdsid.AsInteger;
    F_EnvaseBt.cdsDetalheEnvase.Open;

    F_EnvaseBt.CdsProdutos.Close;
    F_EnvaseBt.CdsProdutos.Open;

    F_EnvaseBt.cdsEstoqueQuimico.Close;
    F_EnvaseBt.cdsEstoqueQuimico.Params[0].AsInteger := F_EnvaseBt.oCdsid.AsInteger;
    F_EnvaseBt.cdsEstoqueQuimico.Open;

    F_EnvaseBt.CdsInsumoEnvase.Close;
    F_EnvaseBt.CdsInsumoEnvase.Params[0].AsInteger := oCdsid.AsInteger;
    F_EnvaseBt.CdsInsumoEnvase.Open;

    dm.opencnn;
    F_EnvaseBt.edtFaltante.Text := FormatFloat('#,##0.00',dm.SMGen.SumControleOp(oCdsid.AsInteger));
    dm.closecnn;

    F_EnvaseBt.ShowModal;
    F_EnvaseBt.Free;
    oCds.Refresh;
   end;
end;

end.


