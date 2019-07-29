unit UDm;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient, Datasnap.Win.MConnect,
  Datasnap.Win.SConnect, Datasnap.Provider, Data.DB, Data.SqlExpr,
  AdvSmoothMessageDialog, AdvSmartMessageBox, shellapi, IPPeerClient, controls,
  forms, midaslib, Data.DBXFirebird, UDmConexao, IdBaseComponent,
  IdAntiFreezeBase, Vcl.IdAntiFreeze, ACBrBase, ACBrDFe, ACBrNFe, IdComponent,
  IdUDPBase, IdUDPClient, IdSNMP, ACBrMail;

type
  TDM = class(TDataModule)
    sqlCliFor: TSQLDataSet;
    sqlProdutos: TSQLDataSet;
    sqlGrupoProdutos: TSQLDataSet;
    sqlTransportadoras: TSQLDataSet;
    sqlTransportadorasID: TIntegerField;
    sqlTransportadorasNOME: TStringField;
    sqlTransportadorasRAZAO_SOCIAL: TStringField;
    sqlTransportadorasCONTATO: TStringField;
    sqlTransportadorasCNPJ: TStringField;
    sqlTransportadorasINSCRICAO_ESTADUAL: TStringField;
    sqlTransportadorasENDERECO: TStringField;
    sqlTransportadorasUF: TStringField;
    sqlTransportadorasMUNICIPIO: TStringField;
    sqlTransportadorasTELEFONE1: TStringField;
    sqlTransportadorasTELEFONE2: TStringField;
    sqldtstNFSaida: TSQLDataSet;
    sqldtstNFSaidaID: TIntegerField;
    sqldtstNFSaidaNRONFE: TIntegerField;
    sqldtstNFSaidaSERIENFE: TIntegerField;
    sqldtstNFSaidaDATA: TDateField;
    sqldtstNFSaidaCODFISCAL: TIntegerField;
    sqldtstNFSaidaCODCLIENTE: TIntegerField;
    sqldtstNFSaidaCONDPAGAMENTO: TStringField;
    sqldtstNFSaidaDETALHEPAGAMENTO: TStringField;
    sqldtstNFSaidaVALORNFE: TSingleField;
    sqldtstNFSaidaVALORCALCULADO: TSingleField;
    sqldtstNFSaidaOBS: TMemoField;
    sqldtstNFSaidaMODELO: TStringField;
    sqlEstados: TSQLDataSet;
    sqlEstadosID: TIntegerField;
    sqlEstadosCODIGO_IBGE: TIntegerField;
    sqlEstadosSIGLA: TStringField;
    sqlEstadosNOME: TStringField;
    sqlNFeCabecalho: TSQLDataSet;
    tmsMsgComp: TAdvSmoothMessageDialog;
    sqlConfiguracoes: TSQLDataSet;
    sqlConfiguracoesID: TIntegerField;
    Conexao: TSQLConnection;
    sqlProdutosID: TIntegerField;
    sqlCST: TSQLDataSet;
    sqlCSTCST: TIntegerField;
    sqlQryModBC: TSQLDataSet;
    sqlQryModBCID: TIntegerField;
    sqlModBCST: TSQLDataSet;
    sqlModBCSTID: TIntegerField;
    sqlCSTPIS: TSQLDataSet;
    sqlCSTIPI: TSQLDataSet;
    sqlCSTCOFINS: TSQLDataSet;
    sqlCSTIPIID: TIntegerField;
    sqlCSTPISID: TIntegerField;
    sqlCSTCOFINSID: TIntegerField;
    QryAux: TSQLQuery;
    sqlGrupoProdutosID: TIntegerField;
    sqlEmitente: TSQLDataSet;
    sqlNFeItens: TSQLDataSet;
    sqlNFeCabecalhoID: TIntegerField;
    sqlCliForID: TIntegerField;
    sqlGrupoProdutosCODGRUPO: TIntegerField;
    sqlGrupoProdutosNOMEGRUPO: TStringField;
    sqlProdutosCODBARRAS: TStringField;
    sqlProdutosNOMEPRODUTO: TStringField;
    sqlProdutosUN: TStringField;
    sqlProdutosMARCA: TStringField;
    sqlProdutosIDGRUPO: TIntegerField;
    sqlProdutosPRECOCUSTO: TFloatField;
    sqlProdutosMARGEM: TFloatField;
    sqlProdutosPRECOVENDA: TFloatField;
    sqlProdutosCODORIGEM: TIntegerField;
    sqlProdutosCODCST: TIntegerField;
    sqlProdutosALIQICMS: TFloatField;
    sqlProdutosNCM: TStringField;
    sqlProdutosCODCSTIPI: TIntegerField;
    sqlProdutosCODCSTPIS: TIntegerField;
    sqlProdutosCODCSTCOFINS: TIntegerField;
    sqlProdutosALIQIPI: TFloatField;
    sqlProdutosALIQPIS: TFloatField;
    sqlProdutosALIQCOFINS: TFloatField;
    sqlProdutosREDICMS: TFloatField;
    sqlProdutosALIQMVA: TFloatField;
    sqlProdutosALIQIVA: TFloatField;
    sqlProdutosMODBCICMS: TIntegerField;
    sqlProdutosMODBCICMSST: TIntegerField;
    sqlCliForNOMERAZAO: TStringField;
    sqlCliForNOMEFANTASIA: TStringField;
    sqlCliForENDERECO: TStringField;
    sqlCliForNUMERO: TStringField;
    sqlCliForBAIRRO: TStringField;
    sqlCliForCIDADE: TStringField;
    sqlCliForCODCIDADE: TIntegerField;
    sqlCliForUF: TStringField;
    sqlCliForCODUF: TIntegerField;
    sqlCliForCEP: TStringField;
    sqlCliForCGC: TStringField;
    sqlCliForIERG: TStringField;
    sqlCliForFJ: TStringField;
    sqlCliForTELEFONE: TStringField;
    sqlCliForDATACADASTRO: TSQLTimeStampField;
    sqlCliForEMAI: TStringField;
    sqlCliForCLIFORTRANSP: TStringField;
    sqlConfiguracoesSMTP: TStringField;
    sqlConfiguracoesSMTPUSUARIO: TStringField;
    sqlConfiguracoesSMTPSENHA: TStringField;
    sqlConfiguracoesSMTPPORTA: TIntegerField;
    sqlConfiguracoesSMTPAUTENTICA: TStringField;
    sqlConfiguracoesSMTPENVIAEMAIL: TStringField;
    sqlConfiguracoesGERARCREDICMSPFISICA: TStringField;
    sqlConfiguracoesDANFE_LOGOEXPANDIDA: TStringField;
    sqlNFeCabecalhoIDEMITENTE: TIntegerField;
    sqlNFeCabecalhoCFOP: TIntegerField;
    sqlNFeCabecalhoCFOPDESC: TStringField;
    sqlNFeCabecalhoENTRADASAIDA: TStringField;
    sqlNFeCabecalhoNNOTA: TIntegerField;
    sqlNFeCabecalhoCONSUMOREVENDA: TStringField;
    sqlNFeCabecalhoDATAEMISSAO: TSQLTimeStampField;
    sqlNFeCabecalhoDATAENTRADASAIDA: TSQLTimeStampField;
    sqlNFeCabecalhoHORAENTRADASAIDA: TStringField;
    sqlNFeCabecalhoIDDESTINATARIO: TIntegerField;
    sqlNFeCabecalhoDESTINATARIO: TStringField;
    sqlNFeCabecalhoCNPJDESTINATARIO: TStringField;
    sqlNFeCabecalhoIEDESTINATARIO: TStringField;
    sqlNFeCabecalhoENDERECODESTINATARIO: TStringField;
    sqlNFeCabecalhoNUMEROENDDESTINATARIO: TStringField;
    sqlNFeCabecalhoCOMPLEMENTODESTINATARIO: TStringField;
    sqlNFeCabecalhoBAIRRODESTINATARIO: TStringField;
    sqlNFeCabecalhoCEPDESTINATARIO: TStringField;
    sqlNFeCabecalhoCIDADEDESTINATARIO: TStringField;
    sqlNFeCabecalhoCODCIDADEDESTINATARIO: TIntegerField;
    sqlNFeCabecalhoUFDESTINATARIO: TStringField;
    sqlNFeCabecalhoCODUFDESTINATARIO: TIntegerField;
    sqlNFeCabecalhoTELEFONEDESTINATARIO: TStringField;
    sqlNFeCabecalhoCHAVEACESSO: TStringField;
    sqlNFeCabecalhoPROTOCOLO: TStringField;
    sqlNFeCabecalhoTIPOITEM: TStringField;
    sqlNFeCabecalhoCODRETORNOSEFAZ: TIntegerField;
    sqlNFeCabecalhoDESCRETORNOSEFAZ: TStringField;
    sqlNFeCabecalhoDATACANCELAMENTONOTA: TSQLTimeStampField;
    sqlNFeCabecalhoMOTIVOCANCELAMENTONOTA: TStringField;
    sqlNFeCabecalhoPROTOCOLOCANCELAMENTO: TStringField;
    sqlNFeCabecalhoCSTAT: TIntegerField;
    sqlNFeCabecalhoSTATUSNOTA: TStringField;
    sqlNFeCabecalhoMSGSTATUS: TStringField;
    sqlNFeCabecalhoIDLOTE: TIntegerField;
    sqlNFeCabecalhoNRECIBO: TStringField;
    sqlNFeCabecalhoDATAHORARECIBO: TSQLTimeStampField;
    sqlNFeCabecalhoAMBIENTE: TStringField;
    sqlNFeCabecalhoT_VALORBC: TFloatField;
    sqlNFeCabecalhoT_VALORICMS: TFloatField;
    sqlNFeCabecalhoT_VALORICMSST: TFloatField;
    sqlNFeCabecalhoT_VALORBCST: TFloatField;
    sqlNFeCabecalhoT_VALORST: TFloatField;
    sqlNFeCabecalhoT_VALORPRODUTOS: TFloatField;
    sqlNFeCabecalhoT_VALORFRETE: TFloatField;
    sqlNFeCabecalhoT_VALORSEGURO: TFloatField;
    sqlNFeCabecalhoT_VALORDESCONTO: TFloatField;
    sqlNFeCabecalhoT_VALORII: TFloatField;
    sqlNFeCabecalhoT_VALORIPI: TFloatField;
    sqlNFeCabecalhoT_VALORPIS: TFloatField;
    sqlNFeCabecalhoT_VALORCOFINS: TFloatField;
    sqlNFeCabecalhoT_VALOROUTRASDESPESAS: TFloatField;
    sqlNFeCabecalhoT_VALORNOTAFISCAL: TFloatField;
    sqlNFeCabecalhoIDTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoCNPJTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoIETRANSPORTADOR: TStringField;
    sqlNFeCabecalhoENDERECTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoCOMPLEMENTOTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoBAIRROTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoCEPTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoCIDADETRANSPORTADOR: TStringField;
    sqlNFeCabecalhoCODCIDADETRANSPORTADOR: TIntegerField;
    sqlNFeCabecalhoUFTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoCODUFTRANSPORTADOR: TIntegerField;
    sqlNFeCabecalhoTELEFONETRANSPORTADOR: TStringField;
    sqlNFeCabecalhoPLACATRANSPORTADOR: TStringField;
    sqlNFeCabecalhoUFPLACATRANSPORTADOR: TStringField;
    sqlNFeCabecalhoVOLUMETRANSPORTADOR: TStringField;
    sqlNFeCabecalhoPESOBRUTOTRANSPORTADOR: TFloatField;
    sqlNFeCabecalhoPESOLIQUIDOTRANSPORTADOR: TFloatField;
    sqlNFeCabecalhoMARCATRANSPORTADOR: TStringField;
    sqlNFeCabecalhoESPECIETRANSPORTADOR: TStringField;
    sqlNFeCabecalhoRNTCTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoNUMERACAOTRANSPORTADOR: TStringField;
    sqlNFeCabecalhoMODFRETE: TIntegerField;
    sqlNFeCabecalhoFINALIDADENOTA: TIntegerField;
    sqlNFeCabecalhoINFADD: TMemoField;
    sqlNFeCabecalhoSELECIONADO: TStringField;
    sqlNFeCabecalhoSERIE: TIntegerField;
    sqlCSTDESCRICAO: TStringField;
    sqlCSTCODTIPOREGIME: TIntegerField;
    sqlCSTORIG: TStringField;
    sqlCSTMODBC: TStringField;
    sqlCSTPREDBC: TStringField;
    sqlCSTVBC: TStringField;
    sqlCSTPICMS: TStringField;
    sqlCSTVICMS: TStringField;
    sqlCSTMODBCST: TStringField;
    sqlCSTPMVAST: TStringField;
    sqlCSTPREDBCST: TStringField;
    sqlCSTVBCST: TStringField;
    sqlCSTPICMSST: TStringField;
    sqlCSTVICMSST: TStringField;
    sqlCSTUFST: TStringField;
    sqlCSTPBCOP: TStringField;
    sqlCSTVBCSTRET: TStringField;
    sqlCSTVICMSSTRET: TStringField;
    sqlCSTMOTDESICMS: TStringField;
    sqlCSTVBCSTDEST: TStringField;
    sqlCSTVICMSSTDEST: TStringField;
    sqlCSTPCREDSN: TStringField;
    sqlCSTVCREDICMSSN: TStringField;
    sqlQryModBCCODMODBC: TIntegerField;
    sqlQryModBCDESCRICAO: TStringField;
    sqlModBCSTCODBCCST: TIntegerField;
    sqlModBCSTDESCRICAO: TStringField;
    sqlCSTIPIDESCRICAO: TStringField;
    sqlCSTPISDESCRICAO: TStringField;
    sqlCSTCOFINSDESCRICAO: TStringField;
    Qry: TSQLQuery;
    sqlCidades: TSQLDataSet;
    sqlCidadesID: TIntegerField;
    sqlCidadesCODUF: TIntegerField;
    sqlCidadesESTADO: TStringField;
    sqlCidadesSIGLA: TStringField;
    sqlCidadesCODCIDADE: TIntegerField;
    sqlCidadesCIDADE: TStringField;
    sqlEmitenteID: TIntegerField;
    sqlEmitenteNOMERAZAOSOCIAL: TStringField;
    sqlEmitenteNOMEFANTASIA: TStringField;
    sqlEmitenteENDERECO: TStringField;
    sqlEmitenteNUMERO: TStringField;
    sqlEmitenteCOMPLEMENTO: TStringField;
    sqlEmitenteBAIRRO: TStringField;
    sqlEmitenteCIDADE: TStringField;
    sqlEmitenteCODCIDADE: TIntegerField;
    sqlEmitenteCEP: TStringField;
    sqlEmitenteUF: TStringField;
    sqlEmitenteCODUF: TIntegerField;
    sqlEmitentePAIS: TStringField;
    sqlEmitenteCODPAIS: TIntegerField;
    sqlEmitenteTELEFONE: TStringField;
    sqlEmitenteCNPJ: TStringField;
    sqlEmitenteIE: TStringField;
    sqlEmitenteSUFRAMA: TStringField;
    sqlEmitenteIM: TStringField;
    sqlEmitenteCNAE: TIntegerField;
    sqlEmitenteLOGO: TStringField;
    sqlEmitenteCODTIPOREGIME: TIntegerField;
    sqlEmitentePSIMPLES: TFloatField;
    sqlEmitenteCERTIFICADO: TStringField;
    sqlEmitenteTITULOCERTIFICADO: TStringField;
    sqlEmitenteVALIDADECERT: TSQLTimeStampField;
    sqlEmitenteSENHACERT: TStringField;
    sqlEmitenteAMBIENTE: TStringField;
    sqlEmitenteEMAIL1: TStringField;
    sqlEmitenteEMAIL2: TStringField;
    sqlEmitenteEMAIL3: TStringField;
    sqlEmitenteMODELODANFE: TIntegerField;
    sqlEmitenteFORMAEMISSAO: TIntegerField;
    sqlEmitenteCFOPPADRAO: TIntegerField;
    sqlEmitenteMUDACFOPINTE: TStringField;
    sqlNFeItensID: TIntegerField;
    sqlNFeItensIDNOTA: TIntegerField;
    sqlNFeItensCODPRODUTO: TStringField;
    sqlNFeItensCODEAN: TStringField;
    sqlNFeItensPRODUTO: TStringField;
    sqlNFeItensNCM: TStringField;
    sqlNFeItensEXTIPI: TStringField;
    sqlNFeItensCFOP: TIntegerField;
    sqlNFeItensUNCOMERCIAL: TStringField;
    sqlNFeItensQTDCOMERCIAL: TFloatField;
    sqlNFeItensVALORUNCOMERCIAL: TFloatField;
    sqlNFeItensVALORPRODUTO: TFloatField;
    sqlNFeItensCODEANTRIB: TStringField;
    sqlNFeItensUNTRIB: TStringField;
    sqlNFeItensQTDTRIB: TFloatField;
    sqlNFeItensVALORUNTRIB: TFloatField;
    sqlNFeItensVALORFRETE: TFloatField;
    sqlNFeItensVALORSEGURO: TFloatField;
    sqlNFeItensVALORDESCONTO: TFloatField;
    sqlNFeItensVALOROUTRAS: TFloatField;
    sqlNFeItensVALORTOTAL: TFloatField;
    sqlNFeItensVALORTOTALLIQUIDO: TFloatField;
    sqlNFeItensINFADPRODUTO: TMemoField;
    sqlNFeItensICMS_CSTCSOSN: TIntegerField;
    sqlNFeItensICMS_ORIGEM: TIntegerField;
    sqlNFeItensICMS_MODBC: TIntegerField;
    sqlNFeItensICMS_VBCICMS: TFloatField;
    sqlNFeItensICMS_VBCICMSST: TFloatField;
    sqlNFeItensICMS_PICMS: TFloatField;
    sqlNFeItensICMS_VICMS: TFloatField;
    sqlNFeItensICMS_MODBCST: TIntegerField;
    sqlNFeItensICMS_PMVAST: TFloatField;
    sqlNFeItensICMS_PREDBC: TFloatField;
    sqlNFeItensICMS_PICMSST: TFloatField;
    sqlNFeItensICMS_VICMSST: TFloatField;
    sqlNFeItensIPI_CST: TIntegerField;
    sqlNFeItensIPI_CLENQ: TStringField;
    sqlNFeItensIPI_CNPJPROD: TStringField;
    sqlNFeItensIPI_CSELO: TStringField;
    sqlNFeItensIPI_QSELO: TFloatField;
    sqlNFeItensIPI_CENQ: TStringField;
    sqlNFeItensIPI_VALORBC: TFloatField;
    sqlNFeItensIPI_QUNID: TFloatField;
    sqlNFeItensIPI_VALORUNID: TFloatField;
    sqlNFeItensIPI_PIPI: TFloatField;
    sqlNFeItensIPI_VALORIPI: TFloatField;
    sqlConfiguracao: TSQLDataSet;
    sqlConfiguracaoID: TIntegerField;
    sqlConfiguracaoCERTIDIG: TStringField;
    sqlConfiguracaoSENHA: TStringField;
    sqlConfiguracaoVALIDADE: TDateField;
    sqlConfiguracaoFEMISSAO: TStringField;
    sqlConfiguracaoMODELO: TStringField;
    sqlConfiguracaoCFOPP: TStringField;
    sqlConfiguracaoSERIE: TStringField;
    sqlConfiguracaoBLOQUEAR: TIntegerField;
    sqlConfiguracaoUF: TStringField;
    sqlConfiguracaoHOMOLOGACAO: TIntegerField;
    sqlConfiguracaoPRODUCAO: TIntegerField;
    sqlConfiguracaoVISUALIZARIMAGEM: TIntegerField;
    sqlConfiguracaoSALVARSOAP: TIntegerField;
    sqlConfiguracaoAJUSTAR: TIntegerField;
    sqlConfiguracaoAGUARDAR: TIntegerField;
    sqlConfiguracaoTENTATIVAS: TIntegerField;
    sqlConfiguracaoINTERVALO: TIntegerField;
    sqlConfiguracaoHOST: TStringField;
    sqlConfiguracaoPORTA: TStringField;
    sqlConfiguracaoUSER: TStringField;
    sqlConfiguracaoSENHAUSER: TStringField;
    sqlConfiguracaoPASTAENVIO: TIntegerField;
    sqlConfiguracaoCADCLIENTE: TIntegerField;
    sqlConfiguracaoCADPRODUTO: TIntegerField;
    sqlConfiguracaoPASTENVIO: TStringField;
    sqlConfiguracaoNFEAUTO: TStringField;
    sqlConfiguracaoNFECANCEL: TStringField;
    sqlConfiguracaoNFEINUT: TStringField;
    sqlConfiguracaoCARTACOER: TStringField;
    sqlConfiguracaoSCHEMAS: TStringField;
    sqlCliForCONSUMIDOR: TStringField;
    sqlCliForESTRANGEIRO: TStringField;
    sqlCliForDOCESTRAN: TStringField;
    sqlProdutosNCMALIQNACIO: TSingleField;
    sqlProdutosNCMALIQIMP: TSingleField;
    sqlProdutosNCMALIQEST: TSingleField;
    sqlProdutosNCMALIQMUN: TSingleField;
    sqlProdutosICMSDIF: TStringField;
    sqlProdutosICMSINTDIF: TIntegerField;
    sqlNCM: TSQLDataSet;
    sqlICMS: TSQLDataSet;
    sqlNCMCOD_NCM: TIntegerField;
    sqlNCMNCM_CODIGO: TStringField;
    sqlNCMNCM_EX: TStringField;
    sqlNCMNCM_DESCRICAO: TStringField;
    sqlNCMNCM_ALIQNAC: TFMTBCDField;
    sqlNCMNCM_ALIQIMP: TFMTBCDField;
    sqlNCMNCM_ALIQESTADUAL: TFMTBCDField;
    sqlNCMNCM_ALIQMUNICIPAL: TFMTBCDField;
    sqlNCMNCM_CEST: TStringField;
    sqlNCMNCM_UF: TStringField;
    sqlICMSCOD_ICMS: TIntegerField;
    sqlICMSICMS_UF: TStringField;
    sqlICMSICMS_ALIQUOTA: TFMTBCDField;
    sqlICMSICMS_INTERNO: TFMTBCDField;
    sqlProdutosUF: TStringField;
    IdSNMP1: TIdSNMP;
    ACBrNFe: TACBrNFe;
    ACBrMail: TACBrMail;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure IniciaConexao;
    procedure ProcessExists;
  public
    function tmsMSGQ(sCaption, sMessage: string): Integer;
    function tmsMSG(sCaption, sMessage: string): Integer;
    function StatusServico(var codigo : String) : Boolean;
    var
      sUsuarioLogado: string;
      iNivelUsuario: Integer;
      const
      sVersao = '1.0 build 1';
  end;

