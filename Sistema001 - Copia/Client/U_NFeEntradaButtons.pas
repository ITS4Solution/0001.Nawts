unit U_NFeEntradaButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  cxMemo, frxClass, frxDBSet, cxButtonEdit, frxExportPDF, shellapi, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCurrencyEdit;

type
  TF_NFeEntradaButtons = class(TF_AbstratoButtons)
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    ocdsFornecedor: TClientDataSet;
    ocdsFornecedorid: TIntegerField;
    ocdsFornecedornome_razaosocial: TStringField;
    dsFornecedor: TDataSource;
    Label10: TLabel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    oCdsNFeEntradaItens: TClientDataSet;
    dsNFeEntradaItens: TDataSource;
    cxGrid1DBTableView1codproduto: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cxGrid1DBTableView1qtde: TcxGridDBColumn;
    cxGrid1DBTableView1vlrunitario: TcxGridDBColumn;
    cxGrid1DBTableView1valoripi: TcxGridDBColumn;
    oCdsInsumos: TClientDataSet;
    dsInsumos: TDataSource;
    cxGrid1DBTableView1item: TcxGridDBColumn;
    cxGrid1DBTableView1ncm: TcxGridDBColumn;
    cdstblEstoqueInsumos: TClientDataSet;
    cdstblEstoqueInsumosid: TIntegerField;
    cdstblEstoqueInsumosidnfeentrada: TIntegerField;
    cdstblEstoqueInsumosidinsumo: TIntegerField;
    DBComboBox1: TDBComboBox;
    Label11: TLabel;
    cxDBMemo1: TcxDBMemo;
    ReportNFe: TfrxReport;
    DBNfeID: TfrxDBDataset;
    DBEntradaItens: TfrxDBDataset;
    cdstblEstoqueInsumostipo: TStringField;
    cdstblEstoqueInsumosdata: TDateField;
    ReportMP: TfrxReport;
    cdstblEstoqueInsumosobs: TStringField;
    cdstblEstoqueInsumosquantd: TSingleField;
    cxGrid1DBTableView1validade: TcxGridDBColumn;
    cxGrid1DBTableView1valortotal: TcxGridDBColumn;
    ocdsFornecedorcodfornecedor: TIntegerField;
    cxGrid1DBTableView1sequencial: TcxGridDBColumn;
    oCdsNFeEntradaItensid: TIntegerField;
    oCdsNFeEntradaItensitem: TIntegerField;
    oCdsNFeEntradaItensncm: TStringField;
    oCdsNFeEntradaItenscodproduto: TStringField;
    oCdsNFeEntradaItensqtde: TSingleField;
    oCdsNFeEntradaItensvaloripi: TSingleField;
    oCdsNFeEntradaItensvalortotal: TSingleField;
    oCdsNFeEntradaItenscodfornecedor: TIntegerField;
    oCdsNFeEntradaItenscodfiscal: TStringField;
    oCdsNFeEntradaItensvlrunitario: TSingleField;
    oCdsNFeEntradaItenslote: TStringField;
    oCdsNFeEntradaItensvalidade: TDateField;
    oCdsNFeEntradaItensnroregistro: TIntegerField;
    oCdsNFeEntradaItenspercentagemicms: TSingleField;
    oCdsNFeEntradaItensteveaumento: TSmallintField;
    oCdsNFeEntradaItensgeraetiqueta: TSmallintField;
    oCdsNFeEntradaItenscadastradf: TSmallintField;
    oCdsNFeEntradaItenssequencial: TIntegerField;
    oCdsNFeEntradaItenscodnfeentrada: TIntegerField;
    oCdsNFeEntradaItensUE: TStringField;
    oCdsNFeEntradaItenssnomeproduto: TStringField;
    cdsNfeID: TClientDataSet;
    cdsNfeIDid: TIntegerField;
    cdsNfeIDnronfe: TIntegerField;
    cdsNfeIDserienfe: TIntegerField;
    cdsNfeIDdata: TDateField;
    cdsNfeIDcodfiscal: TIntegerField;
    cdsNfeIDcodfornecedor: TIntegerField;
    cdsNfeIDcondpagamento: TStringField;
    cdsNfeIDdetalhepagamento: TStringField;
    cdsNfeIDtipomaterial: TStringField;
    cdsNfeIDvalornfe: TSingleField;
    cdsNfeIDvalorcalculado: TSingleField;
    cdsNfeIDobs: TMemoField;
    cdsNfeIDsNomeF: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    oCdsNFeEntradaItenssumNFE: TAggregateField;
    frxPDFExport1: TfrxPDFExport;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    oCdsInsumosid: TIntegerField;
    oCdsInsumoscodigo: TStringField;
    oCdsInsumosue: TStringField;
    oCdsInsumoslitragem: TSingleField;
    oCdsInsumosdescricao: TStringField;
    oCdsInsumostipo: TStringField;
    oCdsInsumosestoqueminimo: TSingleField;
    oCdsInsumosestoquemaximo: TSingleField;
    cxGrid1DBTableView1percentagemicms: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    oCdsid: TIntegerField;
    oCdsnronfe: TIntegerField;
    oCdsserienfe: TIntegerField;
    oCdsdata: TDateField;
    oCdscodfiscal: TIntegerField;
    oCdscodfornecedor: TIntegerField;
    oCdscondpagamento: TStringField;
    oCdsdetalhepagamento: TStringField;
    oCdsobs: TMemoField;
    cdsSUM: TClientDataSet;
    cdsSUMVALORTOTAL: TFloatField;
    DBSum: TfrxDBDataset;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cdsNfeIDiCodForn: TIntegerField;
    cdsSUMNomeForne: TStringField;
    cdsSUMCodForne: TIntegerField;
    oCdsNFeEntradaItenssNomeForn: TStringField;
    oCdsNFeEntradaItensiCodForn: TIntegerField;
    btnImprimi: TAdvGlassButton;
    oCdstipomaterial: TStringField;
    oCdsvalornfe: TSingleField;
    oCdsvalorcalculado: TSingleField;
    oCdslote: TIntegerField;
    cdstblEstoqueInsumosidordemenvase: TIntegerField;
    cdstblEstoqueInsumosidordemquimico: TIntegerField;
    cdstblEstoqueInsumosidproduto: TIntegerField;
    DBInsumo: TfrxDBDataset;
    oCdsInsumossCod: TStringField;
    oCdsNFeEntradaItenssCodInsumo: TStringField;
    cdsNomePr: TClientDataSet;
    dsNomePr: TDataSource;
    cdsNomePrdescricao: TStringField;
    cdsImp: TClientDataSet;
    dsImp: TDataSource;
    cdsImpid: TIntegerField;
    cdsImpcodnfeentrada: TIntegerField;
    cdsImpcodproduto: TStringField;
    cdsImpUE: TStringField;
    cdsImpqtde: TSingleField;
    cdsImpvlrunitario: TSingleField;
    cdsImpvaloripi: TSingleField;
    cdsImpvalortotal: TSingleField;
    cdsImpcodfornecedor: TIntegerField;
    cdsImpcodfiscal: TStringField;
    cdsImplote: TStringField;
    cdsImpvalidade: TDateField;
    cdsImpnroregistro: TIntegerField;
    cdsImppercentagemicms: TSingleField;
    cdsImpteveaumento: TSmallintField;
    cdsImpgeraetiqueta: TSmallintField;
    cdsImpcadastradf: TSmallintField;
    cdsImpncm: TStringField;
    cdsImpitem: TIntegerField;
    cdsImpsequencial: TIntegerField;
    cdsImpdescricao: TStringField;
    dbItens: TfrxDBDataset;
    cdsImpcodigo: TStringField;
    cdstblEstoqueInsumoslote: TStringField;
    cdstblEstoqueInsumosdataval: TDateField;
    recSeq: TPanel;
    Label7: TLabel;
    edtSeq: TEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    btnCI: TAdvGlassButton;
    oCdsInsumoslote: TStringField;
    oCdsInsumossProduto: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure oCdsNFeEntradaItensAfterInsert(DataSet: TDataSet);
    procedure ActEditarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ActDeletarExecute(Sender: TObject);
    procedure oCdsNFeEntradaItensCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView1sImprimirPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsNfeIDCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure oCdsNFeEntradaItensvlrunitarioChange(Sender: TField);
    procedure oCdsNFeEntradaItenscodprodutoChange(Sender: TField);
    procedure oCdsNFeEntradaItensvaloripiChange(Sender: TField);
    procedure oCdsNFeEntradaItenspercentagemicmsChange(Sender: TField);
    procedure cdsSUMCalcFields(DataSet: TDataSet);
    procedure btnImprimiClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSeqClick(Sender: TObject);
    procedure oCdsNFeEntradaItensBeforePost(DataSet: TDataSet);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure btnCIClick(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1codprodutoPropertiesCloseUp(Sender: TObject);
    procedure oCdsInsumosCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
   sState : String;

    { Public declarations }
  end;

var
  F_NFeEntradaButtons: TF_NFeEntradaButtons;

implementation

{$R *.dfm}

uses UDM, U_NFeEntradaGrid, U_ComunicadoInterno;

procedure TF_NFeEntradaButtons.ActDeletarExecute(Sender: TObject);
begin
  DM.opencnn;
  dm.SMGen.DeletaNFeEntrada(oCdsid.AsInteger);
  dm.SMGen.DeletaEstoqueInsumos(oCdsid.AsInteger);
  DM.closecnn;

  oCdsNFeEntradaItens.Open;
  oCdsInsumos.Edit;
  oCdsNFeEntradaItens.First;
  while not oCdsNFeEntradaItens.Eof do
  begin
      oCdsNFeEntradaItens.Edit;
     if oCdsInsumostipo.AsString = 'Mat. Prima' then
     begin
       DM.opencnn;
       oCdsNFeEntradaItenssequencial.AsInteger := dm.SMGen.DeleteIdSequencial;
       DM.closecnn;
     end
     else if oCdsInsumostipo.AsString = 'Embalagem' then
     begin
       oCdsNFeEntradaItenssequencial.AsInteger := 0
     end
     else if oCdsInsumostipo.AsString = 'Uso Interno' then
     begin
       oCdsNFeEntradaItenssequencial.AsInteger := 0;
     end;

      oCdsNFeEntradaItens.Next;
  end;
  oCdsNFeEntradaItens.Close;

  dm.opencnn;
  dm.SMGen.DeletaNFeItens(oCdsid.AsInteger);
  dm.closecnn;

 inherited;
end;

procedure TF_NFeEntradaButtons.ActEditarExecute(Sender: TObject);
begin
  inherited;
   oCdsNFeEntradaItens.Edit;
   cdsImp.Edit;
   cdsNfeID.Edit;
   oCdsInsumos.Edit;
   cxGrid1DBTableView1.Navigator.Visible := True;
end;

procedure TF_NFeEntradaButtons.ActSalvarExecute(Sender: TObject);
Var
   sState   : String;
   sValorNF : Double;
   bPassou : boolean;
begin
   bPassou := True;
   oCdsNFeEntradaItens.First;
//   while not oCdsNFeEntradaItens.Eof do
//   begin
//      oCdsNFeEntradaItens.Next;
//      if oCdsNFeEntradaItenslote.AsString = '' then
//      begin
//         bPassou := False;
//         ShowMessage('Nenhum Lote pode ficar vazio !');
//         break;
//      end;
//      if oCdsNFeEntradaItensvalidade.AsDateTime < now() then
//      begin
//         bPassou := False;
//         ShowMessage('A data não pode fica vazia ou menor que a data de hoje !');
//         break;
//      end;
//   end;


   if bPassou = true then
   begin
   if cxDBLookupComboBox1.ItemIndex = -1 then
   begin
     ShowMessage ('Campo fornecedor é obrigatório');
   end
   else
   begin
   if DM.tmsMSGQ('Informação','Esta operação irá alimentar o estoque. Deseja continuar ?') = mrOk then
   begin
      if oCds.State in [dsEdit] then
      begin
         sState := 'ED';
      end
      Else if oCds.State in [dsInsert] then
      begin
         sState := 'IN';
//         oCdsNFeEntradaItens.Edit;
//         oCdsNFeEntradaItens.Post;
         oCdsNFeEntradaItens.ApplyUpdates(-1);
         cxGrid1DBTableView1.Navigator.Visible := False;
         oCds.Post;
         oCds.ApplyUpdates(-1);
      end;
   end;


      //Alimenta o estoque
      if sState = 'ED' then
      begin
         recSeq.Visible := True;
         recSEQ.Enabled := True;
      end
      else if sState = 'IN' then
      begin
         //Alimenta o estoque com novo regitro
         oCds.edit;
         oCdsNFeEntradaItens.First;

         while not oCdsNFeEntradaItens.Eof do
         begin
            cdstblEstoqueInsumos.Close;
            cdstblEstoqueInsumos.Params[0].Value := oCdsNFeEntradaItenscodnfeentrada.AsInteger;
            cdstblEstoqueInsumos.Params[1].Value := oCdsNFeEntradaItenscodproduto.AsInteger;
            cdstblEstoqueInsumos.Open;

            cdstblEstoqueInsumos.Insert;

            cdstblEstoqueInsumosidnfeentrada.AsInteger := oCdsNFeEntradaItenscodnfeentrada.AsInteger;
            cdstblEstoqueInsumosidinsumo.AsInteger     := oCdsNFeEntradaItenscodproduto.AsInteger;
            cdstblEstoqueInsumosquantd.AsFloat         := oCdsNFeEntradaItensqtde.AsInteger; ///*1000
            cdstblEstoqueInsumosdata.AsDateTime        := oCdsNFeEntradaItensvalidade.AsDateTime;
            cdstblEstoqueInsumoslote.AsString          := oCdsNFeEntradaItenslote.AsString;
            cdstblEstoqueInsumosdataval.AsDateTime     := oCdsNFeEntradaItensvalidade.AsDateTime;

            if oCdsNFeEntradaItenssequencial.AsInteger > 0 then
            begin
               cdstblEstoqueInsumostipo.AsString := 'Mat. Prima';
            end
            else
            begin
               cdstblEstoqueInsumostipo.AsString := 'Embalagem';
            end;

            cdstblEstoqueInsumos.Post;
            cdstblEstoqueInsumos.ApplyUpdates(-1);
            oCdsNFeEntradaItens.Next;
         end;

         oCdsInsumos.Close;
         oCdsInsumos.Open;
         ocdsFornecedor.Close;
         ocdsFornecedor.Open;
         oCdsNFeEntradaItens.Close;
         oCdsNFeEntradaItens.Params[0].Value := oCdsid.AsInteger;
         oCdsNFeEntradaItens.Open;
         cdstblEstoqueInsumos.Close;


         oCdsNFeEntradaItensitem.ReadOnly         :=    True;
         oCdsNFeEntradaItenscodproduto.ReadOnly   :=    True;
         oCdsNFeEntradaItensvalidade.ReadOnly     :=    True;
         oCdsNFeEntradaItensNCM.ReadOnly          :=    True;
         oCdsNFeEntradaItensUE.ReadOnly           :=    True;
         oCdsNFeEntradaItensqtde.ReadOnly         :=    True;
         oCdsNFeEntradaItensvlrunitario.ReadOnly  :=    True;
         oCdsNFeEntradaItensvaloripi.ReadOnly     :=    True;
         oCds.Post;
         oCds.ApplyUpdates(-1);
      end;
   end;
   end;
end;

procedure TF_NFeEntradaButtons.AdvGlassButton1Click(Sender: TObject);
begin
//  inherited;
   if DM.tmsMSGQ('Informação','Esta operação irá alimentar o estoque. Deseja continuar ?') = mrOk then
   begin
      if oCds.State in [dsEdit] then
      begin
         sState := 'ED';
      end
      Else if oCds.State in [dsInsert] then
      begin
         sState := 'IN';
      end;
      oCdsNFeEntradaItens.Post;
      oCdsNFeEntradaItens.ApplyUpdates(-1);
      cxGrid1DBTableView1.Navigator.Visible := False;
      oCds.Post;
      oCds.ApplyUpdates(-1);

      //Alimenta o estoque
      if sState = 'ED' then
      begin
         oCds.edit;
         oCdsNFeEntradaItens.First;
         //localiza estoque do insumo pelo id nfe de entrada e código do insumo edita e salva
         while not oCdsNFeEntradaItens.Eof do
         begin
            cdstblEstoqueInsumos.Close;
            cdstblEstoqueInsumos.Params[0].Value := oCdsNFeEntradaItenscodnfeentrada.AsInteger;
            cdstblEstoqueInsumos.Params[1].Value := oCdsNFeEntradaItenscodproduto.AsString;
            cdstblEstoqueInsumos.Open;
            if cdstblEstoqueInsumos.RecordCount = 0 then
            begin
               //DM.tmsMSG('Erro','Houve uma falha em achar esse insumo no estoque. Contate o Administrador do sistema !');
            end
            else
            begin
               cdstblEstoqueInsumos.Edit;
               cdstblEstoqueInsumosquantd.AsFloat         := oCdsNFeEntradaItensqtde.AsInteger; ///*1000
               cdstblEstoqueInsumosdata.AsDateTime        := oCdsNFeEntradaItensvalidade.AsDateTime;
               cdstblEstoqueInsumoslote.AsString          := oCdsNFeEntradaItenslote.AsString;
               cdstblEstoqueInsumosdataval.AsDateTime     := oCdsNFeEntradaItensvalidade.AsDateTime;
               cdstblEstoqueInsumos.Post;
               cdstblEstoqueInsumos.ApplyUpdates(-1);
            end;
            oCdsNFeEntradaItens.Next;
         end;
      end
      else if sState = 'IN' then
      begin
         //Alimenta o estoque com novo regitro
         oCds.edit;
         oCdsNFeEntradaItens.First;

         while not oCdsNFeEntradaItens.Eof do
         begin
            cdstblEstoqueInsumos.Close;
            cdstblEstoqueInsumos.Params[0].Value := oCdsNFeEntradaItenscodnfeentrada.AsInteger;
            cdstblEstoqueInsumos.Params[1].Value := oCdsNFeEntradaItenscodproduto.AsInteger;
            cdstblEstoqueInsumos.Open;

            cdstblEstoqueInsumos.Insert;

            cdstblEstoqueInsumosidnfeentrada.AsInteger := oCdsNFeEntradaItenscodnfeentrada.AsInteger;
            cdstblEstoqueInsumosidinsumo.AsInteger     := oCdsNFeEntradaItenscodproduto.AsInteger;
            cdstblEstoqueInsumosquantd.AsFloat         := oCdsNFeEntradaItensqtde.AsInteger; ///*1000
            cdstblEstoqueInsumosdata.AsDateTime        := oCdsNFeEntradaItensvalidade.AsDateTime;
            cdstblEstoqueInsumoslote.AsString          := oCdsNFeEntradaItenslote.AsString;
            cdstblEstoqueInsumosdataval.AsDateTime     := oCdsNFeEntradaItensvalidade.AsDateTime;

            if oCdsNFeEntradaItenssequencial.AsInteger > 0 then
            begin
               cdstblEstoqueInsumostipo.AsString := 'Mat. Prima';
            end
            else
            begin
               cdstblEstoqueInsumostipo.AsString := 'Embalagem';
            end;

            cdstblEstoqueInsumos.Post;
            cdstblEstoqueInsumos.ApplyUpdates(-1);
            oCdsNFeEntradaItens.Next;
         end;

      end;
   end;
   oCdsInsumos.Close;
   oCdsInsumos.Open;
   ocdsFornecedor.Close;
   ocdsFornecedor.Open;
   oCdsNFeEntradaItens.Close;
   oCdsNFeEntradaItens.Params[0].Value := oCdsid.AsInteger;
   oCdsNFeEntradaItens.Open;
   cdstblEstoqueInsumos.Close;


   oCdsNFeEntradaItensitem.ReadOnly         :=    True;
   oCdsNFeEntradaItenscodproduto.ReadOnly   :=    True;
   oCdsNFeEntradaItensvalidade.ReadOnly     :=    True;
   oCdsNFeEntradaItensNCM.ReadOnly          :=    True;
   oCdsNFeEntradaItensUE.ReadOnly           :=    True;
   oCdsNFeEntradaItensqtde.ReadOnly         :=    True;
   oCdsNFeEntradaItensvlrunitario.ReadOnly  :=    True;
   oCdsNFeEntradaItensvaloripi.ReadOnly     :=    True;
   oCds.Post;
   oCds.ApplyUpdates(-1);
   recSeq.Enabled := False;
   recSeq.Visible := False;
end;

procedure TF_NFeEntradaButtons.AdvGlassButton2Click(Sender: TObject);
begin
  //inherited;
  recSeq.Enabled := False;
  recSeq.Visible := False;
end;

procedure TF_NFeEntradaButtons.AdvGlassButton3Click(Sender: TObject);
begin
 DM.opencnn;
 if DM.SMGen.UsoCI(strtoint(edtSeq.Text)) = True then
  begin
     if DM.tmsMSGQ('Informação','Esta operação irá alimentar o estoque. Deseja continuar ?') = mrOk then
     begin
        DM.closecnn;
        if oCds.State in [dsEdit] then
        begin
           sState := 'ED';
        end
        Else if oCds.State in [dsInsert] then
        begin
           sState := 'IN';
        end;
        Try
         oCdsNFeEntradaItens.Post;
        except

        End;
        oCdsNFeEntradaItens.ApplyUpdates(-1);
        cxGrid1DBTableView1.Navigator.Visible := False;
        oCds.Post;
        oCds.ApplyUpdates(-1);

        //Alimenta o estoque
        if sState = 'ED' then
        begin
           oCds.edit;
           oCdsNFeEntradaItens.First;
           //localiza estoque do insumo pelo id nfe de entrada e código do insumo edita e salva
           while not oCdsNFeEntradaItens.Eof do
           begin
              cdstblEstoqueInsumos.Close;
              cdstblEstoqueInsumos.Params[0].Value := oCdsNFeEntradaItenscodnfeentrada.AsInteger;
              cdstblEstoqueInsumos.Params[1].Value := oCdsNFeEntradaItenscodproduto.AsString;
              cdstblEstoqueInsumos.Open;
              if cdstblEstoqueInsumos.RecordCount = 0 then
              begin
                 //DM.tmsMSG('Erro','Houve uma falha em achar esse insumo no estoque. Contate o Administrador do sistema !');
              end
              else
              begin
                 cdstblEstoqueInsumos.Edit;
                 cdstblEstoqueInsumosquantd.AsFloat         := oCdsNFeEntradaItensqtde.AsInteger; ///*1000
                 cdstblEstoqueInsumosdata.AsDateTime        := oCdsNFeEntradaItensvalidade.AsDateTime;
                 cdstblEstoqueInsumoslote.AsString          := oCdsNFeEntradaItenslote.AsString;
                 cdstblEstoqueInsumosdataval.AsDateTime     := oCdsNFeEntradaItensvalidade.AsDateTime;
                 cdstblEstoqueInsumos.Post;
                 cdstblEstoqueInsumos.ApplyUpdates(-1);
              end;
              oCdsNFeEntradaItens.Next;
           end;


           oCdsInsumos.Close;
           oCdsInsumos.Open;
           ocdsFornecedor.Close;
           ocdsFornecedor.Open;
           oCdsNFeEntradaItens.Close;
           oCdsNFeEntradaItens.Params[0].Value := oCdsid.AsInteger;
           oCdsNFeEntradaItens.Open;
           cdstblEstoqueInsumos.Close;


           oCdsNFeEntradaItensitem.ReadOnly         :=    True;
           oCdsNFeEntradaItenscodproduto.ReadOnly   :=    True;
           oCdsNFeEntradaItensvalidade.ReadOnly     :=    True;
           oCdsNFeEntradaItensNCM.ReadOnly          :=    True;
           oCdsNFeEntradaItensUE.ReadOnly           :=    True;
           oCdsNFeEntradaItensqtde.ReadOnly         :=    True;
           oCdsNFeEntradaItensvlrunitario.ReadOnly  :=    True;
           oCdsNFeEntradaItensvaloripi.ReadOnly     :=    True;
           oCds.Post;
           oCds.ApplyUpdates(-1);
           recSeq.Enabled := False;
           recSeq.Visible := False;
        end;
     end;
  end
  else
  begin
     ShowMessage('Código já utilizado ou inexistente!');
     edtSeq.Text := '';
     DM.closecnn;
  end;
end;

procedure TF_NFeEntradaButtons.btnCIClick(Sender: TObject);
begin
  //inherited;
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

procedure TF_NFeEntradaButtons.btnImprimiClick(Sender: TObject);
var
   sArquivo : String;
   iId : Integer;
begin
//   inherited;
   ReportNFe.PrepareReport();
   ReportNFe.ShowReport();
end;

procedure TF_NFeEntradaButtons.btnNovoClick(Sender: TObject);
begin
   oCds.Open;
   oCds.Insert;
   DM.opencnn;
   oCdsid.AsInteger := DM.SMGen.GetNextIdNfeEntrada;
   DM.closecnn;

   oCdsInsumos.Close;
  oCdsInsumos.Open;
  ocdsFornecedor.Close;
  ocdsFornecedor.Open;

  cdstblEstoqueInsumos.Close;

   cdsSum.Close;
   cdsSum.Params[0].Value := oCdsid.AsInteger;
   cdsSum.Open;

   cdsNfeID.Close;
   cdsNfeID.Params[0].Value := oCdsid.AsInteger;
   cdsNfeID.Open;

   oCdsNFeEntradaItens.Close;
   oCdsNFeEntradaItens.Params[0].Value := oCdsid.AsInteger;
   oCdsNFeEntradaItens.Open;

   cxGrid1DBTableView1.Navigator.Visible := True;
   oCdsNFeEntradaItens.insert;
   oCdsdata.Value := date;

   oCdsNFeEntradaItensitem.ReadOnly         :=    False;
   oCdsNFeEntradaItenscodproduto.ReadOnly   :=    False;
   oCdsNFeEntradaItensvalidade.ReadOnly     :=    False;
   oCdsNFeEntradaItensNCM.ReadOnly          :=    False;
   oCdsNFeEntradaItensUE.ReadOnly           :=    False;
   oCdsNFeEntradaItensqtde.ReadOnly         :=    False;
   oCdsNFeEntradaItensvlrunitario.ReadOnly  :=    False;
   oCdsNFeEntradaItensvaloripi.ReadOnly     :=    False;

   inherited;
end;

procedure TF_NFeEntradaButtons.btnSeqClick(Sender: TObject);
begin
//  Dm.SMGen.DeleteIdSequencial;
  inherited;
end;

procedure TF_NFeEntradaButtons.cdsNfeIDCalcFields(DataSet: TDataSet);
begin
  inherited;
  if ocdsFornecedor.Locate('id',cdsNfeIDcodfornecedor.AsInteger,[]) then
      cdsNfeIDsNomef.AsString    := ocdsFornecedornome_razaosocial.AsString;
      cdsNfeIDiCodForn.AsInteger := ocdsFornecedorcodfornecedor.AsInteger;
end;

procedure TF_NFeEntradaButtons.cdsSUMCalcFields(DataSet: TDataSet);
begin
  inherited;
  if ocdsFornecedor.Locate('id',cdsNfeIDcodfornecedor.AsInteger,[]) then
  begin
    cdsSUMNomeForne.AsString := ocdsFornecedornome_razaosocial.AsString;
    cdsSUMCodForne.AsInteger := ocdsFornecedorcodfornecedor.AsInteger;
  end;
end;

procedure TF_NFeEntradaButtons.cxGrid1DBTableView1codprodutoPropertiesCloseUp(
  Sender: TObject);
begin
//  inherited;
//  cxGrid1DBTableView1codproduto.Properties.
end;

procedure TF_NFeEntradaButtons.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   ReportMP.PrepareReport();
   ReportMP.ShowReport();
end;


procedure TF_NFeEntradaButtons.cxGrid1DBTableView1sImprimirPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   ReportMP.PrepareReport();
   ReportMP.ShowReport();

end;

procedure TF_NFeEntradaButtons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //cxGrid1DBTableView1.StoreToIniFile(ExtractFilePath(Application.ExeName) + '/arqconfig/' + Self.Name + '0001' + 'grid.ini', true, [gsoUseFilter, gsoUseSummary]);
end;

procedure TF_NFeEntradaButtons.FormCreate(Sender: TObject);
begin
  oCdsInsumos.Close;
  oCdsInsumos.Open;
  ocdsFornecedor.Close;
  ocdsFornecedor.Open;

  cdstblEstoqueInsumos.Close;
  inherited;
end;

procedure TF_NFeEntradaButtons.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TF_NFeEntradaButtons.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.RestoreFromIniFile(ExtractFilePath(Application.ExeName) + '/arqconfig/' + Self.Name + '0001' + 'grid.ini', true, false, [gsoUseFilter, gsoUseSummary]);
end;

procedure TF_NFeEntradaButtons.oCdsInsumosCalcFields(DataSet: TDataSet);
begin
  inherited;
  oCdsInsumossProduto.AsString := oCdsInsumosdescricao.AsString + ' - ' + oCdsInsumoscodigo.AsString;
end;

procedure TF_NFeEntradaButtons.oCdsNFeEntradaItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Try
   oCdsNFeEntradaItenscodnfeentrada.AsInteger := oCdsid.AsInteger;
   oCdsNFeEntradaItensitem.ReadOnly := False;
  Except
    ShowMessage('Erro ao inserir produto!');
  End;
end;

procedure TF_NFeEntradaButtons.oCdsNFeEntradaItensBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (oCdsNFeEntradaItenscodproduto.AsString = '') and (oCdsNFeEntradaItensqtde.AsString = '') and (oCdsNFeEntradaItensvlrunitario.AsString = '') and (oCdsNFeEntradaItenspercentagemicms.AsString = '') and (oCdsNFeEntradaItensvaloripi.AsString = '') then
  begin
    ShowMessage('Escolha o produto !');
    oCdsNFeEntradaItens.Cancel;
    Abort
  end;
end;

procedure TF_NFeEntradaButtons.oCdsNFeEntradaItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  Try
    if not (oCdsNFeEntradaItens.State in [dsInsert]) then
    begin
      if oCdsInsumos.Locate('id',strtoint(oCdsNFeEntradaItenscodproduto.AsString),[]) then
      begin
         oCdsNFeEntradaItenssnomeproduto.AsString := oCdsInsumosdescricao.AsString;
      end;
    end;

  if ocdsFornecedor.Locate('id',cdsNfeIDcodfornecedor.AsInteger,[]) then
  begin
    oCdsNFeEntradaItenssNomeForn.AsString := ocdsFornecedornome_razaosocial.AsString;
    oCdsNFeEntradaItensiCodForn.AsInteger := cdsNfeIDcodfornecedor.AsInteger;
  end;

   if not (oCdsNFeEntradaItens.State in [dsinsert]) then
  begin
    if oCdsInsumos.Locate('id',strtoint(oCdsNFeEntradaItenscodproduto.AsString),[]) then
    begin
       oCdsNFeEntradaItenssCodInsumo.AsString := oCdsInsumoscodigo.AsString;
    end;
  end;
  except
//    showmessage('crash');
    oCdsNFeEntradaItensitem.DataSet.Cancel;
  End;
end;

procedure TF_NFeEntradaButtons.oCdsNFeEntradaItenscodprodutoChange(
  Sender: TField);
begin
  inherited;
  if sState = 'editar' then
  begin

  end
  else
  begin

            if oCdsInsumostipo.AsString = 'Mat. Prima' then
            begin
               DM.opencnn;
               oCdsNFeEntradaItenssequencial.AsInteger := dm.SMGen.GetNextIdSequencial;
               DM.closecnn;
            end
       else if oCdsInsumostipo.AsString = 'Insumos' then
       begin
               oCdsNFeEntradaItenssequencial.AsInteger := 0
       end
       else if oCdsInsumostipo.AsString = 'Uso Interno' then
       begin
               oCdsNFeEntradaItenssequencial.AsInteger := 0;
       end;

  end;
end;

procedure TF_NFeEntradaButtons.oCdsNFeEntradaItenspercentagemicmsChange(
  Sender: TField);
begin
  inherited;
  oCdsNFeEntradaItensvalortotal.ReadOnly := False;
//  oCdsNFeEntradaItensvalortotal.AsFloat := oCdsNFeEntradaItenspercentagemicms.AsFloat + oCdsNFeEntradaItensvalortotal.AsFloat;
  oCdsNFeEntradaItensvalortotal.ReadOnly := True;
end;

procedure TF_NFeEntradaButtons.oCdsNFeEntradaItensvaloripiChange(
  Sender: TField);
var
  Conta  : Double;
  Conta2 : Double;
  Aux    : String;
  Aux2   : String;
  Aux3   : String;
begin
  inherited;
  Try
  oCdsNFeEntradaItensvalortotal.ReadOnly := False;
  Aux    := FormatFloat('#,########0.00000000', (oCdsNFeEntradaItensvaloripi.AsFloat/100));
  Conta  := StrToFloat(Aux);
  Aux2   := FormatFloat('#,########0.00000000', (Conta * oCdsNFeEntradaItensvalortotal.AsFloat));
  Aux3   := StringReplace(Aux2, '.', '', []);
  Conta2 := StrToFloat(Aux3);

    if not (oCdsNFeEntradaItens.State in [dsEdit]) then
    oCdsNFeEntradaItens.Edit;

    oCdsNFeEntradaItensvalortotal.ReadOnly := False;
    oCdsNFeEntradaItensvalortotal.AsFloat := Conta2 + oCdsNFeEntradaItensvalortotal.AsFloat;
    oCdsNFeEntradaItensvalortotal.ReadOnly := True;
    Except on e : exception do
    begin
      ShowMessage(e.Message);
    end;

  end;
end;

procedure TF_NFeEntradaButtons.oCdsNFeEntradaItensvlrunitarioChange(
  Sender: TField);
begin
  inherited;
  Try
    oCdsNFeEntradaItensvalortotal.ReadOnly := False;
  //oCdsNFeEntradaItensvlrunitario.ReadOnly := False;
    oCdsNFeEntradaItens.Edit;
    oCdsNFeEntradaItensvalortotal.AsFloat := oCdsNFeEntradaItensqtde.AsFloat * oCdsNFeEntradaItensvlrunitario.AsFloat;

  //oCdsNFeEntradaItensvalortotal.ReadOnly := True;

//    dm.opencnn;
//    if DM.SMGen.GetTeveAumento(oCdsNFeEntradaItenscodproduto.AsInteger, oCdscodfornecedor.AsInteger) = 0 then
//    begin
//        //ShowMessage('Valor unitário registrado!');
//    end
//    else if StrToFloat(FormatFloat('#,########0.00000000', oCdsNFeEntradaItensvlrunitario.AsFloat)) > (DM.SMGen.GetTeveAumento(oCdsNFeEntradaItenscodproduto.AsInteger, oCdscodfornecedor.AsInteger)) then
//    begin
//       //ShowMessage('Ocorreu mudança no valor unitário deste produto!');
//    end;
//    dm.closecnn;
  except

  End;

end;

end.
