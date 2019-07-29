unit U_EtiquetaRegistro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlassButton, Vcl.ExtCtrls,
  dxGDIPlusClasses, dxBevel, frxClass, frxDBSet, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, Data.DB, Datasnap.DBClient;

type
  TF_EtiquetaRegistro = class(TForm)
    dxBevel2: TdxBevel;
    dxBevel4: TdxBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnGerar: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    reportEtiquetaRegistro: TfrxReport;
    dbEtiquetaRegistro: TfrxDBDataset;
    edtSeq: TEdit;
    Label4: TLabel;
    edtMP: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtRegis: TEdit;
    edtDate: TcxDateEdit;
    Label3: TLabel;
    cdsReg: TClientDataSet;
    dsReg: TDataSource;
    cdsRegsSeq: TStringField;
    cdsRegsMP: TStringField;
    cdsRegsRegistro: TStringField;
    cdsRegsData: TStringField;
    btnNovo: TAdvGlassButton;
    btnSeq: TButton;
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
  F_EtiquetaRegistro: TF_EtiquetaRegistro;

implementation

{$R *.dfm}

uses UDM;

procedure TF_EtiquetaRegistro.AdvGlassButton1Click(Sender: TObject);
begin
  F_EtiquetaRegistro.Close;
end;

procedure TF_EtiquetaRegistro.btnGerarClick(Sender: TObject);
begin
  cdsReg.Insert;
  cdsRegsSeq.AsString        := edtSeq.Text;
  cdsRegsMP.AsString         := edtMP.Text;
  cdsRegsRegistro.AsString   := edtRegis.Text;
  cdsRegsData.AsString       := edtDate.Text;
  cdsReg.Post;

  reportEtiquetaRegistro.PrepareReport();
  reportEtiquetaRegistro.ShowReport();
end;

procedure TF_EtiquetaRegistro.btnNovoClick(Sender: TObject);
begin
  cdsReg.Close;
  cdsReg.CreateDataSet;
  cdsReg.Open;
end;

procedure TF_EtiquetaRegistro.btnSeqClick(Sender: TObject);
begin
 if edtSeq.Text = '' then
  begin
    dm.opencnn;
    edtSeq.Text := inttostr(dm.SMGen.NextSeqRegis);
    dm.closecnn;
  end
  else
  begin
    ShowMessage('Já existe conteúdo inserido!');
  end;
end;

procedure TF_EtiquetaRegistro.FormCreate(Sender: TObject);
begin
  cdsReg.Close;
  cdsReg.CreateDataSet;
  cdsReg.Open;
end;

end.