var
  DM: TDM;

  { : Funcoes de Consultas no Banco }
function ConsultaRegistroSimples(strPesquisa, strCampoWhere: string; strFieldRetorno, strTabela: string): string;
function ConsultaRegistro(strPesquisa, strCampoWhere: string; strFieldRetorno, strTabela: string; bMostraAviso: Boolean): string;
function ConsultaRegistroId(strPesquisa, strFieldRetorno, strTabela: string): string;

  { : Incrementa N Campo }
function Incrementa(sCampo, sTabela, sCondicao: string): integer;

implementation

uses
  Windows, System.IniFiles, U_Utils, dialogs,pcnConversao, pcnConversaoNFe, ACBrDFeSSL, ACBrUtil;

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDM }

function RetiraAspaSimples(Texto: string): string;
var
  n: Integer;
  NovoTexto: string;
begin
  NovoTexto := '';
  for n := 1 to length(texto) do
  begin
    if copy(texto, n, 1) <> Chr(39) then
      NovoTexto := NovoTexto + copy(Texto, n, 1)
    else
      NovoTexto := NovoTexto + '';
  end;
  Result := NovoTexto;
end;

function ConsultaRegistroId(strPesquisa, strFieldRetorno, strTabela: string): string;
var
  sSql: string;
begin
  try
    DM.Conexao.Connected := True;
    DM.QryAux.Close;
    DM.QryAux.SQL.Clear;
    DM.QryAux.SQL.Add('Select ');
    DM.QryAux.SQL.Add(strPesquisa);
    DM.QryAux.SQL.Add(' from ');
    DM.QryAux.SQL.Add(strTabela);
    //DM.QryAux.SQL.Add(' Where ');
    //DM.QryAux.SQL.Add(strCampoWhere + ' like ' + QuotedStr(strPesquisa));
    DM.QryAux.Open;

    if DM.QryAux.RecordCount > 1 then
      Result := EmptyStr;

    strFieldRetorno := RetiraAspaSimples(strFieldRetorno);

    if DM.QryAux.RecordCount > 0 then
      Result := DM.QryAux.FieldByName(strFieldRetorno).AsString;

  finally
    DM.QryAux.Close;
  end;

