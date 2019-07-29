unit U_EspEmb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Vcl.StdCtrls, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frxClass, frxDBSet;

type
  TF_EspEmb = class(TF_AbstratoButtons)
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
    cdsEmbalagem: TClientDataSet;
    dsEmbalagem: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    GroupBox7: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    GroupBox8: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    GroupBox9: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    GroupBox10: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    GroupBox11: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    GroupBox12: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    GroupBox13: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    GroupBox14: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label36: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    GroupBox20: TGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    cxDBTextEdit56: TcxDBTextEdit;
    cxDBTextEdit57: TcxDBTextEdit;
    cxDBTextEdit58: TcxDBTextEdit;
    GroupBox21: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBTextEdit61: TcxDBTextEdit;
    GroupBox22: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    cxDBTextEdit64: TcxDBTextEdit;
    GroupBox23: TGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBTextEdit66: TcxDBTextEdit;
    cxDBTextEdit67: TcxDBTextEdit;
    GroupBox24: TGroupBox;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBTextEdit70: TcxDBTextEdit;
    TabSheet3: TTabSheet;
    GroupBox15: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    GroupBox16: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    GroupBox17: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit50: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    GroupBox18: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBTextEdit53: TcxDBTextEdit;
    cxDBTextEdit54: TcxDBTextEdit;
    TabSheet4: TTabSheet;
    GroupBox19: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    cxDBTextEdit55: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxDBTextEdit74: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    GroupBox25: TGroupBox;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    cxDBTextEdit75: TcxDBTextEdit;
    cxDBTextEdit76: TcxDBTextEdit;
    cxDBTextEdit77: TcxDBTextEdit;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    Label82: TLabel;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoid: TIntegerField;
    cdsProdutonomeprodutopedido: TStringField;
    btnImprimir: TAdvGlassButton;
    reportEsp: TfrxReport;
    GroupBox4: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    cxDBTextEdit78: TcxDBTextEdit;
    cxDBTextEdit79: TcxDBTextEdit;
    cxDBTextEdit80: TcxDBTextEdit;
    cdsEmbalagemid: TIntegerField;
    cdsEmbalagemdescricao: TStringField;
    cdsEmbalagemcodigo: TStringField;
    procedure btnImprimirClick(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EspEmb: TF_EspEmb;

implementation

{$R *.dfm}

uses UDM, U_EspEmbGrid;

procedure TF_EspEmb.ActSalvarExecute(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.ControlEspEMB(cdsProdutoid.AsInteger) = True then
  begin
    ShowMessage('Especificação de matéria prima já cadastrada, operação cancelada!');
  end
  else
  begin
    inherited;
    btnImprimir.Enabled := True;
  end;
  dm.closecnn;
end;

procedure TF_EspEmb.btnImprimirClick(Sender: TObject);
begin
  //inherited;
  F_EspEmbGrid.oCds.Refresh;
  F_EspEmbGrid.oCds.Locate('id',oCdsid.AsInteger,[]);

  reportEsp.PrepareReport();
  reportEsp.ShowReport();
end;

procedure TF_EspEmb.FormCreate(Sender: TObject);
begin
  inherited;
//
end;

end.
