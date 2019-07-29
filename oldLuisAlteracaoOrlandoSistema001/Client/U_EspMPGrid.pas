unit U_EspMPGrid;

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
  TF_EspMPGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsidmp: TIntegerField;
    oCdsmaterial: TStringField;
    oCdscor: TStringField;
    oCdscrtcor: TStringField;
    oCdsodor: TStringField;
    oCdstoxidade: TStringField;
    oCdsdensidade: TStringField;
    oCdsismg: TStringField;
    oCdsiiodo: TStringField;
    oCdsipero: TStringField;
    oCdsumidade: TStringField;
    oCdsconservacao: TStringField;
    oCdsfinalidade: TStringField;
    oCdspl: TStringField;
    oCdsdescricao: TStringField;
    oCdscodigo: TStringField;
    cxGrid1DBTableView1pl: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    btnNovo: TAdvGlassButton;
    procedure btnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EspMPGrid: TF_EspMPGrid;

implementation

{$R *.dfm}

uses UDM, U_EspMP;

procedure TF_EspMPGrid.btnNovoClick(Sender: TObject);
begin
  F_EspMP := TF_EspMP.Create(nil);

  F_EspMP.oCds.Close;
  F_EspMP.oCds.Open;
  F_EspMP.oCds.Insert;
  dm.opencnn;
  F_EspMP.oCdsid.AsInteger := dm.SMGen.GetNextIdMPEsp;
  dm.closecnn;

  F_EspMP.btnImprimir.Enabled := False;

  F_EspMP.cdsMP.Close;
  F_EspMP.cdsMP.Open;

  F_EspMP.ShowModal;
  F_EspMP.Free;
  oCds.Refresh;
end;

procedure TF_EspMPGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if oCds.RecordCount > 0 then
   begin
    F_EspMP := TF_EspMP.Create(nil);
    F_EspMP.oCds.Locate('id',oCdsid.AsInteger,[]);

    F_EspMP.cdsMP.Close;
    F_EspMP.cdsMP.Open;

    F_EspMP.btnImprimir.Enabled := True;

    F_EspMP.ShowModal;
    F_EspMP.Free;
    oCds.Refresh;
   end;
end;

end.
