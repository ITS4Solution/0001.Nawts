unit UFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxGroupBox, cxRadioGroup, cxDBEdit, cxCalc,
  cxSpinEdit, cxTextEdit, cxMaskEdit, Vcl.TabNotBk, cxCheckBox, cxLabel, cxDBLookupComboBox,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue,strUtils, Vcl.Buttons;

type
  TF_Faturamento = class(TF_AbstratoButtons)
    TabbedNotebook1: TTabbedNotebook;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    chkFatAverbacao: TcxDBCheckBox;
    Label1: TLabel;
    edtMotivoAVerbacao: TcxDBTextEdit;
    Bevel3: TBevel;
    cxDBCheckBox1: TcxDBCheckBox;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Bevel1: TBevel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Bevel2: TBevel;
    Bevel4: TBevel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBComboBox2: TcxDBComboBox;
    cxGroupBox3: TcxGroupBox;
    Label7: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxGroupBox4: TcxGroupBox;
    Label8: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBCheckBox9: TcxDBCheckBox;
    cxGroupBox5: TcxGroupBox;
    Label10: TLabel;
    cxGroupBox6: TcxGroupBox;
    Label11: TLabel;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBComboBox3: TcxDBComboBox;
    cxGroupBox7: TcxGroupBox;
    Label12: TLabel;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxGroupBox8: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBCheckBox13: TcxDBCheckBox;
    cxGroupBox9: TcxGroupBox;
    Label15: TLabel;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxGroupBox10: TcxGroupBox;
    Label16: TLabel;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxGroupBox11: TcxGroupBox;
    Label17: TLabel;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBComboBox4: TcxDBComboBox;
    GroupBox1: TGroupBox;
    cxGroupBox12: TcxGroupBox;
    Label18: TLabel;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxGroupBox13: TcxGroupBox;
    Label19: TLabel;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBSpinEdit5: TcxDBSpinEdit;
    cxGroupBox14: TcxGroupBox;
    Label20: TLabel;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxGroupBox15: TcxGroupBox;
    Label21: TLabel;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBCalcEdit6: TcxDBCalcEdit;
    GroupBox2: TGroupBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxGroupBox16: TcxGroupBox;
    cxDBCheckBox7: TcxDBCheckBox;
    GroupBox3: TGroupBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxGroupBox17: TcxGroupBox;
    cxDBCheckBox15: TcxDBCheckBox;
    GroupBox4: TGroupBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxGroupBox18: TcxGroupBox;
    cxDBCheckBox26: TcxDBCheckBox;
    GroupBox5: TGroupBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxGroupBox19: TcxGroupBox;
    cxDBCheckBox20: TcxDBCheckBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    PnlNome: TPanel;
    lblCliente: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    oCdsFaixaEmp: TClientDataSet;
    dsFaixaEmp: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1InicioFaixa: TcxGridDBColumn;
    cxGridDBTableView1FimFaixa: TcxGridDBColumn;
    cxGridDBTableView1Valor: TcxGridDBColumn;
    oCdsFaixaAverba: TClientDataSet;
    dsFaixaAverba: TDataSource;
    oCdsFaixaAverbaId: TIntegerField;
    oCdsFaixaAverbaIdFaturamento: TIntegerField;
    oCdsFaixaAverbaInicioFaixa: TIntegerField;
    oCdsFaixaAverbaFimFaixa: TIntegerField;
    oCdsFaixaAverbaValor: TFloatField;
    oCdsFaixaAverbaDtInc: TDateField;
    oCdsFaixaAverbaUsuInc: TWideStringField;
    oCdsFaixaAverbaDtAlt: TDateField;
    oCdsFaixaAverbaUsuAlt: TWideStringField;
    cxGrid1DBTableView1InicioFaixa: TcxGridDBColumn;
    cxGrid1DBTableView1FimFaixa: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    oCdsFaixaEmpId: TIntegerField;
    oCdsFaixaEmpIdFaturamento: TIntegerField;
    oCdsFaixaEmpInicioFaixa: TIntegerField;
    oCdsFaixaEmpFimFaixa: TIntegerField;
    oCdsFaixaEmpValor: TFloatField;
    oCdsFaixaEmpDtInc: TDateField;
    oCdsFaixaEmpUsuInc: TWideStringField;
    oCdsFaixaEmpDtAlt: TDateField;
    oCdsFaixaEmpUsuAlt: TWideStringField;
    Panel7: TPanel;
    cxGroupBox20: TcxGroupBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cdsFat_OutrosProdutos: TClientDataSet;
    dsFat_OutrosProdutos: TDataSource;
    cdsFat_OutrosProdutosId: TIntegerField;
    cdsFat_OutrosProdutosIdFaturamento: TIntegerField;
    cdsFat_OutrosProdutosDescricao: TWideStringField;
    cdsFat_OutrosProdutosTipoCobranca: TWideStringField;
    cdsFat_OutrosProdutosPeriodoCobranca: TWideStringField;
    cdsFat_OutrosProdutosQtde: TIntegerField;
    cdsFat_OutrosProdutosValor: TFloatField;
    cdsFat_OutrosProdutosValorTotal: TFloatField;
    cdsFat_OutrosProdutosDtInc: TDateField;
    cdsFat_OutrosProdutosUsuInc: TWideStringField;
    cdsFat_OutrosProdutosDtAlt: TDateField;
    cdsFat_OutrosProdutosUsuAlt: TWideStringField;
    cxGridDBTableView2Descricao: TcxGridDBColumn;
    cxGridDBTableView2TipoCobranca: TcxGridDBColumn;
    cxGridDBTableView2PeriodoCobranca: TcxGridDBColumn;
    cxGridDBTableView2Qtde: TcxGridDBColumn;
    cxGridDBTableView2Valor: TcxGridDBColumn;
    cxGridDBTableView2ValorTotal: TcxGridDBColumn;
    dsFatParOutros: TDataSource;
    cdsFatParOutros: TClientDataSet;
    cdsFatParOutrosId: TIntegerField;
    cdsFatParOutrosDescricao: TWideStringField;
    cdsFatParOutrosValor: TFloatField;
    cdsFatParOutrosTipoCobranca: TWideStringField;
    cdsFatParOutrosPeriodoCobranca: TWideStringField;
    cdsFatParOutrosDtInc: TDateField;
    cdsFatParOutrosUsuInc: TWideStringField;
    cdsFatParOutrosDtAlt: TDateField;
    cdsFatParOutrosUsuAlt: TWideStringField;
    oCdsid: TIntegerField;
    oCdsfat_terminal: TWideStringField;
    oCdsfat_averbacao: TBooleanField;
    oCdsfat_aver_motivo: TWideStringField;
    oCdsfat_aver_aagaup: TBooleanField;
    oCdsfat_aver_paga: TWideStringField;
    oCdsfat_aver_pagaporup: TBooleanField;
    oCdsfat_aver_pagapor: TWideStringField;
    oCdsfat_aver_diafechamentoup: TIntegerField;
    oCdsfat_aver_emiteboletodiasup: TBooleanField;
    oCdsfat_aver_emiteboletodias: TIntegerField;
    oCdsfat_aver_emiteboleto: TBooleanField;
    oCdsfat_aver_emitenfse: TBooleanField;
    oCdsfat_empresarial: TBooleanField;
    oCdsfat_emp_motivo: TWideStringField;
    oCdsfat_emp_pagaup: TBooleanField;
    oCdsfat_emp_paga: TWideStringField;
    oCdsfat_emp_diafechamentoup: TBooleanField;
    oCdsfat_emp_diafechamento: TIntegerField;
    oCdsfat_emp_emiteboletodiasup: TBooleanField;
    oCdsfat_emp_emiteboletodias: TIntegerField;
    oCdsfat_emp_emiteboleto: TBooleanField;
    oCdsfat_emp_emitenfse: TBooleanField;
    oCdsfat_emp_vlrcaixaprincipalup: TBooleanField;
    oCdsfat_emp_vlrcaixaprincipal: TFloatField;
    oCdsfat_emp_vlrcaixaadicionalup: TBooleanField;
    oCdsfat_emp_vlrcaixaadicional: TFloatField;
    oCdsfat_emp_cobraporup: TBooleanField;
    oCdsfat_emp_cobrapor: TWideStringField;
    oCdsfat_edi: TBooleanField;
    oCdsfat_edi_motivo: TWideStringField;
    oCdsfat_edi_emiteboleto: TBooleanField;
    oCdsfat_edi_emitenfse: TBooleanField;
    oCdsfat_edi_vlrcxpostalup: TFloatField;
    oCdsfat_edi_vlrcxpostal: TFloatField;
    oCdsfat_edi_diafechamentoup: TBooleanField;
    oCdsfat_edi_diafechamento: TIntegerField;
    oCdsfat_edi_vlrkbadicionalup: TBooleanField;
    oCdsfat_edi_vlrkbadicional: TFloatField;
    oCdsfat_edi_franquiaup: TBooleanField;
    oCdsfat_edi_franquia: TFloatField;
    oCdsfat_outros: TBooleanField;
    oCdsfat_outros_motivo: TWideStringField;
    oCdsfat_outros_diafechamentoup: TBooleanField;
    oCdsfat_outros_diafechamento: TIntegerField;
    oCdsfat_outros_emiteboleto: TBooleanField;
    oCdsfat_outros_emitenfse: TBooleanField;
    oCdsfat_gerais_agr_averbacao: TBooleanField;
    oCdsfat_gerais_agr_edi: TBooleanField;
    oCdsfat_gerais_agr_empresarial: TBooleanField;
    oCdsfat_gerais_agr_outros: TBooleanField;
    oCdsdtinc: TDateField;
    oCdsusuinc: TWideStringField;
    oCdsdtalt: TDateField;
    oCdsusualt: TWideStringField;
    oCdsfat_tipo_cliente: TWideStringField;
    oCdsfat_aver_vlrpordocumentototalup: TBooleanField;
    oCdsfat_aver_vlrpordocumentototal: TFloatField;
    oCdsfat_aver_vlrpordocumentoparcial: TFloatField;
    oCdsfat_aver_vlrpordocumentoparcialup: TBooleanField;
    oCdsfat_aver_diafechamento: TIntegerField;
    cdsFat_emails: TClientDataSet;
    dsFat_emails: TDataSource;
    Panel8: TPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cdsFat_emailsid: TIntegerField;
    cdsFat_emailsemails: TWideStringField;
    cdsFat_emailsid_faturamento: TIntegerField;
    cxGridDBTableView4emails: TcxGridDBColumn;
    btnOnCheckAll: TAdvGlassButton;
    cxDBCheckBox31: TcxDBCheckBox;
    Panel9: TPanel;
    cxGroupBox21: TcxGroupBox;
    Label22: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    oCdsfat_aver_tp_pgto_defalt: TWideStringField;
    cxGroupBox22: TcxGroupBox;
    Label5: TLabel;
    cxDBCalcEdit7: TcxDBCalcEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCalcEdit1: TcxDBCalcEdit;
    lblCaptionCorrSegur: TLabel;
    cxDBCheckBox10: TcxDBCheckBox;
    Panel10: TPanel;
    AdvGlassButton1: TAdvGlassButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    oCdsRelations_ex: TClientDataSet;
    dsRelations_ex: TDataSource;
    cxGridDBTableView3rex_terminalp: TcxGridDBColumn;
    cxGridDBTableView3rex_terminals: TcxGridDBColumn;
    SpeedButton1: TSpeedButton;
    oCdsRelationsInsert: TClientDataSet;
    dsRelationsInsert: TDataSource;
    oCdsRelationsInsertrex_id: TIntegerField;
    oCdsRelationsInsertrex_terminalp: TWideStringField;
    oCdsRelationsInsertrex_terminals: TWideStringField;
    oCdsRelationsInsertrex_usu_inc: TWideStringField;
    oCdsRelationsInsertrex_data_inc: TDateTimeField;
    oCdsRelationsInsertdtinc: TDateField;
    oCdsRelationsInsertusuinc: TWideStringField;
    oCdsRelationsInsertdtalt: TDateField;
    oCdsRelationsInsertusualt: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure chkFatAverbacaoClick(Sender: TObject);
    procedure oCdsFaixaAverbaBeforePost(DataSet: TDataSet);
    procedure ActEditarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure oCdsFaixaEmpBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView2DescricaoPropertiesChange(Sender: TObject);
    procedure cdsFat_OutrosProdutosBeforePost(DataSet: TDataSet);
    procedure cdsFat_OutrosProdutosQtdeChange(Sender: TField);
    procedure cdsFat_OutrosProdutosValorChange(Sender: TField);
    procedure oCdsFaixaEmpAfterDelete(DataSet: TDataSet);
    procedure oCdsFaixaAverbaAfterDelete(DataSet: TDataSet);
    procedure cdsFat_emailsBeforePost(DataSet: TDataSet);
    procedure btnOnCheckAllClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
   sTpCliente   : String;
   sNomeCliente : String;
   sTerminal    : String;
    { Public declarations }
  end;

