unit U_EstoqueAdmarBtn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TF_EstoqueAdmarBtn = class(TF_AbstratoButtons)
    CdsProdutos: TClientDataSet;
    CdsProdutosid: TIntegerField;
    CdsProdutosdescricao: TStringField;
    DSProdutos: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    oCdsid: TIntegerField;
    oCdscodopenvase: TIntegerField;
    oCdsidprodutos: TIntegerField;
    oCdsqtdprevista: TSingleField;
    oCdsqtdreal: TSingleField;
    oCdshora: TTimeField;
    oCdsdata: TDateField;
    oCdsue: TStringField;
    oCdslote: TStringField;
    oCdscpa: TStringField;
    oCdsoperador: TStringField;
    oCdsstatus: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBComboBox2: TcxDBComboBox;
    procedure ActSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EstoqueAdmarBtn: TF_EstoqueAdmarBtn;

implementation

{$R *.dfm}

uses UDM;

procedure TF_EstoqueAdmarBtn.ActSalvarExecute(Sender: TObject);
begin
  oCdsstatus.AsString := 'Estoque';
  inherited;

end;

end.
