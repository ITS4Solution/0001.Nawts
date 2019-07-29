unit U_Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxCheckBox,
  cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, Vcl.StdCtrls, cxDropDownEdit,
  Vcl.Mask, Vcl.DBCtrls,U_AbstratoButtons, cxLabel, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxGDIPlusClasses, dxBevel, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TF_Usuarios = class(TF_AbstratoButtons)
    AdvGlassButton1: TAdvGlassButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    oCdsid: TIntegerField;
    oCdsnome: TStringField;
    oCdsemail: TStringField;
    oCdsusuario: TStringField;
    oCdssenha: TStringField;
    GroupBox1: TGroupBox;
    btnFornVis: TRadioButton;
    btnForIns: TRadioButton;
    btnFornNeg: TRadioButton;
    GroupBox2: TGroupBox;
    btnEstVis: TRadioButton;
    btnEstIns: TRadioButton;
    btnEstNeg: TRadioButton;
    GroupBox3: TGroupBox;
    btnQuimVis: TRadioButton;
    btnQuimIns: TRadioButton;
    btnQuimNeg: TRadioButton;
    GroupBox4: TGroupBox;
    btnProVis: TRadioButton;
    btnProdIns: TRadioButton;
    btnProdNeg: TRadioButton;
    GroupBox5: TGroupBox;
    btnManVis: TRadioButton;
    btnManIns: TRadioButton;
    btnManNeg: TRadioButton;
    GroupBox6: TGroupBox;
    btnParVis: TRadioButton;
    btnParIns: TRadioButton;
    btnParNeg: TRadioButton;
    GroupBox7: TGroupBox;
    btnRelVis: TRadioButton;
    btnRelIns: TRadioButton;
    btnRelNeg: TRadioButton;
    GroupBox8: TGroupBox;
    btnPedVis: TRadioButton;
    btnPedIns: TRadioButton;
    btnPedNeg: TRadioButton;
    GroupBox9: TGroupBox;
    btnEtiqVisu: TRadioButton;
    btnEtiqIns: TRadioButton;
    btnEtiqNeg: TRadioButton;
    cdsPermissoes: TClientDataSet;
    cdsPermissoesid: TIntegerField;
    cdsPermissoesidusuario: TIntegerField;
    cdsPermissoesidtipo: TIntegerField;
    cdsPermissoesnomeform: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ActDeletarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Usuarios: TF_Usuarios;

implementation

{$R *.dfm}

uses UDM, U_UsuariosGrid, U_Utils;

procedure TF_Usuarios.ActDeletarExecute(Sender: TObject);
begin
  inherited;
 //CRIAR FUNCTION PARA DELETAR AS PERMISSÕES
 dm.opencnn;
   dm.SMGen.DeletaPermissoes(F_UsuariosGrid.oCdsId.AsInteger);
 dm.closecnn;
end;

procedure TF_Usuarios.ActEditarExecute(Sender: TObject);
begin
  inherited;
   cxDBTextEdit1.SetFocus;
end;

procedure TF_Usuarios.ActNovoExecute(Sender: TObject);
begin
  inherited;
   cxDBTextEdit1.SetFocus;
end;

procedure TF_Usuarios.ActSalvarExecute(Sender: TObject);
var
  idUser : Integer;
begin
   if ValidarEMail(oCdsEmail.AsString) = False then
   begin
      DM.tmsMsg('Informação','Digite um e-mail válido !');
      Abort;
   end;
