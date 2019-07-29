unit U_ProdutosBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton,
  Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Datasnap.Provider,
  Vcl.Buttons, AdvCombo, AdvDBComboBox, Vcl.Mask;

type
  TF_ProdutosBt = class(TF_AbstratoButtons)
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label8: TLabel;
    Label4: TLabel;
    dspProdutos: TDataSetProvider;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label9: TLabel;
    Label14: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsGrupoProdutos: TDataSource;
    oCdsGrupoProdutos: TClientDataSet;
    dspGrupoProdutos: TDataSetProvider;
    PageImpostos: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label18: TLabel;
    Label16: TLabel;
    DBEdit10: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label15: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBTextEdit18: TcxDBTextEdit;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    TabSheet4: TTabSheet;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    Label33: TLabel;
    Label34: TLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    Panel5: TPanel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    Shape1: TShape;
    Label6: TLabel;
    Label1: TLabel;
    btCFOP: TSpeedButton;
    Label37: TLabel;
    Label38: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    oCdsID: TIntegerField;
    dspCTS: TDataSetProvider;
    oCdsCST: TClientDataSet;
    dsCST: TDataSource;
    dspModBC: TDataSetProvider;
    oCdsModBC: TClientDataSet;
    dsModBC: TDataSource;
    oCdsModBCID: TIntegerField;
    dspModBCST: TDataSetProvider;
    oCdsModBCST: TClientDataSet;
    dsModBCST: TDataSource;
    oCdsModBCSTID: TIntegerField;
    dsCSTIPI: TDataSource;
    oCdsCSTIPI: TClientDataSet;
    dspCSTIPI: TDataSetProvider;
    oCdsCSTIPIID: TIntegerField;
    dsCSTPIS: TDataSource;
    oCdsCSTPIS: TClientDataSet;
    dspCSTPIS: TDataSetProvider;
    oCdsCSTPISID: TIntegerField;
    dsCSTCOFINS: TDataSource;
    oCdsCSTCOFINS: TClientDataSet;
    dpsCSTCOFINS: TDataSetProvider;
    oCdsCSTCOFINSID: TIntegerField;
    DBComboBox1: TDBComboBox;
    ComboBoxOrigem: TComboBox;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBTextEdit;
    oCdsGrupoProdutosID: TIntegerField;
    cxDBTextEdit2: TcxDBTextEdit;
    oCdsCODBARRAS: TStringField;
    oCdsNOMEPRODUTO: TStringField;
    oCdsUN: TStringField;
    oCdsMARCA: TStringField;
    oCdsIDGRUPO: TIntegerField;
    oCdsPRECOCUSTO: TFloatField;
    oCdsMARGEM: TFloatField;
    oCdsPRECOVENDA: TFloatField;
    oCdsCODORIGEM: TIntegerField;
    oCdsCODCST: TIntegerField;
    oCdsALIQICMS: TFloatField;
    oCdsNCM: TStringField;
    oCdsCODCSTIPI: TIntegerField;
    oCdsCODCSTPIS: TIntegerField;
    oCdsCODCSTCOFINS: TIntegerField;
    oCdsALIQIPI: TFloatField;
    oCdsALIQPIS: TFloatField;
    oCdsALIQCOFINS: TFloatField;
    oCdsREDICMS: TFloatField;
    oCdsALIQMVA: TFloatField;
    oCdsALIQIVA: TFloatField;
    oCdsMODBCICMS: TIntegerField;
    oCdsMODBCICMSST: TIntegerField;
    oCdsGrupoProdutosCODGRUPO: TIntegerField;
    oCdsGrupoProdutosNOMEGRUPO: TStringField;
    oCdsCSTCST: TIntegerField;
    oCdsCSTDESCRICAO: TStringField;
    oCdsCSTCODTIPOREGIME: TIntegerField;
    oCdsCSTORIG: TStringField;
    oCdsCSTMODBC: TStringField;
    oCdsCSTPREDBC: TStringField;
    oCdsCSTVBC: TStringField;
    oCdsCSTPICMS: TStringField;
    oCdsCSTVICMS: TStringField;
    oCdsCSTMODBCST: TStringField;
    oCdsCSTPMVAST: TStringField;
    oCdsCSTPREDBCST: TStringField;
    oCdsCSTVBCST: TStringField;
    oCdsCSTPICMSST: TStringField;
    oCdsCSTVICMSST: TStringField;
    oCdsCSTUFST: TStringField;
    oCdsCSTPBCOP: TStringField;
    oCdsCSTVBCSTRET: TStringField;
    oCdsCSTVICMSSTRET: TStringField;
    oCdsCSTMOTDESICMS: TStringField;
    oCdsCSTVBCSTDEST: TStringField;
    oCdsCSTVICMSSTDEST: TStringField;
    oCdsCSTPCREDSN: TStringField;
    oCdsCSTVCREDICMSSN: TStringField;
    oCdsModBCCODMODBC: TIntegerField;
    oCdsModBCDESCRICAO: TStringField;
    oCdsModBCSTCODBCCST: TIntegerField;
    oCdsModBCSTDESCRICAO: TStringField;
    oCdsCSTIPIDESCRICAO: TStringField;
    oCdsCSTPISDESCRICAO: TStringField;
    oCdsCSTCOFINSDESCRICAO: TStringField;
    TabSheet5: TTabSheet;
    Label7: TLabel;
    Panel6: TPanel;
    oCdsNCMALIQNACIO: TSingleField;
    oCdsNCMALIQIMP: TSingleField;
    oCdsNCMALIQEST: TSingleField;
    oCdsNCMALIQMUN: TSingleField;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    oCdsICMSDIF: TStringField;
    oCdsICMSINTDIF: TIntegerField;
    Label29: TLabel;
    Label30: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBComboBox1: TcxDBComboBox;
    oCdsUF: TStringField;
    DBComboBox2: TDBComboBox;
    Label35: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxOrigemChange(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProdutosBt: TF_ProdutosBt;

implementation

{$R *.dfm}

uses U_Utils, UKernel_FuncoesFloats, UKernel_FuncoesStrings;

procedure TF_ProdutosBt.ComboBoxOrigemChange(Sender: TObject);
begin
  inherited;
  if oDS.DataSet.State in [dsEdit, dsInsert] then
    oDS.DataSet.FieldByName('COdOrigem').Value := ComboBoxOrigem.ItemIndex;
end;

procedure TF_ProdutosBt.cxDBTextEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if oDS.DataSet.State in [dsEdit, dsInsert] then
    begin
      oDS.DataSet.FieldByName('PrecoVenda').Value := ValorPercentual(isFloat(RemoveCaractere('%', RemoveCaractere('.', cxDBTextEdit7.Text))),
        isFloat(RemoveCaractere('%', RemoveCaractere('.', cxDBTextEdit8.Text))));

      TDBEdit(Sender).Text := RemoveCaractere('%', TDBEdit(Sender).Text);
    end;

  end;
end;

procedure TF_ProdutosBt.cxDBTextEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    if oDS.DataSet.State in [dsEdit, dsInsert] then
      oDS.DataSet.FieldByName('Margem').Value := pMargem(isFloat(RemoveCaractere('.', cxDBTextEdit7.Text)),
        isFloat(RemoveCaractere('.', cxDBTextEdit9.Text)));
end;

procedure TF_ProdutosBt.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    if oCds.State in [dsEdit, dsInsert] then
      case isInteger(DBEdit10.Text) of
        0: // Nacional
          begin
            ComboBoxOrigem.ItemIndex := 0;
            oCds.FieldByName('COdOrigem').Value := 0;
          end;
        1: // Extrangeira
          begin
            ComboBoxOrigem.ItemIndex := 1;
            oCds.FieldByName('COdOrigem').Value := 1;
          end;
        2: // Estrangeira - imp direta
          begin
            ComboBoxOrigem.ItemIndex := 2;
            oCds.FieldByName('COdOrigem').Value := 2;
          end
      else
        begin
          ComboBoxOrigem.ItemIndex := 0;
          oCds.FieldByName('COdOrigem').Value := 0;
        end;
      end;
end;

procedure TF_ProdutosBt.FormCreate(Sender: TObject);
var
  sCodRegime: string;
begin
  inherited;

//  Dm.QryCadEmitente.Close;
//  Dm.QryCadEmitente.open;

//  sCodRegime := Dm.QryCadEmitenteCodTipoRegime.AsString;
//  if sCodRegime = '3' then
//    sCodRegime := '2';


  oCdsCST.Close;
//  oCdsCST.SQL.Clear;
//  oCdsCST.SQL.Add('Select * from nfe_cst');
//  oCdsCST.Add('Where CODTipoRegime = ' + sCodRegime);
  oCdsCST.open;

  oCdsModBC.Close;
  oCdsModBC.open;

  oCdsModBCST.Close;
  oCdsModBCST.open;

  oCdsCSTIPI.Close;
  oCdsCSTIPI.open;

  oCdsCSTPIS.Close;
  oCdsCSTPIS.open;

  oCdsCSTCOFINS.Close;
  oCdsCSTCOFINS.open;

  oCdsGrupoProdutos.Close;
  oCdsGrupoProdutos.Open;

end;

procedure TF_ProdutosBt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssShift in Shift) and (Key = VK_TAB) then
  begin
    Perform(WM_NEXTDLGCTL, 1, 0);
    Key := 0;
  end;

  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
    // Key := 0; {: Desabilitado por perda de preview}
  end;
  inherited;

end;

procedure TF_ProdutosBt.FormShow(Sender: TObject);
begin
  inherited;
    if oDS.DataSet.State in [dsInsert] then
    begin
      oDS.DataSet.FieldByName('UN').Value := 'UN';
      oDS.DataSet.FieldByName('ModBCICMS').Value := 3;
      oDS.DataSet.FieldByName('ModBCICMSST').Value := 4;
      oDS.DataSet.FieldByName('CodOrigem').Value := 0;
      oDS.DataSet.FieldByName('PrecoCusto').Value := 0;
      oDS.DataSet.FieldByName('PrecoVenda').Value := 0;
      oDS.DataSet.FieldByName('Margem').Value := 0;
      cxDBSpinEdit1.SetFocus;
      PageImpostos.ActivePageIndex := 0;
    end;
   ComboBoxOrigem.ItemIndex := oDS.DataSet.FieldByName('COdOrigem').Value;
end;

end.