var
  F_Faturamento: TF_Faturamento;

implementation

{$R *.dfm}

uses UDM, U_TrataExcecoes, U_FuncServer;

procedure TF_Faturamento.ActEditarExecute(Sender: TObject);
begin
  inherited;
   dsFaixaAverba.AutoEdit                 := True;
   dsFaixaEmp.AutoEdit                    := True;
   dsFat_OutrosProdutos.AutoEdit          := True;
   cxGridDBTableView1.Navigator.Visible   := True;
   cxGrid1DBTableView1.Navigator.Visible  := True;
   cxGridDBTableView2.Navigator.Visible   := True;
   //cxGridDBTableView3.Navigator.Visible   := True;
   cxGridDBTableView4.Navigator.Visible   := True;

   btnOnCheckAll.Enabled                  := True;

end;

procedure TF_Faturamento.ActSalvarExecute(Sender: TObject);
Var
   fLastValue,fFirstValue  : Integer;
   iLinhas                 : integer;
   iRecNo                  : Integer;
begin
   //Verifica os valore da faixa da averbação
   oCdsFaixaAverba.DisableControls;
   oCdsFaixaAverba.First;
   fLastValue  := 0;
   fFirstValue := 0;
   iLinhas     := 0;
   iRecNo      := 0;
   iLinhas     := oCdsFaixaAverba.RecordCount;
   while not oCdsFaixaAverba.Eof do
   begin
      fLastValue  := oCdsFaixaAverbaFimFaixa.AsInteger;
      oCdsFaixaAverba.Next;
      fFirstValue := oCdsFaixaAverbaInicioFaixa.AsInteger;
      inc(iRecNo);
      if not(fLastValue + 1 = fFirstValue) and not (iRecNo >= iLinhas) then
      begin
         DM.tmsMSG('Informação','Os valores da faixa estão inconsistentes. Favor verificar !');
         oCdsFaixaAverba.EnableControls;
         Abort;
      end;
   end;
   oCdsFaixaAverba.EnableControls;

   //Verifica os valore da faixa empresarial
   oCdsFaixaEmp.DisableControls;
   oCdsFaixaEmp.First;
   fLastValue  := 0;
   fFirstValue := 0;
   iLinhas     := 0;
   iRecNo      := 0;
   iLinhas     := oCdsFaixaEmp.RecordCount;
   while not oCdsFaixaEmp.Eof do
   begin
      fLastValue  := oCdsFaixaEmpFimFaixa.AsInteger;
      oCdsFaixaEmp.Next;
      fFirstValue := oCdsFaixaEmpInicioFaixa.AsInteger;
      inc(iRecNo);
      if not(fLastValue + 1 = fFirstValue) and not (iRecNo >= iLinhas) then
      begin
         DM.tmsMSG('Informação','Os valores da faixa estão inconsistentes. Favor verificar !');
         oCdsFaixaEmp.EnableControls;
         Abort;
      end;
   end;
   oCdsFaixaEmp.EnableControls;


   if not(oCdsFaixaAverba.State in [dsBrowse]) then
   begin
      oCdsFaixaAverba.Post;
      oCdsFaixaAverba.ApplyUpdates(-1);
   end;
   if not(oCdsFaixaEmp.State in [dsBrowse]) then
   begin
      oCdsFaixaEmp.Post;
      oCdsFaixaEmp.ApplyUpdates(-1);
   end;
   if not (cdsFat_OutrosProdutos.State in [dsBrowse]) then
   begin
      cdsFat_OutrosProdutos.Post;
      cdsFat_OutrosProdutos.ApplyUpdates(-1);
   end;
  inherited;
   dsFaixaAverba.AutoEdit                 := False;
   dsFaixaEmp.AutoEdit                    := False;
   dsFat_OutrosProdutos.AutoEdit          := False;
   cxGridDBTableView1.Navigator.Visible   := False;
   cxGrid1DBTableView1.Navigator.Visible  := False;
   cxGridDBTableView2.Navigator.Visible   := False;
   //cxGridDBTableView3.Navigator.Visible   := False;
   cxGridDBTableView4.Navigator.Visible   := False;

   btnOnCheckAll.Enabled                  := False;