end;

function ConsultaRegistro(strPesquisa, strCampoWhere, strFieldRetorno, strTabela: string; bMostraAviso: Boolean): string;
var
  sSql: string;
begin
  try

    DM.Conexao.Connected := True;
    DM.QryAux.Close;
    DM.QryAux.SQL.Clear;
    DM.QryAux.SQL.Add('Select ');
    DM.QryAux.SQL.Add(strFieldRetorno);
    DM.QryAux.SQL.Add(' from ');
    DM.QryAux.SQL.Add(strTabela);
    DM.QryAux.SQL.Add(' Where ');
    DM.QryAux.SQL.Add(strCampoWhere + ' like ' + QuotedStr(strPesquisa));
    DM.QryAux.Open;

    if DM.QryAux.RecordCount > 1 then
      Result := EmptyStr;

    strFieldRetorno := RetiraAspaSimples(strFieldRetorno);

    if DM.QryAux.RecordCount > 0 then
      Result := DM.QryAux.FieldByName(strFieldRetorno).AsString;

  finally
    DM.QryAux.Close;
  end;

end;

function ConsultaRegistroSimples(strPesquisa, strCampoWhere, strFieldRetorno, strTabela: string): string;
begin
  Result := ConsultaRegistro(strPesquisa, strCampoWhere, strFieldRetorno, strTabela, false);
