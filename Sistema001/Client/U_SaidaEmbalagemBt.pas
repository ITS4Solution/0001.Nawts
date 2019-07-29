unit U_SaidaEmbalagemBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxMemo, cxDBEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, cxGroupBox,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_SaidaEmbalagemBt = class(TF_AbstratoButtons)
    AdvGlassButton1: TAdvGlassButton;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsSaidaDetalhe: TDataSource;
    oCdsid: TIntegerField;
    oCdsidordemproducao: TIntegerField;
    oCdsdata: TDateField;
    oCdsdestino: TStringField;
    oCdsresponsavel: TStringField;
    oCdsrequisitante: TStringField;
    oCdsidproduto: TIntegerField;
    oCdsvalor: TSingleField;
    cdsSaidaDetalheid: TIntegerField;
    cdsSaidaDetalheitem: TIntegerField;
    cdsSaidaDetalheqtd: TSingleField;
    cdsSaidaDetalheqtdcaixa: TSingleField;
    cdsSaidaDetalhetotal: TSingleField;
    cdsSaidaDetalhedata: TDateField;
    cdsSaidaDetalhehora: TTimeField;
    cdsSaidaDetalhe: TClientDataSet;
    cxGrid1DBTableView1item: TcxGridDBColumn;
    cxGrid1DBTableView1qtd: TcxGridDBColumn;
    cxGrid1DBTableView1qtdcaixa: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1hora: TcxGridDBColumn;
    Label1: TLabel;
    cxCodOP: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    Label8: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cdsAcess: TClientDataSet;
    dsAcess: TDataSource;
    cdsAcesscodproduto: TStringField;
    cdsAcessdescricao: TStringField;
    cdsAcesscodopenvase: TIntegerField;
    cxGrid2DBTableView1codproduto: TcxGridDBColumn;
    cxValor: TDBEdit;
    cxProduto: TEdit;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsSaidaDetalheAfterInsert(DataSet: TDataSet);
    procedure cdsSaidaDetalheqtdcaixaChange(Sender: TField);
    procedure cdsSaidaDetalhetotalChange(Sender: TField);
    procedure ActSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
  sState : String;
    { Public declarations }
  end;

var
  F_SaidaEmbalagemBt: TF_SaidaEmbalagemBt;

implementation

{$R *.dfm}

uses UDM;

procedure TF_SaidaEmbalagemBt.ActSalvarExecute(Sender: TObject);
begin
  cdsSaidaDetalhe.Post;
  cdsSaidaDetalhe.ApplyUpdates(-1);
  cxGrid1DBTableView1.Navigator.Visible := False;
  inherited;

end;

procedure TF_SaidaEmbalagemBt.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
//
end;

procedure TF_SaidaEmbalagemBt.cdsSaidaDetalheAfterInsert(DataSet: TDataSet);
begin
  inherited;
   cdsSaidaDetalheitem.AsInteger := cdsSaidaDetalhe.RecordCount + 1;
   cdsSaidaDetalhedata.Value := now();
   cdsSaidaDetalhehora.Value := now();
end;

procedure TF_SaidaEmbalagemBt.cdsSaidaDetalheqtdcaixaChange(Sender: TField);
begin
  inherited;
   cdsSaidaDetalhetotal.ReadOnly := False;
   cdsSaidaDetalhetotal.AsFloat := cdsSaidaDetalheqtd.AsFloat * cdsSaidaDetalheqtdcaixa.AsFloat;
   cdsSaidaDetalhetotal.ReadOnly := True;
end;

procedure TF_SaidaEmbalagemBt.cdsSaidaDetalhetotalChange(Sender: TField);
begin
  inherited;
//   cdsSaidaDetalhetotal.ReadOnly := False;
//   cdsSaidaDetalhetotal.AsFloat := cdsSaidaDetalheqtd.AsFloat * cdsSaidaDetalheqtdcaixa.AsFloat;
//   cdsSaidaDetalhetotal.ReadOnly := True;
end;

procedure TF_SaidaEmbalagemBt.FormCreate(Sender: TObject);
begin
  inherited;
   cdsSaidaDetalhe.Close;
   cdsSaidaDetalhe.Open;
end;

end.