end;



procedure TF_Faturamento.AdvGlassButton1Click(Sender: TObject);
Var
   sFantasia,sTerminal : String;
begin
  inherited;
   F_TrataExcecoes := TF_TrataExcecoes.Create(nil);
   F_TrataExcecoes.ListBox1.Clear;
   F_TrataExcecoes.oCds.Open;
   F_TrataExcecoes.oCds.First;
   while not F_TrataExcecoes.oCds.Eof do
   begin
      F_TrataExcecoes.ListBox1.Items.Add(F_TrataExcecoes.oCds.FieldByName('te_terminal').AsString + '-' + F_TrataExcecoes.oCds.FieldByName('cl_fantasia').AsString);
      F_TrataExcecoes.oCds.Next;
   end;
   oCdsRelations_ex.DisableControls;
   while not oCdsRelations_ex.Eof do
   begin
      F_TrataExcecoes.ListBox2.Items.Add(oCdsRelations_ex.FieldByName('rex_terminals').AsString + '-' + oCdsRelations_ex.FieldByName('cl_fantasia').AsString);
      oCdsRelations_ex.Next;
   end;
   F_TrataExcecoes.ShowModal;
   F_TrataExcecoes.Free;
end;

procedure TF_Faturamento.btnOnCheckAllClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
   for I := 0 to ComponentCount - 1 do
   begin
      if Components[i] is TcxDBCheckBox then
      begin
         TcxDBCheckBox(Components[i]).Checked := True;
      end;
   end;
