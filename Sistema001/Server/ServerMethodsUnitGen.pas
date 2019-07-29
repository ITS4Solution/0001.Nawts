unit ServerMethodsUnitGen;

interface

uses
  SysUtils, Classes, DSServer, FMTBcd, DB, SqlExpr, Provider,
  Datasnap.DBClient, variants,iniFiles,forms,midaslib,
  TypInfo, Datasnap.DSProviderDataModuleAdapter,JPEG,Graphics,Vcl.ExtCtrls
  ,Generics.Collections, strutils;

type
  TServerMethodsGen = class(TDSServerModule)
    qryAux: TSQLQuery;
    sqlTblInsumos: TSQLQuery;
    dspTblInsumos: TDataSetProvider;
    sqlNfeEntrada: TSQLQuery;
    dspNfeEntrada: TDataSetProvider;
    sqlnfeentradaitens: TSQLQuery;
    dspnfeentradaitens: TDataSetProvider;
    sqlFornecedor: TSQLQuery;
    dspFornecedor: TDataSetProvider;
    sqlProdutos: TSQLQuery;
    dspProdutos: TDataSetProvider;
    sqlGrupoProdutos: TSQLQuery;
    dspGrupoProdutos: TDataSetProvider;
    sqlProdutoxInsumos: TSQLQuery;
    dspProdutosxInsumos: TDataSetProvider;
    sqlTblMatPrima: TSQLQuery;
    dspTblMatPrima: TDataSetProvider;
    sqltblestoqueinsumos: TSQLQuery;
    dsptblestoqueinsumos: TDataSetProvider;
    sqlListaEstoqueInsumos: TSQLQuery;
    dspListaEstoqueInsumos: TDataSetProvider;
    dspTblFormula: TDataSetProvider;
    dspTblFormuladetalhe: TDataSetProvider;
    sqlTblFormula: TSQLQuery;
    sqlTblFormuladetalhe: TSQLQuery;
    sqlTblOrdemProducao: TSQLQuery;
    dspTblOrdemdeProducao: TDataSetProvider;
    sqlTblOrdemProducaoDetalhe: TSQLQuery;
    dspTblOrdemProducaoDetalhe: TDataSetProvider;
    sqlTblInsumosFormula: TSQLQuery;
    dspTblIsumosFormula: TDataSetProvider;
    sqlOrdemProducaoDetalhe: TSQLQuery;
    dspOrdemProducaoDetalhe: TDataSetProvider;
    sqlTblOrdemEnvase: TSQLQuery;
    dspTblOrdemEnvase: TDataSetProvider;
    sqlTblInsumoEnvase: TSQLQuery;
    dspTblInsumoEnvase: TDataSetProvider;
    dspEstoqueQuimico: TDataSetProvider;
    sqlEstoqueQuimico: TSQLQuery;
    dspAcertoInsumo: TDataSetProvider;
    sqlAcertoInsumo: TSQLQuery;
    sqlTblRefugo: TSQLQuery;
    dspTblRefugo: TDataSetProvider;
    sqlRefugoNome: TSQLQuery;
    dspRefugoNome: TDataSetProvider;
    sqlTblEnvaseDetalhe: TSQLQuery;
    dsTblEnvaseDetalhe: TDataSetProvider;
    sqlOrdemEnvaseBt: TSQLQuery;
    dspOrdemEnvaseBt: TDataSetProvider;
    sqlQtdProduto: TSQLQuery;
    dspQtdProduto: TDataSetProvider;
    sqlOPQuimico: TSQLQuery;
    dspOPQuimico: TDataSetProvider;
    sqlEstoqueQObs: TSQLQuery;
    dspEstoqueQObs: TDataSetProvider;
    sqlTblOrdemProducaoQ: TSQLQuery;
    dspTblOrdemProducaoQ: TDataSetProvider;
    sqlOrdemEnvaseQProduto: TSQLQuery;
    dspOrdemEnvaseQProduto: TDataSetProvider;
    sqlNfEId: TSQLQuery;
    dspNfEId: TDataSetProvider;
    sqlOpQID: TSQLQuery;
    dspOpQID: TDataSetProvider;
    sqlRelEstoque: TSQLQuery;
    dspRelEstoque: TDataSetProvider;
    sqlInsumoID: TSQLQuery;
    dspInsumoID: TDataSetProvider;
    sqlTblSaidaEmbalagem: TSQLQuery;
    dspTblSaidaEmabalagem: TDataSetProvider;
    sqlSaidaDetalhe: TSQLQuery;
    dspSaidaDetalhe: TDataSetProvider;
    sqlOrdemSaida: TSQLQuery;
    dspOrdemSaida: TDataSetProvider;
    sqlAcessSaida: TSQLQuery;
    dspAcessSaida: TDataSetProvider;
    sqlTblInsumosid: TIntegerField;
    sqlTblInsumoscodigo: TStringField;
    sqlTblInsumosue: TStringField;
    sqlTblInsumoslitragem: TSingleField;
    sqlTblInsumosdescricao: TStringField;
    sqlTblInsumostipo: TStringField;
    sqlTblInsumosestoqueminimo: TSingleField;
    sqlTblInsumosestoquemaximo: TSingleField;
    sqlnfeentradaitensid: TIntegerField;
    sqlnfeentradaitenscodnfeentrada: TIntegerField;
    sqlnfeentradaitenscodproduto: TStringField;
    sqlnfeentradaitensUE: TStringField;
    sqlnfeentradaitensqtde: TSingleField;
    sqlnfeentradaitensvlrunitario: TSingleField;
    sqlnfeentradaitensvaloripi: TSingleField;
    sqlnfeentradaitensvalortotal: TSingleField;
    sqlnfeentradaitenscodfornecedor: TIntegerField;
    sqlnfeentradaitenscodfiscal: TStringField;
    sqlnfeentradaitenslote: TStringField;
    sqlnfeentradaitensvalidade: TDateField;
    sqlnfeentradaitensnroregistro: TIntegerField;
    sqlnfeentradaitenspercentagemicms: TSingleField;
    sqlnfeentradaitensteveaumento: TSmallintField;
    sqlnfeentradaitensgeraetiqueta: TSmallintField;
    sqlnfeentradaitenscadastradf: TSmallintField;
    sqlnfeentradaitensncm: TStringField;
    sqlnfeentradaitensitem: TIntegerField;
    sqlnfeentradaitenssequencial: TIntegerField;
    sqlFornecedorid: TIntegerField;
    sqlFornecedorcpf_cnpj: TStringField;
    sqlFornecedornome_razaosocial: TStringField;
    sqlFornecedortppessoa: TStringField;
    sqlFornecedorobs: TMemoField;
    sqlFornecedorcodfornecedor: TIntegerField;
    sqlFornecedordatacad: TDateField;
    sqlFornecedorcargo: TStringField;
    sqlFornecedorfone1: TStringField;
    sqlFornecedorfone2: TStringField;
    sqlFornecedorfone3: TStringField;
    sqlFornecedorfone4: TStringField;
    sqlFornecedoruf: TStringField;
    sqlFornecedorcidade: TStringField;
    sqlFornecedorie: TStringField;
    sqlFornecedorcontato: TStringField;
    sqlFornecedorendereco: TStringField;
    sqlFornecedorfax: TStringField;
    sqlFornecedorcep: TStringField;
    sqlFornecedoremail: TStringField;
    sqlProdutosid: TIntegerField;
    sqlProdutoscodfornecedor: TIntegerField;
    sqlProdutosgrupo: TIntegerField;
    sqlProdutoscodproduto: TIntegerField;
    sqlProdutosprocedencia: TStringField;
    sqlProdutosdescricao: TStringField;
    sqlProdutosgrupopedido: TStringField;
    sqlProdutosnumeropa: TIntegerField;
    sqlProdutosnomeprodutopedido: TStringField;
    sqlProdutosncm: TStringField;
    sqlGrupoProdutosid: TIntegerField;
    sqlGrupoProdutoscodgrupo: TIntegerField;
    sqlGrupoProdutosnomegrupo: TStringField;
    sqlProdutoxInsumosid: TIntegerField;
    sqlProdutoxInsumosprodutoid: TIntegerField;
    sqlProdutoxInsumosinsumosid: TIntegerField;
    sqlTblMatPrimaid: TIntegerField;
    sqlTblMatPrimacodigo: TStringField;
    sqlTblMatPrimaue: TStringField;
    sqlTblMatPrimadescricao: TStringField;
    sqlTblMatPrimatipo: TStringField;
    sqlEstoqueQuimicoid: TIntegerField;
    sqlEstoqueQuimicoidinsumo: TIntegerField;
    sqlEstoqueQuimicoidnfeentrada: TIntegerField;
    sqlEstoqueQuimicotipo: TStringField;
    sqlEstoqueQuimicodata: TDateField;
    sqlEstoqueQuimicoidordemquimico: TIntegerField;
    sqlEstoqueQuimicoidproduto: TIntegerField;
    sqlEstoqueQuimicoquantd: TSingleField;
    sqlEstoqueQuimicoobs: TStringField;
    sqlEstoqueQuimicodescricao: TStringField;
    sqlTblOrdemProducaoDetalheid: TIntegerField;
    sqlTblOrdemProducaoDetalheidtblordemdeproducao: TIntegerField;
    sqlTblOrdemProducaoDetalheidmateriaprima: TIntegerField;
    sqlTblOrdemProducaoDetalhepercentual: TSingleField;
    sqlTblOrdemProducaoDetalhequantidade: TSingleField;
    sqlTblOrdemProducaoDetalhelote1: TStringField;
    sqlTblOrdemProducaoDetalhelote2: TStringField;
    sqlTblOrdemProducaoDetalhepreco_aquisicao: TSingleField;
    sqlTblOrdemProducaoDetalhevalortotal: TSingleField;
    sqlTblOrdemProducaoDetalhelote3: TStringField;
    sqltblestoqueinsumosid: TIntegerField;
    sqltblestoqueinsumosidnfeentrada: TIntegerField;
    sqltblestoqueinsumosidinsumo: TIntegerField;
    sqltblestoqueinsumostipo: TStringField;
    sqltblestoqueinsumosdata: TDateField;
    sqltblestoqueinsumosobs: TStringField;
    sqltblestoqueinsumosquantd: TSingleField;
    sqltblestoqueinsumosidordemenvase: TIntegerField;
    sqltblestoqueinsumosidordemquimico: TIntegerField;
    sqltblestoqueinsumosidproduto: TIntegerField;
    sqlTblFormulaid: TIntegerField;
    sqlTblFormulacodigo: TStringField;
    sqlTblFormuladescricaoformula: TStringField;
    sqlTblFormulaobservacao: TMemoField;
    sqlTblFormulapercentual: TSingleField;
    sqlTblFormulavalido: TIntegerField;
    sqlTblFormuladetalheid: TIntegerField;
    sqlTblFormuladetalheidtblformula: TIntegerField;
    sqlTblFormuladetalheidmateriaprima: TIntegerField;
    sqlTblFormuladetalheid_1: TIntegerField;
    sqlTblFormuladetalhedescricao: TStringField;
    sqlTblOrdemProducaoid: TIntegerField;
    sqlTblOrdemProducaoficha: TStringField;
    sqlTblOrdemProducaolote: TStringField;
    sqlTblOrdemProducaoemissao: TDateField;
    sqlTblOrdemProducaoidformula: TIntegerField;
    sqlTblOrdemProducaoproduzido: TSingleField;
    sqlTblOrdemProducaofator: TSingleField;
    sqlTblOrdemProducaoemproducao: TIntegerField;
    sqlTblOrdemProducaoidproduto: TIntegerField;
    sqlTblOrdemProducaostatus: TStringField;
    sqlTblInsumosFormulaid: TIntegerField;
    sqlTblInsumosFormulacodigo: TStringField;
    sqlTblInsumosFormulaue: TStringField;
    sqlTblInsumosFormulalitragem: TSingleField;
    sqlTblInsumosFormuladescricao: TStringField;
    sqlTblInsumosFormulatipo: TStringField;
    sqlTblInsumosFormulaestoqueminimo: TSingleField;
    sqlTblInsumosFormulaestoquemaximo: TSingleField;
    sqlOrdemProducaoDetalheid: TIntegerField;
    sqlOrdemProducaoDetalheidtblordemdeproducao: TIntegerField;
    sqlOrdemProducaoDetalheidmateriaprima: TIntegerField;
    sqlOrdemProducaoDetalhepercentual: TSingleField;
    sqlOrdemProducaoDetalhequantidade: TSingleField;
    sqlOrdemProducaoDetalhelote1: TStringField;
    sqlOrdemProducaoDetalhelote2: TStringField;
    sqlOrdemProducaoDetalhepreco_aquisicao: TSingleField;
    sqlOrdemProducaoDetalhevalortotal: TSingleField;
    sqlOrdemProducaoDetalhelote3: TStringField;
    sqlOrdemProducaoDetalhedescricao: TStringField;
    sqlTblOrdemEnvaseid: TIntegerField;
    sqlTblOrdemEnvasecodopenvase: TIntegerField;
    sqlTblOrdemEnvaseidprodutos: TIntegerField;
    sqlTblOrdemEnvaseqtdprevista: TSingleField;
    sqlTblOrdemEnvaseqtdreal: TSingleField;
    sqlTblOrdemEnvasehora: TTimeField;
    sqlTblOrdemEnvasedata: TDateField;
    sqlTblOrdemEnvaseue: TStringField;
    sqlTblOrdemEnvaselote: TStringField;
    sqlTblOrdemEnvasecpa: TStringField;
    sqlTblOrdemEnvaseoperador: TStringField;
    sqlTblOrdemEnvasestatus: TStringField;
    sqlTblOrdemEnvasedescricao: TStringField;
    sqlTblInsumoEnvaseid: TIntegerField;
    sqlTblInsumoEnvasedescricao: TStringField;
    sqlTblInsumoEnvaseinsumosid: TIntegerField;
    sqlTblInsumoEnvaseINSUMODESC: TStringField;
    sqlListaEstoqueInsumoscodigo: TStringField;
    sqlListaEstoqueInsumosdescricao: TStringField;
    sqlListaEstoqueInsumosQUANTD: TFloatField;
    sqlOrdemEnvaseQProdutodescricao: TStringField;
    sqlOrdemEnvaseQProdutoid: TIntegerField;
    sqlOrdemEnvaseQProdutoidproduto: TIntegerField;
    sqlAcertoInsumoid: TIntegerField;
    sqlAcertoInsumoidnfeentrada: TIntegerField;
    sqlAcertoInsumoidinsumo: TIntegerField;
    sqlAcertoInsumotipo: TStringField;
    sqlAcertoInsumodata: TDateField;
    sqlAcertoInsumoobs: TStringField;
    sqlAcertoInsumoquantd: TSingleField;
    sqlAcertoInsumoidordemenvase: TIntegerField;
    sqlAcertoInsumoidordemquimico: TIntegerField;
    sqlAcertoInsumoidproduto: TIntegerField;
    sqlAcertoInsumodescricao: TStringField;
    sqlTblRefugoid: TIntegerField;
    sqlTblRefugocodinsumo: TIntegerField;
    sqlTblRefugoqtd: TSingleField;
    sqlTblRefugoidordemproducao: TIntegerField;
    sqlTblRefugoobser: TMemoField;
    sqlRefugoNomeid: TIntegerField;
    sqlRefugoNomecodinsumo: TIntegerField;
    sqlRefugoNomeqtd: TSingleField;
    sqlRefugoNomeidordemproducao: TIntegerField;
    sqlRefugoNomeobser: TMemoField;
    sqlRefugoNomedescricao: TStringField;
    sqlTblEnvaseDetalheid: TIntegerField;
    sqlTblEnvaseDetalhecodproduto: TStringField;
    sqlTblEnvaseDetalheqtd: TSingleField;
    sqlTblEnvaseDetalheue: TStringField;
    sqlTblEnvaseDetalhepreco: TSingleField;
    sqlTblEnvaseDetalhevalortotal: TSingleField;
    sqlTblEnvaseDetalheidordemproducao: TIntegerField;
    sqlTblEnvaseDetalheidcodproduto: TIntegerField;
    sqlOrdemEnvaseBtid: TIntegerField;
    sqlOrdemEnvaseBtcodopenvase: TIntegerField;
    sqlOrdemEnvaseBtidprodutos: TIntegerField;
    sqlOrdemEnvaseBtqtdprevista: TSingleField;
    sqlOrdemEnvaseBtqtdreal: TSingleField;
    sqlOrdemEnvaseBthora: TTimeField;
    sqlOrdemEnvaseBtdata: TDateField;
    sqlOrdemEnvaseBtue: TStringField;
    sqlOrdemEnvaseBtlote: TStringField;
    sqlOrdemEnvaseBtcpa: TStringField;
    sqlOrdemEnvaseBtoperador: TStringField;
    sqlOrdemEnvaseBtstatus: TStringField;
    sqlQtdProdutoid: TIntegerField;
    sqlQtdProdutodescricao: TStringField;
    sqlQtdProdutoinsumosid: TIntegerField;
    sqlQtdProdutoINSUMODESC: TStringField;
    sqlQtdProdutoSUM: TFloatField;
    sqlQtdProdutoidinsumo: TIntegerField;
    sqlOPQuimicoid: TIntegerField;
    sqlOPQuimicoficha: TStringField;
    sqlOPQuimicolote: TStringField;
    sqlOPQuimicoemissao: TDateField;
    sqlOPQuimicoidformula: TIntegerField;
    sqlOPQuimicoproduzido: TSingleField;
    sqlOPQuimicofator: TSingleField;
    sqlOPQuimicoemproducao: TIntegerField;
    sqlOPQuimicoidproduto: TIntegerField;
    sqlOPQuimicostatus: TStringField;
    sqlOPQuimicodescricaoformula: TStringField;
    sqlOPQuimicodescricao: TStringField;
    sqlEstoqueQObsid: TIntegerField;
    sqlEstoqueQObsobs: TStringField;
    sqlTblOrdemProducaoQid: TIntegerField;
    sqlTblOrdemProducaoQidproduto: TIntegerField;
    sqlTblOrdemProducaoQidtblordemproducao: TIntegerField;
    sqlTblOrdemProducaoQpercentual: TSingleField;
    sqlTblOrdemProducaoQqtd: TSingleField;
    sqlNfEIdid: TIntegerField;
    sqlNfEIdnronfe: TIntegerField;
    sqlNfEIdserienfe: TIntegerField;
    sqlNfEIddata: TDateField;
    sqlNfEIdcodfiscal: TIntegerField;
    sqlNfEIdcodfornecedor: TIntegerField;
    sqlNfEIdcondpagamento: TStringField;
    sqlNfEIddetalhepagamento: TStringField;
    sqlNfEIdtipomaterial: TStringField;
    sqlNfEIdvalornfe: TSingleField;
    sqlNfEIdvalorcalculado: TSingleField;
    sqlNfEIdobs: TMemoField;
    sqlOpQIDid: TIntegerField;
    sqlOpQIDficha: TStringField;
    sqlOpQIDlote: TStringField;
    sqlOpQIDemissao: TDateField;
    sqlOpQIDidformula: TIntegerField;
    sqlOpQIDproduzido: TSingleField;
    sqlOpQIDfator: TSingleField;
    sqlOpQIDemproducao: TIntegerField;
    sqlOpQIDidproduto: TIntegerField;
    sqlOpQIDstatus: TStringField;
    sqlInsumoIDid: TIntegerField;
    sqlInsumoIDdescricao: TStringField;
    sqlInsumoIDcodigo: TStringField;
    sqlTblSaidaEmbalagemid: TIntegerField;
    sqlTblSaidaEmbalagemidordemproducao: TIntegerField;
    sqlTblSaidaEmbalagemdata: TDateField;
    sqlTblSaidaEmbalagemdestino: TStringField;
    sqlTblSaidaEmbalagemresponsavel: TStringField;
    sqlTblSaidaEmbalagemrequisitante: TStringField;
    sqlTblSaidaEmbalagemidproduto: TIntegerField;
    sqlTblSaidaEmbalagemvalor: TSingleField;
    sqlSaidaDetalheid: TIntegerField;
    sqlSaidaDetalheitem: TIntegerField;
    sqlSaidaDetalheqtd: TSingleField;
    sqlSaidaDetalheqtdcaixa: TSingleField;
    sqlSaidaDetalhetotal: TSingleField;
    sqlSaidaDetalhedata: TDateField;
    sqlSaidaDetalhehora: TTimeField;
    sqlOrdemSaidaid: TIntegerField;
    sqlOrdemSaidacodopenvase: TIntegerField;
    sqlOrdemSaidaidprodutos: TIntegerField;
    sqlOrdemSaidaqtdprevista: TSingleField;
    sqlOrdemSaidaqtdreal: TSingleField;
    sqlOrdemSaidahora: TTimeField;
    sqlOrdemSaidadata: TDateField;
    sqlOrdemSaidaue: TStringField;
    sqlOrdemSaidalote: TStringField;
    sqlOrdemSaidacpa: TStringField;
    sqlOrdemSaidaoperador: TStringField;
    sqlOrdemSaidadescricao: TStringField;
    sqlAcessSaidacodproduto: TStringField;
    sqlAcessSaidadescricao: TStringField;
    sqlAcessSaidacodopenvase: TIntegerField;
    sqlUsuariosLista: TSQLQuery;
    dspUsuariosLista: TDataSetProvider;
    sqlUsuariosListaid: TIntegerField;
    sqlUsuariosListanome: TStringField;
    sqlUsuariosListaemail: TStringField;
    sqlUsuariosListausuario: TStringField;
    sqlUsuariosListasenha: TStringField;
    sqlUsuariosUn: TSQLQuery;
    dspUsuariosUn: TDataSetProvider;
    sqlUsuariosUnid: TIntegerField;
    sqlUsuariosUnnome: TStringField;
    sqlUsuariosUnemail: TStringField;
    sqlUsuariosUnusuario: TStringField;
    sqlUsuariosUnsenha: TStringField;
    sqlQuimicoCod: TSQLQuery;
    dspQuimicoCod: TDataSetProvider;
    sqlQuimicoCoddescricao: TStringField;
    sqlQuimicoCodid: TIntegerField;
    sqlQuimicoCodcodfornecedor: TIntegerField;
    sqlQuimicoCodgrupo: TIntegerField;
    sqlQuimicoCodcodproduto: TIntegerField;
    sqlQuimicoCodprocedencia: TStringField;
    sqlQuimicoCodgrupopedido: TStringField;
    sqlQuimicoCodnumeropa: TIntegerField;
    sqlQuimicoCodnomeprodutopedido: TStringField;
    sqlQuimicoCodncm: TStringField;
    sqlProdutoForOP: TSQLQuery;
    dspProdutoForOP: TDataSetProvider;
    sqlOrdemSaidastatus: TStringField;
    sqlRelEstoque2: TSQLQuery;
    dspRelEstoque2: TDataSetProvider;
    sqlPedidos: TSQLQuery;
    sqlPedidosid: TIntegerField;
    sqlPedidosdatapedido: TDateField;
    sqlPedidosdataentrega: TDateField;
    sqlPedidosnome: TStringField;
    sqlPedidosendereco: TStringField;
    sqlPedidosbairro: TStringField;
    sqlPedidoscidade: TStringField;
    sqlPedidosuf: TStringField;
    sqlPedidoscep: TStringField;
    sqlPedidostelefone: TStringField;
    sqlPedidoscelular: TStringField;
    sqlPedidosrv: TStringField;
    sqlPedidosrv2: TStringField;
    sqlPedidosrv3: TStringField;
    sqlPedidospvbruto: TSingleField;
    sqlPedidosdesconto: TSingleField;
    sqlPedidosliquido: TSingleField;
    dspPedidos: TDataSetProvider;
    sqlPedidosDetalhe: TSQLQuery;
    dspPedidosDetalhe: TDataSetProvider;
    sqlPedidosDetalheid: TIntegerField;
    sqlPedidosDetalheun: TIntegerField;
    sqlPedidosDetalhecodigo: TStringField;
    sqlPedidosDetalheproduto: TStringField;
    sqlPedidosDetalheprecoun: TSingleField;
    sqlPedidosDetalheprecototal: TSingleField;
    sqlPedidosDetalheidpedido: TIntegerField;
    sqlNfeEntradaid: TIntegerField;
    sqlNfeEntradanronfe: TIntegerField;
    sqlNfeEntradaserienfe: TIntegerField;
    sqlNfeEntradadata: TDateField;
    sqlNfeEntradacodfiscal: TIntegerField;
    sqlNfeEntradanome_razaosocial: TStringField;
    sqlNfeEntradacondpagamento: TStringField;
    sqlNfeEntradadetalhepagamento: TStringField;
    sqlNfeEntradaVALORTOTAL: TFloatField;
    sqlNfeEntradaobs: TMemoField;
    sqlNfeBtn: TSQLQuery;
    dspNFeBtn: TDataSetProvider;
    sqlNfeBtnid: TIntegerField;
    sqlNfeBtnnronfe: TIntegerField;
    sqlNfeBtnserienfe: TIntegerField;
    sqlNfeBtndata: TDateField;
    sqlNfeBtncodfiscal: TIntegerField;
    sqlNfeBtncodfornecedor: TIntegerField;
    sqlNfeBtncondpagamento: TStringField;
    sqlNfeBtndetalhepagamento: TStringField;
    sqlNfeBtntipomaterial: TStringField;
    sqlNfeBtnvalornfe: TSingleField;
    sqlNfeBtnvalorcalculado: TSingleField;
    sqlNfeBtnobs: TMemoField;
    sqlNfeEntradacodfornecedor: TIntegerField;
    sqlNfeEntradaid_1: TIntegerField;
    sqlNfeSum: TSQLQuery;
    dspNfeSum: TDataSetProvider;
    sqlRelatForn: TSQLQuery;
    dspRelatForn: TDataSetProvider;
    sqlProdutoscodformula: TStringField;
    sqlTblFormuladetalhecodprodutoacab: TStringField;
    sqlNfeBtnlote: TIntegerField;
    sqlTblFormulaidcodprocesso: TStringField;
    sqlQuimicoCodcodformula: TStringField;
    sqlNomePro: TSQLQuery;
    dspNomePro: TDataSetProvider;
    sqlNomeProdescricao: TStringField;
    qrySeq: TSQLQuery;
    dspSeq: TDataSetProvider;
    qrySeqGEN_ID: TLargeintField;
    qryNfImp: TSQLQuery;
    dspNfImp: TDataSetProvider;
    qryNfImpid: TIntegerField;
    qryNfImpcodnfeentrada: TIntegerField;
    qryNfImpcodproduto: TStringField;
    qryNfImpUE: TStringField;
    qryNfImpqtde: TSingleField;
    qryNfImpvlrunitario: TSingleField;
    qryNfImpvaloripi: TSingleField;
    qryNfImpvalortotal: TSingleField;
    qryNfImpcodfornecedor: TIntegerField;
    qryNfImpcodfiscal: TStringField;
    qryNfImplote: TStringField;
    qryNfImpvalidade: TDateField;
    qryNfImpnroregistro: TIntegerField;
    qryNfImppercentagemicms: TSingleField;
    qryNfImpteveaumento: TSmallintField;
    qryNfImpgeraetiqueta: TSmallintField;
    qryNfImpcadastradf: TSmallintField;
    qryNfImpncm: TStringField;
    qryNfImpitem: TIntegerField;
    qryNfImpsequencial: TIntegerField;
    qryNfImpdescricao: TStringField;
    qryNfImpcodigo: TStringField;
    sqlRelEstoque2descricao: TStringField;
    sqlRelEstoque2codigo: TStringField;
    sqlRelEstoque2SUM: TFloatField;
    sqlRelEstoque2estoqueminimo: TSingleField;
    sqlRelEstoque2estoquemaximo: TSingleField;
    sqlRelEstoque2FALTA: TFloatField;
    sqlTblFormuladetalhecodigo: TStringField;
    sqlOrdemProducaoDetalhecodigo: TStringField;
    sqltblestoqueinsumoslote: TStringField;
    sqlTblInsumoslote: TStringField;
    sqlAcertoInsumolote: TStringField;
    sqlLoteQuimico: TSQLQuery;
    sqlLoteQuimicolote: TStringField;
    sqlLoteQuimicodata: TDateField;
    sqlLoteQuimicoquantd: TSingleField;
    dspLoteQuimico: TDataSetProvider;
    sqlEstoqueQ: TSQLQuery;
    dspEstoqueQ: TDataSetProvider;
    sqlEstoqueQid: TIntegerField;
    sqlEstoqueQidnfeentrada: TIntegerField;
    sqlEstoqueQidinsumo: TIntegerField;
    sqlEstoqueQtipo: TStringField;
    sqlEstoqueQdata: TDateField;
    sqlEstoqueQobs2: TStringField;
    sqlEstoqueQquantd: TSingleField;
    sqlEstoqueQidordemenvase: TIntegerField;
    sqlEstoqueQidordemquimico: TIntegerField;
    sqlEstoqueQidproduto: TIntegerField;
    sqlEstoqueQlote: TStringField;
    sqlRelEstoquedescricao: TStringField;
    sqlRelEstoquecodigo: TStringField;
    sqlRelEstoqueSUM: TFloatField;
    sqlRelEstoqueestoqueminimo: TSingleField;
    sqlRelEstoqueestoquemaximo: TSingleField;
    sqlRelEstoqueFALTA: TFloatField;
    sqlOPDetalhe: TSQLQuery;
    dspOPDetalhe: TDataSetProvider;
    sqlOPDetalheid: TIntegerField;
    sqlOPDetalheidtblordemdeproducao: TIntegerField;
    sqlOPDetalheidmateriaprima: TIntegerField;
    sqlOPDetalhepercentual: TSingleField;
    sqlOPDetalhequantidade: TSingleField;
    sqlOPDetalhelote1: TStringField;
    sqlOPDetalhelote2: TStringField;
    sqlOPDetalhepreco_aquisicao: TSingleField;
    sqlOPDetalhevalortotal: TSingleField;
    sqlOPDetalhelote3: TStringField;
    sqltblestoqueinsumosdataval: TDateField;
    sqlForItens: TSQLQuery;
    dspForItens: TDataSetProvider;
    sqlForItensid: TIntegerField;
    sqlForItenscodnfeentrada: TIntegerField;
    sqlForItenscodproduto: TStringField;
    sqlForItensUE: TStringField;
    sqlForItensqtde: TSingleField;
    sqlForItensvlrunitario: TSingleField;
    sqlForItensvaloripi: TSingleField;
    sqlForItensvalortotal: TSingleField;
    sqlForItenscodfornecedor: TIntegerField;
    sqlForItenscodfiscal: TStringField;
    sqlForItenslote: TStringField;
    sqlForItensvalidade: TDateField;
    sqlForItensnroregistro: TIntegerField;
    sqlForItenspercentagemicms: TSingleField;
    sqlForItensteveaumento: TSmallintField;
    sqlForItensgeraetiqueta: TSmallintField;
    sqlForItenscadastradf: TSmallintField;
    sqlForItensncm: TStringField;
    sqlForItensitem: TIntegerField;
    sqlForItenssequencial: TIntegerField;
    sqlForItensdescricao: TStringField;
    sqlForItenscodigo: TStringField;
    sqlRelatFornNFEID: TIntegerField;
    sqlRelatFornid: TIntegerField;
    sqlRelatFornnronfe: TIntegerField;
    sqlRelatFornserienfe: TIntegerField;
    sqlRelatForndata: TDateField;
    sqlRelatForncodfiscal: TIntegerField;
    sqlRelatForncodfornecedor: TIntegerField;
    sqlRelatForncondpagamento: TStringField;
    sqlRelatForndetalhepagamento: TStringField;
    sqlRelatForntipomaterial: TStringField;
    sqlRelatFornvalornfe: TSingleField;
    sqlRelatFornvalorcalculado: TSingleField;
    sqlRelatFornobs: TMemoField;
    sqlRelatFornlote: TIntegerField;
    sqlRelatFornnome_razaosocial: TStringField;
    sqlRelatFornCODFORN: TIntegerField;
    sqlRelatFornid_1: TIntegerField;
    sqlRelatForncodnfeentrada: TIntegerField;
    sqlRelatForncodproduto: TStringField;
    sqlRelatFornUE: TStringField;
    sqlRelatFornqtde: TSingleField;
    sqlRelatFornvlrunitario: TSingleField;
    sqlRelatFornvaloripi: TSingleField;
    sqlRelatFornvalortotal: TSingleField;
    sqlRelatForncodfornecedor_1: TIntegerField;
    sqlRelatForncodfiscal_1: TStringField;
    sqlRelatFornlote_1: TStringField;
    sqlRelatFornvalidade: TDateField;
    sqlRelatFornnroregistro: TIntegerField;
    sqlRelatFornpercentagemicms: TSingleField;
    sqlRelatFornteveaumento: TSmallintField;
    sqlRelatForngeraetiqueta: TSmallintField;
    sqlRelatForncadastradf: TSmallintField;
    sqlRelatFornncm: TStringField;
    sqlRelatFornitem: TIntegerField;
    sqlRelatFornsequencial: TIntegerField;
    sqlRelatForndescricao: TStringField;
    sqlRelatForncodigo: TStringField;
    sqlMatPrimaRelat: TSQLQuery;
    dspMatPrimaRelat: TDataSetProvider;
    sqlMatPrimaRelatdescricao: TStringField;
    sqlMatPrimaRelatcodigo: TStringField;
    sqlMatPrimaRelatSUM: TFloatField;
    sqlMatPrimaRelatestoqueminimo: TSingleField;
    sqlMatPrimaRelatestoquemaximo: TSingleField;
    sqlMatPrimaRelatFALTA: TFloatField;
    sqlUsoIntRelat: TSQLQuery;
    dspUsoIntRelat: TDataSetProvider;
    sqlUsoIntRelatdescricao: TStringField;
    sqlUsoIntRelatcodigo: TStringField;
    sqlUsoIntRelatSUM: TFloatField;
    sqlUsoIntRelatestoqueminimo: TSingleField;
    sqlUsoIntRelatestoquemaximo: TSingleField;
    sqlUsoIntRelatFALTA: TFloatField;
    qryNFQuimico: TSQLQuery;
    dspNFQuimico: TDataSetProvider;
    qryNFQuimicoItens: TSQLQuery;
    dspNFQuimicoItens: TDataSetProvider;
    qryNFQuimicoItensid: TIntegerField;
    qryNFQuimicoItenscodnfeentrada: TIntegerField;
    qryNFQuimicoItenscodproduto: TStringField;
    qryNFQuimicoItensUE: TStringField;
    qryNFQuimicoItensqtde: TSingleField;
    qryNFQuimicoItensvlrunitario: TSingleField;
    qryNFQuimicoItensvaloripi: TSingleField;
    qryNFQuimicoItensvalortotal: TSingleField;
    qryNFQuimicoItenscodfornecedor: TIntegerField;
    qryNFQuimicoItenscodfiscal: TStringField;
    qryNFQuimicoItenslote: TStringField;
    qryNFQuimicoItensvalidade: TDateField;
    qryNFQuimicoItensnroregistro: TIntegerField;
    qryNFQuimicoItenspercentagemicms: TSingleField;
    qryNFQuimicoItensteveaumento: TSmallintField;
    qryNFQuimicoItensgeraetiqueta: TSmallintField;
    qryNFQuimicoItenscadastradf: TSmallintField;
    qryNFQuimicoItensncm: TStringField;
    qryNFQuimicoItensitem: TIntegerField;
    qryNFQuimicoItenssequencial: TIntegerField;
    qryNFQuimicoItensdescricao: TStringField;
    qryNFQuimicoid: TIntegerField;
    qryNFQuimiconronfe: TIntegerField;
    qryNFQuimicoserienfe: TIntegerField;
    qryNFQuimicodata: TDateField;
    qryNFQuimicocodfiscal: TIntegerField;
    qryNFQuimiconome_razaosocial: TStringField;
    qryNFQuimicocondpagamento: TStringField;
    qryNFQuimicodetalhepagamento: TStringField;
    qryNFQuimicoobs: TMemoField;
    qryNFQuimicoVALORTOTAL: TFloatField;
    qryNFQuimicoItenscodigo: TStringField;
    qryComunicadoInt: TSQLQuery;
    dspComunicadoInt: TDataSetProvider;
    qryComunicadoIntseqci: TIntegerField;
    qryComunicadoIntdata: TDateField;
    qryComunicadoIntidusuario: TIntegerField;
    qryComunicadoIntobs: TStringField;
    qryComunicadoIntid: TIntegerField;
    qryMPEspc: TSQLQuery;
    dspMPEspc: TDataSetProvider;
    qryMPEspcid: TIntegerField;
    qryMPEspcidmp: TIntegerField;
    qryMPEspcmaterial: TStringField;
    qryMPEspccor: TStringField;
    qryMPEspccrtcor: TStringField;
    qryMPEspcodor: TStringField;
    qryMPEspctoxidade: TStringField;
    qryMPEspcdensidade: TStringField;
    qryMPEspcismg: TStringField;
    qryMPEspciiodo: TStringField;
    qryMPEspcipero: TStringField;
    qryMPEspcumidade: TStringField;
    qryMPEspcconservacao: TStringField;
    qryMPEspcfinalidade: TStringField;
    qryMPEspcpl: TStringField;
    qryMPEspList: TSQLQuery;
    dspMPEspList: TDataSetProvider;
    qryMPEspListid: TIntegerField;
    qryMPEspListidmp: TIntegerField;
    qryMPEspListmaterial: TStringField;
    qryMPEspListcor: TStringField;
    qryMPEspListcrtcor: TStringField;
    qryMPEspListodor: TStringField;
    qryMPEspListtoxidade: TStringField;
    qryMPEspListdensidade: TStringField;
    qryMPEspListismg: TStringField;
    qryMPEspListiiodo: TStringField;
    qryMPEspListipero: TStringField;
    qryMPEspListumidade: TStringField;
    qryMPEspListconservacao: TStringField;
    qryMPEspListfinalidade: TStringField;
    qryMPEspListpl: TStringField;
    qryMPEspListdescricao: TStringField;
    qryMPEspListcodigo: TStringField;
    qryEspEmb: TSQLQuery;
    dspEspEmb: TDataSetProvider;
    qryEspEmbid: TIntegerField;
    qryEspEmbidproduto: TIntegerField;
    qryEspEmbidembf: TIntegerField;
    qryEspEmbidembt: TIntegerField;
    qryEspEmbidembb: TIntegerField;
    qryEspEmbidembc: TIntegerField;
    qryEspEmbmaterialf: TStringField;
    qryEspEmbcorf: TStringField;
    qryEspEmbcarctcorf: TStringField;
    qryEspEmbodorf: TStringField;
    qryEspEmbtoxidadef: TStringField;
    qryEspEmbpesofref: TStringField;
    qryEspEmbpesofmin: TStringField;
    qryEspEmbpesofmax: TStringField;
    qryEspEmbalturafref: TStringField;
    qryEspEmbalturafmin: TStringField;
    qryEspEmbalturafmax: TStringField;
    qryEspEmblarguraombrofref: TStringField;
    qryEspEmblarguraombrofmin: TStringField;
    qryEspEmblarguraombrofmax: TStringField;
    qryEspEmblarguracorpomediofref: TStringField;
    qryEspEmblarguracorpomediofmin: TStringField;
    qryEspEmblarguracorpomediofmax: TStringField;
    qryEspEmbdiametroroscafref: TStringField;
    qryEspEmbdiametroroscafmin: TStringField;
    qryEspEmbdiametroroscafmax: TStringField;
    qryEspEmbdiametroextroscafref: TStringField;
    qryEspEmbdiametroextroscafmin: TStringField;
    qryEspEmbdiametroextroscafmax: TStringField;
    qryEspEmbdiametroextgargfref: TStringField;
    qryEspEmbdiametroextgargfmin: TStringField;
    qryEspEmbdiametroextgargfmax: TStringField;
    qryEspEmbdiametrointgargfref: TStringField;
    qryEspEmbdiametrointgargfmin: TStringField;
    qryEspEmbdiametrointgargfmax: TStringField;
    qryEspEmbdiametrotravafref: TStringField;
    qryEspEmbdiametrotravafmin: TStringField;
    qryEspEmbdiametrotravafmax: TStringField;
    qryEspEmbvolumefref: TStringField;
    qryEspEmbvolumefmin: TStringField;
    qryEspEmbvolumefmax: TStringField;
    qryEspEmbmaterialt: TStringField;
    qryEspEmbcort: TStringField;
    qryEspEmbcarctcort: TStringField;
    qryEspEmbodort: TStringField;
    qryEspEmbtoxidadet: TStringField;
    qryEspEmbpesotref: TStringField;
    qryEspEmbpesotmin: TStringField;
    qryEspEmbpesotmax: TStringField;
    qryEspEmbalturatref: TStringField;
    qryEspEmbalturatmin: TStringField;
    qryEspEmbalturatmax: TStringField;
    qryEspEmblarguraombrotref: TStringField;
    qryEspEmblarguraombrotmin: TStringField;
    qryEspEmblarguraombrotmax: TStringField;
    qryEspEmblarguracorpomediotref: TStringField;
    qryEspEmblarguracorpomediotmin: TStringField;
    qryEspEmblarguracorpomediotmax: TStringField;
    qryEspEmbdiametrotref: TStringField;
    qryEspEmbdiametrotmin: TStringField;
    qryEspEmbdiametrotmax: TStringField;
    qryEspEmbdiametroroscatref: TStringField;
    qryEspEmbdiametroroscatmin: TStringField;
    qryEspEmbdiametroroscatmax: TStringField;
    qryEspEmbmaterialb: TStringField;
    qryEspEmbcorb: TStringField;
    qryEspEmbcarctcorb: TStringField;
    qryEspEmbodorb: TStringField;
    qryEspEmbtoxidadeb: TStringField;
    qryEspEmbpesobref: TStringField;
    qryEspEmbpesobmin: TStringField;
    qryEspEmbpesobmax: TStringField;
    qryEspEmbalturabref: TStringField;
    qryEspEmbalturabmin: TStringField;
    qryEspEmbalturabmax: TStringField;
    qryEspEmblarguraombrobref: TStringField;
    qryEspEmblarguraombrobmin: TStringField;
    qryEspEmblarguraombrobmax: TStringField;
    qryEspEmbmaterialc: TStringField;
    qryEspEmbcorc: TStringField;
    qryEspEmbcarctcorc: TStringField;
    qryEspEmbodorc: TStringField;
    qryEspEmbtoxidadec: TStringField;
    qryEspEmbpesocref: TStringField;
    qryEspEmbpesocmin: TStringField;
    qryEspEmbpesocmax: TStringField;
    qryEmbalagem: TSQLQuery;
    dspEmbalagem: TDataSetProvider;
    qryEmbalagemid: TIntegerField;
    qryEmbalagemdescricao: TStringField;
    qryEmbalagemcodigo: TStringField;
    qryEspEmbList: TSQLQuery;
    dspEspEmbList: TDataSetProvider;
    qryEspEmbListid: TIntegerField;
    qryEspEmbListidproduto: TIntegerField;
    qryEspEmbListidembf: TIntegerField;
    qryEspEmbListidembt: TIntegerField;
    qryEspEmbListidembb: TIntegerField;
    qryEspEmbListidembc: TIntegerField;
    qryEspEmbListmaterialf: TStringField;
    qryEspEmbListcorf: TStringField;
    qryEspEmbListcarctcorf: TStringField;
    qryEspEmbListodorf: TStringField;
    qryEspEmbListtoxidadef: TStringField;
    qryEspEmbListpesofref: TStringField;
    qryEspEmbListpesofmin: TStringField;
    qryEspEmbListpesofmax: TStringField;
    qryEspEmbListalturafref: TStringField;
    qryEspEmbListalturafmin: TStringField;
    qryEspEmbListalturafmax: TStringField;
    qryEspEmbListlarguraombrofref: TStringField;
    qryEspEmbListlarguraombrofmin: TStringField;
    qryEspEmbListlarguraombrofmax: TStringField;
    qryEspEmbListlarguracorpomediofref: TStringField;
    qryEspEmbListlarguracorpomediofmin: TStringField;
    qryEspEmbListlarguracorpomediofmax: TStringField;
    qryEspEmbListdiametroroscafref: TStringField;
    qryEspEmbListdiametroroscafmin: TStringField;
    qryEspEmbListdiametroroscafmax: TStringField;
    qryEspEmbListdiametroextroscafref: TStringField;
    qryEspEmbListdiametroextroscafmin: TStringField;
    qryEspEmbListdiametroextroscafmax: TStringField;
    qryEspEmbListdiametroextgargfref: TStringField;
    qryEspEmbListdiametroextgargfmin: TStringField;
    qryEspEmbListdiametroextgargfmax: TStringField;
    qryEspEmbListdiametrointgargfref: TStringField;
    qryEspEmbListdiametrointgargfmin: TStringField;
    qryEspEmbListdiametrointgargfmax: TStringField;
    qryEspEmbListdiametrotravafref: TStringField;
    qryEspEmbListdiametrotravafmin: TStringField;
    qryEspEmbListdiametrotravafmax: TStringField;
    qryEspEmbListvolumefref: TStringField;
    qryEspEmbListvolumefmin: TStringField;
    qryEspEmbListvolumefmax: TStringField;
    qryEspEmbListmaterialt: TStringField;
    qryEspEmbListcort: TStringField;
    qryEspEmbListcarctcort: TStringField;
    qryEspEmbListodort: TStringField;
    qryEspEmbListtoxidadet: TStringField;
    qryEspEmbListpesotref: TStringField;
    qryEspEmbListpesotmin: TStringField;
    qryEspEmbListpesotmax: TStringField;
    qryEspEmbListalturatref: TStringField;
    qryEspEmbListalturatmin: TStringField;
    qryEspEmbListalturatmax: TStringField;
    qryEspEmbListlarguraombrotref: TStringField;
    qryEspEmbListlarguraombrotmin: TStringField;
    qryEspEmbListlarguraombrotmax: TStringField;
    qryEspEmbListlarguracorpomediotref: TStringField;
    qryEspEmbListlarguracorpomediotmin: TStringField;
    qryEspEmbListlarguracorpomediotmax: TStringField;
    qryEspEmbListdiametrotref: TStringField;
    qryEspEmbListdiametrotmin: TStringField;
    qryEspEmbListdiametrotmax: TStringField;
    qryEspEmbListdiametroroscatref: TStringField;
    qryEspEmbListdiametroroscatmin: TStringField;
    qryEspEmbListdiametroroscatmax: TStringField;
    qryEspEmbListmaterialb: TStringField;
    qryEspEmbListcorb: TStringField;
    qryEspEmbListcarctcorb: TStringField;
    qryEspEmbListodorb: TStringField;
    qryEspEmbListtoxidadeb: TStringField;
    qryEspEmbListpesobref: TStringField;
    qryEspEmbListpesobmin: TStringField;
    qryEspEmbListpesobmax: TStringField;
    qryEspEmbListalturabref: TStringField;
    qryEspEmbListalturabmin: TStringField;
    qryEspEmbListalturabmax: TStringField;
    qryEspEmbListlarguraombrobref: TStringField;
    qryEspEmbListlarguraombrobmin: TStringField;
    qryEspEmbListlarguraombrobmax: TStringField;
    qryEspEmbListmaterialc: TStringField;
    qryEspEmbListcorc: TStringField;
    qryEspEmbListcarctcorc: TStringField;
    qryEspEmbListodorc: TStringField;
    qryEspEmbListtoxidadec: TStringField;
    qryEspEmbListpesocref: TStringField;
    qryEspEmbListpesocmin: TStringField;
    qryEspEmbListpesocmax: TStringField;
    qryEspEmbListFRASCCOD: TStringField;
    qryEspEmbListFRASDESC: TStringField;
    qryEspEmbListTAMCOD: TStringField;
    qryEspEmbListTAMDESC: TStringField;
    qryEspEmbListBATOCOD: TStringField;
    qryEspEmbListBATODESC: TStringField;
    qryEspEmbListCARTCOD: TStringField;
    qryEspEmbListCARTDESC: TStringField;
    qryEspEmbListPRODUTONOME: TStringField;
    qryProd: TSQLQuery;
    dspProd: TDataSetProvider;
    qryProdid: TIntegerField;
    qryProdnomeprodutopedido: TStringField;
    qryComunicadoIntusado: TIntegerField;
    qryCIInt: TSQLQuery;
    dspCIInt: TDataSetProvider;
    qryCIIntid: TIntegerField;
    qryCIIntseqci: TIntegerField;
    qryCIIntdata: TDateField;
    qryCIIntidusuario: TIntegerField;
    qryCIIntobs: TStringField;
    qryCIIntusado: TIntegerField;
    qryCIIntnome: TStringField;
    qryListaLote: TSQLQuery;
    dspListaLote: TDataSetProvider;
    qryListaLoteid: TIntegerField;
    qryListaLoteidnfeentrada: TIntegerField;
    qryListaLoteidinsumo: TIntegerField;
    qryListaLotetipo: TStringField;
    qryListaLotedata: TDateField;
    qryListaLoteobs: TStringField;
    qryListaLotequantd: TSingleField;
    qryListaLoteidordemenvase: TIntegerField;
    qryListaLoteidordemquimico: TIntegerField;
    qryListaLoteidproduto: TIntegerField;
    qryListaLotelote: TStringField;
    qryListaLotedataval: TDateField;
    qryListaLotedescricao: TStringField;
    qryListaLotecodigo: TStringField;
    qryListaLotetipo_1: TStringField;
    qryOPExp: TSQLQuery;
    dspOPExp: TDataSetProvider;
    qryOPExpid: TIntegerField;
    qryOPExpidproduto: TIntegerField;
    qryOPExpidformula: TIntegerField;
    qryOPExpdescricaoprod: TStringField;
    qryOPExpcodproduto: TIntegerField;
    qryOPExpcodformula: TStringField;
    qryOPExpdataop: TDateField;
    qryOPExpquantidade: TSingleField;
    qryOPExpDetalhe: TSQLQuery;
    dspOPExpDetalhe: TDataSetProvider;
    qryOPExpDetalheid: TIntegerField;
    qryOPExpDetalheidexpedicao: TIntegerField;
    qryOPExpDetalheidinsumo: TIntegerField;
    qryOPExpDetalhedescricao: TStringField;
    qryOPExpDetalhecodigo: TStringField;
    qryOPExpDetalhequantidade: TSingleField;
    qryOPExpnumero: TStringField;
    qryInsuProd: TSQLQuery;
    dspInsuProd: TDataSetProvider;
    qryInsuProdid: TIntegerField;
    qryInsuProdcodigo: TStringField;
    qryInsuProdue: TStringField;
    qryInsuProdlitragem: TSingleField;
    qryInsuProddescricao: TStringField;
    qryInsuProdtipo: TStringField;
    qryInsuProdestoqueminimo: TSingleField;
    qryInsuProdestoquemaximo: TSingleField;
    qryInsuProdlote: TStringField;
    qryExpFinalizado: TSQLQuery;
    dspExpFinalizado: TDataSetProvider;
    qryBaixa: TSQLQuery;
    dspBaixa: TDataSetProvider;
    qryBaixaid: TIntegerField;
    qryBaixaidop: TIntegerField;
    qryBaixaidprod: TIntegerField;
    qryBaixaqtd: TSingleField;
    qryBaixadataexp: TDateField;
    qryBaixahoraexp: TTimeField;
    qryBaixanumnf: TStringField;
    qryExpFinalizadoid: TIntegerField;
    qryExpFinalizadocodopenvase: TIntegerField;
    qryExpFinalizadoidprodutos: TIntegerField;
    qryExpFinalizadoqtdreal: TSingleField;
    qryExpFinalizadodata: TDateField;
    qryExpFinalizadolote: TStringField;
    qryExpFinalizadodescricao: TStringField;
    sqlOPDetalheqtd1: TSingleField;
    sqlOPDetalheqtd2: TSingleField;
    sqlOPDetalheqtd3: TSingleField;
    qrySaidaProducao: TSQLQuery;
    dspSaidaProducao: TDataSetProvider;
    qrySaidaProducaoid: TIntegerField;
    qrySaidaProducaocodopenvase: TIntegerField;
    qrySaidaProducaoidprodutos: TIntegerField;
    qrySaidaProducaoqtdprevista: TSingleField;
    qrySaidaProducaoqtdreal: TSingleField;
    qrySaidaProducaohora: TTimeField;
    qrySaidaProducaodata: TDateField;
    qrySaidaProducaoue: TStringField;
    qrySaidaProducaolote: TStringField;
    qrySaidaProducaocpa: TStringField;
    qrySaidaProducaooperador: TStringField;
    qrySaidaProducaostatus: TStringField;
    qrySaidaProducaodescricao: TStringField;
    SaidaProducaoBT: TSQLQuery;
    dspSaidaProducaoBT: TDataSetProvider;
    SaidaProducaoBTid: TIntegerField;
    SaidaProducaoBTcodopenvase: TIntegerField;
    SaidaProducaoBTidprodutos: TIntegerField;
    SaidaProducaoBTqtdprevista: TSingleField;
    SaidaProducaoBTqtdreal: TSingleField;
    SaidaProducaoBThora: TTimeField;
    SaidaProducaoBTdata: TDateField;
    SaidaProducaoBTue: TStringField;
    SaidaProducaoBTlote: TStringField;
    SaidaProducaoBTcpa: TStringField;
    SaidaProducaoBToperador: TStringField;
    SaidaProducaoBTstatus: TStringField;
    sqlSaidaProd: TSQLQuery;
    dspSaidaProd: TDataSetProvider;
    sqlOPExpedicao: TSQLQuery;
    dspOPExpedicao: TDataSetProvider;
    sqlOPExpedicaoqtd: TSingleField;
    sqlPermissoes: TSQLQuery;
    dspPermissoes: TDataSetProvider;
    sqlPermissoesid: TIntegerField;
    sqlPermissoesidusuario: TIntegerField;
    sqlPermissoesidtipo: TIntegerField;
    sqlPermissoesnomeform: TStringField;
    sqlCalculaTotal: TSQLQuery;
    dspCalculaTotal: TDataSetProvider;
    sqlCalculaTotalTOTAL: TFloatField;
    qryBaixanomecliente: TStringField;
    qryEstoqueExp: TSQLQuery;
    qryEstoqueExpdescricao: TStringField;
    qryEstoqueExpidprod: TIntegerField;
    dspEstoqueExp: TDataSetProvider;
    qryEstoqueExpcodproduto: TIntegerField;
    qryBaixaobs: TStringField;
    qryEstoqueExpqtd: TSingleField;
    qryExpSaida: TSQLQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SingleField1: TSingleField;
    dspExpSaida: TDataSetProvider;
    qryExpSaidaid: TIntegerField;
    qryExpSaidaidop: TIntegerField;
    qryExpSaidadataexp: TDateField;
    qryExpSaidahoraexp: TTimeField;
    qryExpSaidanumnf: TStringField;
    qryExpSaidanomecliente: TStringField;
    qryExpSaidaobs: TStringField;
    qryEstoqueExpid: TIntegerField;
    qryEstoqueExpidop: TIntegerField;
    qryEstoqueExpdataexp: TDateField;
    qryEstoqueExphoraexp: TTimeField;
    qryEstoqueExpnumnf: TStringField;
    qryEstoqueExpnomecliente: TStringField;
    qryEstoqueExpobs: TStringField;
    qryClienteExp: TSQLQuery;
    qryRelatExpClient: TSQLQuery;
    dspClienteExp: TDataSetProvider;
    dspRelatExpClient: TDataSetProvider;
    qryClienteExpnomecliente: TStringField;
    qryRelatExpClientid: TIntegerField;
    qryRelatExpClientidop: TIntegerField;
    qryRelatExpClientidprod: TIntegerField;
    qryRelatExpClientqtd: TSingleField;
    qryRelatExpClientdataexp: TDateField;
    qryRelatExpClienthoraexp: TTimeField;
    qryRelatExpClientnumnf: TStringField;
    qryRelatExpClientnomecliente: TStringField;
    qryRelatExpClientobs: TStringField;
    qryRelatExpClientdescricao: TStringField;
    qryRelatExpClientcodproduto: TIntegerField;
    sqlEstQuimico: TSQLQuery;
    dspEstQuimico: TDataSetProvider;
    sqlEstQuimicoid: TIntegerField;
    sqlEstQuimicoidnfeentrada: TIntegerField;
    sqlEstQuimicoidinsumo: TIntegerField;
    sqlEstQuimicotipo: TStringField;
    sqlEstQuimicodata: TDateField;
    sqlEstQuimicoobs: TStringField;
    sqlEstQuimicoquantd: TSingleField;
    sqlEstQuimicoidordemenvase: TIntegerField;
    sqlEstQuimicoidordemquimico: TIntegerField;
    sqlEstQuimicoidproduto: TIntegerField;
    sqlEstQuimicolote: TStringField;
    sqlEstQuimicodataval: TDateField;
    sqlEstQuimicolocal: TStringField;
    sqlEstQuimicohora: TTimeField;
    sqlEstQuimicodescricao: TStringField;
    sqlTblFormulacodproduto: TStringField;
    sqlRelEstoqueInativo: TSQLQuery;
    dspRelEstoqueInativo: TDataSetProvider;
    sqlRelEstoqueInativodescricao: TStringField;
    sqlRelEstoqueInativocodigo: TStringField;
    sqlRelEstoqueInativoSUM: TFloatField;
    sqlRelEstoqueInativoestoqueminimo: TSingleField;
    sqlRelEstoqueInativoestoquemaximo: TSingleField;
    sqlRelEstoqueInativoFALTA: TFloatField;
    qrySumExp: TSQLQuery;
    dspSumExp: TDataSetProvider;
    qrySumExpdescricao: TStringField;
    qrySumExpcodproduto: TIntegerField;
    qrySumExpSUM: TFloatField;
    sqlProdutosidprodprincipal: TIntegerField;
    sqlProdutosrevisao: TIntegerField;
    qrySearchNFe: TSQLQuery;
    dspSearchNFe: TDataSetProvider;
    qrySearchNFeid: TIntegerField;
    qrySearchNFenronfe: TIntegerField;
    qrySearchNFeserienfe: TIntegerField;
    qrySearchNFedata: TDateField;
    qrySearchNFecodfiscal: TIntegerField;
    qrySearchNFenome_razaosocial: TStringField;
    qrySearchNFecodfornecedor: TIntegerField;
    qrySearchNFeid_1: TIntegerField;
    qrySearchNFecondpagamento: TStringField;
    qrySearchNFedetalhepagamento: TStringField;
    qrySearchNFeobs: TMemoField;
    qrySearchNFeVALORTOTAL: TFloatField;
    sqlProdutoscod_item: TStringField;
    sqlProdutostipo_item: TStringField;
    sqlTblInsumoscod_item: TStringField;
    sqlTblInsumostipo_item: TStringField;
    qryControleOp: TSQLQuery;
    dspControleOp: TDataSetProvider;
    qryControleOpid: TIntegerField;
    qryControleOpidop: TIntegerField;
    qryControleOpqtd: TSingleField;
    qryControleOpdatains: TDateField;
    qrySaidaProducaoqtd: TSingleField;
    qrySaidaProducaodatains: TDateField;
    qrySaidaDetalheBt2: TSQLQuery;
    dspSaidaDetalheBt2: TDataSetProvider;
    qrySaidaDetalheBt2id: TIntegerField;
    qrySaidaDetalheBt2codproduto: TStringField;
    qrySaidaDetalheBt2qtd: TSingleField;
    qrySaidaDetalheBt2ue: TStringField;
    qrySaidaDetalheBt2preco: TSingleField;
    qrySaidaDetalheBt2valortotal: TSingleField;
    qrySaidaDetalheBt2idordemproducao: TIntegerField;
    qrySaidaDetalheBt2idcodproduto: TIntegerField;
    qrySaidaDetalheBt2QTDINST: TSingleField;
    qrySaidaProducaoIDCONTROLE: TIntegerField;
    qrySaidaProducaohorains: TTimeField;
    qryControleOphorains: TTimeField;
    sqlSaidaProddescricao: TStringField;
    sqlSaidaProdquantd: TSingleField;
    sqlSaidaProddata: TDateField;
    sqlSaidaProdhora: TTimeField;
    sqlSaidaProdidordemenvase: TIntegerField;
    sqlTblFormuladetalhepercentual: TFMTBCDField;
    qryAux2: TSQLQuery;
    dspForItensCons: TDataSetProvider;
    sqlForItensCons: TSQLQuery;
    sqlForItensConscodproduto: TIntegerField;
    sqlForItensConsdescricao: TStringField;
    sqlForItensConsQTDE: TFloatField;
    procedure DSServerModuleCreate(Sender: TObject);
