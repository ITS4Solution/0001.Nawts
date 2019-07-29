unit U_CadOrdemProducaoGrid;

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
  TF_CadOrdemProducaoGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsdescricaoformula: TStringField;
    oCdsficha: TStringField;
    oCdslote: TStringField;
    oCdsemissao: TDateField;
    oCdsidformula: TIntegerField;
    oCdsproduzido: TSingleField;
    oCdsfator: TSingleField;
    oCdsemproducao: TIntegerField;
    oCdsidproduto: TIntegerField;
    oCdsstatus: TStringField;
    cxGrid1DBTableView1descricaoformula: TcxGridDBColumn;
    cxGrid1DBTableView1ficha: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1emissao: TcxGridDBColumn;
    cxGrid1DBTableView1produzido: TcxGridDBColumn;
    cxGrid1DBTableView1fator: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    oCdsdescricao: TStringField;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    btnNovo: TAdvGlassButton;
//    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure oCdsCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
   bAtualizacao : Boolean;
    { Public declarations }
  end;

var
  F_CadOrdemProducaoGrid: TF_CadOrdemProducaoGrid;

implementation

{$R *.dfm}

uses UDM, U_CadOrdemProducaoBt;

procedure TF_CadOrdemProducaoGrid.btnNovoClick(Sender: TObject);
begin
    F_CadOrdemProducaoBt := TF_CadOrdemProducaoBt.Create(nil);

    F_CadOrdemProducaoBt.oCds.Close;
    F_CadOrdemProducaoBt.oCds.Open;

    F_CadOrdemProducaoBt.CdsProdutos.Close;
    F_CadOrdemProducaoBt.CdsProdutos.Open;

    F_CadOrdemProducaoBt.CdsFormula.Close;
    F_CadOrdemProducaoBt.CdsFormula.Open;

    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Close;
    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Params[0].AsInteger := F_CadOrdemProducaoBt.CdsFormulaid.AsInteger;
    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Open;

    F_CadOrdemProducaoBt.CdsProdutos.Close;
    F_CadOrdemProducaoBt.CdsProdutos.Params[0].AsString := F_CadOrdemProducaoBt.CdsFormulacodigo.AsString;
    F_CadOrdemProducaoBt.CdsProdutos.Open;

    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Close;
    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Params[0].Value := oCdsid.AsInteger;
    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Open;


    F_CadOrdemProducaoBt.oCds.Close;
    F_CadOrdemProducaoBt.oCds.Open;
    F_CadOrdemProducaoBt.oCds.Insert;
    DM.opencnn;
    F_CadOrdemProducaoBt.oCdsid.AsInteger := DM.SMGen.GetNextIdOPQuimico;
    DM.closecnn;
    F_CadOrdemProducaoBt.oCdsemissao.Value := date;



    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Close;
    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Params[0].AsInteger := F_CadOrdemProducaoBt.CdsFormulaid.AsInteger;
    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Open;


    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Close;
    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Params[0].AsInteger := F_CadOrdemProducaoBt.oCdsid.AsInteger;
    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Open;


    F_CadOrdemProducaoBt.oCdsstatus.AsString := 'Aberto';
    F_CadOrdemProducaoBt.DBEdit1.Text := '';

    F_CadOrdemProducaoBt.cxGrid1DBTableView1.Navigator.Visible := True;
    F_CadOrdemProducaoBt.ShowModal;
    F_CadOrdemProducaoBt.Free;
    oCds.Refresh;

end;

procedure TF_CadOrdemProducaoGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  //dm.opencnn;
  if oCds.RecordCount > 0 then
   begin
    F_CadOrdemProducaoBt := TF_CadOrdemProducaoBt.Create(nil);

    F_CadOrdemProducaoBt.oCds.Open;
    F_CadOrdemProducaoBt.oCds.Locate('id',oCdsid.AsInteger,[]);
    F_CadOrdemProducaoBt.sState := 'editar';

      if F_CadOrdemProducaoBt.oCdsstatus.AsString = 'Finalizada' then
      begin
         F_CadOrdemProducaoBt.cxDBLookupComboBox1.Enabled := False;
         F_CadOrdemProducaoBt.btnEditar.Enabled := False;
      end;

    F_CadOrdemProducaoBt.CdsFormula.Close;
    F_CadOrdemProducaoBt.CdsFormula.Open;

    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Close;
    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Params[0].AsInteger := F_CadOrdemProducaoBt.CdsFormulaid.AsInteger;
    F_CadOrdemProducaoBt.cdsFormulaDetalhe.Open;

    F_CadOrdemProducaoBt.CdsFormula.Locate('id', oCdsidformula.AsInteger,[]); //Locate da Formula

    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Close;
    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Params[0].AsInteger := oCdsid.AsInteger;
    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Open;
    F_CadOrdemProducaoBt.cdsFormulaDetalhe.First;
    F_CadOrdemProducaoBt.oCdsProducaoDetalhe.First;
    while not F_CadOrdemProducaoBt.cdsFormulaDetalhe.EOF do
      begin
        F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Edit;
        F_CadOrdemProducaoBt.oCdsProducaoDetalhesDescricao.AsString := (F_CadOrdemProducaoBt.cdsFormulaDetalhedescricao.AsString);
        F_CadOrdemProducaoBt.oCdsProducaoDetalhesCodMP.AsString :=(F_CadOrdemProducaoBt.cdsFormulaDetalhecodigo.AsString);
        F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Post;
        F_CadOrdemProducaoBt.cdsFormulaDetalhe.Next;
        F_CadOrdemProducaoBt.oCdsProducaoDetalhe.Next;
      end;

    F_CadOrdemProducaoBt.cdsOpID.Close;
    F_CadOrdemProducaoBt.cdsOpID.Params[0].AsInteger := oCdsid.AsInteger;
    F_CadOrdemProducaoBt.cdsOpID.Open;

    F_CadOrdemProducaoBt.CdsProdutos.Close;
    F_CadOrdemProducaoBt.CdsProdutos.Params[0].AsString := F_CadOrdemProducaoBt.CdsFormulacodigo.AsString;
    F_CadOrdemProducaoBt.CdsProdutos.Open;






    F_CadOrdemProducaoBt.ShowModal;
    F_CadOrdemProducaoBt.Free;
    oCds.Refresh;
   end;

end;

procedure TF_CadOrdemProducaoGrid.FormActivate(Sender: TObject);
begin
  inherited;
   oCds.Refresh;
   if bAtualizacao then
   begin

   end;

end;

procedure TF_CadOrdemProducaoGrid.FormCreate(Sender: TObject);
begin
  inherited;
//  cdsFormulaDescricao.Close;
//  cdsFormulaDescricao.Params[0].Value := oCdsidformula.AsInteger;
//  cdsFormulaDescricao.Open;
end;

procedure TF_CadOrdemProducaoGrid.oCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
    //oCdssDescricao.AsString := cdsFormulaDescricaodescricaoformula.AsString;
end;

end.