end;

function Incrementa(sCampo, sTabela, sCondicao: string): integer;
begin
  try
    with DM do
    begin
      Conexao.Connected := True;
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Add('select Max(' + sCampo + ') as Maior from ' + sTabela);

      // se tiver condicao aplica na consulta
      if sCondicao <> '' then
        QryAux.SQL.Add(sCondicao);

      QryAux.Open;

      result := QryAux.FieldByName('Maior').AsInteger + 1;

    end;

  finally
    DM.QryAux.Close;
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  Ini: TInifile;
  PathApp, PathArqNFe, PathPDF, PathArquivos, PathSchemas, PathTmp: string;
begin
  // caminhos de pastas gerais
   PathApp        := ExtractFilePath(ParamStr(0));
   PathSchemas    := IncludeTrailingPathDelimiter(PathApp + 'SCHEMAS');

   // caminhos de pastas especificos por cnpj
   PathArqNFe   := IncludeTrailingPathDelimiter(PathApp + 'DOCUMENTOS');
   PathPDF      := IncludeTrailingPathDelimiter(PathArqNFe + 'PDF');
   PathArquivos := IncludeTrailingPathDelimiter(PathArqNFe + 'ARQUIVOS');
   PathTmp      := IncludeTrailingPathDelimiter(PathArqNFe + 'TMP');

   if not DirectoryExists(PathPDF) then
      ForceDirectories(PathPDF);

   if not DirectoryExists(PathArquivos) then
      ForceDirectories(PathArquivos);

   if not DirectoryExists(PathTmp) then
      ForceDirectories(PathTmp);

   //Configura ACBRNFE
   dm.ACBrNFe.Configuracoes.Arquivos.AdicionarLiteral             := True;
   dm.ACBrNFe.Configuracoes.Arquivos.EmissaoPathNFe               := True;
   dm.ACBrNFe.Configuracoes.Arquivos.Salvar                       := True;
   dm.ACBrNFe.Configuracoes.Arquivos.SalvarApenasNFeProcessadas   := False;
   dm.ACBrNFe.Configuracoes.Arquivos.SepararPorMes                := True;
   dm.ACBrNFe.Configuracoes.Arquivos.SepararPorCNPJ               := True;
   dm.ACBrNFe.Configuracoes.Arquivos.SepararPorModelo             := True;
   //Paths
   dm.ACBrNFe.Configuracoes.Arquivos.PathSalvar    := PathArquivos;
   dm.ACBrNFe.Configuracoes.Arquivos.PathNFe       := PathArquivos;
   dm.ACBrNFe.Configuracoes.Arquivos.PathInu       := PathArquivos;
   dm.ACBrNFe.Configuracoes.Arquivos.PathEvento    := PathArquivos;
   dm.ACBrNFe.Configuracoes.Arquivos.PathSchemas   := PathSchemas;

   dm.ACBrNFe.Configuracoes.Geral.Salvar     := True;
   dm.ACBrNFe.Configuracoes.Geral.ModeloDF   := moNFE;
   dm.ACBrNFe.Configuracoes.Geral.VersaoDF   := ve310;
   dm.ACBrNFe.Configuracoes.Geral.SSLLib     := libCapicom;

   ACBrNFe.Configuracoes.Geral.ExibirErroSchema := False; // se True retorna o erro completo do schema
   ACBrNFe.Configuracoes.Geral.FormatoAlerta    := '[ %TAGNIVEL%%TAG% ]   %DESCRICAO% - %MSG%';

   // certificado
   ACBrNFe.Configuracoes.Certificados.NumeroSerie := ACBrNFe.SSL.SelecionarCertificado;
   ACBrNFe.Configuracoes.Certificados.Senha       := ''; // informe a senha se houver

   // configurações gerais
   ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;                        // tipo de emissão da NFe, usar quando deseja entrar em contingencia ou similar

   ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet      := 5000; // tempo padrão que vai aguardar para consultar após enviar a NF-e
   ACBrNFe.Configuracoes.WebServices.IntervaloTentativas      := 3000; // Intervalo entre as tentativas de envio
   ACBrNFe.Configuracoes.WebServices.Tentativas               := 10;   // quantidade de tentativas de envio
   ACBrNFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := True; // ajustar "AguardarConsultaRet" com o valor retornado pelo webservice

   // webservice
   ACBrNFe.Configuracoes.WebServices.UF         := 'SP';
   ACBrNFe.Configuracoes.WebServices.Visualizar := False;      // se True mostra as mensagens de status durante a troca de informações com webservice
   ACBrNFe.Configuracoes.WebServices.Ambiente   := taProducao; // informar se produção ou homologação

   // proxy de acesso (somente se a rede obrigar)
   ACBrNFe.Configuracoes.WebServices.ProxyHost := '';
   ACBrNFe.Configuracoes.WebServices.ProxyPort := '';
   ACBrNFe.Configuracoes.WebServices.ProxyUser := '';
   ACBrNFe.Configuracoes.WebServices.ProxyPass := '';

   // DANFE
   ACBrNFe.DANFE.TipoDANFE := tiRetrato;
   ACBrNFe.DANFE.PathPDF   := PathPDF;
   ACBrNFe.DANFE.Logo      := '';
   ACBrNFe.DANFE.Site      := 'http://www.meusite.com.br';
   ACBrNFe.DANFE.Email     := 'email@email.com.br';

   // Envio de email
   ACBrMail.From     := 'emailremetente@email.com.br';
   ACBrMail.FromName := 'Nome do Remetente';
   ACBrMail.Host     := 'smpt.seuservidor.com.br';
   ACBrMail.Port     := '587';
   ACBrMail.Username := 'seu_usuario';
   ACBrMail.Password := 'sua_senha';
   ACBrMail.SetSSL   := True;
   ACBrMail.SetTLS   := False;

