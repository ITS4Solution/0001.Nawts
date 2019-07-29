unit U_EnvaseBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTimeEdit,
  cxDBEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxSpinEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalc, frxClass, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TF_EnvaseBt = class(TF_AbstratoButtons)
    Label3: TLabel;
    Label7: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    DSProdutos: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    CdsInsumoEnvase: TClientDataSet;
    DSInsumoEnvase: TDataSource;
    cbStatus: TcxDBComboBox;
    CdsProdutos: TClientDataSet;
    CdsProdutosid: TIntegerField;
    CdsProdutosdescricao: TStringField;
    oCdsid: TIntegerField;
    oCdscodopenvase: TIntegerField;
    oCdsidprodutos: TIntegerField;
    oCdsqtdprevista: TSingleField;
    oCdsqtdreal: TSingleField;
    oCdshora: TTimeField;
    oCdsdata: TDateField;
    oCdsue: TStringField;
    oCdslote: TStringField;
    oCdscpa: TStringField;
    oCdsoperador: TStringField;
    oCdsstatus: TStringField;
    Label12: TLabel;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    CC: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    cxDBComboBox2: TcxDBComboBox;
    cdsDetalheEnvase: TClientDataSet;
    dsDetalheEnvase: TDataSource;
    cdsDetalheEnvaseid: TIntegerField;
    cdsDetalheEnvaseqtd: TSingleField;
    cdsDetalheEnvaseue: TStringField;
    cdsDetalheEnvasepreco: TSingleField;
    cdsDetalheEnvasevalortotal: TSingleField;
    cxGrid1DBTableView1qtd: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cdsDetalheEnvasecodproduto: TStringField;
    cxGrid1DBTableView1codproduto: TcxGridDBColumn;
    CdsInsumoEnvaseid: TIntegerField;
    CdsInsumoEnvasedescricao: TStringField;
    CdsInsumoEnvaseinsumosid: TIntegerField;
    CdsInsumoEnvaseINSUMODESC: TStringField;
    cdsDetalheEnvaseidordemproducao: TIntegerField;
    cdsDetalheEnvaseidcodproduto: TIntegerField;
    cdsQtdProduto: TClientDataSet;
    cdsDetalheEnvasesQuantidade: TFloatField;
    cdsQtdProdutoid: TIntegerField;
    cdsQtdProdutodescricao: TStringField;
    cdsQtdProdutoinsumosid: TIntegerField;
    cdsQtdProdutoINSUMODESC: TStringField;
    cdsQtdProdutoSUM: TFloatField;
    cdsQtdProdutoidinsumo: TIntegerField;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsEstoqueQuimico: TClientDataSet;
    cdsEstoqueQuimicoid: TIntegerField;
    cdsEstoqueQuimicoidproduto: TIntegerField;
    cdsEstoqueQuimicoidtblordemproducao: TIntegerField;
    cdsEstoqueQuimicopercentual: TSingleField;
    cdsEstoqueQuimicoqtd: TSingleField;
    dsEstoqueQuimico: TDataSource;
    cdsEstoqueQuimicosDescricao: TStringField;
    cxGridDBTableView1percentual: TcxGridDBColumn;
    cxGridDBTableView1qtd: TcxGridDBColumn;
    cxGridDBTableView1sDescricao: TcxGridDBColumn;
    DBQtdProduto: TfrxDBDataset;
    DBProduto: TfrxDBDataset;
    DBEstoqueQuimico: TfrxDBDataset;
    DBoCds: TfrxDBDataset;
    ReportOP: TfrxReport;
    DBDetalheEnvase: TfrxDBDataset;
    cxGrid1DBTableView1sEstoque: TcxGridDBColumn;
    cdsDetalheEnvasesEstoque: TStringField;
    btnImprimi: TAdvGlassButton;
    recSeq: TPanel;
    Label11: TLabel;
    edtSeq: TEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    btnCI: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    AdvGlassButton4: TAdvGlassButton;
    panelQtd: TPanel;
    btnQuant: TAdvGlassButton;
    cdsControleOp: TClientDataSet;
    dsControleOp: TDataSource;
    cdsControleOpid: TIntegerField;
    cdsControleOpidop: TIntegerField;
    cdsControleOpqtd: TSingleField;
    cdsControleOpdatains: TDateField;
    DataSource1: TDataSource;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    edtFaltante: TEdit;
    AdvGlassButton5: TAdvGlassButton;
    cdsControleOphorains: TTimeField;
    procedure ActEditarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure ActDeletarExecute(Sender: TObject);
    procedure cxDBComboBox2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure cxDBComboBox2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CCKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cdsDetalheEnvaseCalcFields(DataSet: TDataSet);
    procedure cdsEstoqueQuimicoCalcFields(DataSet: TDataSet);
    procedure cdsEstoqueQuimicopercentualChange(Sender: TField);
    procedure DBEdit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnImprimiClick(Sender: TObject);
    procedure btnCIClick(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure AdvGlassButton4Click(Sender: TObject);
    procedure btnQuantClick(Sender: TObject);
    procedure AdvGlassButton5Click(Sender: TObject);
   
    
  private
   bNaoTemEstoque : boolean;
   fEstoque : Double;
    { Private declarations }
  public
    sState : String;
    { Public declarations }
  end;

var
  F_EnvaseBt: TF_EnvaseBt;

implementation

{$R *.dfm}

uses UDM, U_ComunicadoInterno;

procedure TF_EnvaseBt.ActDeletarExecute(Sender: TObject);
begin
  dm.opencnn;
  dm.SMGen.DeletaOrdemEnvase(oCdsid.AsInteger);
  dm.SMGen.DeletaEnvaseDetalhe(oCdsid.AsInteger);
  dm.closecnn;
  inherited;

end;

procedure TF_EnvaseBt.ActEditarExecute(Sender: TObject);
begin
  inherited;
   cxDBLookupComboBox1.Enabled := False;
   DBEdit1.Enabled := False;
   cxDBComboBox2.Enabled := False;
   CdsInsumoEnvase.Edit;
   cxGrid1DBTableView1.Navigator.Visible := True;
end;

procedure TF_EnvaseBt.ActNovoExecute(Sender: TObject);
begin
  inherited;
    dm.opencnn;
    oCdsid.AsInteger := dm.SMGen.GetNextIdOrdemEnvase;
    dm.closecnn;

    cdsQtdProduto.Close;
    cdsQtdProduto.Params[0].AsInteger := CdsProdutosid.AsInteger;
    cdsQtdProduto.Open;


    cdsDetalheEnvase.Close;
    cdsDetalheEnvase.Params[0].AsInteger := oCdsid.AsInteger;
    cdsDetalheEnvase.Open;

    CdsInsumoEnvase.Close;
    CdsInsumoEnvase.Params[0].AsInteger := F_EnvaseBt.oCdsid.AsInteger;
    CdsInsumoEnvase.Open;

    cdsEstoqueQuimico.Close;
    cdsEstoqueQuimico.Params[0].AsInteger := F_EnvaseBt.oCdsid.AsInteger;
    cdsEstoqueQuimico.Open;

    oCdsstatus.AsString := 'Aberto';

    cxDBLookupComboBox1.Enabled := True;
    DBEdit1.Enabled := True;
    cxDBComboBox2.Enabled := True;
    CdsInsumoEnvase.Edit;
    cxGrid1DBTableView1.Navigator.Visible := True;

    oCdshora.Value := time;
    oCdsdata.Value := date;
end;

procedure TF_EnvaseBt.ActSalvarExecute(Sender: TObject);
begin
  recSeq.Enabled := True;
  recSeq.Visible := True;
end;

procedure TF_EnvaseBt.AdvGlassButton1Click(Sender: TObject);
Var
   iId: Integer;
begin
  //
  if oCds.State in [dsInsert] then
  begin
    if bNaoTemEstoque = True then
    begin
       if (DM.tmsMSGQ('Atenção!!!','Não tem itens suficientes no estoque. Deseja continuar mesmo assim?') = mrOk) then
       begin
          cdsDetalheEnvase.ApplyUpdates(-1);
          cxGrid1DBTableView1.Navigator.Visible := False;  //////////// deixar so a msg e nao deixar continuar
          CdsInsumoEnvase.Refresh;
          cdsDetalheEnvase.First;
       end;
    end
    else if bNaoTemEstoque = False then
    begin
      DM.opencnn;
      cdsControleOp.Open;
      cdsControleOp.Edit;
      iId := dm.SMGen.NextControleOp;
      cdsControleOpid.AsInteger   := iId;
      cdsControleOpidop.AsInteger := oCdsid.AsInteger;
      cdsControleOpqtd.AsInteger := StrToInt(DBEdit1.Text);
      cdsControleOpdatains.AsDateTime := Now;
      cdsControleOphorains.AsDateTime := Now;
      cdsControleOp.Post;
      cdsControleOp.ApplyUpdates(-1);

      cdsDetalheEnvase.ApplyUpdates(-1);
      cxGrid1DBTableView1.Navigator.Visible := False;
      //CdsInsumoEnvase.Refresh;
      cdsDetalheEnvase.First;
    end;

    if oCdsstatus.AsString = 'Finalizada' then
    begin
       while not cdsDetalheEnvase.Eof do
       begin
         dm.opencnn;
         dm.SMGen.ISaidaEstoqueEnvase(cdsDetalheEnvaseidcodproduto.AsInteger,cdsDetalheEnvaseidordemproducao.AsInteger,cdsDetalheEnvaseqtd.AsFloat);

         cdsDetalheEnvase.Next;
       end;
       dm.SMGen.IBaixaEstoqueOP(cdsEstoqueQuimicoidproduto.AsInteger,oCdsid.AsInteger,cdsEstoqueQuimicoqtd.AsFloat);
       dm.closecnn;
    end;
    dm.opencnn;
    dm.SMGen.IProdutoOPQuimico(cdsEstoqueQuimicoidproduto.AsInteger,cdsEstoqueQuimicoidtblordemproducao.AsInteger,cdsEstoqueQuimicoqtd.AsFloat,cdsEstoqueQuimicopercentual.AsFloat);
    dm.SMGen.IEstProdAcabado(oCdsid.AsInteger,oCdsidprodutos.AsInteger,oCdslote.AsString,oCdsqtdreal.AsFloat);
    dm.closecnn;
    oCds.Post;                  //intherited
    oCds.ApplyUpdates(-1);      //intherited
  end

    else if oCds.State in [dsEdit] then
    begin
       cxGrid1DBTableView1.Navigator.Visible := False;

       if oCdsstatus.AsString = 'Finalizada' then
       begin
         dm.opencnn;
         while not cdsDetalheEnvase.Eof do
                  begin
                   dm.SMGen.ISaidaEstoqueEnvase(cdsDetalheEnvaseidcodproduto.AsInteger,cdsDetalheEnvaseidordemproducao.AsInteger,cdsDetalheEnvaseqtd.AsFloat);
                   cdsDetalheEnvase.Next;
                  end;
               dm.SMGen.IBaixaEstoqueOP(cdsEstoqueQuimicoidproduto.AsInteger,oCdsid.AsInteger,cdsEstoqueQuimicoqtd.AsFloat);
               dm.SMGen.IEstProdAcabado(oCdsid.AsInteger,oCdsidprodutos.AsInteger,oCdslote.AsString,oCdsqtdreal.AsFloat);
        dm.closecnn;
       end;
     end;
       //CdsInsumoEnvase.Refresh;
   oCds.Edit;
   oCds.Post;
   oCds.ApplyUpdates(-1);
   btnEditar.Enabled := False;
   ShowMessage('Cadastrado com sucesso!');
   recSeq.Visible := False;
   recSeq.Enabled := fALSE;
end;

procedure TF_EnvaseBt.AdvGlassButton2Click(Sender: TObject);
begin
  recSeq.Enabled := False;
  recSeq.Visible := False;
end;

procedure TF_EnvaseBt.AdvGlassButton3Click(Sender: TObject);
Var
iId:Integer;
begin
  //inherited; cad com ci
  if edtSeq.Text <> '' then
  begin
      dm.opencnn;
      if DM.SMGen.UsoCI(strtoint(edtSeq.Text)) = True then
      begin
         if oCds.State in [dsInsert] then
        begin
          if bNaoTemEstoque = True then
          begin
             if (DM.tmsMSGQ('Atenção!!!','Não tem itens suficientes no estoque. Deseja continuar mesmo assim?') = mrOk) then
             begin
                cdsDetalheEnvase.ApplyUpdates(-1);
                cxGrid1DBTableView1.Navigator.Visible := False;  //////////// deixar so a msg e nao deixar continuar
                CdsInsumoEnvase.Refresh;
                cdsDetalheEnvase.First;
             end;
          end
          else if bNaoTemEstoque = False then
          begin
            DM.opencnn;
            cdsControleOp.Open;
            cdsControleOp.Edit;
            iId := dm.SMGen.NextControleOp;
            cdsControleOpid.AsInteger   := iId;
            cdsControleOpidop.AsInteger := oCdsid.AsInteger;
            cdsControleOpqtd.AsInteger := StrToInt(DBEdit1.Text);
            cdsControleOpdatains.AsDateTime := Now;
            cdsControleOphorains.AsDateTime := Now;
            cdsControleOp.Post;
            cdsControleOp.ApplyUpdates(-1);


            cdsDetalheEnvase.ApplyUpdates(-1);
            cxGrid1DBTableView1.Navigator.Visible := False;
            //CdsInsumoEnvase.Refresh;
            cdsDetalheEnvase.First;
          end;

          if oCdsstatus.AsString = 'Finalizada' then
          begin
             while not cdsDetalheEnvase.Eof do
             begin
               dm.SMGen.ISaidaEstoqueEnvase(cdsDetalheEnvaseidcodproduto.AsInteger,cdsDetalheEnvaseidordemproducao.AsInteger,cdsDetalheEnvaseqtd.AsFloat);
               cdsDetalheEnvase.Next;
             end;
               dm.SMGen.IBaixaEstoqueOP(cdsEstoqueQuimicoidproduto.AsInteger,oCdsid.AsInteger,cdsEstoqueQuimicoqtd.AsFloat);
          end;
          dm.SMGen.IProdutoOPQuimico(cdsEstoqueQuimicoidproduto.AsInteger,cdsEstoqueQuimicoidtblordemproducao.AsInteger,cdsEstoqueQuimicoqtd.AsFloat,cdsEstoqueQuimicopercentual.AsFloat);
          dm.SMGen.IEstProdAcabado(oCdsid.AsInteger,oCdsidprodutos.AsInteger,oCdslote.AsString,oCdsqtdreal.AsFloat);
          dm.closecnn;
          oCds.Post;                  //intherited
          oCds.ApplyUpdates(-1);      //intherited
        end
        else
        if oCds.State in [dsEdit] then
        begin
             cxGrid1DBTableView1.Navigator.Visible := False;

             dm.opencnn;
             if oCdsstatus.AsString = 'Finalizada' then
             begin
               while not cdsDetalheEnvase.Eof do
                        begin
                         dm.SMGen.ISaidaEstoqueEnvase(cdsDetalheEnvaseidcodproduto.AsInteger,cdsDetalheEnvaseidordemproducao.AsInteger,cdsDetalheEnvaseqtd.AsFloat);
                         cdsDetalheEnvase.Next;
                        end;
                     dm.SMGen.IBaixaEstoqueOP(cdsEstoqueQuimicoidproduto.AsInteger,oCdsid.AsInteger,cdsEstoqueQuimicoqtd.AsFloat);
                     dm.SMGen.IEstProdAcabado(oCdsid.AsInteger,oCdsidprodutos.AsInteger,oCdslote.AsString,oCdsqtdreal.AsFloat);
             end;
             dm.closecnn;
        end;
             //CdsInsumoEnvase.Refresh;
         oCds.Edit;
         oCds.Post;
         oCds.ApplyUpdates(-1);
         btnEditar.Enabled := False;

         ShowMessage('Cadastrado com sucesso!');
         recSeq.Visible := False;
         recSeq.Enabled := fALSE;
      end
      else
      begin
         ShowMessage('Código já utilizado ou inexistente!');
         edtSeq.Text := '';
      end;
  end
  else
  begin
    ShowMessage('É necessário digitar código do CI');
  end;

end;

procedure TF_EnvaseBt.AdvGlassButton4Click(Sender: TObject);
begin
  //dar baixa somente do valor digitado e depois subtrai-lo
  cdsControleOp.Close;
  cdsControleOp.Open;
  cdsControleOp.Insert;


  panelQtd.Visible := True;
end;

procedure TF_EnvaseBt.AdvGlassButton5Click(Sender: TObject);
begin
  inherited;
  panelQtd.Visible := False;
end;

procedure TF_EnvaseBt.btnCIClick(Sender: TObject);
begin
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

procedure TF_EnvaseBt.btnImprimiClick(Sender: TObject);
begin
  inherited;
  ReportOP.PrepareReport();
  ReportOP.ShowReport();
end;

procedure TF_EnvaseBt.btnQuantClick(Sender: TObject);
var
  ValorEnviado, ValorAEnviar  : String;
  CalcEnviado, CalcEnviar, CalcTotal : Double;
begin
   DM.opencnn;
   edtFaltante.Text := FormatFloat('#,##0.00',dm.SMGen.SumControleOp(oCdsid.AsInteger));
   DM.closecnn;
  //quantidade a ser enviada
  CalcEnviado := STRTOFLOAT(StringReplace(edtFaltante.Text,'.','',[]));
  CalcEnviar  := StrToFloat(StringReplace(DBEdit3.Text,'.','',[]));
  CalcTotal   := CalcEnviado + CalcEnviar;

  ValorEnviado := edtFaltante.Text;
  ValorAEnviar := FloatToStr(CalcTotal);

  if DBEdit3.Text = ''  then
  begin
    ShowMessage('Digite um valor para continuar!');
  end
  else
  begin
    if ValorAEnviar = ValorEnviado then
    begin
       ShowMessage('Não é possível incluir!' + #13 + 'Valor acima do previsto.');
    end
    else
    begin
      DM.opencnn;
      cdsControleOpid.AsInteger   := dm.SMGen.NextControleOp;
      cdsControleOpidop.AsInteger := oCdsid.AsInteger;
      cdsControleOpdatains.AsDateTime := Now;
      cdsControleOphorains.AsDateTime := Now;

      cdsControleOp.Post;
      cdsControleOp.ApplyUpdates(-1);

      DM.opencnn;
      edtFaltante.Text := FormatFloat('#,##0.00',dm.SMGen.SumControleOp(oCdsid.AsInteger));

      DM.closecnn;

      ShowMessage('Enviado com sucesso!');
      panelQtd.Visible := False;
    end;
  end;
end;

procedure TF_EnvaseBt.cdsDetalheEnvaseCalcFields(DataSet: TDataSet);
begin
  inherited;

//   while not CdsInsumoEnvase.Eof do
//   begin
//      cdsDetalheEnvasesQuantidade.AsFloat := cdsQtdProdutoSUM.AsFloat;
//   end;

end;

procedure TF_EnvaseBt.cdsEstoqueQuimicoCalcFields(DataSet: TDataSet);
begin
  inherited;
    cdsProdutos.Locate('id',cdsProdutosid.AsInteger,[]);
    cdsEstoqueQuimicosDescricao.AsString := cdsProdutosdescricao.AsString;
end;

procedure TF_EnvaseBt.cdsEstoqueQuimicopercentualChange(Sender: TField);
begin
  inherited;
   cdsEstoqueQuimicoqtd.AsFloat := oCdsqtdprevista.AsFloat * cdsEstoqueQuimicopercentual.AsFloat;
end;

procedure TF_EnvaseBt.cxDBComboBox2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
//   cdsDetalheEnvase.Close;
//   cdsDetalheEnvase.Open;
//
//   CdsInsumoEnvase.Close;
//   CdsInsumoEnvase.Params[0].Value := CdsProdutosid.AsInteger;
//   CdsInsumoEnvase.Open;
//
//   while not cdsDetalheEnvase.Eof do
//   begin
//      cdsDetalheEnvase.Insert;
//      cdsDetalheEnvaseue.AsString := oCdsue.AsString;
//      cdsDetalheEnvase.Post;
//      cdsDetalheEnvase.Next;
//   end;
end;

procedure TF_EnvaseBt.cxDBComboBox2Exit(Sender: TObject);
begin
  inherited;
    cdsDetalheEnvase.First;
   if oCds.State in [dsInsert] then
   begin
    while not cdsDetalheEnvase.Eof do
    begin
      cdsDetalheEnvase.Edit;
      cdsDetalheEnvaseue.AsString := oCdsue.AsString;
      cdsDetalheEnvase.Post;
      cdsDetalheEnvase.Next;
    end;
   end;
end;

procedure TF_EnvaseBt.CCKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    CC.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TF_EnvaseBt.cxDBLookupComboBox1Exit(Sender: TObject);
begin
    while not CdsInsumoEnvase.Eof do
    begin
        cdsQtdProduto.Edit;
        cdsQtdProduto.Close;
        cdsQtdProduto.Params[0].Value  := CdsProdutosid.AsInteger;
        cdsQtdProduto.Open;
        cdsQtdProduto.Post;
    end;
end;

procedure TF_EnvaseBt.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
//   cdsQtdProduto.Close;
//   cdsQtdProduto.Params[0].Value  := CdsProdutosid.AsInteger;
//   cdsQtdProduto.Open;
end;

procedure TF_EnvaseBt.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
   bNaoTemEstoque := False;
   //Insumo (Embalagens)
   cdsQtdProduto.Close;
   cdsQtdProduto.Params[0].Value  := CdsProdutosid.AsInteger;
   cdsQtdProduto.Open;

   cdsDetalheEnvase.Close;
   cdsDetalheEnvase.Open;

   CdsInsumoEnvase.Close;
   CdsInsumoEnvase.Params[0].Value := CdsProdutosid.AsInteger;
   CdsInsumoEnvase.Open;
   CdsInsumoEnvase.First;

   //Quimico (Mat. Prima Acabada)
    cdsEstoqueQuimico.Close;
    cdsEstoqueQuimico.Params[0].AsInteger := oCdsid.AsInteger;
    cdsEstoqueQuimico.Open;

    CdsProdutos.Locate('id',cdsProdutosid.AsInteger,[]);

    cdsEstoqueQuimico.Insert;
    cdsEstoqueQuimicoidtblordemproducao.AsInteger := oCdsid.AsInteger;
    cdsEstoqueQuimicoidproduto.AsInteger := cdsProdutosid.AsInteger;
    cdsEstoqueQuimico.Post;


   while not CdsInsumoEnvase.Eof do
   begin
     cdsDetalheEnvase.Insert;
     cdsDetalheEnvasecodproduto.AsString := CdsInsumoEnvaseINSUMODESC.AsString;
     cdsDetalheEnvaseidcodproduto.AsInteger := CdsInsumoEnvaseinsumosid.AsInteger;
     cdsDetalheEnvaseidordemproducao.AsInteger := oCdsid.AsInteger;
     cdsDetalheEnvasesQuantidade.AsFloat := cdsQtdProdutoSUM.AsFloat;
     dm.opencnn;
     fEstoque := dm.SMGen.AvisoEstoqueOrdemProducao(CdsInsumoEnvaseinsumosid.AsInteger);
     dm.closecnn;
     cdsDetalheEnvasesEstoque.AsString := FloattoStr(fEstoque);
     cdsDetalheEnvase.Post;

     if oCdsqtdprevista.AsFloat > fEstoque then
     begin
        bNaoTemEstoque := True;
        Canvas.Font.Color := clRed;
     end;

     CdsInsumoEnvase.Next;
     CdsProdutos.Next;
   end;

end;

procedure TF_EnvaseBt.cxDBSpinEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  cxDBSpinEdit1.Perform(WM_KEYDOWN, VK_TAB, 0);
end;

procedure TF_EnvaseBt.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  while not CdsInsumoEnvase.Eof do
   begin
   if (cdsDetalheEnvasesQuantidade.AsFloat > fEstoque) then
      begin
      ACanvas.Font.Color := clBlack;
      end;
      CdsInsumoEnvase.Next;
   end;
end;

procedure TF_EnvaseBt.DBEdit1Change(Sender: TObject);
begin
  inherited;
///
end;

procedure TF_EnvaseBt.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  cdsDetalheEnvase.First;
      while not cdsDetalheEnvase.Eof do
      begin
        cdsDetalheEnvase.Edit;
        cdsDetalheEnvaseqtd.AsFloat := oCdsqtdprevista.AsFloat;
        cdsDetalheEnvase.Post;
        cdsDetalheEnvase.Next;
      end;
end;

procedure TF_EnvaseBt.FormCreate(Sender: TObject);
begin
  inherited;
   cdsQtdProduto.Close;
   cdsQtdProduto.Params[0].Value :=  CdsProdutosid.AsInteger;
   cdsQtdProduto.Open;
   cdsDetalheEnvase.Close;
   cdsDetalheEnvase.Open;
   CdsProdutos.Close;
   CdsProdutos.Open;
   CdsInsumoEnvase.Close;
   CdsInsumoEnvase.Params[0].Value := oCdsid.AsInteger;
   CdsInsumoEnvase.Open;


   //Sum do enviado para o previsto
   
end;

procedure TF_EnvaseBt.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
