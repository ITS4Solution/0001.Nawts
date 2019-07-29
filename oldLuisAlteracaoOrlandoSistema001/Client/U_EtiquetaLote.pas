unit U_EtiquetaLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlassButton, Vcl.ExtCtrls, dxBevel,
  dxGDIPlusClasses, System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, frxClass, frxDBSet, Vcl.Mask, Vcl.DBCtrls, cxDBEdit;

type
  TF_EtiquetaLote = class(TForm)
    Panel1: TPanel;
    btnGerar: TAdvGlassButton;
    dxBevel4: TdxBevel;
    dxBevel2: TdxBevel;
    Image1: TImage;
    AdvGlassButton1: TAdvGlassButton;
    ActionList: TActionList;
    ActSalvar: TAction;
    ActDeletar: TAction;
    ActNovo: TAction;
    ActEditar: TAction;
    ActSair: TAction;
    oCds: TClientDataSet;
    oDS: TDataSource;
    reportEtiquetaLote: TfrxReport;
    dbEtiquetaLote: TfrxDBDataset;
    dxBevel1: TdxBevel;
    Label4: TLabel;
    edtSeq: TEdit;
    Label5: TLabel;
    edtMatPrima: TEdit;
    Label1: TLabel;
    edtDate: TcxDateEdit;
    edtLote: TEdit;
    Label2: TLabel;
    oCdssMatPrima: TStringField;
    oCdssLote: TStringField;
    oCdssData: TStringField;
    btnNovo: TAdvGlassButton;
    oCdssSeq: TStringField;
    btnSeq: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSeqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EtiquetaLote: TF_EtiquetaLote;

implementation

{$R *.dfm}

uses UDM;

procedure TF_EtiquetaLote.AdvGlassButton1Click(Sender: TObject);
begin
  F_EtiquetaLote.Close;
end;

procedure TF_EtiquetaLote.btnGerarClick(Sender: TObject);
begin
  oCds.Insert;
  oCdssMatPrima.AsString := edtMatPrima.Text;
  oCdssLote.AsString     := edtLote.Text;
  oCdssData.AsString     := edtDate.Text;
  oCds.Post;

  reportEtiquetaLote.PrepareReport();
  reportEtiquetaLote.ShowReport();
end;

procedure TF_EtiquetaLote.btnNovoClick(Sender: TObject);
begin
  oCds.Close;
  oCds.CreateDataSet;
  oCds.Open;
  oCds.Insert;
end;

procedure TF_EtiquetaLote.btnSeqClick(Sender: TObject);
begin
  if edtSeq.Text = '' then
  begin
    dm.opencnn;
    edtSeq.Text := inttostr(dm.SMGen.NextSeqLote);
    dm.closecnn;
  end
  else
  begin
    ShowMessage('Já existe conteúdo inserido!');
  end;
end;

procedure TF_EtiquetaLote.FormCreate(Sender: TObject);
begin
  oCds.Close;
  oCds.CreateDataSet;
  oCds.Open;
  oCds.Insert;
end;

end.