//  type
//    TStringArray = array of string;
  private
   { Private declarations }
  public

   //win32
   Function VerificaUsuario(sLogin,sSenha: String) : Integer;
   Procedure UpdateSenhaUsuario(sLogin,sSenha: String);
   Function GetNextIdNfeEntrada : Integer;
   Function GetNextIdOPQuimico : Integer;
   Function GetNextIdFormula : Integer;
   Function GetNextIdOrdemEnvase : Integer;
   Function DeletaNFeEntrada(idNFeEntrada : Integer) : Integer;
   Function DeletaEstoqueInsumos (idEstoqueInsumo :Integer) : Integer;
   function DeletaNFeItens (idNfeItens : integer) : integer;
   Function GetNextIdProducaoEnvase : Integer;
   function DeletaOrdemEnvase (idEnvase : Integer) : Integer;
   function DeletaEnvaseDetalhe (idEnvase : Integer) : Integer;
   Function IBaixaEstoque (idInsumo,idOrdemEnvase, idControle : Integer; Qtd : Double) : Integer;
   Function IBaixaEstoqueQuimico (idMatPrima, idOrdemQuimico : Integer; Qtd : Double; sLote,sQtde: string) : Integer;
   function DeletaOPQuimico (idOrdemProducao : Integer) : Integer;
   function DeletaOPQuimicoDetalhe (idOrdemProducao : Integer) : Integer;
   function IEstoqueQuimico (idProduto, idOrdemProducao : Integer; Qtd : Double) : Integer;
   function IProdutoOPQuimico (idProduto, idOrdemProducao : Integer; Qtd, Perc : Double) : Integer;
   function IBaixaEstoqueOP (idProduto, idOrdemProducao : integer; Qtd : Double) : Integer;
   function GetNextIdSequencial: Integer;
   function DeleteIdSequencial : Integer;
   function ZerarSequencial : Integer;
   function GetNextFichaSequencial : Integer;
   function AvisoEstoqueOrdemProducao (idOrdemProducao : Integer) : Double;
   Function GetNextIdUser : Integer;
   function GetCodProduto (idCodProduto : integer) : String;
   Function GetNextIdPedido : Integer;
   function GetCodInsumo (id : Integer) : String;
   function GetTeveAumento (idCodProd, idForn : Integer) : Double;
   function VlrSequencial (Vlr : integer) : Boolean;
   function GetNextIdEstoqueQuim : Integer;
   function IEstoqueProdutoAcabado (idProduto : Integer; Qtd : Double; Obs : String) : Integer;
   function IPermissao (idUser, idTipo : Integer; sNomeForm : String) : Boolean;
   function GetPermissao (idUser : Integer; sNomeForm : String) : Integer;
   function GetIdUser : Integer;
   function GetIDUsuario (sLogin, sSenha : String) : Integer;
   function IdInsumo (cod : String) : Integer;
   function GetNextIdCI : Integer;
   Function GetNextIdForm : Integer;
   function GetNextCDSCI : integer;
   function GetNome (iduser : Integer) : String;
   Function GetNextIdMPEsp : Integer;
   Function GetNextIdEMBEsp : Integer;
   Function ControlEspMP (idMP : integer) : Boolean;
   Function ControlEspEMB (idProduto : integer) : Boolean;
   function UsoCI (idseq : integer) : Boolean;
   Function GetNextIDExp : Integer;
   Function GetNextIDExpDetalhe : Integer;
   Function IEstProdAcabado(idOP, idProd : Integer; Lote : String; Qtd : Double) : Boolean;
   Function IEstExp(idOp, idProd : Integer; Qtd : Double) : Boolean;
   Function GetIdProduto(iCod : String) : Integer;
   Function VerificaNF (nf : String) : Boolean;
   Function InsertEstExp (idOP, idProd : Integer; Qtd : Double) : Boolean;
   Function RetornoData (Lote : String) : String;
   Function PreencherLote(idMP : Integer; Qtd : Double) : String;
   Function NextSeqLote   : Integer;
   Function NextSeqRegis  : Integer;
   Function NextSeqAprov  : Integer;
   Function NextSeqReprov : Integer;
   Function NextSeqQuarent : Integer;
   Function GetNextNewIdFomulaNew : Integer;
   function exceSql(sSql:String) : boolean;
   Function IEntradaEstoqueEnvase (idInsumo,idOrdemEnvase, idControle : Integer; Qtd : Double) : Integer;
   Function ISaidaEstoqueEnvase (idInsumo,idOrdemEnvase : Integer; Qtd : Double) : Integer;
   Function OPExpedicao (idprod, idop: Integer): Double;  ///
   Procedure IDeletaRegistro(sLogin,sForm : string);
   procedure InsertAuditoria(iid, sTabela, sCampo, sValorNovo, sValorAntigo, sTipoalteracao, sUsuario, sObs: String);
   Function DeletaPermissoes (idusuario : integer) : Integer;   // deleta permissão
   function GetNextIDEstoqueExp : Integer;
   function ExistMPFormula (idForm, idMP : integer) : boolean;
   function FormulaExist(codProd : String) : Boolean;
   function EstInsumo(idInsumo : Integer) : String;
   function GetRevisao(idProduto : integer) : Integer;
   Function NextControleOp : Integer;
   Function SumControleOp(idOp : Integer) : Double;
   function DeletaOrdemDetalhe(idOrdem: String) : Boolean;


    { Public declarations }
  end;

