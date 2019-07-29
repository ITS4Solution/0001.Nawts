unit U_NFeEntradaGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.StdCtrls;

type
  TF_NFeEntrada = class(TF_AbstratoGrid)
    cxGrid1DBTableView1nronfe: TcxGridDBColumn;
    cxGrid1DBTableView1serienfe: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1codfiscal: TcxGridDBColumn;
    cxGrid1DBTableView1condpagamento: TcxGridDBColumn;
    cxGrid1DBTableView1detalhepagamento: TcxGridDBColumn;
    ocdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    ocdsFornecedorid: TIntegerField;
    ocdsFornecedornome_razaosocial: TStringField;
    cxGrid1DBTableView1calcFornecedor: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    oCdsid: TIntegerField;
    oCdsnronfe: TIntegerField;
    oCdsserienfe: TIntegerField;
    oCdsdata: TDateField;
    oCdscodfiscal: TIntegerField;
    oCdsnome_razaosocial: TStringField;
    oCdscondpagamento: TStringField;
    oCdsdetalhepagamento: TStringField;
    oCdsVALORTOTAL: TFloatField;
    oCdsobs: TMemoField;
    oCdscodfornecedor: TIntegerField;
    oCdsid_1: TIntegerField;
    oCdscalcFornecedor: TStringField;
    Panel2: TPanel;
    btnFiltrar: TAdvGlassButton;
    edtSearch: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure oCdsCalcFields(DataSet: TDataSet);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
    Filtrado : Boolean;
    { Public declarations }
  end;

var
  F_NFeEntrada: TF_NFeEntrada;

implementation

{$R *.dfm}

uses UDM, U_NFeEntradaButtons;

procedure TF_NFeEntrada.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_NFeEntradaButtons := TF_NFeEntradaButtons.Create(nil);
   F_NFeEntradaButtons.oCds.Open;
   F_NFeEntradaButtons.oCds.Insert;
   dm.opencnn;
   F_NFeEntradaButtons.oCdsid.AsInteger := DM.SMGen.GetNextIdNfeEntrada;
   dm.closecnn;
   F_NFeEntradaButtons.oCdsNFeEntradaItens.Close;
   F_NFeEntradaButtons.oCdsNFeEntradaItens.Params[0].Value := F_NFeEntradaButtons.oCdsid.AsInteger;
   F_NFeEntradaButtons.oCdsNFeEntradaItens.Open;
   F_NFeEntradaButtons.cdsImp.Close;
   F_NFeEntradaButtons.cdsImp.Params[0].Value := F_NFeEntradaButtons.oCdsid.AsInteger;
   F_NFeEntradaButtons.cdsImp.Open;
   F_NFeEntradaButtons.cxGrid1DBTableView1.Navigator.Visible := True;
//   F_NFeEntradaButtons.oCdsNFeEntradaItens.Insert;
   F_NFeEntradaButtons.oCdsdata.Value := date;

   F_NFeEntradaButtons.ShowModal;
   F_NFeEntradaButtons.Free;
   oCds.Refresh;
end;


procedure TF_NFeEntrada.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  //Filtro
  oCds.Close;
  oCds.Params[0].Value := '%' + edtSearch.Text + '%';
  oCds.Open;
end;

procedure TF_NFeEntrada.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCds.RecordCount > 0 then
   begin
      F_NFeEntradaButtons := TF_NFeEntradaButtons.Create(nil);
      F_NFeEntradaButtons.ocdsFornecedor.Close;
      F_NFeEntradaButtons.ocdsFornecedor.Open;

      F_NFeEntradaButtons.oCds.Close;
      F_NFeEntradaButtons.oCds.Open;

      F_NFeEntradaButtons.oCds.Locate('id',oCdsid.AsInteger,[]);
      F_NFeEntradaButtons.sState := 'editar';

      F_NFeEntradaButtons.cdsImp.Close;
      F_NFeEntradaButtons.cdsImp.Params[0].Value := F_NFeEntradaButtons.oCdsid.AsInteger;
      F_NFeEntradaButtons.cdsImp.Open;

      F_NFeEntradaButtons.cdsSum.Close;
      F_NFeEntradaButtons.cdsSum.Params[0].Value := oCdsid.AsInteger;
      F_NFeEntradaButtons.cdsSum.Open;

      F_NFeEntradaButtons.cdsNfeID.Close;
      F_NFeEntradaButtons.cdsNfeID.Params[0].Value := oCdsid.AsInteger;
      F_NFeEntradaButtons.cdsNfeID.Open;

      F_NFeEntradaButtons.oCdsNFeEntradaItens.Close;
      F_NFeEntradaButtons.oCdsNFeEntradaItens.Params[0].AsInteger := oCdsid.AsInteger;
      F_NFeEntradaButtons.oCdsNFeEntradaItens.Open;

      F_NFeEntradaButtons.oCdsInsumos.Close;
      F_NFeEntradaButtons.oCdsInsumos.Open;

      F_NFeEntradaButtons.ShowModal;
      F_NFeEntradaButtons.Free;
      oCds.Refresh;
   end;
end;


Procedure TF_NFeEntrada.FormCreate(Sender: TObject);
begin
   ocdsFornecedor.Close;
   ocdsFornecedor.Open;
   oCds.Close;
   ocds.Params[0].Value := '%' + edtSearch.Text + '%';
   oCds.Open;
  //inherited;
end;

procedure TF_NFeEntrada.oCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
//   if ocdsFornecedor.Locate('id',oCdscodfornecedor.AsInteger,[]) then
//   begin
//      oCdscalcFornecedor.AsString := ocdsFornecedornome_razaosocial.AsString;
//   end;
end;

end.
