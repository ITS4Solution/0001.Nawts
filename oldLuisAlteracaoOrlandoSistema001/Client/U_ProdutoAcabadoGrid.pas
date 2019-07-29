unit U_ProdutoAcabadoGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_ProdutoAcabadoGrid = class(TF_AbstratoGrid)
    AdvGlassButton1: TAdvGlassButton;
    oCdsid: TIntegerField;
    oCdsidinsumo: TIntegerField;
    oCdsidnfeentrada: TIntegerField;
    oCdstipo: TStringField;
    oCdsdata: TDateField;
    oCdsidordemquimico: TIntegerField;
    oCdsidproduto: TIntegerField;
    oCdsdescricao: TStringField;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    oCdsquantd: TSingleField;
    cxGrid1DBTableView1quantd: TcxGridDBColumn;
    cxGrid1DBTableView1tipo: TcxGridDBColumn;
    oCdsobs: TStringField;
    cxGrid1DBTableView1obs: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProdutoAcabadoGrid: TF_ProdutoAcabadoGrid;

implementation

{$R *.dfm}

uses UDM, U_ProdutoAcabadoBt;

procedure TF_ProdutoAcabadoGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_ProdutoAcabadoBt := TF_ProdutoAcabadoBt.Create(nil);
   F_ProdutoAcabadoBt.oCds.Insert;

   F_ProdutoAcabadoBt.CdsProdutos.Close;
   F_ProdutoAcabadoBt.CdsProdutos.Open;

   dm.opencnn;
   F_ProdutoAcabadoBt.oCdsid.AsInteger := DM.SMGen.GetNextIdEstoqueQuim;
   dm.closecnn;

   F_ProdutoAcabadoBt.ShowModal;
   F_ProdutoAcabadoBt.Free;
   oCds.Refresh;
end;

procedure TF_ProdutoAcabadoGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
   inherited;
   if oCds.RecordCount > 0 then
   begin
      F_ProdutoAcabadoBt := TF_ProdutoAcabadoBt.Create(nil);
      F_ProdutoAcabadoBt.oCds.Locate('id',oCdsid.AsInteger,[]);
      F_ProdutoAcabadoBt.CdsProdutos.Close;
      F_ProdutoAcabadoBt.CdsProdutos.Open;
      F_ProdutoAcabadoBt.ShowModal;
      F_ProdutoAcabadoBt.Free;
      oCds.Refresh;
   end;
end;

procedure TF_ProdutoAcabadoGrid.FormCreate(Sender: TObject);
begin
  inherited;
//  showmessage('entrei');
end;

end.
