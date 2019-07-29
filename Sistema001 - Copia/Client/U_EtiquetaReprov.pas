unit U_EtiquetaReprov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlassButton, Vcl.ExtCtrls,
  dxGDIPlusClasses, dxBevel, frxClass, frxDBSet, Data.DB, Datasnap.DBClient,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.StdCtrls, cxDropDownEdit,
  cxCalendar, cxMaskEdit;

type
  TF_EtiquetaReprov = class(TForm)
    dxBevel2: TdxBevel;
    dxBevel4: TdxBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnGerar: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    dbEtiquetaReprov: TfrxDBDataset;
    cdsReprov: TClientDataSet;
    cdsReprovsSeq: TStringField;
    cdsReprovsTipo: TStringField;
    cdsReprovsData: TStringField;
    cdsReprovsDescr: TStringField;
    cdsReprovsResp: TStringField;
    dsReprov: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBDateEdit2: TcxDBDateEdit;
    btnNovo: TAdvGlassButton;
    btnSeq: TButton;
    reportEtiquetaReprova: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSeqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EtiquetaReprov: TF_EtiquetaReprov;

implementation

{$R *.dfm}

uses UDM;

procedure TF_EtiquetaReprov.AdvGlassButton1Click(Sender: TObject);
begin
  F_EtiquetaReprov.Close;
end;

procedure TF_EtiquetaReprov.btnGerarClick(Sender: TObject);
begin
  cdsReprov.Post;

  reportEtiquetaReprova.PrepareReport();
  reportEtiquetaReprova.ShowReport();
end;

procedure TF_EtiquetaReprov.btnNovoClick(Sender: TObject);
begin
  cdsReprov.Close;
  cdsReprov.CreateDataSet;
  cdsReprov.Open;
  cdsReprov.Insert;
end;

procedure TF_EtiquetaReprov.btnSeqClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
  begin
    dm.opencnn;
    cdsReprovsSeq.AsString := inttostr(dm.SMGen.NextSeqReprov);
    dm.closecnn;
  end
  else
  begin
    ShowMessage('Já existe conteúdo inserido!');
  end;
end;

procedure TF_EtiquetaReprov.FormCreate(Sender: TObject);
begin
  cdsReprov.Close;
  cdsReprov.CreateDataSet;
  cdsReprov.Open;
  cdsReprov.Insert;
end;

end.
