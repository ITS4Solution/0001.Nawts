program Nawts_Client_Test;

uses
  Forms,
  midaslib,
  U_Principal in 'U_Principal.pas' {F_Principal},
  UDM in 'UDM.pas' {DM: TDataModule},
  U_Abstrato001 in '..\Abstrato\U_Abstrato001.pas' {F_Abstrato001},
  U_AbstratoButtons in '..\Abstrato\U_AbstratoButtons.pas' {F_AbstratoButtons},
  U_Abstrato000 in '..\Abstrato\U_Abstrato000.pas' {F_Abstrato000},
  ULogin in 'ULogin.pas' {F_Login},
  U_MensagemForm in 'U_MensagemForm.pas' {F_MensagemForm},
  U_SobreSistema in 'U_SobreSistema.pas' {F_Sobre},
  UFuncDS in 'UFuncDS.pas',
  U_Splash in 'U_Splash.pas' {FSplash},
  U_Usuarios in 'U_Usuarios.pas' {F_Usuarios},
  U_AbstratoGrid in '..\Abstrato\U_AbstratoGrid.pas' {F_AbstratoGrid},
  U_UsuariosGrid in 'U_UsuariosGrid.pas' {F_UsuariosGrid},
  U_FuncServer in 'U_FuncServer.pas',
  U_Utils in '..\Utils\U_Utils.pas',
  U_ControleAlteracaoDeDados in 'U_ControleAlteracaoDeDados.pas' {F_ControleDados},
  U_ParametrosSistema in 'U_ParametrosSistema.pas' {F_ParametrosSistema},
  U_Export in 'U_Export.pas',
  U_Email in '..\Utils\U_Email.pas',
  U_LogErro in 'U_LogErro.pas' {F_LogErro},
  U_InsumosGrid in 'U_InsumosGrid.pas' {F_InsumosGrid},
  U_InsumosCad in 'U_InsumosCad.pas' {F_InsumosCad},
  U_NFeEntradaGrid in 'U_NFeEntradaGrid.pas' {F_NFeEntrada},
  U_NFeEntradaButtons in 'U_NFeEntradaButtons.pas' {F_NFeEntradaButtons},
  U_ProdutosGrid in 'U_ProdutosGrid.pas' {F_ProdutosGrid},
  U_ProdutosButtons in 'U_ProdutosButtons.pas' {F_ProdutosButtons},
  U_GrupoProdutosGrid in 'U_GrupoProdutosGrid.pas' {F_GrupoProdutosGrid},
  U_GrupoProdutosButtons in 'U_GrupoProdutosButtons.pas' {F_GrupoProdutosButtons},
  U_FornecedorGrid in 'U_FornecedorGrid.pas' {F_FornecedorGrid},
  U_fornecedorButtons in 'U_fornecedorButtons.pas' {F_FornecedorButtons},
  U_ProdutosXInsumos in 'U_ProdutosXInsumos.pas' {F_ProdutosXInsumos},
  U_MatPrimaGrid in 'U_MatPrimaGrid.pas' {F_MateriaPrimaGrid},
  U_MatPrimaButtons in 'U_MatPrimaButtons.pas' {F_MateriaPrimaButtons},
  U_RelatEstoqueInsumos in 'U_RelatEstoqueInsumos.pas' {F_RelatEstoqueInsumos},
  U_CadFormulaGrid in 'U_CadFormulaGrid.pas' {F_CadFormulaGrid},
  U_CadFormulaBt in 'U_CadFormulaBt.pas' {F_CadFormulaBt},
  U_CadOrdemProducaoGrid in 'U_CadOrdemProducaoGrid.pas' {F_CadOrdemProducaoGrid},
  U_CadOrdemProducaoBt in 'U_CadOrdemProducaoBt.pas' {F_CadOrdemProducaoBt},
  U_EstoqueInsumosGrid in 'U_EstoqueInsumosGrid.pas' {F_EstoqueInsumosGrid},
  U_AcertoEstoqueBt in 'U_AcertoEstoqueBt.pas' {F_AcertoEstoqueBt},
  U_EnvaseGrid in 'U_EnvaseGrid.pas' {F_EnvaseGrid},
  U_EnvaseBt in 'U_EnvaseBt.pas' {F_EnvaseBt},
  U_ProdutoAcabadoGrid in 'U_ProdutoAcabadoGrid.pas' {F_ProdutoAcabadoGrid},
  U_ProdutoAcabadoBt in 'U_ProdutoAcabadoBt.pas' {F_ProdutoAcabadoBt},
  U_RefugoGrid in 'U_RefugoGrid.pas' {F_RefugoGrid},
  U_RefugoBt in 'U_RefugoBt.pas' {F_RefugoBt},
  U_SaidaEmbalagemGrid in 'U_SaidaEmbalagemGrid.pas' {F_SaidaEmbalagemGrid},
  U_SaidaEmbalagemBt in 'U_SaidaEmbalagemBt.pas' {F_SaidaEmbalagemBt},
  U_PedidoGrid in 'U_PedidoGrid.pas' {F_PedidoGrid},
  U_PedidoBt in 'U_PedidoBt.pas' {F_PedidosBt},
  U_RelatFornecedor in 'U_RelatFornecedor.pas' {F_RelatFornecedor},
  U_Sequencial in 'U_Sequencial.pas' {F_Sequencial},
  U_Const in '..\Utils\U_Const.pas',
  U_ControleNFMP in 'U_ControleNFMP.pas' {F_ControleNFMP},
  U_ControleNFMPBt in 'U_ControleNFMPBt.pas' {F_AbstratoButtons1},
  U_ComunicadoInterno in 'U_ComunicadoInterno.pas' {F_ComunicadoInterno},
  U_EspMP in 'U_EspMP.pas' {F_EspMP},
  U_EspMPGrid in 'U_EspMPGrid.pas' {F_EspMPGrid},
  U_EspEmb in 'U_EspEmb.pas' {F_EspEmb},
  U_EspEmbGrid in 'U_EspEmbGrid.pas' {F_EspEmbGrid},
  U_CILista in 'U_CILista.pas' {F_CILista},
  U_CIListaBtn in 'U_CIListaBtn.pas' {F_CIListaBtn},
  U_ListaLote in 'U_ListaLote.pas' {F_ListaLote},
  U_EtiquetaLote in 'U_EtiquetaLote.pas' {F_EtiquetaLote},
  U_EtiquetaRegistro in 'U_EtiquetaRegistro.pas' {F_EtiquetaRegistro},
  U_EtiquetaAprov in 'U_EtiquetaAprov.pas' {F_EtiquetaAprov},
  U_EtiquetaReprov in 'U_EtiquetaReprov.pas' {F_EtiquetaReprov},
  U_OPExpedicao in 'U_OPExpedicao.pas' {F_OPExpedicao},
  U_BaixaProdEnv in 'U_BaixaProdEnv.pas' {F_BaixaProdEnv},
  U_OPExpedicaoBtn in 'U_OPExpedicaoBtn.pas' {F_OPExpedicaoBtn},
  U_EtiquetaQuarent in 'U_EtiquetaQuarent.pas' {F_EtiquetaQuarent},
  U_SaidaProducao in 'U_SaidaProducao.pas' {F_SaidaProducao},
  U_SaidaProducaoBt in 'U_SaidaProducaoBt.pas' {F_SaidaProducaoBt},
  U_AcertoExpGrid in 'U_AcertoExpGrid.pas' {F_AcertoExpGrid},
  U_AcertoExpBtn in 'U_AcertoExpBtn.pas' {F_AcertoExpBtn},
  U_RelatExpCliente in 'U_RelatExpCliente.pas' {F_RelatExpCliente},
  U_AcertoQuimicoGrid in 'U_AcertoQuimicoGrid.pas' {F_AcertoQuimicoGrid},
  U_EstoqueAdmar in 'U_EstoqueAdmar.pas' {F_EstoqueAdmar},
  U_EstoqueAdmarBtn in 'U_EstoqueAdmarBtn.pas' {F_EstoqueAdmarBtn};

{$R *.res}

begin
  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
  Application.Title := '';
  Application.CreateForm(TFSplash, FSplash);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
