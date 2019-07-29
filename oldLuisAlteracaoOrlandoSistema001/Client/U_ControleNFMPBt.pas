unit U_ControleNFMPBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxContainer, cxDBEdit, cxSpinEdit, cxMemo,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, frxClass, frxDBSet;

type
  TF_AbstratoButtons1 = class(TF_AbstratoButtons)
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    cdsItensid: TIntegerField;
    cdsItenscodnfeentrada: TIntegerField;
    cdsItenscodproduto: TStringField;
    cdsItensUE: TStringField;
    cdsItensqtde: TSingleField;
    cdsItensvlrunitario: TSingleField;
    cdsItensvaloripi: TSingleField;
    cdsItensvalortotal: TSingleField;
    cdsItenscodfornecedor: TIntegerField;
    cdsItenscodfiscal: TStringField;
    cdsItenslote: TStringField;
    cdsItensvalidade: TDateField;
    cdsItensnroregistro: TIntegerField;
    cdsItenspercentagemicms: TSingleField;
    cdsItensteveaumento: TSmallintField;
    cdsItensgeraetiqueta: TSmallintField;
    cdsItenscadastradf: TSmallintField;
    cdsItensncm: TStringField;
    cdsItensitem: TIntegerField;
    cdsItenssequencial: TIntegerField;
    cdsItensdescricao: TStringField;
    cxGrid1DBTableView1UE: TcxGridDBColumn;
    cxGrid1DBTableView1qtde: TcxGridDBColumn;
    cxGrid1DBTableView1vlrunitario: TcxGridDBColumn;
    cxGrid1DBTableView1valoripi: TcxGridDBColumn;
    cxGrid1DBTableView1valortotal: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1validade: TcxGridDBColumn;
    cxGrid1DBTableView1percentagemicms: TcxGridDBColumn;
    cxGrid1DBTableView1ncm: TcxGridDBColumn;
    cxGrid1DBTableView1item: TcxGridDBColumn;
    cxGrid1DBTableView1sequencial: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    oCdsid: TIntegerField;
    oCdsnronfe: TIntegerField;
    oCdsserienfe: TIntegerField;
    oCdsdata: TDateField;
    oCdscodfiscal: TIntegerField;
    oCdsnome_razaosocial: TStringField;
    oCdscondpagamento: TStringField;
    oCdsdetalhepagamento: TStringField;
    oCdsobs: TMemoField;
    oCdsVALORTOTAL: TFloatField;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    cdsItenscodigo: TStringField;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    procedure ActSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AbstratoButtons1: TF_AbstratoButtons1;

implementation

{$R *.dfm}

uses UDM, U_ControleNFMP, U_ComunicadoInterno;

procedure TF_AbstratoButtons1.ActSalvarExecute(Sender: TObject);
begin
 //inherited;
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

end.
