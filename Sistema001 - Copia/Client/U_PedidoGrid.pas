unit U_PedidoGrid;

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
  TF_PedidoGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsdatapedido: TDateField;
    oCdsdataentrega: TDateField;
    oCdsnome: TStringField;
    oCdsendereco: TStringField;
    oCdsbairro: TStringField;
    oCdscidade: TStringField;
    oCdsuf: TStringField;
    oCdscep: TStringField;
    oCdstelefone: TStringField;
    oCdscelular: TStringField;
    oCdsrv: TStringField;
    oCdsrv2: TStringField;
    oCdsrv3: TStringField;
    oCdspvbruto: TSingleField;
    oCdsdesconto: TSingleField;
    oCdsliquido: TSingleField;
    cxGrid1DBTableView1datapedido: TcxGridDBColumn;
    cxGrid1DBTableView1dataentrega: TcxGridDBColumn;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    cxGrid1DBTableView1telefone: TcxGridDBColumn;
    cxGrid1DBTableView1celular: TcxGridDBColumn;
    cxGrid1DBTableView1liquido: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PedidoGrid: TF_PedidoGrid;

implementation

{$R *.dfm}

uses UDM, U_PedidoBt;

procedure TF_PedidoGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_PedidosBt := TF_PedidosBt.Create(nil);
  F_PedidosBt.oCds.Insert;

  F_PedidosBt.CdsProdutos.Close;
  F_PedidosBt.CdsProdutos.Open;

  dm.opencnn;
  F_PedidosBt.oCdsid.AsInteger := DM.SMGen.GetNextIdPedido;
  dm.closecnn;

  F_PedidosBt.cdsPedidoDetalhe.Close;
  F_PedidosBt.cdsPedidoDetalhe.Params[0].AsInteger := F_PedidosBt.oCdsid.AsInteger;
  F_PedidosBt.cdsPedidoDetalhe.Open;

  F_PedidosBt.oCdsdatapedido.value := date;
  F_PedidosBt.cxGrid1DBTableView1.Navigator.Visible := True;
  F_PedidosBt.cdsPedidoDetalhe.Insert;
  F_PedidosBt.ShowModal;
  F_PedidosBt.Free;
end;

procedure TF_PedidoGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if oCds.RecordCount > 0 then
   begin
      F_PedidosBt := TF_PedidosBt.Create(nil);

      F_PedidosBt.oCds.Close;
      F_PedidosBt.oCds.Open;

      F_PedidosBt.oCds.Locate('id',oCdsid.AsInteger,[]);

      F_PedidosBt.cdsProdutos.Close;
      F_PedidosBt.cdsProdutos.Open;

      F_PedidosBt.cdsPedidoDetalhe.Close;
      F_PedidosBt.cdsPedidoDetalhe.Params[0].AsInteger := oCdsid.AsInteger;
      F_PedidosBt.cdsPedidoDetalhe.Open;

      F_PedidosBt.ShowModal;
      F_PedidosBt.Free;
      oCds.Refresh;
   end;
end;

end.
