unit U_EtiquetaAprov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlassButton, Vcl.ExtCtrls,
  dxGDIPlusClasses, dxBevel, frxClass, frxDBSet, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit,
  cxTextEdit, Vcl.StdCtrls, Data.DB, Datasnap.DBClient;

type
  TF_EtiquetaAprov = class(TForm)
    dxBevel2: TdxBevel;
    dxBevel4: TdxBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnGerar: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    dbEtiquetaAprov: TfrxDBDataset;
    cdsAprov: TClientDataSet;
    dsAprov: TDataSource;
    cdsAprovsSeq: TStringField;
    cdsAprovsTipo: TStringField;
    cdsAprovsData: TStringField;
    cdsAprovsDescr: TStringField;
    cdsAprovsResp: TStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    btnNovo: TAdvGlassButton;
    btnSeq: TButton;
    frxReport1: TfrxReport;
    reportEtiquetaAprovadoNew: TfrxReport;
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure btnSeqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EtiquetaAprov: TF_EtiquetaAprov;

implementation

{$R *.dfm}

uses UDM;

procedure TF_EtiquetaAprov.AdvGlassButton1Click(Sender: TObject);
begin
  F_EtiquetaAprov.Close;
end;

procedure TF_EtiquetaAprov.btnGerarClick(Sender: TObject);
begin
  cdsAprov.Post;

  reportEtiquetaAprovadoNew.PrepareReport();
  reportEtiquetaAprovadoNew.ShowReport();
end;

procedure TF_EtiquetaAprov.btnNovoClick(Sender: TObject);
begin
  cdsAprov.Close;
  cdsAprov.CreateDataSet;
  cdsAprov.Open;
  cdsAprov.Insert;
end;

procedure TF_EtiquetaAprov.btnSeqClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
  begin
    dm.opencnn;
    cdsAprovsSeq.AsString := inttostr(dm.SMGen.NextSeqAprov);
    dm.closecnn;
  end
  else
  begin
    ShowMessage('Já existe conteúdo inserido!');
  end;
end;

procedure TF_EtiquetaAprov.FormCreate(Sender: TObject);
begin
  cdsAprov.Close;
  cdsAprov.CreateDataSet;
  cdsAprov.Open;
  cdsAprov.Insert;
end;

end.
