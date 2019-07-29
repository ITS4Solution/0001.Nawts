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
    sqlNfeEntradaid: TIntegerField;
    sqlNfeEntradanronfe: TIntegerField;
    sqlNfeEntradaserienfe: TIntegerField;
    sqlNfeEntradadata: TDateField;
    sqlNfeEntradacodfiscal: TIntegerField;
    sqlNfeEntradacodfornecedor: TIntegerField;
    sqlNfeEntradacondpagamento: TStringField;
    sqlNfeEntradadetalhepagamento: TStringField;
    sqlNfeEntradatipomaterial: TStringField;
    sqlNfeEntradavalornfe: TSingleField;
    sqlNfeEntradavalorcalculado: TSingleField;
    sqlNfeEntradaobs: TMemoField;
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
    sqlTblFormulaidcodprocesso: TStringField;
    sqlTblFormulavalido: TIntegerField;
    sqlTblFormuladetalheid: TIntegerField;
    sqlTblFormuladetalheidtblformula: TIntegerField;
    sqlTblFormuladetalheidmateriaprima: TIntegerField;
    sqlTblFormuladetalhepercentual: TSingleField;
    sqlTblFormuladetalhecodprodutoacab: TStringField;
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
    sqlRelEstoquedescricao: TStringField;
    sqlRelEstoquecodigo: TStringField;
    sqlRelEstoqueSUM: TFloatField;
    sqlRelEstoqueestoqueminimo: TSingleField;
    sqlRelEstoqueestoquemaximo: TSingleField;
    sqlRelEstoqueFALTA: TFloatField;
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
    sqlOrdemSaidastatus: TStringField;
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
    sqlUsuariosListanivel: TIntegerField;
    sqlUsuariosUn: TSQLQuery;
    dspUsuariosUn: TDataSetProvider;
    sqlUsuariosUnid: TIntegerField;
    sqlUsuariosUnnome: TStringField;
    sqlUsuariosUnemail: TStringField;
    sqlUsuariosUnusuario: TStringField;
    sqlUsuariosUnsenha: TStringField;
    sqlUsuariosUnnivel: TIntegerField;
    sqlQuimicoCod: TSQLQuery;
    dspQuimicoCod: TDataSetProvider;
    sqlQuimicoCoddescricao: TStringField;
    sqlQuimicoCodcodformula: TStringField;
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
    procedure DSServerModuleCreate(Sender: TObject);
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
   Function IBaixaEstoque (idInsumo,idOrdemEnvase : Integer; Qtd : Double) : Integer;
   Function IBaixaEstoqueQuimico (idMatPrima, idOrdemQuimico : Integer; Qtd : Double) : Integer;
   function DeletaOPQuimico (idOrdemProducao : Integer) : Integer;
   function DeletaOPQuimicoDetalhe (idOrdemProducao : Integer) : Integer;
   function IEstoqueQuimico (idProduto, idOrdemProducao : Integer; Qtd : Double) : Integer;
   function IProdutoOPQuimico (idProduto, idOrdemProducao : Integer; Qtd, Perc : Double) : Integer;
   function IBaixaEstoqueOP (idProduto, idOrdemProducao : integer; Qtd : Double) : Integer;
   function GetNextIdSequencial: Integer;
   function ZerarSequencial : Integer;
   function GetNextFichaSequencial : Integer;
   function AvisoEstoqueOrdemProducao (idOrdemProducao : Integer) : Double;
   Function GetNextIdUser : Integer;
   function GetCodProduto (idCodProduto : integer) : String;

   //android


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

procedure TServerMethodsGen.DSServerModuleCreate(Sender: TObject);
var
  I: Integer;
begin
   //Atribui a conexão para cada tSqlQuery
   for I := 0 to ComponentCount - 1 do
   begin
      if Components[i] is TsqlQuery  then
      begin
         TSQLQuery(Components[i]).SQLConnection := ServerContainer.GetConnection;
      end;
   end;
end;

function TServerMethodsGen.GetCodProduto(idCodProduto: integer): String;
var
   sSql : String;
begin
   sSql := 'select "tblprodutos"."codformula" from "tblprodutos" where "id" = ' + inttostr (idCodProduto);
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('codformula').AsString;
   qryAux.Close;

end;

function TServerMethodsGen.GetNextFichaSequencial: Integer;
Var
   sSql : String;
begin
   sSql := 'select gen_id("FichaQuimica_S",1) as id from rdb$database';
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
   sSql := 'select gen_id("GEN_tblformulas_ID",1) as id from rdb$database';
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
   sSql := 'select gen_id("GEN_tblordemenvase_ID",1) as id from rdb$database';
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
   sSql := 'select gen_id("GEN_tblusuarios_ID",1) as id from rdb$database';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.Open;
   Result := qryAux.FieldByName('id').AsInteger;
   qryAux.Close;
end;

function TServerMethodsGen.IBaixaEstoque(idInsumo, idOrdemEnvase: Integer;
  Qtd: Double): Integer;
Var
   sSql : string;
begin
  sSql := '';
  sSql := 'insert into "tblestoqueinsumos" ("idordemenvase", "quantd", "data","idinsumo","tipo", "idnfeentrada") VALUES ('
         +       idOrdemEnvase.ToString
         + ',' + replacestr(replacestr(FloatToStr(Qtd * -1),'.' , ''),',','.')
         + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
         + ',' + idInsumo.ToString
         + ',' + quotedStr('Insumo')
         + ', -1'
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
  Qtd: Double) : Integer;
var
  sSql  : String;
begin
   sSql := '';
   sSql := 'insert into "tblestoqueinsumos" ("idordemquimico", "quantd", "data","idinsumo", "tipo", "idnfeentrada") VALUES ('
         +       idOrdemQuimico.ToString
         + ',' + replacestr(replacestr(FloatToStr(Qtd * -1),'.' , ''),',','.')
         + ',' + quotedStr(FormatDateTime('yyyy/mm/dd', now))
         + ',' + idMatPrima.ToString
         + ',' + quotedStr('Mat. Prima')
         + ', -1'
         + ')';
   qryAux.Close;
   qryAux.SQL.Clear;
   qryAux.SQL.Add(sSql);
   qryAux.ExecSQL;
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
            Result := QryAux.FieldByName('nivel').AsInteger;
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

