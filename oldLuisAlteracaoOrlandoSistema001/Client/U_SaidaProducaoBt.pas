unit U_SaidaProducaoBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Abstrato001, System.Actions,
  Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls, frxClass,
  frxDBSet;

type
  TF_SaidaProducaoBt = class(TF_Abstrato001)
    dxBevel2: TdxBevel;
    Image1: TImage;
    lbCodEnvase: TLabeledEdit;
    dxBevel1: TdxBevel;
    lbQtdPrevista: TLabeledEdit;
    lbData: TLabeledEdit;
    lbHora: TLabeledEdit;
    lbOperador: TLabeledEdit;
    lbStatus: TLabeledEdit;
    Panel3: TPanel;
    oCds: TClientDataSet;
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
    oDS: TDataSource;
    cdsDetalheEnvase: TClientDataSet;
    cdsDetalheEnvaseid: TIntegerField;
    cdsDetalheEnvaseqtd: TSingleField;
    cdsDetalheEnvaseue: TStringField;
    cdsDetalheEnvasepreco: TSingleField;
    cdsDetalheEnvasevalortotal: TSingleField;
    cdsDetalheEnvasecodproduto: TStringField;
    cdsDetalheEnvaseidordemproducao: TIntegerField;
    cdsDetalheEnvaseidcodproduto: TIntegerField;
    cdsDetalheEnvasesQuantidade: TFloatField;
    cdsDetalheEnvasesEstoque: TStringField;
    dsDetalheEnvase: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1codproduto: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    AdvGlassButton1: TAdvGlassButton;
    lbProduto: TLabeledEdit;
    recQnt: TPanel;
    Label6: TLabel;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    Panel2: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    edtQtd: TEdit;
    cdsSaidaProd: TClientDataSet;
    dsTotal: TDataSource;
    dsSaidaProd: TDataSource;
    cxGrid2DBTableView1descricao: TcxGridDBColumn;
    cxGrid2DBTableView1quantd: TcxGridDBColumn;
    cxGrid2DBTableView1data: TcxGridDBColumn;
    cxGrid2DBTableView1hora: TcxGridDBColumn;
    ReportSaidaP: TfrxReport;
    dbDetalheEnvase: TfrxDBDataset;
    dbSaidaProd: TfrxDBDataset;
    btnImprimir: TAdvGlassButton;
    edtSobra: TEdit;
    edtPerca: TEdit;
    lbSobra: TLabel;
    lbPerca: TLabel;
    edtTotal: TEdit;
    Label1: TLabel;
    btnCalcular: TAdvGlassButton;
    cdsTotal: TClientDataSet;
    cdsTotalTOTAL: TFloatField;
    cdsTotalQtdTotal: TIntegerField;
    cdsTotalSobra: TIntegerField;
    cdsTotalPerca: TIntegerField;
    frxDBDataset1: TfrxDBDataset;
    edtRequisitada: TEdit;
    Label2: TLabel;
    cdsDetalheEnvaseQTDINST: TSingleField;
    cxGrid1DBTableView1QTDINST: TcxGridDBColumn;
    cdsSaidaProddescricao: TStringField;
    cdsSaidaProdquantd: TSingleField;
    cdsSaidaProddata: TDateField;
    cdsSaidaProdhora: TTimeField;
    cdsSaidaProdidordemenvase: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure cdsTotalCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    sState     : String;
    idControle : Integer;
  end;

var
  F_SaidaProducaoBt: TF_SaidaProducaoBt;

implementation

{$R *.dfm}

uses UDM;

procedure TF_SaidaProducaoBt.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   edtQtd.Text    := '';
   recQnt.Visible := true;
   recQnt.BringToFront;
end;

procedure TF_SaidaProducaoBt.AdvGlassButton2Click(Sender: TObject);
begin
  inherited;
recQnt.Visible := false;
end;

procedure TF_SaidaProducaoBt.AdvGlassButton3Click(Sender: TObject);
begin
  inherited;
   if DM.tmsMSGQ('Informação','Essa ação irá dar baixa no estoque. Deseja continuar?') = mrOk then
   begin
     cdsDetalheEnvase.First;
     while not cdsDetalheEnvase.Eof do
         begin
           dm.opencnn;
           dm.SMGen.IBaixaEstoque(cdsDetalheEnvaseidcodproduto.AsInteger,cdsDetalheEnvaseidordemproducao.AsInteger,idControle,strtofloat(edtQtd.Text));
           dm.SMGen.IEntradaEstoqueEnvase(cdsDetalheEnvaseidcodproduto.AsInteger,cdsDetalheEnvaseidordemproducao.AsInteger,idControle,strtofloat(edtQtd.Text));
           dm.closecnn;
           cdsDetalheEnvase.Next;
         end;
        //ibaixaestoque enviar a quantidade digitada;
   end;
   recQnt.Visible := false;
   //cdsSaidaProd.Close;
   //cdsSaidaProd.Open;
   cdsSaidaProd.Refresh;
   cdsSaidaProd.First;
   cdsTotal.Refresh;
  
end;

procedure TF_SaidaProducaoBt.btnCalcularClick(Sender: TObject);
var
qtd  : integer;
soma : integer;
total : integer;
begin
  inherited;
   if (edtSobra.Text ='') = true then
   begin
   edtSobra.Text :='0';
   end;
   if (edtPerca.Text='') = true then
   begin
      edtPerca.Text :='0';
   end;

   qtd   := (cdsTotalTOTAL.AsInteger *-1);
   soma  := (strtoint(edtSobra.Text) + strtoint(edtPerca.Text));
   total := (qtd - soma);
   edtTotal.Text :=  inttostr(total);

end;

procedure TF_SaidaProducaoBt.btnImprimirClick(Sender: TObject);
begin
  inherited;
   cdsTotal.Insert;
  ReportSaidaP.PrepareReport();
  ReportSaidaP.ShowReport();
end;

procedure TF_SaidaProducaoBt.cdsTotalCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsTotalQtdTotal.AsString := edtTotal.Text;
  cdsTotalSobra.AsString    := edtSobra.Text;
  cdsTotalPerca.AsString    := edtPerca.Text;
end;

procedure TF_SaidaProducaoBt.FormCreate(Sender: TObject);
begin
  inherited;

   ocds.Close;
   ocds.Open;
   recQnt.Visible := false;

//   edtTotal.Text := F_SaidaProducaoBt.cdsTotalTOTAL.AsString;

   edtSobra.Text   := '0';
   edtPerca.Text   := '0';


   //cdsSaidaProd.Params[0].Value := cds.AsInteger;
end;

end.
