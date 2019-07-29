unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXDataSnap, DBXCommon, DB, SqlExpr, StdCtrls, Menus, ComCtrls, ExtCtrls, ActnList,
  dxGDIPlusClasses, Datasnap.DBClient, Winapi.ShellAPI, Vcl.AppEvnts;

type
  TF_Principal = class(TForm)
    StatusBar: TStatusBar;
    MainMenu1: TMainMenu;
    Usurios1: TMenuItem;
    Timer1: TTimer;
    Manuteno1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Image1: TImage;
    Estoque1: TMenuItem;
    CadastrodeInsumos1: TMenuItem;
    Insumos1: TMenuItem;
    Produtos1: TMenuItem;
    RelacionamentoInsumosxMatriaPrima1: TMenuItem;
    InsumosxMatriaPrima1: TMenuItem;
    Quimica1: TMenuItem;
    NFedeEntrada1: TMenuItem;
    Parametros1: TMenuItem;
    GrupodeProdutos1: TMenuItem;
    Cadastros1: TMenuItem;
    Fornecedores1: TMenuItem;
    Relatrios1: TMenuItem;
    EstoquedeInsumos1: TMenuItem;
    Frmulas1: TMenuItem;
    OrdemdeProduo1: TMenuItem;
    Produo1: TMenuItem;
    EstoqueInsumos1: TMenuItem;
    OrdemdeProduoEnvase1: TMenuItem;
    ProdutoAcabado1: TMenuItem;
    Refugo1: TMenuItem;
    ZerarSeq: TMenuItem;
    Relatrios2: TMenuItem;
    EmbalagemInsumos1: TMenuItem;
    Pedidos1: TMenuItem;
    Cadastrarpedido1: TMenuItem;
    Fornecedor1: TMenuItem;
    ValorSequncial1: TMenuItem;
    Label1: TLabel;
    MatPrima1: TMenuItem;
    UsoInterno1: TMenuItem;
    ControleInterno1: TMenuItem;
    ComunicadoInterno1: TMenuItem;
    Especificaes1: TMenuItem;
    MPeSP: TMenuItem;
    Embalagem1: TMenuItem;
    ListagemCI1: TMenuItem;
    ControleEstoque1: TMenuItem;
    ControledeLotes1: TMenuItem;
    Etiqueta1: TMenuItem;
    Lote1: TMenuItem;
    Registro1: TMenuItem;
    Aprovado1: TMenuItem;
    Reprovado1: TMenuItem;
    OPExpedicao: TMenuItem;
    BaixaProdutoEnvasado1: TMenuItem;
    Quarentena1: TMenuItem;
    SaidaProduto1: TMenuItem;
    Relatrios3: TMenuItem;
    Cliente1: TMenuItem;
    Sada1: TMenuItem;
    Estoque2: TMenuItem;
    Estoque3: TMenuItem;
    PanelAviso: TShape;
    lblAviso: TLabel;
    TimerVerificaOPV: TTimer;
    cdsSaidaProd: TClientDataSet;
    cdsSaidaProdid: TIntegerField;
    cdsSaidaProdcodopenvase: TIntegerField;
    cdsSaidaProdidprodutos: TIntegerField;
    cdsSaidaProdqtdprevista: TSingleField;
    cdsSaidaProdqtdreal: TSingleField;
    cdsSaidaProdhora: TTimeField;
    cdsSaidaProddata: TDateField;
    cdsSaidaProdue: TStringField;
    cdsSaidaProdlote: TStringField;
    cdsSaidaProdcpa: TStringField;
    cdsSaidaProdoperador: TStringField;
    cdsSaidaProdstatus: TStringField;
    dspSaidaProd: TDataSource;
    cdsSaidaProddescricao: TStringField;
    Estoque4: TMenuItem;
    TimerAlarme: TTimer;
    EstoqueConsolidado1: TMenuItem;
    procedure Usurios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Parmetrosdosistema1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Insumos1Click(Sender: TObject);
    procedure NFedeEntrada1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure GrupodeProdutos1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure InsumosxMatriaPrima1Click(Sender: TObject);
    procedure MatriaPrima2Click(Sender: TObject);
    procedure EstoquedeInsumos1Click(Sender: TObject);
    procedure Frmulas1Click(Sender: TObject);
    procedure OrdemdeProduo1Click(Sender: TObject);
    procedure OrdemExpedicaoClick(Sender: TObject);
    procedure EstoqueInsumos1Click(Sender: TObject);
    procedure OrdemdeProduoEnvase1Click(Sender: TObject);
    procedure ProdutoAcabado1Click(Sender: TObject);
    procedure Refugo1Click(Sender: TObject);
    procedure EnvaseDetalhe1Click(Sender: TObject);
    procedure ZerarSeqClick(Sender: TObject);
    procedure EstoqueMnimo1Click(Sender: TObject);
    procedure EmbalagemInsumos1Click(Sender: TObject);
    procedure Cadastrarpedido1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure ValorSequncial1Click(Sender: TObject);
    procedure MatPrima1Click(Sender: TObject);
    procedure UsoInterno1Click(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure ComunicadoInterno1Click(Sender: TObject);
    procedure MPeSPClick(Sender: TObject);
    procedure Embalagem1Click(Sender: TObject);
    procedure ListagemCI1Click(Sender: TObject);
    procedure ControledeLotes1Click(Sender: TObject);
    procedure Lote1Click(Sender: TObject);
    procedure Registro1Click(Sender: TObject);
    procedure Aprovado1Click(Sender: TObject);
    procedure Reprovado1Click(Sender: TObject);
    procedure OPExpedicaoClick(Sender: TObject);
    procedure BaixaProdutoEnvasado1Click(Sender: TObject);
    procedure Quarentena1Click(Sender: TObject);
    procedure SaidaProduto1Click(Sender: TObject);
    procedure ControleEstoque1Click(Sender: TObject);
    procedure Estoque3Click(Sender: TObject);
    procedure Sada1Click(Sender: TObject);
    procedure Estoque2Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure TimerVerificaOPVTimer(Sender: TObject);
    procedure lblAvisoClick(Sender: TObject);
    procedure Estoque4Click(Sender: TObject);
    procedure TimerAlarmeTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EstoqueConsolidado1Click(Sender: TObject);



  private

    { Private declarations }
  public
    var
      iAlarme : Integer;
    { Public declarations }
    procedure VerificaOPV;
  end;

var
  F_Principal: TF_Principal;

implementation

uses  UDM, ULogin, U_Abstrato000, U_SobreSistema, U_Usuarios, U_UsuariosGrid,  U_ParametrosSistema, midaslib,
  U_LogErro,U_InsumosGrid, U_NFeEntradaGrid, U_ControleAlteracaoDeDados, U_ProdutosGrid, U_GrupoProdutosGrid,
  U_FornecedorGrid, U_MatPrimaGrid, U_RelatEstoqueInsumos, U_CadFormulaGrid,
  U_CadOrdemProducaoGrid, U_EstoqueInsumosGrid, U_EnvaseGrid,
  U_ProdutoAcabadoGrid, U_RefugoGrid, U_EnvaseDetalheGrid, U_SaidaEmbalagemGrid,
  U_PedidoGrid, U_RelatFornecedor, U_Sequencial, U_ControleNFMP,
  U_ComunicadoInterno, U_EspMP, U_EspMPGrid, U_EspEmbGrid, U_CI, U_CILista,
  U_ListaLote, U_EtiquetaLote, U_EtiquetaAprov, U_EtiquetaRegistro,
  U_EtiquetaReprov, U_OPExpedicao, U_BaixaProdEnv, U_EtiquetaQuarent,
  U_SaidaProducao, U_CIListaBtn, U_SaidaProducaoBt, U_AcertoExpGrid,
  U_RelatExpCliente, U_AcertoQuimicoGrid, U_EstoqueAdmar;

{$R *.dfm}

procedure TF_Principal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
Var
   sMessage    : String;
   sFormName   : String;
   sClassName  : String;
   str         : TStringList;
   u, c: array[0..127] of Char;
   sz: dword;
begin
   Try
   Begin
      GetUserName(u, sz);
      sz := SizeOf(c);
      GetComputerName(c, sz);
      str               := TStringList.Create;
      str.Delimiter     := ';';
      str.StrictDelimiter := True;
      str.DelimitedText := e.Message;
      F_LogErro := TF_LogErro.Create(nil);
      F_LogErro.Memo.Lines.Add('[Informações do software]');
      F_LogErro.Memo.Lines.Add('Versão........: ' + DM.sVersao);
      F_LogErro.Memo.Lines.Add('Data..........: ' + FormatDatetime('YYYY/MM/DD',now()));
      F_LogErro.Memo.Lines.Add('Hora..........: ' + FormatDatetime('HH:MM:SS',now()));
      F_LogErro.Memo.Lines.Add('Usuário.......: ' + dm.sUsuarioLogado);
      F_LogErro.Memo.Lines.Add('Form..........: ' + str[1]);
      F_LogErro.Memo.Lines.Add('Classe........: ' + str[2]);
      F_LogErro.Memo.Lines.Add('Erro...........: ' + str[0]);
      F_LogErro.Memo.Lines.Add('Sql...........: ' + str[3]);
      F_LogErro.Memo.Lines.Add('[Informações da máquina]');
      F_LogErro.Memo.Lines.Add('Usuário.......: ' + u);
      F_LogErro.Memo.Lines.Add('Comp. Nome.: ' + c);

      F_LogErro.ShowModal;
   End;
   Finally
      str.Free;
   End;

   if (E is EDatabaseError) then
  begin
      ShowMessage('Erro no banco de dados! A aplicação será finalizada!' + #13 + 'Mensagem: ' + E.Message);
      Application.Terminate;
  end;

  if(Pos('Uma conexão estabelecida foi anulada pelo software no computador host', E.Message) <> 0)
  or(Pos('Unable to complete network request to host', E.Message) <> 0)
  or(Pos('I/O error 64', E.Message) <> 0)
  or(Pos('Read error', E.Message) <> 0)
  then
  begin
    ShowMessage('Erro de rede! A aplicação será finalizada!' + #13 + 'Mensagem: ' + E.Message);
   end
  else
  begin
    ShowMessage('Erro: ' + E.Message + '! Pode ser necessário o fechamento da aplicação. Favor verificar antes de continuar !');
  end;
end;

procedure TF_Principal.Aprovado1Click(Sender: TObject);
begin
   dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaAprov') = 1 then
   begin
     F_EtiquetaAprov := TF_EtiquetaAprov.Create(nil);
     F_EtiquetaAprov.ShowModal;
     F_EtiquetaAprov.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaAprov') = 2 then
   begin
     F_EtiquetaAprov := TF_EtiquetaAprov.Create(nil);
     F_EtiquetaAprov.btnNovo.Enabled := false;
     F_EtiquetaAprov.btnGerar.Enabled := false;
     F_EtiquetaAprov.ShowModal;
     F_EtiquetaAprov.Free;
     dm.closecnn;
      // verifica itens
   end
   else
    begin
      ShowMessage('Acesso negado!');
      dm.closecnn;
    end;
end;

procedure TF_Principal.BaixaProdutoEnvasado1Click(Sender: TObject);
begin
   dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_BaixaProdEnv') = 1 then
   begin
     F_BaixaProdEnv := TF_BaixaProdEnv.Create(nil);
     F_BaixaProdEnv.ShowModal;
     F_BaixaProdEnv.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_BaixaProdEnv') = 2 then
   begin
     F_BaixaProdEnv := TF_BaixaProdEnv.Create(nil);
     F_BaixaProdEnv.cxGrid1.Enabled := false;
     F_BaixaProdEnv.panel1.Enabled := false;
     F_BaixaProdEnv.ShowModal;
     F_BaixaProdEnv.Free;
     dm.closecnn;
      // verificar itens
   end
   else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Cadastrarpedido1Click(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_PedidoGrid') = 1 then
  begin
    F_PedidoGrid := TF_PedidoGrid.Create(nil);
    F_PedidoGrid.ShowModal;
    F_PedidoGrid.Free;
    dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_PedidoGrid') = 2 then
  begin
     F_PedidoGrid := TF_PedidoGrid.Create(nil);
     F_PedidoGrid.cxGrid1.Enabled  := False;
     F_PedidoGrid.AdvGlassButton1.Enabled := False;
     F_PedidoGrid.ShowModal;
     F_PedidoGrid.Free;
     dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Cliente1Click(Sender: TObject);
begin
 //
  F_RelatExpCliente := TF_RelatExpCliente.Create(nil);
  F_RelatExpCliente.cdsClient.Close;
  F_RelatExpCliente.cdsClient.Open;
  F_RelatExpCliente.ShowModal;
  F_RelatExpCliente.Free;
end;

procedure TF_Principal.ComunicadoInterno1Click(Sender: TObject);
begin
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

procedure TF_Principal.ControledeLotes1Click(Sender: TObject);
begin
  dm.opencnn;

       F_ListaLote := TF_ListaLote.Create(nil);
     F_ListaLote.ShowModal;
     F_ListaLote.Free;
     dm.closecnn;
//if DM.SMGen.GetPermissao(Dm.idUser, 'F_ListaLote') = 1 then
//   begin
//     F_ListaLote := TF_ListaLote.Create(nil);
//     F_ListaLote.ShowModal;
//     F_ListaLote.Free;
//     dm.closecnn;
//   end
//   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_ListaLote') = 2 then
//   begin
//    F_ListaLote := TF_ListaLote.Create(nil);
//
//     F_ListaLote.ShowModal;
//     F_ListaLote.Free;
//     dm.closecnn;
//      //veririficar itens
//   end
//   else
//  begin
//    ShowMessage('Acesso negado!');
//    dm.closecnn;
//  end;
end;


procedure TF_Principal.ControleEstoque1Click(Sender: TObject);
begin
  dm.opencnn;
//  if DM.SMGen.GetPermissao(Dm.idUser,'F_AcertoQuimicoGrid') = 1 then
//  begin
  F_AcertoQuimicoGrid := TF_AcertoQuimicoGrid.Create(nil);

  F_AcertoQuimicoGrid.ShowModal;
  F_AcertoQuimicoGrid.Free;
  dm.closecnn;
//  end
//   else if DM.SMGen.GetPermissao(Dm.idUser,'F_EstoqueInsumosGrid') = 2 then
//  begin
//  F_AcertoQuimicoGrid := TF_AcertoQuimicoGrid.Create(nil);
//   F_AcertoQuimicoGrid.Panel1.Enabled := false;
//   F_AcertoQuimicoGrid.ShowModal;
//   F_AcertoQuimicoGrid.Free;
//   dm.closecnn;
//  end
//  else
//  begin
//    ShowMessage('Acesso negado!');
//    dm.closecnn;
//  end;
end;

procedure TF_Principal.ControleInterno1Click(Sender: TObject);
begin
   dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_ControleNFMP') = 1 then
   begin
     F_ControleNFMP := TF_ControleNFMP.Create(nil);
     F_ControleNFMP.ShowModal;
     F_ControleNFMP.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_ControleNFMP') = 2 then
   begin
     F_ControleNFMP := TF_ControleNFMP.Create(nil);
     F_ControleNFMP.cxGrid1.enabled := false;
     F_ControleNFMP.ShowModal;
     F_ControleNFMP.Free;
     dm.closecnn;
      //verificar itens
   end
   else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Embalagem1Click(Sender: TObject);
begin
   dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_EspEmbGrid') = 1 then
   begin
     F_EspEmbGrid := TF_EspEmbGrid.Create(nil);
     F_EspEmbGrid.ShowModal;
     F_EspEmbGrid.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_EspEmbGrid') = 2 then
   begin
     F_EspEmbGrid := TF_EspEmbGrid.Create(nil);
     F_EspEmbGrid.Panel1.Enabled := false;
     F_EspEmbGrid.ShowModal;
     F_EspEmbGrid.Free;
     dm.closecnn;
      //verificar itens
   end
   else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.EmbalagemInsumos1Click(Sender: TObject);
var
   sArquivo2 : String;
begin
  dm.cdsRelEstoque2.Close;
  dm.cdsRelEstoque2.Open;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'PDFReports\') then
  begin
   forceDirectories(ExtractFilePath(Application.ExeName) + 'PDFReports\');
  end;

  sArquivo2 := ExtractFilePath(Application.ExeName) + 'PDFReports\' + 'Insumo.pdf';

  dm.PDFExport2.FileName := sArquivo2;
  dm.PDFExport2.DefaultPath := ExtractFilePath(Application.ExeName) + 'PDFReports\';
  dm.PDFExport2.ShowProgress := False;
  dm.PDFExport2.OverwritePrompt := False;
  dm.ReportRelat2.PrepareReport();
  dm.ReportRelat2.Export(dm.PDFExport2);
  ShellExecute(self.Handle,nil,pchar(sArquivo2),nil,nil,SW_SHOW);

end;

procedure TF_Principal.EnvaseDetalhe1Click(Sender: TObject);
begin
  F_EnvaseDetalheGrid := TF_EnvaseDetalheGrid.Create(nil);
  F_EnvaseDetalheGrid.ShowModal;
  F_EnvaseDetalheGrid.Free;
end;

procedure TF_Principal.Estoque2Click(Sender: TObject);
var
   sArquivo2 : String;
begin
  dm.cdsExp.Close;
  dm.cdsExp.Open;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'PDFReports\') then
  begin
   forceDirectories(ExtractFilePath(Application.ExeName) + 'PDFReports\');
  end;

  sArquivo2 := ExtractFilePath(Application.ExeName) + 'PDFReports\' + 'ExpedicaoEst.pdf';

  dm.pdfExp.FileName := sArquivo2;
  dm.pdfExp.DefaultPath := ExtractFilePath(Application.ExeName) + 'PDFReports\';
  dm.pdfExp.ShowProgress := False;
  dm.pdfExp.OverwritePrompt := False;
  dm.reportExp.PrepareReport();
  dm.reportExp.Export(dm.pdfExp);
  ShellExecute(self.Handle,nil,pchar(sArquivo2),nil,nil,SW_SHOW);
end;

procedure TF_Principal.Estoque3Click(Sender: TObject);
begin
  //if DM.SMGen.GetPermissao(Dm.idUser, 'F_RelatEstoqueInsumos') = 1 then
  //begin
    dm.opencnn;
     F_AcertoExpGrid := TF_AcertoExpGrid.Create(nil);
     F_AcertoExpGrid.ShowModal;
     F_AcertoExpGrid.Free;
     dm.closecnn;
//  end
//  else if DM.SMGen.GetPermissao(Dm.idUser, 'F_RelatEstoqueInsumos') = 2  then
//  begin
//  F_RelatEstoqueInsumos := TF_RelatEstoqueInsumos.Create(nil);
//
//  F_RelatEstoqueInsumos.ShowModal;
//  F_RelatEstoqueInsumos.Free;
//    // verificar itens
//  end
//  else
//  begin
//    ShowMessage('Acesso negado!');
//  end;
end;

procedure TF_Principal.Estoque4Click(Sender: TObject);
begin
  //
  dm.opencnn;
//  if DM.SMGen.GetPermissao(Dm.idUser, 'F_EstoqueAdmar') = 1 then
//  begin
  F_EstoqueAdmar := TF_EstoqueAdmar.Create(nil);
  F_EstoqueAdmar.ShowModal;
  F_EstoqueAdmar.Free;
  dm.closecnn;
//  end
//  else if DM.SMGen.GetPermissao(Dm.idUser, 'F_EstoqueAdmar') = 2  then
//  begin
//  F_EstoqueAdmar := TF_EstoqueAdmar.Create(nil);
//  F_EstoqueAdmar.ShowModal;
//  F_EstoqueAdmar.Free;
//  dm.closecnn;
//    // verificar itens
//  end
//  else
//  begin
//    ShowMessage('Acesso negado!');
//    dm.closecnn;
//  end;
end;

procedure TF_Principal.EstoqueConsolidado1Click(Sender: TObject);
var
   sArquivo2 : String;
begin
  dm.cdsForItensCons.Close;
  dm.cdsForItensCons.Open;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'PDFReports\') then
  begin
   forceDirectories(ExtractFilePath(Application.ExeName) + 'PDFReports\');
  end;

  sArquivo2 := ExtractFilePath(Application.ExeName) + 'PDFReports\' + 'ExpedicaoEstCons.pdf';

  dm.frxPDFForItensCons.FileName := sArquivo2;
  dm.frxPDFForItensCons.DefaultPath := ExtractFilePath(Application.ExeName) + 'PDFReports\';
  dm.frxPDFForItensCons.ShowProgress := False;
  dm.frxPDFForItensCons.OverwritePrompt := False;
  dm.rptForItensCons.PrepareReport();
  dm.rptForItensCons.Export(dm.frxPDFForItensCons);
  ShellExecute(self.Handle,nil,pchar(sArquivo2),nil,nil,SW_SHOW);

end;

procedure TF_Principal.EstoquedeInsumos1Click(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser, 'F_RelatEstoqueInsumos') = 1 then
  begin
  F_RelatEstoqueInsumos := TF_RelatEstoqueInsumos.Create(nil);
  F_RelatEstoqueInsumos.ShowModal;
  F_RelatEstoqueInsumos.Free;
  dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser, 'F_RelatEstoqueInsumos') = 2  then
  begin
  F_RelatEstoqueInsumos := TF_RelatEstoqueInsumos.Create(nil);

  F_RelatEstoqueInsumos.ShowModal;
  F_RelatEstoqueInsumos.Free;
  dm.closecnn;
    // verificar itens
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;

end;

procedure TF_Principal.EstoqueInsumos1Click(Sender: TObject);
begin
dm.opencnn;
if DM.SMGen.GetPermissao(Dm.idUser,'F_EstoqueInsumosGrid') = 1 then
   begin
   F_EstoqueInsumosGrid := TF_EstoqueInsumosGrid.Create(nil);
   F_EstoqueInsumosGrid.ShowModal;
   F_EstoqueInsumosGrid.Free;
   dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser,'F_EstoqueInsumosGrid') = 2 then
  begin
  F_EstoqueInsumosGrid := TF_EstoqueInsumosGrid.Create(nil);
   F_EstoqueInsumosGrid.Panel1.Enabled := false;
   F_EstoqueInsumosGrid.ShowModal;
   F_EstoqueInsumosGrid.Free;
   dm.closecnn;
     // verificar itens
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.EstoqueMnimo1Click(Sender: TObject);
var
   sArquivo : String;
begin
  dm.cdsRelEstoque.Close;
  dm.cdsRelEstoque.Open;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'PDFReports\') then
  begin
   forceDirectories(ExtractFilePath(Application.ExeName) + 'PDFReports\');
  end;

  sArquivo := ExtractFilePath(Application.ExeName) + 'PDFReports\' + 'MatPrima.pdf';

  dm.PDFExport1.FileName := sArquivo;
  dm.PDFExport1.DefaultPath := ExtractFilePath(Application.ExeName) + 'PDFReports\';
  dm.PDFExport1.ShowProgress := False;
  dm.PDFExport1.OverwritePrompt := False;
  dm.ReportRelat.PrepareReport();
  dm.ReportRelat.Export(dm.PDFExport1);
  ShellExecute(self.Handle,nil,pchar(sArquivo),nil,nil,SW_SHOW);

end;

procedure TF_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if DM.tmsMSGQ('Informação','Deseja fechar o sistema ?') = mrOk then
   begin
      dm.sqlCnn.Connected := False;
      dm.closecnn;
      Application.ProcessMessages;
      Application.Terminate;
      Halt(0)
   end;
end;

procedure TF_Principal.FormCreate(Sender: TObject);
begin
  iAlarme := 0;
end;

procedure TF_Principal.FormShow(Sender: TObject);
begin
   Self.Caption := 'Nawt´s Sistema - Versão: ' + DM.sVersao;
 end;

procedure TF_Principal.Fornecedor1Click(Sender: TObject);
begin
  F_RelatFornecedor := TF_RelatFornecedor.Create(nil);
  F_RelatFornecedor.ShowModal;
  F_RelatFornecedor.Free;
end;

procedure TF_Principal.Fornecedores1Click(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_FornecedorGrid') = 1 then
  begin
   F_FornecedorGrid := TF_FornecedorGrid.Create(nil);
   F_FornecedorGrid.ShowModal;
   F_FornecedorGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_FornecedorGrid') = 2 then
  begin
   F_FornecedorGrid := TF_FornecedorGrid.Create(nil);
   F_FornecedorGrid.cxGrid1.Enabled  := False;
   F_FornecedorGrid.AdvGlassButton1.Enabled := False;
   F_FornecedorGrid.ShowModal;
   F_FornecedorGrid.Free;
   dm.closecnn;
  end
  else
  begin
    dm.closecnn;
  end;

end;

procedure TF_Principal.Frmulas1Click(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_CadFormulaGrid') = 1 then
  begin
    F_CadFormulaGrid := TF_CadFormulaGrid.Create(nil);
    F_CadFormulaGrid.ShowModal;
    F_CadFormulaGrid.Free;
    dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_CadFormulaGrid') = 2 then
  begin
   F_CadFormulaGrid := TF_CadFormulaGrid.Create(nil);
   F_CadFormulaGrid.cxGrid1.Enabled  := False;
   F_CadFormulaGrid.btnNovo.Enabled := False;
   F_CadFormulaGrid.ShowModal;
   F_CadFormulaGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.GrupodeProdutos1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser,'F_GrupoProdutosGrid') = 1 then
  begin
   F_GrupoProdutosGrid := TF_GrupoProdutosGrid.Create(nil);
   F_GrupoProdutosGrid.ShowModal;
   F_GrupoProdutosGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_GrupoProdutosGrid') = 2 then
  begin
   F_GrupoProdutosGrid := TF_GrupoProdutosGrid.Create(nil);
   F_GrupoProdutosGrid.cxGrid1.Enabled  := False;
   F_GrupoProdutosGrid.AdvGlassButton1.Enabled := False;
   F_GrupoProdutosGrid.ShowModal;
   F_GrupoProdutosGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Insumos1Click(Sender: TObject);
begin
dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_InsumosGrid') = 1 then
  begin
   F_InsumosGrid := TF_InsumosGrid.Create(nil);
   F_InsumosGrid.ShowModal;
   F_InsumosGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_InsumosGrid') = 2 then
  begin
   F_InsumosGrid := TF_InsumosGrid.Create(nil);
   F_InsumosGrid.cxGrid1.Enabled  := False;
   F_InsumosGrid.AdvGlassButton1.Enabled := False;
   F_InsumosGrid.ShowModal;
   F_InsumosGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.InsumosxMatriaPrima1Click(Sender: TObject);
begin
dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_ProdutosGrid') = 1 then
  begin
   F_ProdutosGrid := TF_ProdutosGrid.Create(nil);
   F_ProdutosGrid.Tag := 1;
   F_ProdutosGrid.btnNovo.Visible := False;
   F_ProdutosGrid.ShowModal;
   F_ProdutosGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_ProdutosGrid') = 2 then
  begin
   F_ProdutosGrid := TF_ProdutosGrid.Create(nil);
   F_ProdutosGrid.Tag := 1;
   F_ProdutosGrid.cxGrid1.Enabled  := False;
   F_ProdutosGrid.btnNovo.Enabled := False;
   F_ProdutosGrid.ShowModal;
   F_ProdutosGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.lblAvisoClick(Sender: TObject);
begin
   TimerAlarme.Enabled := False;
   dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_SaidaProducao') = 1  then
   begin
     F_SaidaProducao := TF_SaidaProducao.Create(nil);
     lblAviso.Visible   := False;
     PanelAviso.Visible := False;
     F_SaidaProducao.ShowModal;
     F_SaidaProducao.Free;
     dm.closecnn;
     TimerVerificaOPV.Enabled := True;
     iAlarme := 0;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_SaidaProducao') = 2  then
   begin
     F_SaidaProducao := TF_SaidaProducao.Create(nil);
     lblAviso.Visible   := False;
     PanelAviso.Visible := False;
     F_SaidaProducao.cxGrid1.enabled := false;
     F_SaidaProducao.ShowModal;
     F_SaidaProducao.Free;
     dm.closecnn;
     TimerVerificaOPV.Enabled := True;
     iAlarme := 0;
      //verificar itens
   end
   else
   begin
     ShowMessage('Acesso negado!');
     dm.closecnn;
     TimerVerificaOPV.Enabled := True;
   end;
end;

procedure TF_Principal.ListagemCI1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_CILista') = 1  then
   begin
   F_CILista := TF_CILista.Create(nil);
   F_CILista.ShowModal;
   F_CILista.Free;
   dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_CILista') = 2  then
   begin
   F_CILista := TF_CILista.Create(nil);
    F_CIListaBtn.btnNovo.Enabled := false;
    F_CIListaBtn.btnEditar.Enabled := false;
    F_CIListaBtn.btnDeletar.Enabled := false;
    F_CIListaBtn.btnSalvar.Enabled := false;
   F_CILista.ShowModal;
   F_CILista.Free;
   dm.closecnn;
      //verificar itens
   end
   else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;

end;

procedure TF_Principal.Lote1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaLote') = 1 then
   begin
     F_EtiquetaLote := TF_EtiquetaLote.Create(nil);
     F_EtiquetaLote.ShowModal;
     F_EtiquetaLote.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaLote') = 2 then
   begin
     F_EtiquetaLote := TF_EtiquetaLote.Create(nil);
     F_EtiquetaLote.btnNovo.Enabled := false;
     F_EtiquetaLote.btnGerar.Enabled := false;
     F_EtiquetaLote.ShowModal;
     F_EtiquetaLote.Free;
     dm.closecnn;
      //verifica itens;
   end
   else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.MatPrima1Click(Sender: TObject);
var
   sArquivo : String;
begin
  dm.cdsMatPrima.Close;
  dm.cdsMatPrima.Open;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'PDFReports\') then
  begin
   forceDirectories(ExtractFilePath(Application.ExeName) + 'PDFReports\');
  end;

  sArquivo := ExtractFilePath(Application.ExeName) + 'PDFReports\' + 'MatPrima.pdf';

  dm.pdfMP.FileName := sArquivo;
  dm.pdfMP.DefaultPath := ExtractFilePath(Application.ExeName) + 'PDFReports\';
  dm.pdfMP.ShowProgress := False;
  dm.pdfMP.OverwritePrompt := False;
  dm.reportMP.PrepareReport();
  dm.reportMP.Export(dm.pdfMP);
  ShellExecute(self.Handle,nil,pchar(sArquivo),nil,nil,SW_SHOW);
end;

procedure TF_Principal.MatriaPrima2Click(Sender: TObject);
begin
   F_MateriaPrimaGrid := TF_MateriaPrimaGrid.Create(nil);
   F_MateriaPrimaGrid.ShowModal;
   F_MateriaPrimaGrid.Free;
end;

procedure TF_Principal.MPeSPClick(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_EspMPGrid') = 1 then
   begin
     F_EspMPGrid := TF_EspMPGrid.Create(nil);
     F_EspMPGrid.ShowModal;
     F_EspMPGrid.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_EspMPGrid') = 2 then
   begin
     F_EspMPGrid := TF_EspMPGrid.Create(nil);
     F_EspMPGrid.btnNovo.Enabled := false;
     F_EspMP.panel1.Enabled := false;
     F_EspMPGrid.ShowModal;
     F_EspMPGrid.Free;
     dm.closecnn;
   end
   else
   begin
     ShowMessage('Acesso negado!');
     dm.closecnn;
   end;
end;

procedure TF_Principal.NFedeEntrada1Click(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_NFeEntrada') = 1 then
  begin
   F_NFeEntrada := TF_NFeEntrada.Create(nil);
   F_NFeEntrada.ShowModal;
   F_NFeEntrada.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_NFeEntrada') = 2 then
  begin
   F_NFeEntrada := TF_NFeEntrada.Create(nil);
   F_NFeEntrada.cxGrid1.Enabled  := False;
   F_NFeEntrada.AdvGlassButton1.Enabled := False;
   F_NFeEntrada.ShowModal;
   F_NFeEntrada.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.OPExpedicaoClick(Sender: TObject);
begin
   dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_OPExpedicao') = 1 then
   begin
      F_OPExpedicao := TF_OPExpedicao.Create(nil);
      F_OPExpedicao.ShowModal;
      F_OPExpedicao.Free;
      dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_OPExpedicao') = 2 then
   begin
      F_OPExpedicao := TF_OPExpedicao.Create(nil);
      F_OPExpedicao.cxGrid1.Enabled := false;
      F_OPExpedicao.ShowModal;
      F_OPExpedicao.Free;
      dm.closecnn;
      // verificar itens
   end
   else
   begin
      ShowMessage('Acesso negado!');
      dm.closecnn;
   end;
end;

procedure TF_Principal.OrdemdeProduo1Click(Sender: TObject);
begin
dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_CadOrdemProducaoGrid') = 1 then
  begin
   F_CadOrdemProducaoGrid := TF_CadOrdemProducaoGrid.Create(nil);
   F_CadOrdemProducaoGrid.ShowModal;
   F_CadOrdemProducaoGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_CadOrdemProducaoGrid') = 2 then
  begin
   F_CadOrdemProducaoGrid := TF_CadOrdemProducaoGrid.Create(nil);
   F_CadOrdemProducaoGrid.cxGrid1.Enabled  := False;
   F_CadOrdemProducaoGrid.btnNovo.Enabled := False;
   F_CadOrdemProducaoGrid.ShowModal;
   F_CadOrdemProducaoGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.OrdemExpedicaoClick(Sender: TObject);
begin
   F_CadOrdemProducaoGrid := TF_CadOrdemProducaoGrid.Create(nil);
   F_CadOrdemProducaoGrid.ShowModal;
   F_CadOrdemProducaoGrid.Free;
end;

procedure TF_Principal.OrdemdeProduoEnvase1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser,'F_EnvaseGrid') = 1 then
  begin
   F_EnvaseGrid := TF_EnvaseGrid.Create(nil);
   F_EnvaseGrid.ShowModal;
   F_EnvaseGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_EnvaseGrid') = 2 then
  begin
   F_EnvaseGrid := TF_EnvaseGrid.Create(nil);
   F_EnvaseGrid.cxGrid1.Enabled := False;
   F_EnvaseGrid.btnNovo.Enabled := False;
   F_ProdutoAcabadoGrid.ShowModal;
   F_ProdutoAcabadoGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;

end;

procedure TF_Principal.Parmetrosdosistema1Click(Sender: TObject);
begin
   if DM.idUser > 1 then
   begin
      DM.tmsMSG('Informação','Seu usuário não dá permissão de parametrização do sistema !');
   end
   else
   begin
      F_ParametrosSistema := TF_ParametrosSistema.Create(nil);
      F_ParametrosSistema.ShowModal;
   end;
end;

procedure TF_Principal.ProdutoAcabado1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser,'F_ProdutoAcabadoGrid') = 1 then
  begin
  F_ProdutoAcabadoGrid := TF_ProdutoAcabadoGrid.Create(nil);
   F_ProdutoAcabadoGrid.Tag := 0;
   F_ProdutoAcabadoGrid.ShowModal;
   F_ProdutoAcabadoGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_ProdutoAcabadoGrid') = 2 then
  begin
   F_ProdutoAcabadoGrid := TF_ProdutoAcabadoGrid.Create(nil);
   F_ProdutoAcabadoGrid.cxGrid1.Enabled  := False;
   F_ProdutoAcabadoGrid.Tag := 0;
   F_ProdutoAcabadoGrid.AdvGlassButton1.Enabled := False;
   F_ProdutoAcabadoGrid.ShowModal;
   F_ProdutoAcabadoGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Produtos1Click(Sender: TObject);
begin
dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser,'F_ProdutosGrid') = 1 then
  begin
   F_ProdutosGrid := TF_ProdutosGrid.Create(nil);
   F_ProdutosGrid.Tag := 0;
   F_ProdutosGrid.ShowModal;
   F_ProdutosGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_ProdutosGrid') = 2 then
  begin
   F_ProdutosGrid := TF_ProdutosGrid.Create(nil);
   F_ProdutosGrid.cxGrid1.Enabled  := False;
   F_ProdutosGrid.Tag := 0;
   F_ProdutosGrid.btnNovo.Enabled := False;
   F_ProdutosGrid.ShowModal;
   F_ProdutosGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Quarentena1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaQuarent') = 1 then
   begin
   F_EtiquetaQuarent := TF_EtiquetaQuarent.Create(nil);
   F_EtiquetaQuarent.ShowModal;
   F_EtiquetaQuarent.Free;
   dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaQuarent') = 2 then
   begin
   F_EtiquetaQuarent := TF_EtiquetaQuarent.Create(nil);
   F_EtiquetaQuarent.btnNovo.Enabled := false;
   F_EtiquetaQuarent.btnGerar.Enabled := false;
   F_EtiquetaQuarent.ShowModal;
   F_EtiquetaQuarent.Free;
      // verificar itens
      dm.closecnn;
   end
   else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Refugo1Click(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_RefugoGrid') = 1 then
  begin
   F_RefugoGrid := TF_RefugoGrid.Create(nil);
   F_RefugoGrid.ShowModal;
   F_RefugoGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_RefugoGrid') = 2 then
  begin
   F_RefugoGrid := TF_RefugoGrid.Create(nil);
   F_RefugoGrid.cxGrid1.Enabled  := False;
   F_RefugoGrid.btnNovo.Enabled := False;
   F_RefugoGrid.ShowModal;
   F_RefugoGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;

end;

procedure TF_Principal.Registro1Click(Sender: TObject);
begin
dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser,'F_EtiquetaRegistro') = 1 then
  begin
     F_EtiquetaRegistro := TF_EtiquetaRegistro.Create(nil);
     F_EtiquetaRegistro.ShowModal;
     F_EtiquetaRegistro.Free;
     dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_EtiquetaRegistro') = 2 then
  begin
     ShowMessage('Acesso negado!');
     dm.closecnn;
  end
  else
  begin
     ShowMessage('Acesso negado!');
     dm.closecnn;
  end;

end;

procedure TF_Principal.Reprovado1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaReprov') = 1 then
   begin
     F_EtiquetaReprov := TF_EtiquetaReprov.Create(nil);
     F_EtiquetaReprov.ShowModal;
     F_EtiquetaReprov.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_EtiquetaReprov') = 2 then
   begin
     F_EtiquetaReprov := TF_EtiquetaReprov.Create(nil);
     F_EtiquetaReprov.btnNovo.Enabled := false;
     F_EtiquetaReprov.btnGerar.Enabled := false;
     F_EtiquetaReprov.ShowModal;
     F_EtiquetaReprov.Free;
     dm.closecnn;
      // verificar itens
   end
   else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.Sada1Click(Sender: TObject);
var
   sArquivo2 : String;
begin
  dm.cdsExpSaida.Close;
  dm.cdsExpSaida.Open;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'PDFReports\') then
  begin
   forceDirectories(ExtractFilePath(Application.ExeName) + 'PDFReports\');
  end;

  sArquivo2 := ExtractFilePath(Application.ExeName) + 'PDFReports\' + 'ExpedicaoSaida.pdf';

  dm.pdfExpSaida.FileName := sArquivo2;
  dm.pdfExpSaida.DefaultPath := ExtractFilePath(Application.ExeName) + 'PDFReports\';
  dm.pdfExpSaida.ShowProgress := False;
  dm.pdfExpSaida.OverwritePrompt := False;
  dm.reportExpSaida.PrepareReport();
  dm.reportExpSaida.Export(dm.pdfExpSaida);
  ShellExecute(self.Handle,nil,pchar(sArquivo2),nil,nil,SW_SHOW);
end;

procedure TF_Principal.SaidaProduto1Click(Sender: TObject);
begin
  dm.opencnn;
   if DM.SMGen.GetPermissao(Dm.idUser, 'F_SaidaProducao') = 1  then
   begin
     F_SaidaProducao := TF_SaidaProducao.Create(nil);
     lblAviso.Visible   := False;
     PanelAviso.Visible := False;
     F_SaidaProducao.ShowModal;
     F_SaidaProducao.Free;
     dm.closecnn;
   end
   else if DM.SMGen.GetPermissao(Dm.idUser, 'F_SaidaProducao') = 2  then
   begin
     F_SaidaProducao := TF_SaidaProducao.Create(nil);
     lblAviso.Visible   := False;
     PanelAviso.Visible := False;
     F_SaidaProducao.cxGrid1.enabled := false;
     F_SaidaProducao.ShowModal;
     F_SaidaProducao.Free;
     dm.closecnn;
   end
   else
   begin
     ShowMessage('Acesso negado!');
     dm.closecnn;
   end;

end;

procedure TF_Principal.Timer1Timer(Sender: TObject);
begin
  StatusBar.Panels[0].Text := 'Data/Hora: ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', now());
end;

procedure TF_Principal.TimerVerificaOPVTimer(Sender: TObject);
begin
   TimerVerificaOPV.Enabled := False;
   VerificaOPV;
end;

procedure TF_Principal.TimerAlarmeTimer(Sender: TObject);
begin
  if iAlarme <= 4 then
  begin
     Windows.Beep(1800,100);
     Windows.Beep(1450,100);
     Windows.Beep(1800,100);
     Windows.Beep(1450,250);
     PanelAviso.Visible := True;
     lblAviso.Visible   := True;
     inc(iAlarme);
  end
  else
  begin
    TimerAlarme.Enabled := FALSE;
  end;
end;

procedure TF_Principal.VerificaOPV;
begin
   if dm.idUser = 29 then
   begin
      dm.opencnn;
      cdsSaidaProd.Close;
      cdsSaidaProd.Open;
      if cdsSaidaProd.RecordCount > 0 then
      begin
         TimerAlarme.Enabled := True;
      end
      else
      begin
         PanelAviso.Visible := False;
         lblAviso.Visible   := False;
         TimerVerificaOPV.Enabled := True;
      end;
      dm.closecnn;
   end;
end;

procedure TF_Principal.UsoInterno1Click(Sender: TObject);
var
   sArquivo : String;
begin
  dm.cdsUsoInt.Close;
  dm.cdsUsoInt.Open;

  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'PDFReports\') then
  begin
   forceDirectories(ExtractFilePath(Application.ExeName) + 'PDFReports\');
  end;

  sArquivo := ExtractFilePath(Application.ExeName) + 'PDFReports\' + 'UsoInterno.pdf';

  dm.pdfUsoInt.FileName := sArquivo;
  dm.pdfUsoInt.DefaultPath := ExtractFilePath(Application.ExeName) + 'PDFReports\';
  dm.pdfUsoInt.ShowProgress := False;
  dm.pdfUsoInt.OverwritePrompt := False;
  dm.reportUsoInt.PrepareReport();
  dm.reportUsoInt.Export(dm.pdfUsoInt);
  ShellExecute(self.Handle,nil,pchar(sArquivo),nil,nil,SW_SHOW);
end;

procedure TF_Principal.Usurios1Click(Sender: TObject);
begin
dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_UsuariosGrid') = 1 then
  begin
   F_UsuariosGrid := TF_UsuariosGrid.Create(nil);
   F_UsuariosGrid.ShowModal;
   F_UsuariosGrid.Free;
   dm.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_UsuariosGrid') = 2 then
  begin
   F_UsuariosGrid := TF_UsuariosGrid.Create(nil);
   F_UsuariosGrid.cxGrid1.Enabled  := False;
   F_UsuariosGrid.btnNovo.Enabled := False;
   F_UsuariosGrid.ShowModal;
   F_UsuariosGrid.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
  //dm.closecnn;
end;

procedure TF_Principal.ValorSequncial1Click(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.GetPermissao(Dm.idUser,'F_Sequencial') = 1 then
  begin
   F_Sequencial := TF_Sequencial.Create(nil);
   F_Sequencial.ShowModal;
   F_Sequencial.Free;
   DM.closecnn;
  end
  else if DM.SMGen.GetPermissao(Dm.idUser,'F_Sequencial') = 2 then
  begin
   F_Sequencial := TF_Sequencial.Create(nil);
   F_Sequencial.btnSalvar.Enabled := False;
   F_Sequencial.ShowModal;
   F_Sequencial.Free;
   dm.closecnn;
  end
  else
  begin
    ShowMessage('Acesso negado!');
    dm.closecnn;
  end;
end;

procedure TF_Principal.ZerarSeqClick(Sender: TObject);
begin
  dm.opencnn;
  if DM.tmsMSGQ('Atenção!!!','Esta operação irá zerar o sequêncial. Deseja continuar ?') = mrOk
  then dm.SMGen.ZerarSequencial();
  dm.closecnn;
end;

end.