end;

procedure TF_Faturamento.chkFatAverbacaoClick(Sender: TObject);
begin
  inherited;
   edtMotivoAVerbacao.Enabled := not(chkFatAverbacao.Checked);
end;

procedure TF_Faturamento.cdsFat_emailsBeforePost(DataSet: TDataSet);
begin
  inherited;
   cdsFat_emailsid_faturamento.AsInteger := oCdsId.AsInteger;
end;

procedure TF_Faturamento.cdsFat_OutrosProdutosBeforePost(DataSet: TDataSet);
begin
  inherited;
   cdsfat_OutrosprodutosIdFaturamento.AsInteger := oCdsId.AsInteger;
end;

procedure TF_Faturamento.cdsFat_OutrosProdutosQtdeChange(Sender: TField);
begin
  inherited;
   cdsFat_OutrosProdutosValorTotal.AsFloat         := cdsFat_OutrosProdutosValor.AsFloat * cdsFat_OutrosProdutosQtde.AsInteger;
end;

procedure TF_Faturamento.cdsFat_OutrosProdutosValorChange(Sender: TField);
begin
  inherited;
   cdsFat_OutrosProdutosValorTotal.AsFloat         := cdsFat_OutrosProdutosValor.AsFloat * cdsFat_OutrosProdutosQtde.AsInteger;
