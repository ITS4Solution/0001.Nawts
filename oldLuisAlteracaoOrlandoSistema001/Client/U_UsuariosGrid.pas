unit U_UsuariosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, Datasnap.DBClient, System.Actions,
  Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxTextEdit, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TF_UsuariosGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsnome: TStringField;
    oCdsemail: TStringField;
    oCdsusuario: TStringField;
    oCdssenha: TStringField;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    btnNovo: TAdvGlassButton;
    btnAlterar: TAdvGlassButton;
    procedure btnNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_UsuariosGrid: TF_UsuariosGrid;

implementation

{$R *.dfm}

uses UDM, U_Usuarios;

procedure TF_UsuariosGrid.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DM.opencnn;
  F_Usuarios.ShowModal;
  F_Usuarios.ocds.Close;
  F_Usuarios.ocds.Open;
  F_Usuarios.ocds.Locate('id', ocdsid.AsInteger, []);
  F_Usuarios.ocds.Edit;
  DM.closecnn;
end;

procedure TF_UsuariosGrid.btnNovoClick(Sender: TObject);
begin
  inherited;
   F_Usuarios := TF_Usuarios.Create(nil);
   F_Usuarios.oCds.Edit;

   DM.opencnn;
   F_Usuarios.oCdsid.AsInteger := DM.SMGen.GetNextIdUser;
   DM.closecnn;

   F_Usuarios.oCds.Close;
   F_Usuarios.oCds.Params[0].AsInteger := F_Usuarios.oCdsid.AsInteger;
   F_Usuarios.oCds.Open;

   F_Usuarios.oCds.Insert;
   F_Usuarios.ShowModal;
   F_Usuarios.Free;
   oCds.Refresh;
//   if DM.tmsMSG('Informação','Deseja realmente resetar a senha ?') = mrOk then
//   begin
//      oCds.Edit;
//      oCdsSenha.AsString := '';
//      oCds.Post;
//      oCds.ApplyUpdates(-1);
//   end;
end;

