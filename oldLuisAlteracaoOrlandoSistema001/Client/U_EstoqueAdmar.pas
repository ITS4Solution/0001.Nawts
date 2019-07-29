unit U_EstoqueAdmar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TF_EstoqueAdmar = class(TF_AbstratoGrid)
    btnNovo: TAdvGlassButton;
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
    cxGrid1DBTableView1qtdreal: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1operador: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EstoqueAdmar: TF_EstoqueAdmar;

implementation

{$R *.dfm}

uses UDM, U_EstoqueAdmarBtn;

procedure TF_EstoqueAdmar.btnNovoClick(Sender: TObject);
var
  idEnvase : Integer;
begin
  inherited;

    F_EstoqueAdmarBtn := TF_EstoqueAdmarBtn.Create(nil);
    dm.opencnn;
    idEnvase := dm.SMGen.GetNextIdOrdemEnvase;
    dm.closecnn;
    F_EstoqueAdmarBtn.oCds.Insert;
    F_EstoqueAdmarBtn.oCdsid.AsInteger := idEnvase;
    F_EstoqueAdmarBtn.oCdshora.Value := time;
    F_EstoqueAdmarBtn.oCdsdata.Value := date;

    F_EstoqueAdmarBtn.CdsProdutos.Close;
    F_EstoqueAdmarBtn.CdsProdutos.Open;

    F_EstoqueAdmarBtn.oCdsstatus.AsString := 'Estoque';

    F_EstoqueAdmarBtn.ShowModal;
    F_EstoqueAdmarBtn.Free;
    oCds.Refresh;

end;

end.
