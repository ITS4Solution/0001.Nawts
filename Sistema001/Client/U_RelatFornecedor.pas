unit U_RelatFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  dxGDIPlusClasses, Vcl.ExtCtrls, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, AdvGlassButton, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls,
  frxClass, frxDBSet, cxDBEdit,Winapi.ShellAPI, frxExportPDF, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TF_RelatFornecedor = class(TForm)
    dxBevel1: TdxBevel;
    Image1: TImage;
    dxBevel2: TdxBevel;
    dsFornecedor: TDataSource;
    dxBevel3: TdxBevel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dtIni: TcxDateEdit;
    dtaFinal: TcxDateEdit;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btnImprimir: TAdvGlassButton;
    ocdsFornecedor: TClientDataSet;
    ocdsFornecedorid: TIntegerField;
    ocdsFornecedornome_razaosocial: TStringField;
    ocdsFornecedorcodfornecedor: TIntegerField;
    cdsRelat: TClientDataSet;
    dsRelat: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    Panel2: TPanel;
    AdvGlassButton1: TAdvGlassButton;
    dxBevel4: TdxBevel;
    PDFExport1: TfrxPDFExport;
    ReportNFForn: TfrxReport;
    cdsItens: TClientDataSet;
    dspItens: TDataSource;
    cdsItensid: TIntegerField;
    cdsItenscodnfeentrada: TIntegerField;
    cdsItenscodproduto: TStringField;
    cdsItensUE: TStringField;
    cdsItensqtde: TSingleField;
    cdsItensvlrunitario: TSingleField;
    cdsItensvaloripi: TSingleField;
    cdsItensvalortotal: TSingleField;
    cdsItenscodfornecedor: TIntegerField;
    cdsItenscodfiscal: TStringField;
    cdsItenslote: TStringField;
    cdsItensvalidade: TDateField;
    cdsItensnroregistro: TIntegerField;
    cdsItenspercentagemicms: TSingleField;
    cdsItensteveaumento: TSmallintField;
    cdsItensgeraetiqueta: TSmallintField;
    cdsItenscadastradf: TSmallintField;
    cdsItensncm: TStringField;
    cdsItensitem: TIntegerField;
    cdsItenssequencial: TIntegerField;
    cdsItensdescricao: TStringField;
    Fornecedor: TfrxDBDataset;
    Cab: TfrxDBDataset;
    cdsItenscodigo: TStringField;
    cdsSUM: TClientDataSet;
    cdsSUMVALORTOTAL: TFloatField;
    cdsSUMNomeForne: TStringField;
    cdsSUMCodForne: TIntegerField;
    DBSum: TfrxDBDataset;
    cdsRelatNFEID: TIntegerField;
    cdsRelatid: TIntegerField;
    cdsRelatnronfe: TIntegerField;
    cdsRelatserienfe: TIntegerField;
    cdsRelatdata: TDateField;
    cdsRelatcodfiscal: TIntegerField;
    cdsRelatcodfornecedor: TIntegerField;
    cdsRelatcondpagamento: TStringField;
    cdsRelatdetalhepagamento: TStringField;
    cdsRelattipomaterial: TStringField;
    cdsRelatvalornfe: TSingleField;
    cdsRelatvalorcalculado: TSingleField;
    cdsRelatobs: TMemoField;
    cdsRelatlote: TIntegerField;
    cdsRelatnome_razaosocial: TStringField;
    cdsRelatCODFORN: TIntegerField;
    cdsRelatid_1: TIntegerField;
    cdsRelatcodnfeentrada: TIntegerField;
    cdsRelatcodproduto: TStringField;
    cdsRelatUE: TStringField;
    cdsRelatqtde: TSingleField;
    cdsRelatvlrunitario: TSingleField;
    cdsRelatvaloripi: TSingleField;
    cdsRelatvalortotal: TSingleField;
    cdsRelatcodfornecedor_1: TIntegerField;
    cdsRelatcodfiscal_1: TStringField;
    cdsRelatlote_1: TStringField;
    cdsRelatvalidade: TDateField;
    cdsRelatnroregistro: TIntegerField;
    cdsRelatpercentagemicms: TSingleField;
    cdsRelatteveaumento: TSmallintField;
    cdsRelatgeraetiqueta: TSmallintField;
    cdsRelatcadastradf: TSmallintField;
    cdsRelatncm: TStringField;
    cdsRelatitem: TIntegerField;
    cdsRelatsequencial: TIntegerField;
    cdsRelatdescricao: TStringField;
    cdsRelatcodigo: TStringField;
    ReportNfVazio: TfrxReport;
    ocdsFornecedordataIni: TDateField;
    ocdsFornecedordataFim: TDateField;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsRelatCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelatFornecedor: TF_RelatFornecedor;

implementation

{$R *.dfm}

uses UDM;

procedure TF_RelatFornecedor.btnImprimirClick(Sender: TObject);
var
   sArquivo : String;
begin
  dm.opencnn;

  cdsRelat.Close;
  cdsRelat.Params[0].AsInteger := ocdsFornecedorid.AsInteger;
  cdsRelat.Params[1].AsDate    := strtodate(dtIni.Text);
  cdsRelat.Params[2].AsDate    := strtodate(dtaFinal.Text);
  cdsRelat.Open;
  cdsRelat.Edit;

//  while not cdsRelat.Eof do
//  begin
//    cdsItens.Close;
//    cdsItens.Params[0].AsInteger := cdsRelatid.AsInteger;
//    cdsItens.Open;
//  end;

  DM.closecnn;

  if cdsRelat.RecordCount > 0 then
  begin
    ReportNFForn.PrepareReport();
    ReportNFForn.ShowReport();
  end
  else
  begin
    ocdsFornecedor.Edit;
    ocdsFornecedordataIni.AsDateTime := dtIni.Date;
    ocdsFornecedordataFim.AsDateTime := dtaFinal.Date;

    ReportNfVazio.PrepareReport();
    ReportNfVazio.ShowReport();
  end;




end;

procedure TF_RelatFornecedor.cdsRelatCalcFields(DataSet: TDataSet);
begin
//  cdsRelatfinData.AsString  := dtIni.Text;
//  cdsRelatiniData.AsString  := dtaFinal.Text;
end;

procedure TF_RelatFornecedor.FormCreate(Sender: TObject);
begin
   ocdsFornecedor.Close;
   ocdsFornecedor.Open;
  inherited;
end;

procedure TF_RelatFornecedor.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//    if Key = #13 then
//  begin
//    Key := #0;
//    Perform(WM_NEXTDLGCTL,0,0);
//  end;
end;

end.
