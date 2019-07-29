unit U_PedidoBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxGroupBox,
  cxDBLookupComboBox, frxClass, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_PedidosBt = class(TF_AbstratoButtons)
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsPedidoDetalhe: TClientDataSet;
    dsPedidoDetalhe: TDataSource;
    cxGrid1DBTableView1un: TcxGridDBColumn;
    cxGrid1DBTableView1produto: TcxGridDBColumn;
    cxGrid1DBTableView1precoun: TcxGridDBColumn;
    cxGrid1DBTableView1precototal: TcxGridDBColumn;
    oCdsid: TIntegerField;
    oCdsdatapedido: TDateField;
    oCdsdataentrega: TDateField;
    oCdsnome: TStringField;
    oCdsendereco: TStringField;
    oCdsbairro: TStringField;
    oCdscidade: TStringField;
    oCdsuf: TStringField;
    oCdscep: TStringField;
    oCdstelefone: TStringField;
    oCdscelular: TStringField;
    oCdsrv: TStringField;
    oCdsrv2: TStringField;
    oCdsrv3: TStringField;
    oCdspvbruto: TSingleField;
    oCdsdesconto: TSingleField;
    oCdsliquido: TSingleField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label11: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    DBEdit7: TDBEdit;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    cdsProdutosid: TIntegerField;
    cdsProdutoscodfornecedor: TIntegerField;
    cdsProdutosgrupo: TIntegerField;
    cdsProdutoscodproduto: TIntegerField;
    cdsProdutosprocedencia: TStringField;
    cdsProdutosdescricao: TStringField;
    cdsProdutosgrupopedido: TStringField;
    cdsProdutosnumeropa: TIntegerField;
    cdsProdutosnomeprodutopedido: TStringField;
    cdsProdutosncm: TStringField;
    cdsProdutoscodformula: TStringField;
    cdsPedidoDetalheid: TIntegerField;
    cdsPedidoDetalheun: TIntegerField;
    cdsPedidoDetalhecodigo: TStringField;
    cdsPedidoDetalheproduto: TStringField;
    cdsPedidoDetalheprecoun: TSingleField;
    cdsPedidoDetalheprecototal: TSingleField;
    cdsPedidoDetalheidpedido: TIntegerField;
    AdvGlassButton1: TAdvGlassButton;
    DBPedidosDetalhe: TfrxDBDataset;
    DBPedidos: TfrxDBDataset;
    ReportPedidos: TfrxReport;
    procedure ActNovoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1produtoPropertiesCloseUp(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure cdsPedidoDetalheunChange(Sender: TField);
    procedure cdsPedidoDetalheprecounChange(Sender: TField);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sState : String;
  end;

var
  F_PedidosBt: TF_PedidosBt;

implementation

{$R *.dfm}

uses UDM;

procedure TF_PedidosBt.ActEditarExecute(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.Navigator.Visible := True;
end;

procedure TF_PedidosBt.ActNovoExecute(Sender: TObject);
begin
  inherited;
  dm.opencnn;
  oCdsid.AsInteger := DM.SMGen.GetNextIdPedido;
  dm.closecnn;
  CdsProdutos.Close;
  CdsProdutos.Open;
  cdsPedidoDetalhe.Close;
  cdsPedidoDetalhe.Params[0].Value := oCdsid.AsInteger;
  cdsPedidoDetalhe.Open;
  cdsPedidoDetalhe.Insert;
  cxGrid1DBTableView1.Navigator.Visible := True;
end;

procedure TF_PedidosBt.ActSalvarExecute(Sender: TObject);
begin
  cdsPedidoDetalhe.First;

  while not cdsPedidoDetalhe.eof do
  begin
    cdsPedidoDetalhe.Edit;
    cdsPedidoDetalheidpedido.AsInteger := oCdsid.AsInteger;
    cdsPedidoDetalhe.Post;
    cdsPedidoDetalhe.Next;
  end;                    
  cdsPedidoDetalhe.ApplyUpdates(-1);   
  cxGrid1DBTableView1.Navigator.Visible := False;
  inherited;
end;

procedure TF_PedidosBt.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   ReportPedidos.PrepareReport();
   ReportPedidos.ShowReport();
end;

procedure TF_PedidosBt.cdsPedidoDetalheprecounChange(Sender: TField);
begin
  inherited;
  cdsPedidoDetalheprecoun.ReadOnly := True;

  cdsPedidoDetalhe.Edit;
  cdsPedidoDetalheprecototal.ReadOnly := False;
  cdsPedidoDetalheprecototal.AsFloat := cdsPedidoDetalheun.AsFloat * cdsPedidoDetalheprecoun.AsFloat;
  cdsPedidoDetalheprecototal.ReadOnly := True;

  cdsPedidoDetalheprecoun.ReadOnly := False;
end;

procedure TF_PedidosBt.cdsPedidoDetalheunChange(Sender: TField);
begin
  inherited;
  cdsPedidoDetalheprecototal.ReadOnly := False;
  cdsPedidoDetalheprecototal.ReadOnly := True;
end;

procedure TF_PedidosBt.cxGrid1DBTableView1produtoPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //cdsPedidoDetalheidpedido.AsInteger := oCdsid.AsInteger;
end;

procedure TF_PedidosBt.FormCreate(Sender: TObject);
begin
  inherited;
  cdsProdutos.Close;
  cdsProdutos.Open;
  cdsPedidoDetalhe.Close;
  cdsPedidoDetalhe.Params[0].Value := oCdsid.AsInteger;
  cdsPedidoDetalhe.Open;
end;

procedure TF_PedidosBt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
