unit U_ParametrosSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxGroupBox,
  cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxCheckBox,
  cxTimeEdit, Vcl.Buttons, cxDropDownEdit,FileCtrl, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxGDIPlusClasses, dxBevel;

type
  TF_ParametrosSistema = class(TF_AbstratoButtons)
    cxGroupBox1: TcxGroupBox;
    oCdsId: TIntegerField;
    oCdsHoraProcessamento: TWideStringField;
    oCdsProcessamentoAtivado: TBooleanField;
    oCdsLocalArquivos: TWideStringField;
    oCdsDiaPadraoFechamento: TIntegerField;
    oCdsRodarFaturamento: TIntegerField;
    oCdsDiasCxPostalAntesFechamento: TIntegerField;
    oCdsDiasCxPostalAposFechamento: TIntegerField;
    oCdsDtInc: TDateField;
    oCdsUsuInc: TWideStringField;
    oCdsDtAlt: TDateField;
    oCdsUsuAlt: TWideStringField;
    Label1: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    BitBtn1: TBitBtn;
    cxGroupBox2: TcxGroupBox;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Bevel1: TBevel;
    cxDBComboBox1: TcxDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBComboBox2: TcxDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    cxDBComboBox3: TcxDBComboBox;
    Label9: TLabel;
    edtTime: TcxDBTimeEdit;
    cxGroupBox3: TcxGroupBox;
    oCdsbcoBanco: TWideStringField;
    oCdsbcoCodCedente: TIntegerField;
    oCdsbcoCarteira: TWideStringField;
    oCdsbcoAgencia: TWideStringField;
    oCdsbcoConta: TWideStringField;
    oCdsbcoDigito: TWideStringField;
    oCdsbcoModalidade: TWideStringField;
    oCdsbcoConvenio: TWideStringField;
    oCdsbcoCedente: TWideStringField;
    Label10: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxGroupBox4: TcxGroupBox;
    procedure ActSalvarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ParametrosSistema: TF_ParametrosSistema;

implementation

{$R *.dfm}

uses UDM;

procedure TF_ParametrosSistema.ActSalvarExecute(Sender: TObject);
begin
   oCdsHoraProcessamento.AsString := FormatDateTime('HH:MM',edtTime.Time);
  inherited;

end;

procedure TF_ParametrosSistema.BitBtn1Click(Sender: TObject);
Var
   sSelDir : String;
begin
  inherited;
   SelectDirectory(sSelDir, [sdAllowCreate, sdPerformCreate, sdPrompt],1000);
   //SelectDirectory('Selecione uma pasta com os arquivos de NFE !','', sSelDir);
   oCdsLocalArquivos.AsString := sSelDir;
end;

end.
