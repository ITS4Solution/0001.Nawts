unit U_fornecedorButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxMemo, cxTextEdit, Vcl.StdCtrls,
  cxGroupBox, Vcl.DBCtrls, cxCalendar, cxSpinEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue;

type
  TF_FornecedorButtons = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdscpf_cnpj: TStringField;
    oCdsnome_razaosocial: TStringField;
    oCdstppessoa: TStringField;
    oCdsobs: TMemoField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBComboBox1: TcxDBComboBox;
    oCdscodfornecedor: TIntegerField;
    oCdsdatacad: TDateField;
    oCdscargo: TStringField;
    oCdsfone1: TStringField;
    oCdsfone2: TStringField;
    oCdsfone3: TStringField;
    oCdsfone4: TStringField;
    oCdsuf: TStringField;
    oCdscidade: TStringField;
    oCdsie: TStringField;
    oCdscontato: TStringField;
    oCdsendereco: TStringField;
    oCdsfax: TStringField;
    oCdscep: TStringField;
    oCdsemail: TStringField;
    Label5: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label7: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label12: TLabel;
    Label13: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    Label20: TLabel;
    DBComboBox1: TDBComboBox;
    cxContatos: TcxGroupBox;
    Local: TcxGroupBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_FornecedorButtons: TF_FornecedorButtons;

implementation

{$R *.dfm}

uses UDM;

procedure TF_FornecedorButtons.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