implementation

uses UDMCnn, U_UtilsServer, U_Utils, U_Email, U_Const, System.DateUtils,
  U_FunctionsNF, UMail, ServerContainerUnit;

{$R *.dfm}

{ TServerMethodsGen }

//C:\NawtsServer\db\dbNAWTS.fdb

function TServerMethodsGen.AvisoEstoqueOrdemProducao(idOrdemProducao: Integer): Double;
var
   sSql : String;
begin
   sSql := '';
   sSql := 'select sum("quantd") as est ' +
           'from "tblestoqueinsumos" ' +
           'where "idinsumo" = ' + idOrdemProducao.ToString;
   QryAux.Close;
   QryAux.SQL.Clear;
   QryAux.SQL.Text := sSql;
   QryAux.Open;
   Result := qryAux.FieldByName('est').AsFloat;
   QryAux.Close;
end;

function TServerMethodsGen.ControlEspEMB(idProduto: integer): Boolean;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select "id" from "tblespemb" where "idproduto" =' + idProduto.ToString;
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := sSql;
  QryAux.Open;

  if qryAux.FieldByName('id').AsInteger > 0 then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;

   QryAux.Close;
end;

function TServerMethodsGen.ControlEspMP(idMP: integer): Boolean;
var
  sSql : String;