//
//  oCds.Post;
//  oCds.ApplyUpdates(-1);
//  oCds.Insert;

  inherited;
  dm.opencnn;
  idUser := DM.SMGen.GetIdUser;
  dm.closecnn;
    //idUser := oCdsid.AsInteger;



  if btnFornVis.Checked = True then
  begin
  //DM.SMGen.IPermissao(idUser, 2, 'F_FornecedorGrid');
    dm.opencnn;
    if DM.SMGen.IPermissao(idUser, 2, 'F_FornecedorGrid') = False then
    begin
      dm.closecnn;
      ShowMessage('Erro Forn. Visualizar');
    end;
    dm.closecnn;
  end;

  if btnForIns.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_FornecedorGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_EspMPGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_EspEmbGrid');
    dm.closecnn;
  end;

  if btnFornNeg.Checked = true then                  //se estiver negado
  begin
   dm.opencnn;
   DM.SMGen.IPermissao(idUser, 3, 'F_FornecedorGrid');
   DM.SMGen.IPermissao(idUser, 3, 'F_EspMPGrid');
   DM.SMGen.IPermissao(idUser, 3, 'F_EspEmbGrid');
   dm.closecnn;
  end;

  if btnEstIns.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_NFeEntrada');
    DM.SMGen.IPermissao(idUser, 1, 'F_ProdutosGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_InsumosGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_RelatEstoqueInsumos');
    DM.SMGen.IPermissao(idUser, 1, 'F_EstoqueInsumosGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_RefugoGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_CILista');
    DM.SMGen.IPermissao(idUser, 1, 'F_SaidaProducao');
    dm.closecnn;
  end;

  if btnEstVis.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 2, 'F_NFeEntrada');
    DM.SMGen.IPermissao(idUser, 2, 'F_ProdutosGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_InsumosGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_RelatEstoqueInsumos');
    DM.SMGen.IPermissao(idUser, 2, 'F_EstoqueInsumosGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_RefugoGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_CILista');
    DM.SMGen.IPermissao(idUser, 2, 'F_SaidaProducao');
    dm.closecnn;
  end;


   if btnEstNeg.Checked = True then                            //se estiver negado
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_NFeEntrada');
    DM.SMGen.IPermissao(idUser, 3, 'F_ProdutosGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_InsumosGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_RelatEstoqueInsumos');
    DM.SMGen.IPermissao(idUser, 3, 'F_EstoqueInsumosGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_RefugoGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_CILista');
    DM.SMGen.IPermissao(idUser, 3, 'F_SaidaProducao');
    dm.closecnn;
  end;

  if btnProdIns.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_EnvaseGrid');
    dm.closecnn;
  end;

  if btnProVis.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 2, 'F_EnvaseGrid');
    dm.closecnn;
  end;

  if btnProdNeg.Checked = True then                       //negado
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_EnvaseGrid');
    dm.closecnn;
  end;

  if btnManIns.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_UsuariosGrid');
    dm.closecnn;
  end;

  if btnManVis.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 2, 'F_UsuariosGrid');
    dm.closecnn;
  end;

  if btnManNeg.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_UsuariosGrid');          //negado
    dm.closecnn;
  end;

  if btnParVis.Checked = True then
  begin
    dm.opencnn;
    DM.SMGen.IPermissao(idUser, 2, 'F_GrupoProdutosGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_Sequencial');
  end;

  if btnParIns.Checked = True then
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_GrupoProdutosGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_Sequencial');
    dm.closecnn;
  end;

  if btnParNeg.Checked = True then                                  //negado
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_GrupoProdutosGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_Sequencial');
    dm.closecnn;
  end;

  if btnPedIns.Checked = True then
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_PedidoGrid');
    dm.closecnn;
  end;

  if btnPedVis.Checked = True then
  begin
  //DM.SMGen.IPermissao(idUser, 2, 'F_PedidoGrid');
    DM.opencnn;
    if DM.SMGen.IPermissao(idUser, 2, 'F_PedidoGrid') = False then
    begin
      dm.closecnn;
      ShowMessage('Erro Forn. Visualizar');
    end;
  end;

  if btnPedNeg.Checked = True then                         //negado
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_PedidoGrid');
    dm.closecnn;
  end;

  if btnQuimVis.Checked = True then
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 2, 'F_CadFormulaGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_CadOrdemProducaoGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_ProdutoAcabadoGrid');
    DM.SMGen.IPermissao(idUser, 2, 'F_ControleNFMP');
    DM.SMGen.IPermissao(idUser, 2, 'F_ListaLote');
    dm.closecnn;
  end;

  if btnQuimIns.Checked = True then
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_CadFormulaGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_CadOrdemProducaoGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_ProdutoAcabadoGrid');
    DM.SMGen.IPermissao(idUser, 1, 'F_ControleNFMP');
    DM.SMGen.IPermissao(idUser, 1, 'F_ListaLote');
    dm.closecnn;
  end;

  if btnQuimNeg.Checked = True then                                 //negado
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_CadFormulaGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_CadOrdemProducaoGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_ProdutoAcabadoGrid');
    DM.SMGen.IPermissao(idUser, 3, 'F_ControleNFMP');
    DM.SMGen.IPermissao(idUser, 3, 'F_ListaLote');
    dm.closecnn;
  end;

  if btnEtiqVisu.Checked = True then
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 2, 'F_EtiquetaLote');
    DM.SMGen.IPermissao(idUser, 2, 'F_EtiquetaRegistro');
    DM.SMGen.IPermissao(idUser, 2, 'F_EtiquetaAprov');
    DM.SMGen.IPermissao(idUser, 2, 'F_EtiquetaReprov');
    DM.SMGen.IPermissao(idUser, 2, 'F_EtiquetaQuarent');
    dm.closecnn;
  end;

  if btnEtiqIns.Checked = True then
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_EtiquetaLote');
    DM.SMGen.IPermissao(idUser, 1, 'F_EtiquetaRegistro');
    DM.SMGen.IPermissao(idUser, 1, 'F_EtiquetaAprov');
    DM.SMGen.IPermissao(idUser, 1, 'F_EtiquetaReprov');
    DM.SMGen.IPermissao(idUser, 1, 'F_EtiquetaQuarent');
    dm.closecnn;
  end;

  if btnEtiqNeg.Checked = True then                             //negado
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_EtiquetaLote');
    DM.SMGen.IPermissao(idUser, 3, 'F_EtiquetaRegistro');
    DM.SMGen.IPermissao(idUser, 3, 'F_EtiquetaAprov');
    DM.SMGen.IPermissao(idUser, 3, 'F_EtiquetaReprov');
    DM.SMGen.IPermissao(idUser, 3, 'F_EtiquetaQuarent');
    dm.closecnn;
  end;



  if btnRelVis.Checked = True then
  begin
    DM.opencnn;                                                                // parte da expedição
    DM.SMGen.IPermissao(idUser, 2, 'F_OPExpedicao');
    DM.SMGen.IPermissao(idUser, 2, 'F_BaixaProdEnv');
    dm.closecnn;
  end;

  if btnRelIns.Checked = True then
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 1, 'F_OPExpedicao');
    DM.SMGen.IPermissao(idUser, 1, 'F_BaixaProdEnv');
    dm.closecnn;
  end;

  if btnRelNeg.Checked = True then                             //negado
  begin
    DM.opencnn;
    DM.SMGen.IPermissao(idUser, 3, 'F_OPExpedicao');
    DM.SMGen.IPermissao(idUser, 3, 'F_BaixaProdEnv');
    dm.closecnn;
  end;


end;

procedure TF_Usuarios.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   if DM.tmsMSGQ('Informação','Deseja realmente resetar a senha ?') = mrOk then
   begin
      oCds.Edit;
      oCdsSenha.AsString := '';
      oCds.Post;
      oCds.ApplyUpdates(-1);
   end;
end;

procedure TF_Usuarios.FormCreate(Sender: TObject);
begin
  inherited;
   oCDS.Open;
   cdsPermissoes.Open;
end;

procedure TF_Usuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
