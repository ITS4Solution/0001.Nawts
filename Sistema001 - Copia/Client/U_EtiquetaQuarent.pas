unit U_EtiquetaQuarent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, frxClass, AdvGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, dxBevel, frxDBSet, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, Data.DB, Datasnap.DBClient;

type
  TF_EtiquetaQuarent = class(TForm)
    btnSeq: TButton;
    cdsQuarentena: TClientDataSet;
    cdsQuarentenasSeq: TStringField;
    cdsQuarentenasTipo: TStringField;
    cdsQuarentenasData: TStringField;
    cdsQuarentenasDescr: TStringField;
    cdsQuarentenasResp: TStringField;
    cxDBComboBox1: TcxDBComboBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    dbEtiquetaQuarent: TfrxDBDataset;
    dxBevel2: TdxBevel;
    dxBevel4: TdxBevel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    btnGerar: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    cxDBDateEdit1: TcxDBDateEdit;
    btnNovo: TAdvGlassButton;
    dsQuarent: TDataSource;
    tEtiquetaNew: TfrxReport;
    procedure btnSeqClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EtiquetaQuarent: TF_EtiquetaQuarent;

implementation

{$R *.dfm}

uses UDM;

procedure TF_EtiquetaQuarent.AdvGlassButton1Click(Sender: TObject);
begin
F_EtiquetaQuarent.Close;
end;

procedure TF_EtiquetaQuarent.btnGerarClick(Sender: TObject);
begin
cdsQuarentena.Post;

  tEtiquetaNew.PrepareReport();
  tEtiquetaNew.ShowReport();
end;

procedure TF_EtiquetaQuarent.btnNovoClick(Sender: TObject);
begin
  cdsQuarentena.Close;
  cdsQuarentena.CreateDataSet;
  cdsQuarentena.Open;
  cdsQuarentena.Insert;
end;

procedure TF_EtiquetaQuarent.btnSeqClick(Sender: TObject);
begin
if cxDBTextEdit1.Text = '' then
  begin
    dm.opencnn;
    cdsQuarentenasSeq.AsString := inttostr(dm.SMGen.NextSeqQuarent);
    dm.closecnn;
  end
  else
  begin
    ShowMessage('Já existe conteúdo inserido!');
  end;
end;

procedure TF_EtiquetaQuarent.FormCreate(Sender: TObject);
begin
  cdsQuarentena.Close;
  cdsQuarentena.CreateDataSet;
  cdsQuarentena.Open;
  cdsQuarentena.Insert;
end;

end.
