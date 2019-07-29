unit UKernel_VariaveisPublic;

interface

uses UKernel_Classe_Pesquisa, UKernel_Classe_Regras_CRT;

Type
  TTipoEmissao = (temNormal, temScan);

  // Variaveis de Classe
Var

  DetalhaLancamentoProduto : Boolean;

  // Variaveis de Consultas
  Pesquisa: TPesquisa;

  // Regime trib
  CrtEmitente: TRegimeTriburario;

  //Tipo de Emissao da NFe
  TipoEmissao: TTipoEmissao;

implementation

end.