procedure TF_UsuariosGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
var
idtipo : string;
nomeform : string;
begin
  inherited;
   F_Usuarios := TF_Usuarios.Create(nil);
   F_Usuarios.oCds.Locate('Id',oCdsId.AsInteger,[loPartialKey]);

   F_Usuarios.ocds.Close;
   F_Usuarios.ocds.Params[0].Value            := oCdsId.AsInteger;         // cabeçalho usuarios
   F_Usuarios.ocds.Open;

   F_Usuarios.cdsPermissoes.Close;
   F_Usuarios.cdsPermissoes.Params[0].Value   := oCdsId.AsInteger;        // permissoes usuarios
   F_Usuarios.cdsPermissoes.Open;



   // aparecer as permissões
   //F_Usuarios.btnRelIns.Checked := true;   // check de expedição vem com Insert marcado
    F_Usuarios.cdsPermissoes.First;
   while not F_Usuarios.CdsPermissoes.Eof do
    begin
      idtipo   := F_Usuarios.cdsPermissoesidtipo.AsString;
      nomeform := F_Usuarios.cdsPermissoesnomeform.AsString;

       if (idtipo ='1') and (nomeform ='F_FornecedorGrid') = true then
        begin
        F_Usuarios.btnForIns.Checked := true;
        end;
        if (idtipo ='2') and (nomeform ='F_FornecedorGrid') = true then
        begin
         F_Usuarios.btnFornvis.Checked := true;
        end;
        if (idtipo ='3') and (nomeform ='F_FornecedorGrid') = true then
        begin
        F_Usuarios.btnFornNeg.Checked := true;
        end;


       if (idtipo ='1') and (nomeform ='F_NFeEntrada') = true then
       begin
          F_Usuarios.btnEstIns.Checked := true;
       end;
        if (idtipo ='2') and (nomeform ='F_NFeEntrada') = true then
       begin
         F_Usuarios.btnEstVis.Checked := true;
       end;
       if (idtipo ='3') and (nomeform ='F_NFeEntrada') = true then
       begin
          F_Usuarios.btnEstNeg.Checked := true;
       end;

       if (idtipo ='1') and (nomeform ='F_ProdutosGrid') = true then
       begin
          F_Usuarios.btnEstIns.Checked := true;
       end;
       if (idtipo ='2') and (nomeform ='F_ProdutosGrid') = true then
       begin
         F_Usuarios.btnEstVis.Checked := true;
       end;
        if (idtipo ='3') and (nomeform ='F_ProdutosGrid') = true then
       begin
          F_Usuarios.btnEstNeg.Checked := true;
       end;

        if (idtipo ='1') and (nomeform ='F_InsumosGrid') = true then
       begin
          F_Usuarios.btnEstIns.Checked := true;
       end;
        if (idtipo ='2') and (nomeform ='F_InsumosGrid') = true then
       begin
         F_Usuarios.btnEstVis.Checked := true;
       end;
        if (idtipo ='3') and (nomeform ='F_InsumosGrid') = true then
       begin
          F_Usuarios.btnEstNeg.Checked := true;
       end;

       if (idtipo ='1') and (nomeform ='F_RelatEstoqueInsumos') = true then
       begin
          F_Usuarios.btnEstIns.Checked := true;
       end;
        if (idtipo ='2') and (nomeform ='F_RelatEstoqueInsumos') = true then
       begin
         F_Usuarios.btnEstVis.Checked := true;
       end;
       if (idtipo ='3') and (nomeform ='F_RelatEstoqueInsumos') = true then
       begin
          F_Usuarios.btnEstNeg.Checked := true;
       end;

       if (idtipo ='1') and (nomeform ='F_EstoqueInsumosGrid') = true then
       begin
          F_Usuarios.btnEstIns.Checked := true;
       end;
        if (idtipo ='2') and (nomeform ='F_EstoqueInsumosGrid') = true then
       begin
         F_Usuarios.btnEstVis.Checked := true;
       end;
       if (idtipo ='3') and (nomeform ='F_EstoqueInsumosGrid') = true then
       begin
          F_Usuarios.btnEstNeg.Checked := true;
       end;

       if (idtipo ='1') and (nomeform ='F_RefugoGrid') = true then
       begin
          F_Usuarios.btnEstIns.Checked := true;
       end;
       if (idtipo ='2') and (nomeform ='F_RefugoGrid') = true then
       begin
         F_Usuarios.btnEstVis.Checked := true;
       end;
       if (idtipo ='3') and (nomeform ='F_RefugoGrid') = true then
       begin
          F_Usuarios.btnEstNeg.Checked := true;
       end;

       if (idtipo ='1') and (nomeform ='F_EnvaseGrid') = true then
         begin
            F_Usuarios.btnProdIns.Checked := true;
         end;
         if (idtipo ='2') and (nomeform ='F_EnvaseGrid') = true then
         begin
            F_Usuarios.btnProVis.Checked := true;
         end;
        if (idtipo ='3') and (nomeform ='F_EnvaseGrid') = true then
         begin
            F_Usuarios.btnProdNeg.Checked := true;
         end;


        if (idtipo ='1') and (nomeform ='F_UsuariosGrid') = true then
        begin
           F_Usuarios.btnManIns.Checked := true;
        end;
        if (idtipo ='2') and (nomeform ='F_UsuariosGrid') = true then
        begin
           F_Usuarios.btnManVis.Checked := true;
        end;
        if (idtipo ='3') and (nomeform ='F_UsuariosGrid') = true then
        begin
           F_Usuarios.btnManNeg.Checked := true;
        end;

        if (idtipo ='1') and (nomeform ='F_GrupoProdutosGrid') = true then
        begin
           F_Usuarios.btnParIns.Checked := true;
        end;
        if (idtipo ='2') and (nomeform ='F_GrupoProdutosGrid') = true then
        begin
           F_Usuarios.btnParVis.Checked := true;
        end;
         if (idtipo ='3') and (nomeform ='F_GrupoProdutosGrid') = true then
        begin
           F_Usuarios.btnParNeg.Checked := true;
        end;

         if (idtipo ='1') and (nomeform ='F_Sequencial') = true then
         begin
           F_Usuarios.btnParIns.Checked := true;
         end;
         if (idtipo ='2') and (nomeform ='F_Sequencial') = true then
         begin
           F_Usuarios.btnParVis.Checked := true;
         end;
          if (idtipo ='3') and (nomeform ='F_Sequencial') = true then
         begin
           F_Usuarios.btnParNeg.Checked := true;
         end;

         if (idtipo ='1') and (nomeform ='F_PedidoGrid') = true then
         begin
           F_Usuarios.btnPedIns.Checked := true;
         end;
         if (idtipo ='2') and (nomeform ='F_PedidoGrid') = true then
         begin
           F_Usuarios.btnPedVis.Checked := true;
         end;
          if (idtipo ='3') and (nomeform ='F_PedidoGrid') = true then
         begin
           F_Usuarios.btnPedNeg.Checked := true;
         end;

         if (idtipo ='1') and (nomeform ='F_CadFormulaGrid') = true then
          begin
            F_Usuarios.btnQuimIns.Checked := true;
          end;
          if (idtipo ='2') and (nomeform ='F_CadFormulaGrid') = true then
          begin
            F_Usuarios.btnQuimVis.Checked := true;
          end;
          if (idtipo ='3') and (nomeform ='F_CadFormulaGrid') = true then
          begin
            F_Usuarios.btnQuimNeg.Checked := true;
          end;

         if (idtipo ='1') and (nomeform ='F_CadOrdemProducaoGrid') = true then
          begin
            F_Usuarios.btnQuimIns.Checked := true;
          end;
           if (idtipo ='2') and (nomeform ='F_CadOrdemProducaoGrid') = true then
          begin
            F_Usuarios.btnQuimVis.Checked := true;
          end;
           if (idtipo ='3') and (nomeform ='F_CadOrdemProducaoGrid') = true then
          begin
            F_Usuarios.btnQuimNeg.Checked := true;
          end;

          if (idtipo ='1') and (nomeform ='F_ProdutoAcabadoGrid') = true then
          begin
            F_Usuarios.btnQuimIns.Checked := true;
          end;
           if (idtipo ='2') and (nomeform ='F_ProdutoAcabadoGrid') = true then
          begin
            F_Usuarios.btnQuimVis.Checked := true;
          end;
           if (idtipo ='3') and (nomeform ='F_ProdutoAcabadoGrid') = true then
          begin
            F_Usuarios.btnQuimNeg.Checked := true;
          end;

         if (idtipo ='1') and (nomeform ='F_EtiquetaLote') = true then
         begin
           F_Usuarios.btnEtiqIns.Checked := true;
         end;
         if (idtipo ='2') and (nomeform ='F_EtiquetaLote') = true then
         begin
            F_Usuarios.btnEtiqVisu.Checked := true;
         end;
         if (idtipo ='3') and (nomeform ='F_EtiquetaLote') = true then
         begin
           F_Usuarios.btnEtiqNeg.Checked := true;
         end;

         if (idtipo ='1') and (nomeform ='F_EtiquetaRegistro') = true then
         begin
           F_Usuarios.btnEtiqIns.Checked := true;
         end;
          if (idtipo ='2') and (nomeform ='F_EtiquetaRegistro') = true then
         begin
            F_Usuarios.btnEtiqVisu.Checked := true;
         end;
         if (idtipo ='3') and (nomeform ='F_EtiquetaLote') = true then
         begin
           F_Usuarios.btnEtiqNeg.Checked := true;
         end;

          if (idtipo ='1') and (nomeform ='F_EtiquetaAprov') = true then
         begin
           F_Usuarios.btnEtiqIns.Checked := true;
         end;
          if (idtipo ='2') and (nomeform ='F_EtiquetaAprov') = true then
         begin
            F_Usuarios.btnEtiqVisu.Checked := true;
         end;
         if (idtipo ='3') and (nomeform ='F_EtiquetaLote') = true then
         begin
           F_Usuarios.btnEtiqNeg.Checked := true;
         end;

          if (idtipo ='1') and (nomeform ='F_EtiquetaReprov') = true then
         begin
           F_Usuarios.btnEtiqIns.Checked := true;
         end;
          if (idtipo ='2') and (nomeform ='F_EtiquetaReprov') = true then
         begin
            F_Usuarios.btnEtiqVisu.Checked := true;
         end;
          if (idtipo ='3') and (nomeform ='F_EtiquetaLote') = true then
         begin
           F_Usuarios.btnEtiqNeg.Checked := true;
         end;



    F_Usuarios.cdsPermissoes.Next;
    end;


   F_Usuarios.ShowModal;
   F_Usuarios.Free;
   oCds.Refresh;
end;

end.