//   //E:\Dropbox\Clientes\Nawt´s\Sistema001\Debug\DB\dbNAWTS.FDB
//   //C:\NawtsServer\db\dbNAWTS.fdb
//   Conexao.Connected := False;
//   Ini := TIniFile.Create((Application.ExeName) + 'Conf.ini');
//   //Conexao.Params[9] := ('VendorLib=' + Ini.ReadString('BDPath' , 'Vlib',''));
//   //Conexao.Params[10] := ('VendorLibWin64=' + Ini.ReadString('BDPath' , 'Vlib',''));
//   //Conexao.Params[16] := ('Database=' + Ini.ReadString('BDPath' , 'Path',''));
//   //Conexao.Open;
//   ProcessExists;
//   IniciaConexao;

end;

procedure TDM.IniciaConexao;
var
  ArqIni: TIniFile;
  zero: integer;
  valor: extended;
begin
  try
    begin
      ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\Conf.ini');
      //ArqIni.FileName;
      try
//         Conexao.Database          := ArqIni.ReadString(          'Conexao' , 'DataBase','');
//         Conexao.HostName          := ArqIni.ReadString(          'Conexao' , 'HostName','');
//         Conexao.User              := Decript(ArqIni.ReadString(  'Conexao' , 'User'    ,''));
//         Conexao.Password          := Decript(ArqIni.ReadString(  'Conexao' , 'Password',''));
//         Conexao.Port              := ArqIni.ReadInteger(         'Conexao' , 'Port'    , 0);
//         Conexao.LibraryLocation   := ArqIni.ReadString(          'Lib'     , 'Path'    ,'');
        Conexao.Connected := True;
      finally
        ArqIni.Free;
      end;
    end;
  except
    on E: Exception do
    begin
      //GravaLog(E.message,self.name,e.ClassName,'');
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName);
    end;
  end;

