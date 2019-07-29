unit U_CadOrdemProducaoBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxSpinEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, frxClass, frxDBSet, frxExportPDF,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_CadOrdemProducaoBt = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdsficha: TStringField;
    oCdslote: TStringField;
    oCdsemissao: TDateField;
    oCdsidformula: TIntegerField;
    oCdsproduzido: TSingleField;
    oCdsfator: TSingleField;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtProduzido: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    CdsFormula: TClientDataSet;
    DSFormula: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    CdsFormulaid: TIntegerField;
    CdsFormulacodigo: TStringField;
    CdsFormuladescricaoformula: TStringField;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    oCdsProducaoDetalhe: TClientDataSet;
    odsProducaoDetalhe: TDataSource;
    cxGrid1DBTableView1idtblordemdeproducao: TcxGridDBColumn;
    cxGrid1DBTableView1percentual: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1lote1: TcxGridDBColumn;
    cxGrid1DBTableView1lote2: TcxGridDBColumn;
    cxGrid1DBTableView1lote3: TcxGridDBColumn;
    cxGrid1DBTableView1preco_aquisicao: TcxGridDBColumn;
    cxGrid1DBTableView1valortotal: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cdsFormulaDetalhe: TClientDataSet;
    oCdsidproduto: TIntegerField;
    Label8: TLabel;
    oCdsstatus: TStringField;
    Label1: TLabel;
    cbStatus: TcxDBComboBox;
    CdsProdutos: TClientDataSet;
    DSProdutos: TDataSource;
    oCdsemproducao: TIntegerField;
    ReportOPQ: TfrxReport;
    DBcdsOpID: TfrxDBDataset;
    cdsOpID: TClientDataSet;
    dsOpID: TDataSource;
    cdsOpIDid: TIntegerField;
    cdsOpIDficha: TStringField;
    cdsOpIDlote: TStringField;
    cdsOpIDemissao: TDateField;
    cdsOpIDidformula: TIntegerField;
    cdsOpIDproduzido: TSingleField;
    cdsOpIDfator: TSingleField;
    cdsOpIDemproducao: TIntegerField;
    cdsOpIDidproduto: TIntegerField;
    cdsOpIDstatus: TStringField;
    DBProducaoDetalhe: TfrxDBDataset;
    DBFormula: TfrxDBDataset;
    DBProduto: TfrxDBDataset;
    //AdvGlassButton1: TAdvGlassButton;
    cdsFormulaDetalheid: TIntegerField;
    cdsFormulaDetalheidtblformula: TIntegerField;
    cdsFormulaDetalheidmateriaprima: TIntegerField;
    cdsFormulaDetalhecodprodutoacab: TStringField;
    cdsFormulaDetalheid_1: TIntegerField;
    cdsFormulaDetalhedescricao: TStringField;
    CdsProdutosdescricao: TStringField;
    CdsProdutosid: TIntegerField;
    CdsProdutoscodfornecedor: TIntegerField;
    CdsProdutosgrupo: TIntegerField;
    CdsProdutoscodproduto: TIntegerField;
    CdsProdutosprocedencia: TStringField;
    CdsProdutosgrupopedido: TStringField;
    CdsProdutosnumeropa: TIntegerField;
    CdsProdutosnomeprodutopedido: TStringField;
    CdsProdutosncm: TStringField;
    DBEdit1: TDBEdit;
    btnImprimi: TAdvGlassButton;
    CdsFormulaobservacao: TMemoField;
    CdsFormulapercentual: TSingleField;
    CdsFormulavalido: TIntegerField;
    CdsFormulaidcodprocesso: TStringField;
    CdsProdutoscodformula: TStringField;
    oCdsProducaoDetalheid: TIntegerField;
    oCdsProducaoDetalheidtblordemdeproducao: TIntegerField;
    oCdsProducaoDetalheidmateriaprima: TIntegerField;
    oCdsProducaoDetalhelote1: TStringField;
    oCdsProducaoDetalhelote2: TStringField;
    oCdsProducaoDetalhepreco_aquisicao: TSingleField;
    oCdsProducaoDetalhevalortotal: TSingleField;
    oCdsProducaoDetalhelote3: TStringField;
    oCdsProducaoDetalhesDescricao: TStringField;
    oCdsProducaoDetalhesCodMP: TStringField;
    cdsFormulaDetalhecodigo: TStringField;
    cdsLote: TClientDataSet;
    dspLote: TDataSource;
    cdsLotelote: TStringField;
    cdsLotedata: TDateField;
    cdsLotequantd: TSingleField;
    Button1: TButton;
    oCdsProducaoDetalhepercentual: TSingleField;
    oCdsProducaoDetalhequantidade: TSingleField;
    oCdsProducaoDetalheqtd1: TSingleField;
    oCdsProducaoDetalheqtd2: TSingleField;
    oCdsProducaoDetalheqtd3: TSingleField;
    cxGrid1DBTableView1qtd1: TcxGridDBColumn;
    cxGrid1DBTableView1qtd2: TcxGridDBColumn;
    cxGrid1DBTableView1qtd3: TcxGridDBColumn;
    oCdsProducaoDetalhesPercentual: TFloatField;
    cdsFormulaDetalhepercentual: TFMTBCDField;
    AdvGlassButton1: TAdvGlassButton;
    procedure FormCreate(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure edtProduzidoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ActEditarExecute(Sender: TObject);
    procedure ActDeletarExecute(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure oCdsAfterInsert(DataSet: TDataSet);
    procedure btnImprimiClick(Sender: TObject);
    procedure cxGrid1DBTableView1lote1PropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1lote1PropertiesPopup(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1lote1PropertiesInitPopup(Sender: TObject);
    procedure cbStatusPropertiesCloseUp(Sender: TObject);
    procedure oCdsProducaoDetalheCalcFields(DataSet: TDataSet);
    procedure AdvGlassButton1Click(Sender: TObject);

  private
    procedure AtualizaExitQtde;
    { Private declarations }
  public
    sState : String;
    sStatus : String;
    lote1,lote2,lote3 : String;
    qtd1, qtd2,qtd3   : String;
    Imp : Boolean;

    procedure Atualiza;

    { Public declarations }
  end;

var
  F_CadOrdemProducaoBt: TF_CadOrdemProducaoBt;

implementation

{$R *.dfm}

uses UDM, U_CadOrdemProducaoGrid;

procedure TF_CadOrdemProducaoBt.ActDeletarExecute(Sender: TObject);
begin
   if DM.tmsMSGQ('Atenção','Você deseja deletar este item?') = mrOk then
   begin
    dm.opencnn;
     dm.SMGen.DeletaOPQuimico(oCdsid.AsInteger);
     dm.SMGen.DeletaOPQuimicoDetalhe(oCdsid.AsInteger);
    dm.closecnn;
     F_CadOrdemProducaoBt.Close;
   end;
end;

procedure TF_CadOrdemProducaoBt.ActEditarExecute(Sender: TObject);
begin
  inherited;
  oCdsProducaoDetalhe.Edit;
  cxGrid1DBTableView1.Navigator.Visible := True;
  odsProducaoDetalhe.AutoEdit := True;
 // Button1.Enabled := true;               // preecher lote fica ativo para clicar
end;

procedure TF_CadOrdemProducaoBt.ActNovoExecute(Sender: TObject);
begin
  inherited;
  dm.opencnn;
   oCdsid.AsInteger := DM.SMGen.GetNextIdOPQuimico;
  dm.closecnn;

   cdsFormulaDetalhe.Close;
   cdsFormulaDetalhe.Params[0].AsInteger := CdsFormulaid.AsInteger;
   cdsFormulaDetalhe.Open;

   oCdsProducaoDetalhe.Close;
   oCdsProducaoDetalhe.Params[0].AsInteger := oCdsid.AsInteger;
   oCdsProducaoDetalhe.Open;

   oCdsstatus.AsString := 'Aberto';

   oCdsemissao.Value := date;
end;

procedure TF_CadOrdemProducaoBt.ActSalvarExecute(Sender: TObject);
Var
   sLote : String;
   sQtde : String;
   i : Integer;
begin
 //dm.opencnn;
   if oCds.State in [dsInsert] then
    begin
        if (DBedit2.Text= '') then
        begin
          showmessage('Digite um Fator');            // se o fator não for digitado, não deixa prosseguir
          exit;
        end;

        if (cxDBTextEdit2.Text= '') then
        begin
          showmessage('Digite um Lote');            // se o Lote não for digitado, não deixa prosseguir
          exit;
        end;

        if oCdsstatus.AsString = 'Finalizada' then                 //verifica primeiro para ver se o status é finalizado
        begin                                                   // e se o lote foi preenchido
          if oCdsProducaoDetalhelote1.AsString = '' then        // se não for ele nao salva nada e sai
          begin
             oCdsstatus.AsString := 'Finalizada';
             ShowMessage('Alerta!' + #13 + 'É necessário preencher os lotes para finalizar a ordem de produção!');
             exit;
          end;
        end;
        cxGrid1DBTableView1.Navigator.Visible := False;
        oCdsProducaoDetalhe.ApplyUpdates(-1);
    inherited;
      try
          if oCdsstatus.AsString = 'Finalizada' then
          begin
              dm.opencnn;
              oCdsProducaoDetalhe.First;
              while not oCdsProducaoDetalhe.Eof do
               begin
                  for i := 1 to 3 do
                 begin
                  sLote := oCdsProducaoDetalhe.FieldByName('lote'+(i).ToString).AsString;
                  sQtde := '-' + (oCdsProducaoDetalhe.FieldByName('qtd'+(i).ToString).AsString);
                  if slote <> '' then
                  begin
                     dm.SMGen.IBaixaEstoqueQuimico(oCdsProducaoDetalheidmateriaprima.AsInteger,oCdsProducaoDetalheidtblordemdeproducao.AsInteger,oCdsProducaoDetalhequantidade.AsFloat,slote,sqtde);
                  end;
                 end;
                 oCdsProducaoDetalhe.Next;
               end;
               dm.SMGen.IEstoqueQuimico(CdsProdutosid.AsInteger,oCdsid.AsInteger,oCdsproduzido.AsFloat);
               cxDBLookupComboBox1.Enabled := False;
               btnEditar.Enabled := False;
               dm.closecnn;
          end;
      except on e: Exception  do
          begin
            showmessage(e.Message);
          end;
      end;
    end
   else if oCds.State in [dsEdit] then
    begin
      if oCdsstatus.AsString  = 'Finalizada' then        // se o status tiver finalizado e
      begin
         if oCdsProducaoDetalhelote1.AsString = '' then    // não tiver preenchido os lotes, ele não deixa salvar
         begin
            oCdsstatus.AsString := 'Finalizada';
            ShowMessage('Alerta!' + #13 + 'É necessário preencher os lotes para finalizar a ordem de produção!');
            exit;
         end;

          cxGrid1DBTableView1.Navigator.Visible := False;
          oCdsProducaoDetalhe.ApplyUpdates(-1);

          oCdsstatus.AsString  := sStatus;
          oCds.Post;
          oCds.ApplyUpdates(-1);

          dm.opencnn;

          oCdsProducaoDetalhe.First;
         while not oCdsProducaoDetalhe.Eof do
          begin
               begin
                    for i := 1 to 3 do
                    begin
                     sLote := oCdsProducaoDetalhe.FieldByName('lote'+(i).ToString).AsString;
                     sQtde := '-' + (oCdsProducaoDetalhe.FieldByName('qtd'+(i).ToString).AsString);
                     if slote <> '' then
                     begin
                        dm.SMGen.IBaixaEstoqueQuimico(oCdsProducaoDetalheidmateriaprima.AsInteger,
                        oCdsProducaoDetalheidtblordemdeproducao.AsInteger,oCdsProducaoDetalhequantidade.AsFloat,sLote,sQtde);
                     end;
                    end;
               end;

          oCdsProducaoDetalhe.Next;
          end;
        dm.SMGen.IEstoqueQuimico(CdsProdutosid.AsInteger,oCdsid.AsInteger,oCdsproduzido.AsFloat);
        cxDBLookupComboBox1.Enabled := False;
        btnEditar.Enabled := False;
        dm.closecnn;
      end
      else      // senao, se nao estiver com status Finalizado ele irá salvar cs status Produzindo e Aberto
      begin
          cxGrid1DBTableView1.Navigator.Visible := False;
          oCdsProducaoDetalhe.ApplyUpdates(-1);

          oCdsstatus.AsString  := sStatus;
          oCds.Post;
          oCds.ApplyUpdates(-1);
          dm.opencnn;

          if oCdsstatus.AsString = 'Finalizada' then                 //verifica primeiro para ver se o status é finalizado
          begin
           oCdsProducaoDetalhe.First;
           while not oCdsProducaoDetalhe.Eof do
            begin
              begin
                for i := 1 to 3 do
                begin
                 sLote := oCdsProducaoDetalhe.FieldByName('lote'+(i).ToString).AsString;
                 sQtde := '-' + (oCdsProducaoDetalhe.FieldByName('qtd'+(i).ToString).AsString);
                 if slote <> '' then
                 begin
                    dm.SMGen.IBaixaEstoqueQuimico(oCdsProducaoDetalheidmateriaprima.AsInteger,
                    oCdsProducaoDetalheidtblordemdeproducao.AsInteger,oCdsProducaoDetalhequantidade.AsFloat,sLote,sQtde);
                 end;
                end;
              end;
              oCdsProducaoDetalhe.Next;
            end;
          dm.SMGen.IEstoqueQuimico(CdsProdutosid.AsInteger,oCdsid.AsInteger,oCdsproduzido.AsFloat);
          dm.closecnn;
          end;
      end;

     end;
    odsProducaoDetalhe.AutoEdit := False;
end;

procedure TF_CadOrdemProducaoBt.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   if oCdsstatus.AsString  <> 'Finalizada' then
   begin
      dm.opencnn;
      if dm.SMGen.DeletaOrdemDetalhe(oCdsid.AsString) then
      begin
         oCdsProducaoDetalhe.Refresh;
         btnEditar.Click;
         AtualizaExitQtde;
         //Button1.Click;
         btnSalvar.Click;
         dm.closecnn;
         F_CadOrdemProducaoGrid.bAtualizacao := True;
         ShowMessage('A fórmula desta ordem foi atualizada. Preencha os lotes novamente !!!!');
         btnsair.Click;
      end;
      if F_CadOrdemProducaoGrid.bAtualizacao = True then
      begin
         F_CadOrdemProducaoGrid.bAtualizacao := False;
         btnEditar.Click;
         AtualizaExitQtde;
         //Button1.Click;
         btnSalvar.Click;
      end;
   end
   else
   begin
      ShowMessage('Ordem finalizada. Não pode ser atualizada !!!')
   end
end;

procedure TF_CadOrdemProducaoBt.Atualiza;
begin
   dm.opencnn;
   cdsFormulaDetalhe.Open;
  cdsFormulaDetalhe.First;
  oCdsProducaoDetalhe.Open;
  while not cdsFormulaDetalhe.Eof do
  begin
      oCdsProducaoDetalhe.Edit;
      oCdsProducaoDetalheidtblordemdeproducao.AsInteger := oCdsid.AsInteger;
      oCdsProducaoDetalhe.Post;
      cdsFormulaDetalhe.Next;
  end;
//  oCdsProducaoDetalhe.ApplyUpdates(-1);
  oCdsProducaoDetalhe.Edit;
end;

procedure TF_CadOrdemProducaoBt.btnImprimiClick(Sender: TObject);
begin
  inherited;
   Imp := True;
   ReportOPQ.PrepareReport();
   ReportOPQ.ShowReport();
end;

procedure TF_CadOrdemProducaoBt.Button1Click(Sender: TObject);
var
  Str : TStringList;
  Str2 : TStringList;
  Info : String;
  i: Integer;
begin
  inherited;
  if edtProduzido.Text = '' then
  begin
    ShowMessage('Digite um valor de produção!');
  end
  else
  begin
    oCdsProducaoDetalhe.First;

    while not oCdsProducaoDetalhe.Eof do
    begin
      Str := TStringList.Create;
      dm.opencnn;
      Info := dm.SMGen.PreencherLote(oCdsProducaoDetalheidmateriaprima.AsInteger, oCdsProducaoDetalhequantidade.AsFloat);
      dm.opencnn;
      ExtractStrings(['|'],[ ],pchar(Info),Str);

      oCdsProducaoDetalhe.Edit;
      for i := 0 to str.Count-1 do
      begin
        oCdsProducaoDetalhe.FieldByName('lote'+(i+1).ToString).AsString  :=  Copy(str.Strings[i], 1, pos('=', str.Strings[i])-1);
        oCdsProducaoDetalhe.FieldByName('qtd'+(i+1).ToString).AsFloat    :=  StrToFloat(StringReplace(Copy(str.Strings[i], pos('=', str.Strings[i])+1, Length(str.Strings[i])), '.', '', []));
      end;

      oCdsProducaoDetalhe.Post;
      oCdsProducaoDetalhe.Next;

      FreeAndNil(Str);
      Info := '';
    end;
  end;

end;

procedure TF_CadOrdemProducaoBt.cbStatusPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  sStatus := cbStatus.Text;

end;

procedure TF_CadOrdemProducaoBt.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
   Atualiza;
end;


procedure TF_CadOrdemProducaoBt.cxDBLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
   if cxDBLookupComboBox1.ItemIndex <> -1 then
  begin
    oCdsProducaoDetalhe.Close;
    oCdsProducaoDetalhe.Params[0].Value := oCdsid.AsInteger;
    oCdsProducaoDetalhe.Open;


    cdsFormulaDetalhe.Close;
    cdsFormulaDetalhe.Params[0].AsInteger := CdsFormulaid.AsInteger;
    cdsFormulaDetalhe.Open;
    cdsFormulaDetalhe.First;

    CdsProdutos.Close;
    CdsProdutos.Params[0].AsString := CdsFormulacodigo.AsString;
    CdsProdutos.Open;

    oCdsidproduto.AsInteger := CdsProdutosid.AsInteger;

    while not cdsFormulaDetalhe.Eof do
    begin
         oCdsProducaoDetalhe.Insert;

         dm.opencnn;
         oCdsProducaoDetalheid.AsInteger                   := DM.SMGen.GetNextIdOPQuimico;
         oCdsProducaoDetalheidtblordemdeproducao.AsInteger := oCdsid.AsInteger;
         oCdsProducaoDetalheidmateriaprima.AsInteger       := cdsFormulaDetalheidmateriaprima.AsInteger;
         oCdsProducaoDetalhepercentual.AsFloat             := cdsFormulaDetalhepercentual.AsFloat;
         oCdsProducaoDetalhesDescricao.AsString            := cdsFormulaDetalhedescricao.AsString;
         oCdsProducaoDetalhesCodMP.AsString                := cdsFormulaDetalhecodigo.AsString;
         dm.closecnn;

         oCdsProducaoDetalhe.Post;
         cdsFormulaDetalhe.Next;
    end;

  end;
end;



procedure TF_CadOrdemProducaoBt.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  idInsumo : Integer;
begin
  inherited;
  dm.opencnn;
  idInsumo := dm.SMGen.IdInsumo(oCdsProducaoDetalhesCodMP.AsString);
  dm.closecnn;
end;

procedure TF_CadOrdemProducaoBt.cxGrid1DBTableView1lote1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  oCdsProducaoDetalhelote1.AsString := cdsLotelote.AsString;


end;

procedure TF_CadOrdemProducaoBt.cxGrid1DBTableView1lote1PropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
//  cdsLote.Close;
//  cdsLote.Params[0].Value := DM.SMGen.IdInsumo(cdsFormulaDetalhecodigo.AsString);
//  cdsLote.Open;
//  cdsLote.First;


end;

procedure TF_CadOrdemProducaoBt.cxGrid1DBTableView1lote1PropertiesPopup(
  Sender: TObject);
begin
  inherited;
//    cdsLote.Close;
//  cdsLote.Params[0].Value := DM.SMGen.IdInsumo(cxGrid1DBTableView1.Columns[0].fie);
//  cdsLote.Open;
//
//         oCdsProducaoDetalhelote1.AsString := cdsLotelote.AsString;
end;

procedure TF_CadOrdemProducaoBt.edtProduzidoExit(Sender: TObject);
begin
  inherited;
   AtualizaExitQtde;
end;

procedure TF_CadOrdemProducaoBt.AtualizaExitQtde;
begin
  if edtProduzido.Text = '' then
  begin
    ShowMessage('Digite uma quantidade a ser produzida!');
  end
  else
  begin
   oCdsProducaoDetalhe.First;
   while not oCdsProducaoDetalhe.Eof do
   begin
     oCdsProducaoDetalhe.Edit;
     oCdsProducaoDetalhequantidade.AsFloat := (StrToFloat(edtProduzido.Text)
                                               * (oCdsProducaoDetalhepercentual.AsFloat / 100));
     oCdsProducaoDetalhe.Post;
     oCdsProducaoDetalhe.Next;
   end;
  end;
end;

procedure TF_CadOrdemProducaoBt.FormCreate(Sender: TObject);
begin
//   CdsProdutos.Close;
//   CdsProdutos.Open;
//
//   CdsFormula.Close;
//   CdsFormula.Open;
//
//   cdsFormulaDetalhe.Close;
//   cdsFormulaDetalhe.Params[0].AsInteger := CdsFormulaid.AsInteger;
//   cdsFormulaDetalhe.Open;
//
//   CdsProdutos.Close;
//   CdsProdutos.Params[0].AsString := CdsFormulacodigo.AsString;
//   CdsProdutos.Open;
//
//   oCdsProducaoDetalhe.Close;
//   oCdsProducaoDetalhe.Params[0].Value := oCdsid.AsInteger;
//   oCdsProducaoDetalhe.Open;
   inherited;

end;

procedure TF_CadOrdemProducaoBt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TF_CadOrdemProducaoBt.oCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dm.opencnn;
  oCdsficha.AsString := inttostr(DM.SMGen.GetNextFichaSequencial);
  dm.closecnn;
end;

procedure TF_CadOrdemProducaoBt.oCdsProducaoDetalheCalcFields(
  DataSet: TDataSet);
begin
  inherited;
   if Imp = True then
   begin
         oCdsProducaoDetalhesPercentual.AsFloat := oCdsProducaoDetalhesPercentual.AsFloat + oCdsProducaoDetalhepercentual.AsFloat;
   end;
end;

end.
