unit U_RelatExpCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBevel, AdvGlassButton, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  frxClass, frxDBSet, frxExportPDF;

type
  TF_RelatExpCliente = class(TForm)
    dxBevel4: TdxBevel;
    dxBevel2: TdxBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnImprimir: TAdvGlassButton;
    Panel2: TPanel;
    AdvGlassButton1: TAdvGlassButton;
    dxBevel1: TdxBevel;
    dxBevel3: TdxBevel;
    Label10: TLabel;
    dxBevel5: TdxBevel;
    cdsClient: TClientDataSet;
    cdsClientnomecliente: TStringField;
    oCds: TClientDataSet;
    oDS: TDataSource;
    oCdsid: TIntegerField;
    oCdsidop: TIntegerField;
    oCdsidprod: TIntegerField;
    oCdsqtd: TSingleField;
    oCdsdataexp: TDateField;
    oCdshoraexp: TTimeField;
    oCdsnumnf: TStringField;
    oCdsnomecliente: TStringField;
    oCdsobs: TStringField;
    oCdsdescricao: TStringField;
    oCdscodproduto: TIntegerField;
    pdfClienteExp: TfrxPDFExport;
    DBClientExp: TfrxDBDataset;
    reportClientExp: TfrxReport;
    oCdssData: TDateField;
    cxLookupComboBox1: TcxLookupComboBox;
    dsClient: TDataSource;
    procedure oCdsCalcFields(DataSet: TDataSet);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    var
      NomeCliente : String;
    { Public declarations }
  end;

var
  F_RelatExpCliente: TF_RelatExpCliente;

implementation

{$R *.dfm}

uses UDM;

procedure TF_RelatExpCliente.AdvGlassButton1Click(Sender: TObject);
begin
  //
  reportClientExp.PrepareReport();
  reportClientExp.ShowReport();
end;

procedure TF_RelatExpCliente.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  oCds.Close;
  oCds.Params[0].Value := cdsClientnomecliente.AsString;
  oCds.Open;
end;

procedure TF_RelatExpCliente.oCdsCalcFields(DataSet: TDataSet);
begin
  oCdssData.Value := Date;
end;


end.