end;

procedure TDM.ProcessExists;
var
  H: THandle;
begin
   //Fecha instâncias do SiPO aberto
  Application.ProcessMessages;
  H := 1;
//   while H > 0 do
  begin
    H := FindWindow(nil, 'Servidor.....');
    if H > 0 then
    begin
      ShowMessage('O Servidor não pode ser aberto duas vezes. Feche primeiro a outra instância !');
      Application.Terminate;
    end;
  end;
end;

function TDM.StatusServico(var codigo: String): Boolean;
var
  Mensagem: string;
  CodigoStatus: Integer;
begin
   ACBrNFe.WebServices.StatusServico.Executar;
   CodigoStatus := ACBrNFe.WebServices.StatusServico.cStat;
   case CodigoStatus of
      107: // serviço em operação
      begin
         Mensagem := Trim(
            Format('Código:%d'#13'Mensagem: %s'#13'Tempo médio: %d segundo(s)', [
               ACBrNFe.WebServices.StatusServico.cStat,
               ACBrNFe.WebServices.StatusServico.xMotivo,
               ACBrNFe.WebServices.StatusServico.TMed
            ])
         );

         MessageDlg(Mensagem, mtInformation, [mbOK], 0);
      end;

      108, 109: // serviço paralisado temporariamente (108) ou sem previsão (109)
      begin
         Mensagem := Trim(
            Format('Código:%d'#13'Motivo: %s'#13'%s', [
               ACBrNFe.WebServices.StatusServico.cStat,
               ACBrNFe.WebServices.StatusServico.xMotivo,
               ACBrNFe.WebServices.StatusServico.xObs
            ])
         );

         MessageDlg(Mensagem, mtError, [mbOK], 0);
      end;
   else
      // qualquer outro retorno
      if CodigoStatus > 0 then
      begin
         Mensagem := Trim(
            Format('Webservice indisponível:'#13'Código:%d'#13'Motivo: %s'#13'%s', [
               ACBrNFe.WebServices.StatusServico.cStat,
               ACBrNFe.WebServices.StatusServico.xMotivo,
               ACBrNFe.WebServices.StatusServico.xObs
         ])
         );
      end
      else
      begin
         Mensagem := 'Webservice indisponível e retorno em branco, tente novamente!';
      end;

      MessageDlg(Mensagem, mtInformation, [mbOK], 0);
   end;

