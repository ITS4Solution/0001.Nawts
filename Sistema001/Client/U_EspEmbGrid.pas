unit U_EspEmbGrid;

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
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet;

type
  TF_EspEmbGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsidproduto: TIntegerField;
    oCdsidembf: TIntegerField;
    oCdsidembt: TIntegerField;
    oCdsidembb: TIntegerField;
    oCdsidembc: TIntegerField;
    oCdsmaterialf: TStringField;
    oCdscorf: TStringField;
    oCdscarctcorf: TStringField;
    oCdsodorf: TStringField;
    oCdstoxidadef: TStringField;
    oCdspesofref: TStringField;
    oCdspesofmin: TStringField;
    oCdspesofmax: TStringField;
    oCdsalturafref: TStringField;
    oCdsalturafmin: TStringField;
    oCdsalturafmax: TStringField;
    oCdslarguraombrofref: TStringField;
    oCdslarguraombrofmin: TStringField;
    oCdslarguraombrofmax: TStringField;
    oCdslarguracorpomediofref: TStringField;
    oCdslarguracorpomediofmin: TStringField;
    oCdslarguracorpomediofmax: TStringField;
    oCdsdiametroroscafref: TStringField;
    oCdsdiametroroscafmin: TStringField;
    oCdsdiametroroscafmax: TStringField;
    oCdsdiametroextroscafref: TStringField;
    oCdsdiametroextroscafmin: TStringField;
    oCdsdiametroextroscafmax: TStringField;
    oCdsdiametroextgargfref: TStringField;
    oCdsdiametroextgargfmin: TStringField;
    oCdsdiametroextgargfmax: TStringField;
    oCdsdiametrointgargfref: TStringField;
    oCdsdiametrointgargfmin: TStringField;
    oCdsdiametrointgargfmax: TStringField;
    oCdsdiametrotravafref: TStringField;
    oCdsdiametrotravafmin: TStringField;
    oCdsdiametrotravafmax: TStringField;
    oCdsvolumefref: TStringField;
    oCdsvolumefmin: TStringField;
    oCdsvolumefmax: TStringField;
    oCdsmaterialt: TStringField;
    oCdscort: TStringField;
    oCdscarctcort: TStringField;
    oCdsodort: TStringField;
    oCdstoxidadet: TStringField;
    oCdspesotref: TStringField;
    oCdspesotmin: TStringField;
    oCdspesotmax: TStringField;
    oCdsalturatref: TStringField;
    oCdsalturatmin: TStringField;
    oCdsalturatmax: TStringField;
    oCdslarguraombrotref: TStringField;
    oCdslarguraombrotmin: TStringField;
    oCdslarguraombrotmax: TStringField;
    oCdslarguracorpomediotref: TStringField;
    oCdslarguracorpomediotmin: TStringField;
    oCdslarguracorpomediotmax: TStringField;
    oCdsdiametrotref: TStringField;
    oCdsdiametrotmin: TStringField;
    oCdsdiametrotmax: TStringField;
    oCdsdiametroroscatref: TStringField;
    oCdsdiametroroscatmin: TStringField;
    oCdsdiametroroscatmax: TStringField;
    oCdsmaterialb: TStringField;
    oCdscorb: TStringField;
    oCdscarctcorb: TStringField;
    oCdsodorb: TStringField;
    oCdstoxidadeb: TStringField;
    oCdspesobref: TStringField;
    oCdspesobmin: TStringField;
    oCdspesobmax: TStringField;
    oCdsalturabref: TStringField;
    oCdsalturabmin: TStringField;
    oCdsalturabmax: TStringField;
    oCdslarguraombrobref: TStringField;
    oCdslarguraombrobmin: TStringField;
    oCdslarguraombrobmax: TStringField;
    oCdsmaterialc: TStringField;
    oCdscorc: TStringField;
    oCdscarctcorc: TStringField;
    oCdsodorc: TStringField;
    oCdstoxidadec: TStringField;
    oCdspesocref: TStringField;
    oCdspesocmin: TStringField;
    oCdspesocmax: TStringField;
    oCdsFRASCCOD: TStringField;
    oCdsFRASDESC: TStringField;
    oCdsTAMCOD: TStringField;
    oCdsTAMDESC: TStringField;
    oCdsBATOCOD: TStringField;
    oCdsBATODESC: TStringField;
    oCdsCARTCOD: TStringField;
    oCdsCARTDESC: TStringField;
    oCdsPRODUTONOME: TStringField;
    cxGrid1DBTableView1FRASCCOD: TcxGridDBColumn;
    cxGrid1DBTableView1FRASDESC: TcxGridDBColumn;
    cxGrid1DBTableView1TAMCOD: TcxGridDBColumn;
    cxGrid1DBTableView1TAMDESC: TcxGridDBColumn;
    cxGrid1DBTableView1BATOCOD: TcxGridDBColumn;
    cxGrid1DBTableView1BATODESC: TcxGridDBColumn;
    cxGrid1DBTableView1CARTCOD: TcxGridDBColumn;
    cxGrid1DBTableView1CARTDESC: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTONOME: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    dbConteudoCompleto: TfrxDBDataset;
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EspEmbGrid: TF_EspEmbGrid;

implementation

{$R *.dfm}

uses UDM, U_EspEmb;

procedure TF_EspEmbGrid.AdvGlassButton2Click(Sender: TObject);
begin
  F_EspEmb := TF_EspEmb.Create(nil);

  F_EspEmb.oCds.Close;
  F_EspEmb.oCds.Open;
  F_EspEmb.oCds.Insert;
  dm.opencnn;
  F_EspEmb.oCdsid.AsInteger := dm.SMGen.GetNextIdEMBEsp;
  dm.closecnn;

  F_EspEmb.btnImprimir.Enabled := False;

  F_EspEmb.cdsEmbalagem.Close;
  F_EspEmb.cdsEmbalagem.Open;
  F_EspEmb.cdsProduto.Close;
  F_EspEmb.cdsProduto.Open;

  F_EspEmb.ShowModal;
  F_EspEmb.Free;
  oCds.Refresh;
end;

procedure TF_EspEmbGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
   if oCds.RecordCount > 0 then
   begin
    F_EspEmb := TF_EspEmb.Create(nil);
    F_EspEmb.oCds.Locate('id',oCdsid.AsInteger,[]);

    F_EspEmb.cdsEmbalagem.Close;
    F_EspEmb.cdsEmbalagem.Open;
    F_EspEmb.cdsProduto.Close;
    F_EspEmb.cdsProduto.Open;

    F_EspEmb.btnImprimir.Enabled := True;

    F_EspEmb.ShowModal;
    F_EspEmb.Free;
    oCds.Refresh;
   end;
end;

end.