end;

procedure TF_Faturamento.cxGridDBTableView2DescricaoPropertiesChange(Sender: TObject);
begin
  inherited;
   //cdsFat_OutrosProdutosDescricao.AsString         := cdsFatParOutrosDescricao.AsString;
   cdsFat_OutrosProdutosTipoCobranca.AsString      := cdsFatParOutrosTipoCobranca.AsString;
   cdsFat_OutrosProdutosPeriodoCobranca.AsString   := cdsFatParOutrosPeriodoCobranca.AsString;
   cdsFat_OutrosProdutosQtde.AsInteger             := 1;
   cdsFat_OutrosProdutosValor.AsFloat              := cdsFatParOutrosValor.AsFloat;
   cdsFat_OutrosProdutosValorTotal.AsFloat         := cdsFat_OutrosProdutosValor.AsFloat * cdsFat_OutrosProdutosQtde.AsInteger;
end;

procedure TF_Faturamento.FormShow(Sender: TObject);
begin
  inherited;
   if sTpCliente = 'C' then
   begin
      cxGroupBox5.Visible   := False;
      cxGroupBox22.Visible  := False;
   end
   else if sTpCliente = 'S' then
   begin
      cxGroupBox5.Visible   := True;
      cxGroupBox22.Visible  := True;
   end;
   lblCliente.Caption := sNomeCliente;
   if sTerminal <> '' then
   begin
      if oCds.Locate('fat_terminal', sTerminal, []) then
      begin
         //oCds.Edit;
      end
      else
      begin
         oCds.Insert;
         oCdsfat_terminal.AsString     := sTerminal;
         oCdsfat_tipo_cliente.AsString := UpperCase(sTpCliente);
         oCds.Post;
         oCds.ApplyUpdates(-1);
         oCds.Close;
         oCds.Open;
         oCds.Locate('fat_terminal', sTerminal, []);
         //oCds.Edit;
      end;
      oCdsFaixaAverba.Close;
      oCdsFaixaAverba.Filter     := 'IdFaturamento = ' + oCdsId.AsString;
      oCdsFaixaAverba.Filtered   := True;
      oCdsFaixaAverba.Open;

      oCdsFaixaEmp.Close;
      oCdsFaixaEmp.Filter     := 'IdFaturamento = ' + oCdsId.AsString;
      oCdsFaixaEmp.Filtered   := True;
      oCdsFaixaEmp.Open;

      cdsFat_OutrosProdutos.Close;
      cdsFat_OutrosProdutos.Filter     := 'IdFaturamento = ' + oCdsId.AsString;
      cdsFat_OutrosProdutos.Filtered   := True;
      cdsFat_OutrosProdutos.Open;

      cdsFat_emails.Close;
      cdsFat_emails.Filter     := 'Id_Faturamento = ' + oCdsId.AsString;
      cdsFat_emails.Filtered   := True;
      cdsFat_emails.Open;

      oCdsRelations_ex.Close;
      DM.SMGen.putQryRelations_ex(sTerminal);
      oCdsRelations_ex.Open;
   end
   else
   begin

   end;
   cdsFatParOutros.Open;
end;

procedure TF_Faturamento.oCdsFaixaAverbaAfterDelete(DataSet: TDataSet);
begin
  inherited;
   oCdsFaixaAverba.ApplyUpdates(-1);
end;

procedure TF_Faturamento.oCdsFaixaAverbaBeforePost(DataSet: TDataSet);
begin
  inherited;
   oCdsFaixaAverbaIdFaturamento.AsInteger := oCdsId.AsInteger;
end;

procedure TF_Faturamento.oCdsFaixaEmpAfterDelete(DataSet: TDataSet);
begin
  inherited;
      oCdsFaixaEmp.ApplyUpdates(-1);
end;

procedure TF_Faturamento.oCdsFaixaEmpBeforePost(DataSet: TDataSet);
begin
  inherited;
   oCdsFaixaEmpIdFaturamento.AsInteger    := oCdsId.AsInteger;
end;

end.

//todo: tirar o tipo de pagamento parcial ou total, porque se estiver faturado o pagamento é parcial (no caso das corretoras)

