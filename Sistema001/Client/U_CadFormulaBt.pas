unit U_CadFormulaBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxMemo, cxDBEdit, cxTextEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, frxClass, frxDBSet, cxGroupBox, cxCheckBox, AdvPanel, AdvEdit,
  advlued, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter,strutils;

type
  TF_CadFormulaBt = class(TF_AbstratoButtons)
    codigo: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    CdsFormuladetalhe: TClientDataSet;
    DSFormuladetalhe: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    CdsFormuladetalheid: TIntegerField;
    CdsFormuladetalheidtblformula: TIntegerField;
    CdsFormuladetalheidmateriaprima: TIntegerField;
    cxGrid1DBTableView1idmateriaprima: TcxGridDBColumn;
    cxGrid1DBTableView1percentual: TcxGridDBColumn;
    Label1: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    ReportFormula: TfrxReport;
    DBoCDS: TfrxDBDataset;
    DBcdsProduto: TfrxDBDataset;
    DBFormula: TfrxDBDataset;
    dbInsumo: TfrxDBDataset;
    cdsInsumoID: TClientDataSet;
    dsInsumoID: TDataSource;
    CdsFormuladetalhedescricao: TStringField;
    Edit1: TEdit;
    oCdsid: TIntegerField;
    oCdscodigo: TStringField;
    oCdsdescricaoformula: TStringField;
    oCdsobservacao: TMemoField;
    oCdspercentual: TSingleField;
    oCdsidcodprocesso: TStringField;
    oCdsvalido: TIntegerField;
    cdsInsumoIDid: TIntegerField;
    cdsInsumoIDdescricao: TStringField;
    cdsInsumoIDcodigo: TStringField;
    cdsProdutosid: TIntegerField;
    cdsProdutoscodfornecedor: TIntegerField;
    cdsProdutoscodproduto: TIntegerField;
    cdsProdutosprocedencia: TStringField;
    cdsProdutosgrupo: TIntegerField;
    cdsProdutosdescricao: TStringField;
    cdsProdutosgrupopedido: TStringField;
    cdsProdutosnumeropa: TIntegerField;
    cdsProdutosnomeprodutopedido: TStringField;
    cdsProdutosncm: TStringField;
    CdsFormuladetalhecodprodutoacab: TStringField;
    CdsFormuladetalheid_1: TIntegerField;
    btnImprimi: TAdvGlassButton;
    recMult: TPanel;
    Label6: TLabel;
    edtMult: TEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    CdsFormuladetalheTotal: TFloatField;
    CdsFormuladetalhemulti: TIntegerField;
    CdsFormuladetalhecodigo: TStringField;
    oCdscodproduto: TStringField;
    CdsFormuladetalhepercentual: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure ActDeletarExecute(Sender: TObject);
    procedure CdsFormuladetalheAfterInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
//    procedure btnImprimirClick(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure btnImprimiClick(Sender: TObject);
    procedure cdsInsumoIDCalcFields(DataSet: TDataSet);
    procedure CdsFormuladetalheCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView1idmateriaprimaPropertiesCloseUp(
      Sender: TObject);
    procedure cxGrid1DBTableView1idmateriaprimaPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    sState : String;
    iMulti : Integer;
    idIns  : Integer;
    codMP  : String;
    idFormDetal : Integer;

    { Public declarations }

  end;

var
  F_CadFormulaBt: TF_CadFormulaBt;

implementation

{$R *.dfm}

uses UDM;

procedure TF_CadFormulaBt.ActDeletarExecute(Sender: TObject);
begin
  inherited;
  close;
//   ShowMessage('Operação não permitida !');
end;

procedure TF_CadFormulaBt.ActEditarExecute(Sender: TObject);
begin
  inherited;
  ///////////////////////////////////////////////////////////
  CdsFormuladetalhe.Close;
  CdsFormuladetalhe.Params[0].Value := oCdsid.AsInteger;
  CdsFormuladetalhe.Open;
  CdsFormuladetalhe.Edit;

  idFormDetal := CdsFormuladetalheid.AsInteger;
  ///////////////////////////////////////////////////////////
  cxGrid1DBTableView1.Navigator.Visible := True;

end;

procedure TF_CadFormulaBt.ActNovoExecute(Sender: TObject);
begin
  inherited;
  dm.opencnn ;              ////////////////
  oCdsid.AsInteger := DM.SMGen.GetNextIdFormula;
  CdsProdutos.Close;
  CdsProdutos.Open;
  CdsFormuladetalhe.Close;
  CdsFormuladetalhe.Params[0].Value := oCdsid.AsInteger;
  CdsFormuladetalhe.Open;
  CdsFormuladetalhe.Insert;
  dm.closecnn;             ////////////////
end;

procedure TF_CadFormulaBt.ActSalvarExecute(Sender: TObject);
var
  Conta  : Double;
  Aux    : String;
  Aux2   : String;
  idFormula : Integer;
  sSql : string;
  materiaprima : string;
  percentual : string;
  id : string;
  idCds : String;
begin

   if sState = 'insert' then
   begin
      oCdscodproduto.AsString := cdsProdutoscodproduto.AsString;
      inherited;
      idFormula := 0;
      idFormula := oCdsid.AsInteger;
      CdsFormuladetalhe.First;

      while not CdsFormuladetalhe.Eof do
      begin
         dm.opencnn;
         sSql := '';
         sSql := 'Insert into "tblformuladetalhe" ("idtblformula","idmateriaprima","percentual") Values ('
            + InttoStr(idFormula)
            + ',' + CdsFormuladetalheidmateriaprima.AsString
            + ',' + ReplaceStr(FormatFloat('#,##0.000',CdsFormuladetalhepercentual.AsFloat),',','.')
            + ')';
         dm.SMGen.exceSql(sSql);
         CdsFormuladetalhe.Next;
         dm.CloseCnn;

      end;