begin
//
   sSql := '';
   sSql := 'select "id" from "tblespmp" where "idmp" =' + idMP.ToString;
   QryAux.Close;
   QryAux.SQL.Clear;
   QryAux.SQL.Text := sSql;
   QryAux.Open;

   if qryAux.FieldByName('id').AsInteger > 0 then
   begin
     Result := True;
   end
   else
   begin
     Result := False;
   end;

   QryAux.Close;
end;

function TServerMethodsGen.DeletaEnvaseDetalhe(idEnvase: Integer): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblenvasedetalhe" where "tblenvasedetalhe"."idordemproducao" =' + idEnvase.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.DeletaEstoqueInsumos(
  idEstoqueInsumo: Integer): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblestoqueinsumos" where "tblestoqueinsumos"."idnfeentrada" =' + idEstoqueInsumo.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.DeletaNFeEntrada(idNFeEntrada: Integer): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblnfeentrada" where "tblnfeentrada"."id" =' + idNFeEntrada.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.DeletaNFeItens(idNfeItens: integer): integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblnfeentradaitens" where "tblnfeentradaitens"."codnfeentrada" =' + idNfeItens.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.DeletaOPQuimico(idOrdemProducao: Integer): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblordemdeproducao" where "tblordemdeproducao"."id" =' + idOrdemProducao.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.DeletaOPQuimicoDetalhe(
  idOrdemProducao: Integer): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblordemdeproducaodetalhe" where "tblordemdeproducaodetalhe"."idtblordemdeproducao" =' + idOrdemProducao.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.DeletaOrdemDetalhe(idOrdem: String) : Boolean;
