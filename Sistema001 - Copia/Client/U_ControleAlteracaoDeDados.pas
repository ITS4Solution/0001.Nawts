unit U_ControleAlteracaoDeDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, Datasnap.DBClient, System.Actions,
  Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxNavigator, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TF_ControleDados = class(TF_AbstratoGrid)
    oCdsId: TIntegerField;
    oCdsData: TDateField;
    oCdsTabela: TWideStringField;
    oCdsCampo: TWideStringField;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Data: TcxGridDBColumn;
    cxGrid1DBTableView1Tabela: TcxGridDBColumn;
    cxGrid1DBTableView1Campo: TcxGridDBColumn;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    oCdsValorAntigo: TWideStringField;
    oCdsUsuario: TWideStringField;
    cxGrid1DBTableView1ValorAntigo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ControleDados: TF_ControleDados;

implementation

{$R *.dfm}

uses UDM;

procedure TF_ControleDados.FormCreate(Sender: TObject);
begin
  inherited;
   oCds.Open;
end;

end.