end;

function TDM.tmsMSG(sCaption, sMessage: string): Integer;
begin
  // With DM do
  begin
    tmsMsgComp.Buttons.Clear;
    with tmsMsgComp.Buttons.Add do
    begin
      ButtonResult := mrOK;
      Caption := 'Sim';
    end;
    with tmsMsgComp.Buttons.Add do
    begin
      ButtonResult := mrCancel;
      Caption := 'Não';
    end;
    tmsMsgComp.Caption := sCaption;
    tmsMsgComp.HTMLText.Text := sMessage;
    tmsMsgComp.Position := poScreenCenter;
    if tmsMsgComp.Execute then
    begin
      Result := 1;
    end
    else
    begin
      Result := 0
    end;
  end;
end;

function TDM.tmsMSGQ(sCaption, sMessage: string): Integer;
begin
  // With DM do
  begin
    tmsMsgComp.Buttons.Clear;
    with tmsMsgComp.Buttons.Add do
    begin
      ButtonResult := mrOK;
      Caption := 'Ok';
    end;
    // with tmsMsgComp.Buttons.Add do
    // begin
    // ButtonResult  := mrCancel;
    // Caption       := 'Não';
    // end;            sssdddd
    tmsMsgComp.Caption := sCaption;
    tmsMsgComp.HTMLText.Text := sMessage;
    tmsMsgComp.Position := poScreenCenter;
    if tmsMsgComp.Execute then
    begin
      Result := 1;
    end
    // else
    // Begin
    // Result := 0
    // End;
  end;
end;

end.