var
  sSql : string;
  iIDFormula : String;  //here
begin
   result := False;
  sSql := '';
  sSql := 'select "idformula" from "tblordemdeproducao" where "id" = ' + idOrdem;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  iIDFormula := qryAux.FieldByName('idformula').AsString;
  qryAux.Close;
  sSql := '';
  sSql := 'Select * from "tblformuladetalhe" where "idtblformula" = ' + iIDFormula;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  qryAux.First;
  while not qryAux.Eof do
  begin
     sSql := 'select * from "tblordemdeproducaodetalhe"'
            + ' where "idtblordemdeproducao" = ' + idOrdem
            + ' and "idmateriaprima" = ' + qryAux.FieldByName('idmateriaprima').AsString;
     qryAux2.Close;
     qryAux2.SQL.Clear;
     qryAux2.SQL.Add(sSql);
     qryAux2.Open;
     if FormatFloat('#,###0.000',qryAux.FieldByName('percentual').Asfloat) <> FormatFloat('#,###0.000',qryAux2.FieldByName('percentual').Asfloat)  then
     begin
        result := True;
     end;


     sSql := '';
     sSql := 'update "tblordemdeproducaodetalhe" set "percentual" = '
            + StringReplace(FormatFloat('#,###0.000',qryAux.FieldByName('percentual').Asfloat),',','.',[])
            + ' where "idtblordemdeproducao" = ' + idOrdem
            + ' and "idmateriaprima" = ' + qryAux.FieldByName('idmateriaprima').AsString;
     qryAux2.Close;
     qryAux2.SQL.Clear;
     qryAux2.SQL.Add(sSql);
     qryAux2.ExecSQL;


     qryAux.Next;
  end;
