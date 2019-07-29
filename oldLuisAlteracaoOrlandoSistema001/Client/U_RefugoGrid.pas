unit U_RefugoGrid;

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
  TF_RefugoGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdscodinsumo: TIntegerField;
    oCdsqtd: TSingleField;
    oCdsidordemproducao: TIntegerField;
    cxGrid1DBTableView1qtd: TcxGridDBColumn;
    cxGrid1DBTableView1idordemproducao: TcxGridDBColumn;
    cxGrid1DBTableView1obs: TcxGridDBColumn;
    oCdsobser: TMemoField;
    btnNovo: TAdvGlassButton;
    oCdsdescricao: TStringField;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    procedure btnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RefugoGrid: TF_RefugoGrid;

implementation

{$R *.dfm}

uses UDM, U_RefugoBt;

procedure TF_RefugoGrid.btnNovoClick(Sender: TObject);
begin
  inherited;
   F_RefugoBt := TF_RefugoBt.Create(nil);
   F_RefugoBt.oCds.Insert;
   F_RefugoBt.cdsInsumo.Close;
   F_RefugoBt.cdsInsumo.Open;
   F_RefugoBt.ShowModal;
   F_RefugoBt.Free;
end;

procedure TF_RefugoGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
    F_RefugoBt := TF_RefugoBt.Create(nil);
    F_RefugoBt.cdsInsumo.Close;
    F_RefugoBt.cdsInsumo.Open;
   if oCds.RecordCount >= 0 then
   begin
      F_RefugoBt.oCds.Locate('id',ocdsId.Asinteger,[]);
      F_RefugoBt.ShowModal;
      F_RefugoBt.Free;
      oCds.Refresh;
   end;
end;

end.
