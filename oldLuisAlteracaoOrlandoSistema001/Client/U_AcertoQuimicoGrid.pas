unit U_AcertoQuimicoGrid;

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
  TF_AcertoQuimicoGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsidnfeentrada: TIntegerField;
    oCdsidinsumo: TIntegerField;
    oCdstipo: TStringField;
    oCdsdata: TDateField;
    oCdsobs: TStringField;
    oCdsquantd: TSingleField;
    oCdsidordemenvase: TIntegerField;
    oCdsidordemquimico: TIntegerField;
    oCdsidproduto: TIntegerField;
    oCdslote: TStringField;
    oCdsdataval: TDateField;
    oCdslocal: TStringField;
    oCdshora: TTimeField;
    oCdsdescricao: TStringField;
    btnNovo: TAdvGlassButton;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1tipo: TcxGridDBColumn;
    cxGrid1DBTableView1quantd: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1obs: TcxGridDBColumn;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AcertoQuimicoGrid: TF_AcertoQuimicoGrid;

implementation

{$R *.dfm}

uses UDM, U_AcertoEstoqueBt;

procedure TF_AcertoQuimicoGrid.btnNovoClick(Sender: TObject);
begin
  inherited;
   F_AcertoEstoqueBt := TF_AcertoEstoqueBt.Create(nil);
//   F_AcertoEstoqueBt.cxDBDateEdit1.Enabled := FALSE;
   F_AcertoEstoqueBt.cdsInsumo.Close;
   F_AcertoEstoqueBt.cdsInsumo.Open;
   F_AcertoEstoqueBt.oCds.Insert;
   F_AcertoEstoqueBt.ShowModal;
   F_AcertoEstoqueBt.Free;
   oCds.Refresh;
   oCds.Close;
   oCds.Open;
end;

end.