end;

function TServerMethodsGen.DeletaOrdemEnvase(idEnvase: Integer): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblordemenvase" where "tblordemenvase"."id" =' + idEnvase.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.DeletaPermissoes(idusuario: integer): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'delete from "tblpermissao" where "tblpermissao"."idusuario" =' + idusuario.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;                    // deleta a permissao daquele usuario;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;

end;

function TServerMethodsGen.DeleteIdSequencial: Integer;
var
   sSql : String;
begin
   sSql := 'select gen_id("NfeEntrada_S",-1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.exceSql(sSql:String) : boolean;
begin
   Try
      qryAux.Close;
      qryAux.SQL.Clear;
      qryAux.SQL.Add(sSql);
      qryAux.ExecSQL;
   Except on e : exception do
   begin
      raise Exception.Create('Error: ' + e.Message + #13 + sSql);
   end;
   End;
end;

function TServerMethodsGen.ExistMPFormula(idForm, idMP: integer): boolean;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select "id" from "tblformuladetalhe" where "idtblformula" = ' + idForm.ToString +
          ' and "idmateriaprima" = ' + idMP.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;

  if qryAux.RecordCount > 0 then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;

  qryAux.Close;
end;

function TServerMethodsGen.FormulaExist(codProd: String): Boolean;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select "id" from "tblformulas" where "codproduto" =' + QuotedStr(codProd);
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;

  if qryAux.RecordCount > 0 then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

procedure TServerMethodsGen.DSServerModuleCreate(Sender: TObject);
var
  I: Integer;
begin
   //Atribui a conexão para cada tSqlQuery
//   for I := 0 to ComponentCount - 1 do
//   begin
//      if Components[i] is TsqlQuery  then
//      begin
//         TSQLQuery(Components[i]).SQLConnection := ServerContainer.GetConnection;
//      end;
//   end;
end;

function TServerMethodsGen.EstInsumo(idInsumo: Integer): String;
var
  sSql : String;
begin
   sSql := '';
   sSql := ' select sum(est."quantd") as qtdex '
         + ' from "tblinsumos" as insu '
         + ' left join "tblestoqueinsumos" as est on (insu."id" = est."idinsumo")'
         + ' where insu."tipo" = ' + quotedstr('Embalagem')
         + ' and ("local" <> '     + quotedstr('envase') +  'or "local" is null)'
         + ' and "idinsumo" = '    + idInsumo.ToString
         + ' group by insu."descricao", insu."codigo", insu."estoqueminimo",'
         + ' insu."estoquemaximo" order by  insu."codigo"';


//  sSql := 'select Sum("tblestoqueinsumos"."quantd") as quant from "tblestoqueinsumos" where "tblestoqueinsumos"."idinsumo" = ' + idInsumo.ToString + ' and "tblestoqueinsumos"."idordemenvase" is null';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  Result := floattostr(qryAux.FieldByName('qtdex').AsFloat);
  qryAux.Close;
end;

function TServerMethodsGen.GetCodInsumo(id: Integer): String;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select "tblinsumos"."codigo" from "tblinsumos" where "id" =' + id.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  Result := qryAux.FieldByName('codigo').AsString;
  qryAux.Close;
end;

function TServerMethodsGen.GetCodProduto(idCodProduto: integer): String;
var
   sSql : String;
begin
   sSql := '';
   sSql := 'select "tblprodutos"."codformula" from "tblprodutos" where "id" = ' + inttostr (idCodProduto);
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('codformula').AsString;
   qryAux.Close;
end;

function TServerMethodsGen.GetIdProduto(iCod: String): Integer;
var
  sSql : String;
  intCod : Integer;
begin
  intCod := strtoint(iCod);
  sSql := '';
  sSql := 'select "id" from "tblprodutos" where "codproduto" =' + intCod.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  Result := qryAux.FieldByName('id').AsInteger;
  qryAux.Close;
end;

function TServerMethodsGen.GetIdUser: Integer;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select max("id") from "tblusuarios"';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  Result := qryAux.FieldByName('MAX').AsInteger;
  qryAux.Close;
end;

function TServerMethodsGen.GetIDUsuario(sLogin, sSenha: String): Integer;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select "id" from "tblusuarios" where "usuario" = ' + QuotedStr(sLogin)
        + ' and "senha" = ' + QuotedStr(sSenha);
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  Result := qryAux.FieldByName('id').AsInteger;
  qryAux.Close;
end;

function TServerMethodsGen.GetNextCDSCI: integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblcomunicado_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextFichaSequencial: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("FichaQuimica_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;

end;

function TServerMethodsGen.GetNextIdCI: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("SequenciaCI_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdEMBEsp: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblespemb_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIDEstoqueExp: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblestoqueexp_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdEstoqueQuim: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblestoqueinsumos_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIDExp: Integer;
Var
   sSql : String;
begin
   sSql := 'select gen_id("GEN_tblestoqueexp_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIDExpDetalhe: Integer;
Var
   sSql : String;
begin
//   sSql := 'select gen_id("GEN_tblordemexpedicaodetalhe_ID",1) as id from rdb$database';
//   qryAux.Close;
//   qryAux.SQL.Clear;
//   qryAux.SQL.Add(sSql);
//   qryAux.Open;
//   Result := qryAux.FieldByName('id').AsInteger;
//   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdForm: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblformulas_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdFormula: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblformulas_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdMPEsp: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblespmp_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdNfeEntrada: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblnfeentrada_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdOPQuimico: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblordemdeproducaodetalhe_I",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdOrdemEnvase: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblordemenvase_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdPedido: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblpedidos_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdProducaoEnvase: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblordemenvase_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdSequencial: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("NfeEntrada_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextIdUser: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblusuarios_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNextNewIdFomulaNew: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblformulas_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetNome(iduser: Integer): String;
var
 sSql : String;
begin
 sSql := '';
 sSql := 'select "nome" from "tblusuarios" where "id" =' + iduser.ToString;
 qryAux.Close;
 qryAux.SQL.Clear;
 qryAux.SQL.Add(sSql);
 qryAux.Open;
 Result := qryAux.FieldByName('nome').AsString;
 qryAux.Close;
end;

function TServerMethodsGen.GetPermissao(idUser: Integer;
  sNomeForm: String): Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select "idtipo" from "tblpermissao" where ' +
           '"idusuario" = ' + idUser.ToString +
           ' and "nomeform" = ' + QuotedStr(sNomeForm);
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('idtipo').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.GetRevisao(idProduto: integer): Integer;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select "revisao" from "tblprodutos" where "id" =' + idProduto.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;

//  if qryAux.FieldByName('revisao').AsInteger  then
//  begin
//     Result := -1;
//  end
//  else
//  begin
     Result := qryAux.FieldByName('revisao').AsInteger;
//  end;

end;

function TServerMethodsGen.GetTeveAumento(idCodProd, idForn : Integer): Double;
var
  sSql : String;
  idAumento : Double;
begin
  sSql := '';
  sSql := 'select max("tblnfeentrada"."data"),"tblnfeentradaitens"."vlrunitario" from "tblnfeentradaitens", "tblnfeentrada" ' +
          'where "tblnfeentradaitens"."codnfeentrada" = "tblnfeentrada"."id" ' +
          'and "tblnfeentradaitens"."codproduto" = ' + idCodProd.ToString +
          ' and "tblnfeentrada"."codfornecedor" = ' + idForn.ToString +
          'group by "tblnfeentrada"."data", "tblnfeentradaitens"."vlrunitario","tblnfeentrada"."codfornecedor"';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;

  qryAux.Open;
  idAumento := StrtoFloat(FormatFloat('#,###0.000', qryAux.FieldByName('vlrunitario').AsFloat));
  Result    := idAumento;
  qryAux.Close;
end;

function TServerMethodsGen.IBaixaEstoque(idInsumo, idOrdemEnvase, idControle: Integer;
  Qtd: Double): Integer;
Var
   sSql : string;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueinsumos" ("idordemenvase", "quantd", "data","idinsumo","tipo", "idnfeentrada","hora","idcontrole") VALUES ('
         +       idOrdemEnvase.ToString
         + ',' + replacestr(replacestr(FloatToStr(Qtd * -1),'.' , ''),',','.')
         + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
         + ',' + idInsumo.ToString
         + ',' + quotedStr('Embalagem')
         + ', -1'
         + ',' + quotedStr(FormatDateTime('hh:mm:ss', now))
         + ',' + idControle.ToString
         + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;
end;

function TServerMethodsGen.IBaixaEstoqueOP(idProduto, idOrdemProducao: integer;
  Qtd: Double): Integer;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueinsumos" ("idordemenvase", "quantd", "data", "idinsumo", "idproduto", "tipo", "idnfeentrada") values ('
          +       idOrdemProducao.ToString
          + ',' + replaceStr(replaceStr(FloatToStr(Qtd), '.',''),',','.')
          + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
          + ', -1'
          + ',' + idProduto.ToString
          + ',' + quotedStr('Produto Acabado')
          + ', -1'
          + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;
end;

function TServerMethodsGen.IBaixaEstoqueQuimico(idMatPrima, idOrdemQuimico: Integer;
  Qtd: Double;slote,sqtde :string) : Integer;
var
  sSql  : String;
begin
   sSql := '';
   sSql := 'insert into "tblestoqueinsumos" ("idordemquimico", "quantd", "idinsumo", "tipo","lote", "data", "idnfeentrada") VALUES ('
         +       idOrdemQuimico.ToString
         + ',' + replacestr(replacestr(sqtde,'.' , ''),',','.')
         + ',' + idMatPrima.ToString
         + ',' + quotedStr('Mat. Prima')
         + ',' + quotedstr(slote)
         + ',' + quotedStr (FormatDateTime('yyyy/mm/dd', strtodatetime (RetornoData(slote))))
         + ', -1'
         + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;
end;

procedure TServerMethodsGen.IDeletaRegistro(sLogin, sForm : string);
Var
   oMsg : TextFile;
begin
   if FileExists('logdelete.log') then
   begin
      AssignFile(oMsg,'logdelete.log');
      Append(oMsg);
      WriteLn(oMsg,formatdatetime('dd/mm/yyyy hh:mm:ss',now()) + '-' + slogin + '-' + sform);
      Closefile(oMsg);
   end
   else
   begin
      AssignFile(oMsg,'logdelete.log');
      ReWrite(oMsg);
      WriteLn(oMsg,formatdatetime('dd/mm/yyyy hh:mm:ss',now()) + '-' + slogin + '-' + sform);
      Closefile(oMsg);
   end;
end;

function TServerMethodsGen.IdInsumo(cod: String): Integer;
var
  sSql : String;
begin
   sSql := '';
   sSql := 'select "id" from "tblinsumos" where "codigo" =' + QuotedStr(cod);
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.IEntradaEstoqueEnvase(idInsumo,
  idOrdemEnvase, idControle : Integer; Qtd: Double): Integer;
Var
   sSql : string;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueinsumos" ("idordemenvase", "quantd", "data","idinsumo","tipo", "idnfeentrada", "local", "idcontrole") VALUES ('
         +       idOrdemEnvase.ToString
         + ',' + replacestr(replacestr(FloatToStr(Qtd),'.' , ''),',','.')
         + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
         + ',' + idInsumo.ToString
         + ',' + quotedStr('Embalagem')
         + ', -1'
         + ',' + quotedStr('envase')
         + ',' + idControle.ToString
         + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;
end;

function TServerMethodsGen.IEstExp(idOp, idProd: Integer; Qtd: Double): Boolean;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueexp" ("idop", "idprod", "qtd", "dataexp", "horaexp") values ('
          +       idOp.ToString
          + ',' + idProd.ToString
          + ',' + replaceStr(replaceStr(FloatToStr(Qtd), '.',''),',','.')
          + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
          + ',' + quotedStr(FormatDateTime('hh:mm:ss', now))
          + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;

   Result := True;

end;

function TServerMethodsGen.IEstoqueProdutoAcabado(idProduto: Integer;
  Qtd: Double; Obs: String): Integer;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueinsumos" ("idordemquimico", "quantd", "data", "obs","idinsumo", "idproduto", "tipo", "idnfeentrada") values ('
          + ' -1'
          + ',' + replaceStr(replaceStr(FloatToStr(Qtd), '.',''),',','.')
          + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
          + ',' + QuotedStr(Obs)
          + ', -1'
          + ',' + idProduto.ToString
          + ',' + quotedStr('Mat. Prima Acabada')
          + ', -1'
          + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;

   Result := 1;
end;

function TServerMethodsGen.IEstoqueQuimico(idProduto, idOrdemProducao: Integer;
  Qtd: Double): Integer;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueinsumos" ("idordemquimico", "quantd", "data", "idinsumo", "idproduto", "tipo", "idnfeentrada") values ('
          +       idOrdemProducao.ToString
          + ',' + replaceStr(replaceStr(FloatToStr(Qtd), '.',''),',','.')
          + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
          + ', -1'
          + ',' + idProduto.ToString
          + ',' + quotedStr('Mat. Prima Acabada')
          + ', -1'
          + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;
end;

function TServerMethodsGen.IEstProdAcabado(idOP, idProd : Integer; Lote : String; Qtd : Double) : Boolean;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'Insert into "tblestoqueprod" ("idopenv", "idprod", "lote", "qtdreal", "data") Values ('
          +       idOP.ToString
          + ',' + idProd.ToString
          + ',' + QuotedStr(lote)
          + ',' + replaceStr(replaceStr(FloatToStr(Qtd), '.',''),',','.')
          + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
          + ')';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;


procedure TServerMethodsGen.InsertAuditoria(iid, sTabela, sCampo, sValorNovo,
  sValorAntigo, sTipoalteracao, sUsuario, sObs: String);
Var
   sSql : String;
begin
   Try
   sSql := '';
   sSql := 'Insert into "tblauditoria" ("id", "tabela", "campo", "tipoalteracao", "observacao", "valornovo", "valorantigo", "usuario") Values ('
         + QuotedStr(iid)
         + ',' + QuotedStr(sTabela)
         + ',' + QuotedStr(sCampo)
         + ',' + QuotedStr(sTipoalteracao)
         + ',' + QuotedStr(sObs)
         + ',' + QuotedStr(sValorNovo)
         + ',' + QuotedStr(sValorAntigo)
         + ',' + QuotedStr(sUsuario)
         + ');';
   QryAux.Close;                //Qryauditoria
   QryAux.SQL.Clear;
   QryAux.SQL.Add(sSql);
   QryAux.ExecSQL;
   except

   End;

end;

function TServerMethodsGen.InsertEstExp(idOP, idProd: Integer;
  Qtd: Double): Boolean;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueexp" ("idop", "idprod", "qtd", "dataexp", "horaexp") values ('
        +       idOP.ToString
        + ',' + idProd.ToString
        + ',' + replaceStr(replaceStr(FloatToStr(Qtd), '.',''),',','.')
        + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
        + ',' + quotedStr(FormatDateTime('hh:mm:ss', now))
        + ')';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;

  Result := True;
end;

function TServerMethodsGen.IPermissao(idUser, idTipo : Integer;
  sNomeForm: String): Boolean;
var
  sSql : String;
  idPer, idTip : Integer;
begin
//  sSql := '';
//  sSql := 'select "id", "idtipo" from "tblpermissao" where "idusuario" =' + idUser.ToString +
//          ' and "nomeform" =' + QuotedStr(sNomeForm);
//  qryAux.Close;
//  qryAux.SQL.Clear;
//  qryAux.SQL.Add(sSql);
//  qryAux.Open;
//
//  idTip := qryAux.FieldByName('idtipo').AsInteger;
//  idPer := qryAux.FieldByName('id').AsInteger;
//
//  if idTip <> idTipo then
//  begin
//    sSql := '';
//    sSql := 'update "tblpermissao" set "idtipo" = ' + idTipo.ToString +  ' where "id" = ' + idPer.ToString;
//    QryAux.Close;
//    QryAux.SQL.Clear;
//    QryAux.SQL.Text := sSql;
//    QryAux.ExecSQL;
//
//    result := True;
//  end
//  else if idTip = idTipo then
//  begin
//    result := True;
//  end
//  else
//  begin
     sSql := '';
     sSql := 'insert into "tblpermissao" ("idusuario", "idtipo", "nomeform") values ('
           +       idUser.ToString
           + ',' + idTipo.ToString
           + ',' + quotedStr(sNomeForm)
           + ')';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(sSql);
     qryAux.ExecSQL;

     Result := True;
//  end;

end;

function TServerMethodsGen.IProdutoOPQuimico(idProduto,
  idOrdemProducao: Integer; Qtd, Perc: Double): Integer;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'Insert into "tblordemproducaoquimico" ("idproduto", "idtblordemproducao", "percentual", "qtd") Values ('
          +       idProduto.ToString
          + ',' + idOrdemProducao.ToString
          + ',' + replaceStr(replaceStr(FloatToStr(Perc), '.',''),',','.')
          + ',' + replaceStr(replaceStr(FloatToStr(Qtd), '.',''),',','.')
          + ')';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

function TServerMethodsGen.ISaidaEstoqueEnvase(idInsumo, idOrdemEnvase: Integer;
  Qtd: Double): Integer;
Var
   sSql : string;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueinsumos" ("idordemenvase", "quantd", "data","idinsumo","tipo", "idnfeentrada", "local") VALUES ('
         +       idOrdemEnvase.ToString
         + ',' + replacestr(replacestr(FloatToStr(Qtd * -1),'.' , ''),',','.')
         + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
         + ',' + idInsumo.ToString
         + ',' + quotedStr('Embalagem')
         + ', -1'
         + ',' + quotedStr('envase')
         + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;
end;

function TServerMethodsGen.NextControleOp: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("GEN_tblcontroleop_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.NextSeqAprov: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("Aprov_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.NextSeqLote: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("Lote_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.NextSeqRegis: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("Registro_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.NextSeqReprov: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("Reprov_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;


function TServerMethodsGen.OPExpedicao(idprod, idop: Integer): Double;            ///
var
  sSql : string;
  Full : Double;
begin
  sSql := '';
  sSql := 'select sum("qtd") as qtdins from "tblestoqueexp" where "idprod" ='+idprod.ToString + ' and "idop" = ' + idop.ToString;
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := sSql;
  QryAux.Open;

  Full := qryAux.FieldByName('qtdins').AsFloat;

  if Full > 0 then
  begin
     Result := Full;
  end
  else
  begin
     Result := 0;
  end;
end;

function TServerMethodsGen.NextSeqQuarent: Integer;
Var
   sSql : String;
begin
   sSql := '';
   sSql := 'select gen_id("Quarent_S",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.PreencherLote(idMP: Integer; Qtd : Double): String;
var
  sSql : String;
  I: Integer;
  S : String;
  Est : Double;
begin
  sSql := '';
  sSql := 'select first 3 "lote", "dataval", sum("quantd") as qtd from "tblestoqueinsumos" ' +
          ' where "lote" is not null and "tipo" = '+Quotedstr('Mat. Prima')+ ' and "idinsumo" = ' + idMP.ToString +
          ' group by "lote","dataval"' +
          ' having sum("quantd") > 0' +
          ' order by "dataval"';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.Open;
  
  Est := Qtd;
  i   := 0;

  if qryAux.FieldByName('qtd').AsFloat >= Est then
  begin
     Result := qryAux.FieldByName('lote').AsString + '=' + FloatToStr(Est);
  end
  else
  begin
    qryAux.first;
    if qryAux.FieldByName('qtd').AsFloat = 0 then
    begin
       Result := 'vazio=0';
    end
    else
    begin
      while not qryAux.Eof do
      begin
        while (EST > 0) and (i <> 3) do
        begin
          if S = '' then
          begin
            if EST < qryAux.FieldByName('qtd').AsFloat then
            begin
               S := qryAux.FieldByName('lote').AsString + '=' + FormatFloat('#,###0.000', EST);
            end
            else
            begin
               S := qryAux.FieldByName('lote').AsString + '=' + FormatFloat('#,###0.000', qryAux.FieldByName('qtd').AsFloat);
            end;
            Est := Est - qryAux.FieldByName('qtd').AsFloat;
          end
          else
          begin
            if EST < qryAux.FieldByName('qtd').AsFloat then
            begin
               S := S + '|' + qryAux.FieldByName('lote').AsString + '=' + FormatFloat('#,###0.000', EST);
            end
            else
            begin
               S := S + '|' + qryAux.FieldByName('lote').AsString + '=' + FormatFloat('#,###0.000', qryAux.FieldByName('qtd').AsFloat);
            end;
            Est := Est - qryAux.FieldByName('qtd').AsFloat;
          end;
          i := i + 1;
          qryAux.Next;
        end;
        qryAux.Next;
      end;
      Result := S;
    end;
  end;
  qryAux.Close;
end;

function TServerMethodsGen.RetornoData(Lote: String): String;
var
  sSql : String;
begin
   sSql := '';
   sSql := 'select first 1 "data" from "tblestoqueinsumos" ' +
           ' where "lote" = ' +  QuotedStr(Lote) +
           ' order by "id" asc';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := DateTimetostr(qryAux.FieldByName('data').AsDateTime);
   qryAux.Close;
end;

function TServerMethodsGen.SumControleOp(idOp: Integer): Double;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select sum("qtd") as qtdtotal from "tblcontroleop" where "idop" =' + idOp.ToString;
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := sSql;
  QryAux.Open;
  Result := qryAux.FieldByName('qtdtotal').AsFloat;
  QryAux.Close;
end;

procedure TServerMethodsGen.UpdateSenhaUsuario(sLogin, sSenha: String);
Var
   sSql : string;
begin
   Try
   Begin
      sSql := '';
      sSql := 'update "usuarios" set "Senha" = ' + QuotedStr(sSenha) + ' Where "Usuario" = ' + QuotedStr(sLogin);
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Text := sSql;
      QryAux.ExecSQL;
   End;
   Except on e : Exception do
   Begin
      GravaLog(E.message,self.name,e.ClassName,sSql);
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName + ';' + sSql);
   End;
   End;
end;

function TServerMethodsGen.UsoCI(idseq: integer): Boolean;
var
  sSql : string;
begin
  sSql := '';
  sSql := 'select "usado" from "tblcomunicado" where "seqci" =' + idseq.ToString;
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := sSql;
  QryAux.Open;

  if QryAux.recordcount > 0 then
  begin
    if (QryAux.FieldByName('usado').AsInteger = 0) then
    begin
        sSql := '';
        sSql := 'update "tblcomunicado" set "usado" = 1 where "seqci" =' + idseq.ToString;
        QryAux.Close;
        QryAux.SQL.Clear;
        QryAux.SQL.Text := sSql;
        QryAux.ExecSQL;

        Result := True;
    end
    else
    begin
        Result := False;
    end;
  end
  else
  begin
     Result := False;
  end;

end;

function TServerMethodsGen.VerificaNF(nf: String): Boolean;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'select "id" from "tblestoqueexp" where "numnf" =' + QuotedStr(nf);
  QryAux.Close;
  QryAux.SQL.Clear;
  QryAux.SQL.Text := sSql;
  QryAux.Open;
  if QryAux.FieldByName('id').Asinteger > 0 then
  begin
     Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function TServerMethodsGen.VerificaUsuario(sLogin, sSenha: String): Integer;
Var
   sSql : String;
begin
   Try
   Begin
      DMCnn.dbxCnn.Connected := True;
      sSql := '';
      sSql := 'select * from "tblusuarios" where "usuario" = ' + QuotedStr(sLogin);
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Text := sSql;
      QryAux.Open;
      if (QryAux.FieldByName('senha').AsString = '') and (QryAux.RecordCount > 0) then
      begin
         Result := -1;
      end
      else
      begin
         sSql := '';
         sSql := 'select * from "tblusuarios" where "usuario" = ' + QuotedStr(sLogin) + ' and "senha" = ' + QuotedStr(sSenha);
         QryAux.Close;
         QryAux.SQL.Text := sSql;
         QryAux.Open;
         if QryAux.RecordCount > 0 then
         begin
            Result := 1;
         end
         else
         begin
            Result := 0;
         end;
      end;
      End;
   Except on e : Exception do
   begin
      GravaLog(E.message,self.name,e.ClassName,sSql);
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName + ';' + sSql);
   end;
   End;
end;


function TServerMethodsGen.VlrSequencial(Vlr: integer): Boolean;
var
  sSql : String;
begin
  Result := False;

  sSql := '';
  sSql := 'ALTER SEQUENCE "NfeEntrada_S" RESTART WITH ' + Vlr.ToString;
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;

  Result := True;
end;

function TServerMethodsGen.ZerarSequencial: Integer;
var
  sSql : String;
begin
  sSql := '';
  sSql := 'ALTER SEQUENCE "NfeEntrada_S" RESTART WITH 0';
  qryAux.Close;
  qryAux.SQL.Clear;
  qryAux.SQL.Add(sSql);
  qryAux.ExecSQL;
end;

end.


