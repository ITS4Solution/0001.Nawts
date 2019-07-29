unit U_CadFormulaGrid;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.StdCtrls;

type
  TF_CadFormulaGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdscodigo: TStringField;
    oCdsdescricaoformula: TStringField;
    oCdsobservacao: TMemoField;
    oCdspercentual: TSingleField;
    oCdsvalido: TIntegerField;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1descricaoformula: TcxGridDBColumn;
    cxGrid1DBTableView1percentual: TcxGridDBColumn;
    cxGrid1DBTableView1idcodprocesso: TcxGridDBColumn;
    btnNovo: TAdvGlassButton;
    oCdsidcodprocesso: TStringField;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadFormulaGrid: TF_CadFormulaGrid;

implementation

{$R *.dfm}

uses UDM, U_CadFormulaBt;

procedure TF_CadFormulaGrid.btnNovoClick(Sender: TObject);
var
   intForm : Integer;
begin
   F_CadFormulaBt := TF_CadFormulaBt.Create(nil);
   F_CadFormulaBt.oCds.Close;
   F_CadFormulaBt.oCds.Open;
   F_CadFormulaBt.oCds.Insert;
   dm.opencnn;
   F_CadFormulaBt.oCdsid.AsInteger := dm.SMGen.GetNextIdForm;
   dm.closecnn;
   F_CadFormulaBt.sState := 'insert';

   F_CadFormulaBt.CdsProdutos.Close;
   F_CadFormulaBt.CdsProdutos.Open;

   F_CadFormulaBt.cdsInsumoID.Close;
   F_CadFormulaBt.cdsInsumoID.Open;

   F_CadFormulaBt.CdsFormuladetalhe.Close;
   F_CadFormulaBt.CdsFormuladetalhe.Params[0].AsInteger := F_CadFormulaBt.oCdsid.AsInteger;
   F_CadFormulaBt.CdsFormuladetalhe.Open;
   F_CadFormulaBt.CdsFormuladetalhe.Insert;
   F_CadFormulaBt.btnEditar.Enabled := False;

   F_CadFormulaBt.cxGrid1DBTableView1.Navigator.Visible := True;
   F_CadFormulaBt.CdsFormuladetalhe.Insert;
   F_CadFormulaBt.ShowModal;
   F_CadFormulaBt.Free;
   oCds.Refresh;
end;

procedure TF_CadFormulaGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
    if oCds.RecordCount > 0 then
   begin
    F_CadFormulaBt := TF_CadFormulaBt.Create(nil);
    F_CadFormulaBt.oCds.Locate('id',oCdsid.AsInteger,[]);
    F_CadFormulaBt.sState := 'editar';

//         if F_CadFormulaBt.oCdsvalido.AsInteger = 1 then
//            F_CadFormulaBt.cbValido.Checked := True
//    else if F_CadFormulaBt.oCdsvalido.AsInteger = 0 then
//            F_CadFormulaBt.cbValido.Checked := False;

    F_CadFormulaBt.CdsInsumoID.Close;
    F_CadFormulaBt.CdsInsumoID.Open;

    F_CadFormulaBt.CdsProdutos.Close;
    F_CadFormulaBt.CdsProdutos.Open;
    F_CadFormulaBt.CdsFormuladetalhe.Close;
    F_CadFormulaBt.CdsFormuladetalhe.Params[0].AsInteger := F_CadFormulaBt.oCdsid.AsInteger;
    F_CadFormulaBt.CdsFormuladetalhe.Open;
    //F_CadFormulaBt.btnEditar.Enabled := False;
    F_CadFormulaBt.btnDeletar.Enabled := False;
    F_CadFormulaBt.btnSalvar.Enabled := False;
    F_CadFormulaBt.ShowModal;
    F_CadFormulaBt.Free;
    oCds.Refresh;
   end;
end;


///////////////////////////////////////////////////////////
procedure TF_CadFormulaGrid.FormCreate(Sender: TObject);
begin
  inherited;
  dm.opencnn;
  oCds.Close;
  oCds.Open;
  oCds.Active := true;
  //dm.closecnn;
end;
///////////////////////////////////////////////////////////

end.