//      CdsFormuladetalheidtblformula.AsInteger := oCdsid.AsInteger;
//      CdsFormuladetalhe.Post;
//      CdsFormuladetalhe.ApplyUpdates(-1);
//      cxGrid1DBTableView1.Navigator.Visible := False;
      ShowMessage('Inserido com sucesso!');
      btnEditar.Enabled  := False;
      btnDeletar.Enabled := False;
      btnSalvar.Enabled  := False;
   end
   else
   if sState = 'editar' then
   begin
     inherited;

     CdsFormuladetalhe.First;
     while not CdsFormuladetalhe.Eof do
     begin
       dm.opencnn;
       id           := CdsFormuladetalheid.AsString;
       idCds        := inttostr(oCdsid.AsInteger);
       materiaprima := CdsFormuladetalheidmateriaprima.AsString;
       percentual   := ReplaceStr(FormatFloat('#,##0.000',CdsFormuladetalhepercentual.AsFloat),',','.');

       if dm.SMGen.ExistMPFormula(oCdsid.AsInteger, CdsFormuladetalheidmateriaprima.AsInteger) = True  then
       begin
         sSql := '';
         sSql := 'Update "tblformuladetalhe" set "idmateriaprima" = '+ Quotedstr(materiaprima) +', "percentual" = '+ Quotedstr(percentual) +' where "id" = '+ Quotedstr(id);
         dm.SMGen.exceSql(sSql);
         CdsFormuladetalhe.Next;
       end
       else
       begin
         sSql := '';
         sSql := 'Insert into "tblformuladetalhe" ("idtblformula","idmateriaprima","percentual") Values ('
            +       Quotedstr(idCds)
            + ',' + Quotedstr(materiaprima)
            + ',' + Quotedstr(percentual)
            + ');';
         dm.SMGen.exceSql(sSql);
         CdsFormuladetalhe.Next;
       end;
       dm.CloseCnn;

     end;
     ShowMessage('Atualizado com sucesso!');
     btnEditar.Enabled  := False;
     btnDeletar.Enabled := False;
     btnSalvar.Enabled  := False;
   end;

end;

procedure TF_CadFormulaBt.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   recMult.Visible := False;
end;

procedure TF_CadFormulaBt.btnConfirmaClick(Sender: TObject);
begin
  inherited;
  iMulti := StrToInt(edtMult.Text);
  CdsFormuladetalhe.Close;
  CdsFormuladetalhe.Params[0].Value := oCdsid.AsInteger;
  CdsFormuladetalhe.Open;
  ReportFormula.PrepareReport();
  ReportFormula.ShowReport();
end;

procedure TF_CadFormulaBt.btnImprimiClick(Sender: TObject);
begin
  inherited;
  recMult.Visible := True;
end;

procedure TF_CadFormulaBt.CdsFormuladetalheAfterInsert(DataSet: TDataSet);
var
  Soma : double;
begin
  inherited;
 //
end;

procedure TF_CadFormulaBt.CdsFormuladetalheCalcFields(DataSet: TDataSet);
begin
  inherited;
  CdsFormuladetalheTotal.AsFloat := CdsFormuladetalhepercentual.AsFloat * iMulti;
  CdsFormuladetalhemulti.AsInteger := iMulti;
end;

procedure TF_CadFormulaBt.cdsInsumoIDCalcFields(DataSet: TDataSet);
var
 desc : string;
begin
  inherited;
    if cdsInsumoID.Locate('id',strtoint(CdsFormuladetalheidmateriaprima.AsString),[]) then
    begin
       desc := cdsInsumoIDcodigo.AsString;
       ShowMessage(desc);
    end;
end;

procedure TF_CadFormulaBt.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  dm.opencnn;
   if dm.SMGen.FormulaExist(cdsProdutoscodproduto.AsString) = True then
   begin
      ShowMessage('ATENÇÃO!!!' + #13 + 'Já existe uma fórmula para este produto!');
      btnSalvar.Enabled := False;
      btnImprimi.Enabled := False;
   end
   else
   begin
      Edit1.Text := cdsProdutosnomeprodutopedido.AsString;
      btnSalvar.Enabled := True;
      btnImprimi.Enabled := True;
   end;
   dm.closecnn;
end;


procedure TF_CadFormulaBt.cxGrid1DBTableView1idmateriaprimaPropertiesCloseUp(
  Sender: TObject);
begin
  if sState = 'editar' then
  begin
//     CdsFormuladetalhe.Insert;
     CdsFormuladetalheidmateriaprima.AsInteger := cdsInsumoIDid.AsInteger;
     //CdsFormuladetalhecodigo.AsString          := cdsInsumoIDcodigo.AsString;
     CdsFormulaDetalhe.Post;
  end;
end;

procedure TF_CadFormulaBt.cxGrid1DBTableView1idmateriaprimaPropertiesPopup(
  Sender: TObject);
begin
//  CdsInsumoID.Close;
//  CdsInsumoID.Open;
end;

procedure TF_CadFormulaBt.FormCreate(Sender: TObject);
begin
  inherited;
  iMulti := 1;
end;

procedure TF_CadFormulaBt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
