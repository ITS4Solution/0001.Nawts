unit U_Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Datasnap.Provider, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit, cxDBEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, Vcl.StdCtrls, cxGroupBox, cxCheckBox, cxRadioGroup, cxSpinEdit, Vcl.Buttons, FileCtrl,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue;

type
  TF_Configuracao = class(TF_AbstratoButtons)
    dspConfiguracao: TDataSetProvider;
    oCdsID: TIntegerField;
    oCdsCERTIDIG: TStringField;
    oCdsSENHA: TStringField;
    oCdsVALIDADE: TDateField;
    oCdsFEMISSAO: TStringField;
    oCdsMODELO: TStringField;
    oCdsCFOPP: TStringField;
    oCdsSERIE: TStringField;
    oCdsBLOQUEAR: TIntegerField;
    oCdsUF: TStringField;
    oCdsHOMOLOGACAO: TIntegerField;
    oCdsPRODUCAO: TIntegerField;
    oCdsVISUALIZARIMAGEM: TIntegerField;
    oCdsSALVARSOAP: TIntegerField;
    oCdsAJUSTAR: TIntegerField;
    oCdsAGUARDAR: TIntegerField;
    oCdsTENTATIVAS: TIntegerField;
    oCdsINTERVALO: TIntegerField;
    oCdsHOST: TStringField;
    oCdsPORTA: TStringField;
    oCdsUSER: TStringField;
    oCdsSENHAUSER: TStringField;
    oCdsPASTAENVIO: TIntegerField;
    oCdsCADCLIENTE: TIntegerField;
    oCdsCADPRODUTO: TIntegerField;
    oCdsPASTENVIO: TStringField;
    oCdsNFEAUTO: TStringField;
    oCdsNFECANCEL: TStringField;
    oCdsNFEINUT: TStringField;
    oCdsCARTACOER: TStringField;
    oCdsSCHEMAS: TStringField;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    edSenha: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    chBloq: TcxDBCheckBox;
    cxGroupBox3: TcxGroupBox;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    radioHom: TcxRadioButton;
    radioPRO: TcxRadioButton;
    cxGroupBox4: TcxGroupBox;
    chVisualizar: TcxDBCheckBox;
    chSoap: TcxDBCheckBox;
    chAguardar: TcxDBCheckBox;
    Label9: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label10: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label11: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxGroupBox5: TcxGroupBox;
    Label12: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxGroupBox6: TcxGroupBox;
    chEnvio: TcxDBCheckBox;
    chClient: TcxDBCheckBox;
    chProduto: TcxDBCheckBox;
    cxGroupBox7: TcxGroupBox;
    Label16: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label20: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label21: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edSenhaPropertiesChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Configuracao: TF_Configuracao;

implementation

{$R *.dfm}

uses UDm;

procedure TF_Configuracao.edSenhaPropertiesChange(Sender: TObject);
begin
  inherited;
//   edSenha.Properties.PasswordChar := '*'; // letra L minúscula
//   edSenha.Style.Font.Name := 'Webdings';
end;

procedure TF_Configuracao.FormCreate(Sender: TObject);
begin
  inherited;
  oCds.Close;
  oCds.Open;

  oCds.Edit;
end;

procedure TF_Configuracao.SpeedButton1Click(Sender: TObject);
const
  SELDIRHELP = 1000;
  var
  Dir : string;
begin
  if SelectDirectory(dir,[sdAllowCreate, sdPerformCreate,sdPrompt], SELDIRHELP) then
  begin
    cxDBTextEdit11.Text := dir;
  end;
end;

procedure TF_Configuracao.SpeedButton2Click(Sender: TObject);
const
  SELDIRHELP = 1000;
  var
  Dir : string;
begin
  if SelectDirectory(dir,[sdAllowCreate, sdPerformCreate,sdPrompt], SELDIRHELP) then
  begin
    cxDBTextEdit12.Text := dir;
  end;
end;

procedure TF_Configuracao.SpeedButton3Click(Sender: TObject);
const
  SELDIRHELP = 1000;
  var
  Dir : string;
begin
  if SelectDirectory(dir,[sdAllowCreate, sdPerformCreate,sdPrompt], SELDIRHELP) then
  begin
    cxDBTextEdit13.Text := dir;
  end;
end;

procedure TF_Configuracao.SpeedButton4Click(Sender: TObject);
const
  SELDIRHELP = 1000;
  var
  Dir : string;
begin
  if SelectDirectory(dir,[sdAllowCreate, sdPerformCreate,sdPrompt], SELDIRHELP) then
  begin
    cxDBTextEdit14.Text := dir;
  end;
end;

procedure TF_Configuracao.SpeedButton5Click(Sender: TObject);
const
  SELDIRHELP = 1000;
  var
  Dir : string;
begin
  if SelectDirectory(dir,[sdAllowCreate, sdPerformCreate,sdPrompt], SELDIRHELP) then
  begin
    cxDBTextEdit15.Text := dir;
  end;
end;

procedure TF_Configuracao.SpeedButton6Click(Sender: TObject);
const
  SELDIRHELP = 1000;
  var
  Dir : string;
begin
  if SelectDirectory(dir,[sdAllowCreate, sdPerformCreate,sdPrompt], SELDIRHELP) then
  begin
    cxDBTextEdit16.Text := dir;
  end;
end;

procedure TF_Configuracao.SpeedButton7Click(Sender: TObject);
begin
  inherited;
   cxDBTextEdit1.Text := dm.ACBrNFe.SSL.SelecionarCertificado;
end;

end.
