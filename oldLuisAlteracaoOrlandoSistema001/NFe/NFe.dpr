program NFe;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_Export in 'U_Export.pas',
  U_Utils in 'U_Utils.pas',
  UDm in 'UDm.pas' {DM: TDataModule},
  U_CadClientes in 'U_CadClientes.pas' {F_CadClientes},
  U_CadClientesBt in 'U_CadClientesBt.pas' {F_CadClientesBt},
  u_Teste in 'u_Teste.pas' {FrmTeste},
  U_Produtos in 'U_Produtos.pas' {F_Produtos},
  U_ProdutosBt in 'U_ProdutosBt.pas' {F_ProdutosBt},
  U_Transportadoras in 'U_Transportadoras.pas' {F_Transportadoras},
  U_TransportadorasBt in 'U_TransportadorasBt.pas' {F_TransportadorasBt},
  U_NFeSaida in 'U_NFeSaida.pas' {F_NFeSaida},
  U_NFeSaidaBt in 'U_NFeSaidaBt.pas' {F_NFeSaidaBt},
  UKernel_FuncoesFloats in 'Kernel\UKernel_FuncoesFloats.pas',
  UKernel_FuncoesStrings in 'Kernel\UKernel_FuncoesStrings.pas',
  UKernel_FuncoesInteiros in 'Kernel\UKernel_FuncoesInteiros.pas',
  UKernel_Classe_Regras_NFEItens in 'Kernel\UKernel_Classe_Regras_NFEItens.pas',
  UKernel_Funcoes_Util in 'Kernel\UKernel_Funcoes_Util.pas',
  UKernel_VariaveisPublic in 'Kernel\UKernel_VariaveisPublic.pas',
  U_Emitente in 'U_Emitente.pas' {F_Emitente},
  U_EmitenteBt in 'U_EmitenteBt.pas' {F_EmitenteBt},
  U_ConsultaCidades in 'U_ConsultaCidades.pas' {F_ConsultaCidades},
  UKernel_Classe_Pesquisa in 'Kernel\UKernel_Classe_Pesquisa.pas',
  U_ConsultaClientes in 'U_ConsultaClientes.pas' {F_ConsultaClientes},
  UKernel_Classe_Regras_NFE in 'Kernel\UKernel_Classe_Regras_NFE.pas',
  UKernel_Classe_Regras_CFOP in 'Kernel\UKernel_Classe_Regras_CFOP.pas',
  UKernel_Classe_Regras_CRT in 'Kernel\UKernel_Classe_Regras_CRT.pas',
  UKernel_Classe_Regras_CST in 'Kernel\UKernel_Classe_Regras_CST.pas',
  U_NFeLancaItem in 'U_NFeLancaItem.pas' {F_NFeLancaItem},
  UKernel_Mensagem in 'Kernel\UKernel_Mensagem.pas' {Kernel_Mensagem},
  UKernel_ConsultaSQL in 'Kernel\UKernel_ConsultaSQL.pas',
  U_NFeInfAddProdutos in 'U_NFeInfAddProdutos.pas' {F_NFeInfAddProdutos},
  nfe_v310 in 'nfe_v310.pas',
  U_Abstrato000 in 'Abstrato\U_Abstrato000.pas' {F_Abstrato000},
  U_Abstrato001 in 'Abstrato\U_Abstrato001.pas' {F_Abstrato001},
  U_AbstratoButtons in 'Abstrato\U_AbstratoButtons.pas' {F_AbstratoButtons},
  U_AbstratoConsulta in 'Abstrato\U_AbstratoConsulta.pas' {F_AbstratoConsulta},
  U_AbstratoConsultaGrid in 'Abstrato\U_AbstratoConsultaGrid.pas',
  U_DM_NFe in 'U_DM_NFe.pas' {DM_NFe: TDataModule},
  U_Configuracao in 'U_Configuracao.pas' {F_Configuracao},
  U_ICMS in 'U_ICMS.pas' {F_ICMS},
  U_AbstratoGrid in 'Abstrato\U_AbstratoGrid.pas' {F_AbstratoGrid},
  U_ICMSGrid in 'U_ICMSGrid.pas' {F_ICMSGrid},
  U_NCMGrid in 'U_NCMGrid.pas' {F_NCMGrid},
  U_NCMBt in 'U_NCMBt.pas' {F_NCMBt};

{$R *.res}

begin
  Application.Initialize;

  InicializaVariaveis;
  DetalhaLancamentoProduto := True;

  Application.Title := '';
  // Application.CreateForm(TFSplash, FSplash);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;

end.
