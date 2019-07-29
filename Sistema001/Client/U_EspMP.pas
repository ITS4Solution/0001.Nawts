unit U_EspMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Vcl.StdCtrls, Vcl.DBCtrls,
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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frxClass, frxDBSet;

type
  TF_EspMP = class(TF_AbstratoButtons)
    cdsMP: TClientDataSet;
    dsMP: TDataSource;
    cdsMPid: TIntegerField;
    cdsMPdescricao: TStringField;
    cdsMPcodigo: TStringField;
    GroupBox1: TGroupBox;
    oCdsid: TIntegerField;
    oCdsidmp: TIntegerField;
    oCdsmaterial: TStringField;
    oCdscor: TStringField;
    oCdscrtcor: TStringField;
    oCdsodor: TStringField;
    oCdstoxidade: TStringField;
    oCdsdensidade: TStringField;
    oCdsismg: TStringField;
    oCdsiiodo: TStringField;
    oCdsipero: TStringField;
    oCdsumidade: TStringField;
    oCdsconservacao: TStringField;
    oCdsfinalidade: TStringField;
    oCdspl: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    btnImprimir: TAdvGlassButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    frxEspMP: TfrxReport;
    dbCab: TfrxDBDataset;
    dbItem: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EspMP: TF_EspMP;

implementation

{$R *.dfm}

uses UDM;

procedure TF_EspMP.ActSalvarExecute(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.ControlEspMP(cdsMPid.AsInteger) = True then
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

procedure TF_EspMP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  frxEspMP.PrepareReport();
  frxEspMP.ShowReport();
end;

procedure TF_EspMP.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  //

end;

procedure TF_EspMP.FormCreate(Sender: TObject);
begin
  cdsMP.Close;
  cdsMP.Open;
  inherited;

end;

end.
