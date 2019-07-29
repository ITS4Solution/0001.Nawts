unit U_EnvaseDetalheBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxTimeEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue;

type
  TF_EnvaseDetalheBt = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdscodenvase: TIntegerField;
    oCdsidproduto: TIntegerField;
    oCdsqtdprevista: TSingleField;
    oCdsqtdreal: TSingleField;
    oCdshora: TTimeField;
    oCdsdata: TDateField;
    oCdsue: TStringField;
    oCdslote: TStringField;
    oCdscpa: TStringField;
    oCdsoperador: TStringField;
    oCdsstatus: TStringField;
    oCdsidordemenvase: TIntegerField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBComboBox2: TcxDBComboBox;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cdsProdutocodproduto: TIntegerField;
    cdsProdutodescricao: TStringField;
    cdsProdutoid: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EnvaseDetalheBt: TF_EnvaseDetalheBt;

implementation

{$R *.dfm}

uses UDM;

end.

