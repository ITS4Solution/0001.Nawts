unit U_NFeSaidaBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxDropDownEdit, cxTimeEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, dxBarBuiltInMenu, cxPC, cxMemo,
  AdvSpin, AdvOfficeButtons, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, FnpNumericEdit, Vcl.Imaging.pngimage, Vcl.ImgList,
  UKernel_Classe_Regras_NFEItens,UKernel_Classe_Regras_NFE,
  nfe_v310, ValEdit, jpeg,
  XMLDoc, XMLIntf, xmldom, OleCtrls, SHDocVw, IdHMACSHA1,
  Datasnap.Provider, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,

   dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList;

type
  TF_NFeSaidaBt = class(TF_AbstratoButtons)
    Label68: TLabel;
    Shape5: TShape;
    Label75: TLabel;
    Label76: TLabel;
    spbtLocalizaProduto: TSpeedButton;
    Label77: TLabel;
    EditQuantidade: TFnpNumericEdit;
    Label78: TLabel;
    EditValorUnit: TFnpNumericEdit;
    Label79: TLabel;
    EditValorTotal: TFnpNumericEdit;
    Label80: TLabel;
    EditDesconto: TFnpNumericEdit;
    Label81: TLabel;
    EditTotalLiq: TFnpNumericEdit;
    Label82: TLabel;
    btConfirmarItem: TButton;
    btExcluirItem: TButton;
    Shape3: TShape;
    pnCentro: TPanel;
    PageGrid: TPageControl;
    TabItens: TTabSheet;
    pnTabItens: TPanel;
    DBGrid1: TDBGrid;
    pnTabTotalItens: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    btRecalcular: TSpeedButton;
    EditBCICMS: TFnpNumericEdit;
    EditVFrete: TFnpNumericEdit;
    EditVSeguro: TFnpNumericEdit;
    EditvICMS: TFnpNumericEdit;
    EditBCICMSST: TFnpNumericEdit;
    EditVOutras: TFnpNumericEdit;
    EditvICMSST: TFnpNumericEdit;
    EditVIPI: TFnpNumericEdit;
    EditVDesconto: TFnpNumericEdit;
    EditVTotalProd: TFnpNumericEdit;
    EditVTotalNota: TFnpNumericEdit;
    TabInfor: TTabSheet;
    Panel2: TPanel;
    Label35: TLabel;
    DBMemo1: TDBMemo;
    TabTransportadora: TTabSheet;
    Panel3: TPanel;
    DBRadioGroup1: TDBRadioGroup;
    pnTransportador: TPanel;
    btTransportador: TSpeedButton;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label43: TLabel;
    Label51: TLabel;
    DBEditCodTransp: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    TabFatura: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    dspCabecalho: TDataSetProvider;
    oCdsID: TIntegerField;
    dspEmitente: TDataSetProvider;
    oCdsEmitente: TClientDataSet;
    dsEmitente: TDataSource;
    dspItens: TDataSetProvider;
    oCdsItens: TClientDataSet;
    dsItens: TDataSource;
    Image_Base: TImageList;
    BalloonHint1: TBalloonHint;
    EditCodNomeProduto: TEdit;
    pnCabecalho: TPanel;
    Label72: TLabel;
    Label74: TLabel;
    DBEdit52: TDBEdit;
    edtChave: TDBEdit;
    DBEdit57: TDBEdit;
    Label14: TLabel;
    DBEdit58: TDBEdit;
    Label16: TLabel;
    DBEdit59: TDBEdit;
    Label69: TLabel;
    DBEdit60: TDBEdit;
    Label70: TLabel;
    DBEdit61: TDBEdit;
    Label71: TLabel;
    DBEdit56: TDBEdit;
    Label12: TLabel;
    DBEdit55: TDBEdit;
    Label11: TLabel;
    DBEdit54: TDBEdit;
    Label10: TLabel;
    DBEdit4: TcxDBTextEdit;
    btDest: TSpeedButton;
    Label2: TLabel;
    Label1: TLabel;
    dtEntradaSaida: TDateTimePicker;
    dtEmissao: TDateTimePicker;
    Label3: TLabel;
    Label13: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    RadioEntradaSaida: TDBRadioGroup;
    btCFOP: TSpeedButton;
    DBEditCFOPNota: TcxDBTextEdit;
    Label67: TLabel;
    DBEdit70: TcxDBTextEdit;
    Shape2: TShape;
    Shape4: TShape;
    Label73: TLabel;
    Shape1: TShape;
    pnAmbienteStatus: TPanel;
    Shape6: TShape;
    lbAmbienteStatus: TLabel;
    lbAmbiente: TLabel;
    lbStatus: TLabel;
    pnAmbiente: TPanel;
    imgLogoNFE: TImage;
    oCdsIDEMITENTE: TIntegerField;
    oCdsCFOP: TIntegerField;
    oCdsCFOPDESC: TStringField;
    oCdsENTRADASAIDA: TStringField;
    oCdsNNOTA: TIntegerField;
    oCdsCONSUMOREVENDA: TStringField;
    oCdsDATAEMISSAO: TSQLTimeStampField;
    oCdsDATAENTRADASAIDA: TSQLTimeStampField;
    oCdsHORAENTRADASAIDA: TStringField;
    oCdsIDDESTINATARIO: TIntegerField;
    oCdsDESTINATARIO: TStringField;
    oCdsCNPJDESTINATARIO: TStringField;
    oCdsIEDESTINATARIO: TStringField;
    oCdsENDERECODESTINATARIO: TStringField;
    oCdsNUMEROENDDESTINATARIO: TStringField;
    oCdsCOMPLEMENTODESTINATARIO: TStringField;
    oCdsBAIRRODESTINATARIO: TStringField;
    oCdsCEPDESTINATARIO: TStringField;
    oCdsCIDADEDESTINATARIO: TStringField;
    oCdsCODCIDADEDESTINATARIO: TIntegerField;
    oCdsUFDESTINATARIO: TStringField;
    oCdsCODUFDESTINATARIO: TIntegerField;
    oCdsTELEFONEDESTINATARIO: TStringField;
    oCdsCHAVEACESSO: TStringField;
    oCdsPROTOCOLO: TStringField;
    oCdsTIPOITEM: TStringField;
    oCdsCODRETORNOSEFAZ: TIntegerField;
    oCdsDESCRETORNOSEFAZ: TStringField;
    oCdsDATACANCELAMENTONOTA: TSQLTimeStampField;
    oCdsMOTIVOCANCELAMENTONOTA: TStringField;
    oCdsPROTOCOLOCANCELAMENTO: TStringField;
    oCdsCSTAT: TIntegerField;
    oCdsSTATUSNOTA: TStringField;
    oCdsMSGSTATUS: TStringField;
    oCdsIDLOTE: TIntegerField;
    oCdsNRECIBO: TStringField;
    oCdsDATAHORARECIBO: TSQLTimeStampField;
    oCdsAMBIENTE: TStringField;
    oCdsT_VALORBC: TFloatField;
    oCdsT_VALORICMS: TFloatField;
    oCdsT_VALORICMSST: TFloatField;
    oCdsT_VALORBCST: TFloatField;
    oCdsT_VALORST: TFloatField;
    oCdsT_VALORPRODUTOS: TFloatField;
    oCdsT_VALORFRETE: TFloatField;
    oCdsT_VALORSEGURO: TFloatField;
    oCdsT_VALORDESCONTO: TFloatField;
    oCdsT_VALORII: TFloatField;
    oCdsT_VALORIPI: TFloatField;
    oCdsT_VALORPIS: TFloatField;
    oCdsT_VALORCOFINS: TFloatField;
    oCdsT_VALOROUTRASDESPESAS: TFloatField;
    oCdsT_VALORNOTAFISCAL: TFloatField;
    oCdsIDTRANSPORTADOR: TStringField;
    oCdsTRANSPORTADOR: TStringField;
    oCdsCNPJTRANSPORTADOR: TStringField;
    oCdsIETRANSPORTADOR: TStringField;
    oCdsENDERECTRANSPORTADOR: TStringField;
    oCdsCOMPLEMENTOTRANSPORTADOR: TStringField;
    oCdsBAIRROTRANSPORTADOR: TStringField;
    oCdsCEPTRANSPORTADOR: TStringField;
    oCdsCIDADETRANSPORTADOR: TStringField;
    oCdsCODCIDADETRANSPORTADOR: TIntegerField;
    oCdsUFTRANSPORTADOR: TStringField;
    oCdsCODUFTRANSPORTADOR: TIntegerField;
    oCdsTELEFONETRANSPORTADOR: TStringField;
    oCdsPLACATRANSPORTADOR: TStringField;
    oCdsUFPLACATRANSPORTADOR: TStringField;
    oCdsVOLUMETRANSPORTADOR: TStringField;
    oCdsPESOBRUTOTRANSPORTADOR: TFloatField;
    oCdsPESOLIQUIDOTRANSPORTADOR: TFloatField;
    oCdsMARCATRANSPORTADOR: TStringField;
    oCdsESPECIETRANSPORTADOR: TStringField;
    oCdsRNTCTRANSPORTADOR: TStringField;
    oCdsNUMERACAOTRANSPORTADOR: TStringField;
    oCdsMODFRETE: TIntegerField;
    oCdsFINALIDADENOTA: TIntegerField;
    oCdsINFADD: TMemoField;
    oCdsSELECIONADO: TStringField;
    oCdsSERIE: TIntegerField;
  btnXML: TAdvGlassButton;
    oCdsEmitenteID: TIntegerField;
    oCdsEmitenteNOMERAZAOSOCIAL: TStringField;
    oCdsEmitenteNOMEFANTASIA: TStringField;
    oCdsEmitenteENDERECO: TStringField;
    oCdsEmitenteNUMERO: TStringField;
    oCdsEmitenteCOMPLEMENTO: TStringField;
    oCdsEmitenteBAIRRO: TStringField;
    oCdsEmitenteCIDADE: TStringField;
    oCdsEmitenteCODCIDADE: TIntegerField;
    oCdsEmitenteCEP: TStringField;
    oCdsEmitenteUF: TStringField;
    oCdsEmitenteCODUF: TIntegerField;
    oCdsEmitentePAIS: TStringField;
    oCdsEmitenteCODPAIS: TIntegerField;
    oCdsEmitenteTELEFONE: TStringField;
    oCdsEmitenteCNPJ: TStringField;
    oCdsEmitenteIE: TStringField;
    oCdsEmitenteSUFRAMA: TStringField;
    oCdsEmitenteIM: TStringField;
    oCdsEmitenteCNAE: TIntegerField;
    oCdsEmitenteLOGO: TStringField;
    oCdsEmitenteCODTIPOREGIME: TIntegerField;
    oCdsEmitentePSIMPLES: TFloatField;
    oCdsEmitenteCERTIFICADO: TStringField;
    oCdsEmitenteTITULOCERTIFICADO: TStringField;
    oCdsEmitenteVALIDADECERT: TSQLTimeStampField;
    oCdsEmitenteSENHACERT: TStringField;
    oCdsEmitenteAMBIENTE: TStringField;
    oCdsEmitenteEMAIL1: TStringField;
    oCdsEmitenteEMAIL2: TStringField;
    oCdsEmitenteEMAIL3: TStringField;
    oCdsEmitenteMODELODANFE: TIntegerField;
    oCdsEmitenteFORMAEMISSAO: TIntegerField;
    oCdsEmitenteCFOPPADRAO: TIntegerField;
    oCdsEmitenteMUDACFOPINTE: TStringField;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    btnAssXML: TAdvGlassButton;
    TabSheet2: TTabSheet;
    Memo2: TMemo;
    oCdsItensID: TIntegerField;
    oCdsItensIDNOTA: TIntegerField;
    oCdsItensCODPRODUTO: TStringField;
    oCdsItensCODEAN: TStringField;
    oCdsItensPRODUTO: TStringField;
    oCdsItensNCM: TStringField;
    oCdsItensEXTIPI: TStringField;
    oCdsItensCFOP: TIntegerField;
    oCdsItensUNCOMERCIAL: TStringField;
    oCdsItensQTDCOMERCIAL: TFloatField;
    oCdsItensVALORUNCOMERCIAL: TFloatField;
    oCdsItensVALORPRODUTO: TFloatField;
    oCdsItensCODEANTRIB: TStringField;
    oCdsItensUNTRIB: TStringField;
    oCdsItensQTDTRIB: TFloatField;
    oCdsItensVALORUNTRIB: TFloatField;
    oCdsItensVALORFRETE: TFloatField;
    oCdsItensVALORSEGURO: TFloatField;
    oCdsItensVALORDESCONTO: TFloatField;
    oCdsItensVALOROUTRAS: TFloatField;
    oCdsItensVALORTOTAL: TFloatField;
    oCdsItensVALORTOTALLIQUIDO: TFloatField;
    oCdsItensINFADPRODUTO: TMemoField;
    oCdsItensICMS_CSTCSOSN: TIntegerField;
    oCdsItensICMS_ORIGEM: TIntegerField;
    oCdsItensICMS_MODBC: TIntegerField;
    oCdsItensICMS_VBCICMS: TFloatField;
    oCdsItensICMS_VBCICMSST: TFloatField;
    oCdsItensICMS_PICMS: TFloatField;
    oCdsItensICMS_VICMS: TFloatField;
    oCdsItensICMS_MODBCST: TIntegerField;
    oCdsItensICMS_PMVAST: TFloatField;
    oCdsItensICMS_PREDBC: TFloatField;
    oCdsItensICMS_PICMSST: TFloatField;
    oCdsItensICMS_VICMSST: TFloatField;
    oCdsItensIPI_CST: TIntegerField;
    oCdsItensIPI_CLENQ: TStringField;
    oCdsItensIPI_CNPJPROD: TStringField;
    oCdsItensIPI_CSELO: TStringField;
    oCdsItensIPI_QSELO: TFloatField;
    oCdsItensIPI_CENQ: TStringField;
    oCdsItensIPI_VALORBC: TFloatField;
    oCdsItensIPI_QUNID: TFloatField;
    oCdsItensIPI_VALORUNID: TFloatField;
    oCdsItensIPI_PIPI: TFloatField;
    oCdsItensIPI_VALORIPI: TFloatField;
    procedure edCfopKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditCFOPNotaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EditCodNomeProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btDestClick(Sender: TObject);
    procedure oDSDataChange(Sender: TObject; Field: TField);
    procedure spbtLocalizaProdutoClick(Sender: TObject);
    procedure EditQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValorUnitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValorTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTotalLiqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btConfirmarItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRecalcularClick(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure btnXMLClick(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure btnAssXMLClick(Sender: TObject);
  private
    bGeraICMSpFisica: Boolean;
    procedure Gera_Chave;
    procedure Gera_cNFe;
    procedure Versao_NFe;
    procedure Finalidade_NFe;
    { Private declarations }
    procedure Ambiente(sAmbiente: string);
    Function SerieNFe: integer;
    Function LocalizaProduto(abreTela: Boolean): Boolean;
    procedure CalculaValores;
    procedure MudaCFOPInterestadual; { : Muda CFOP de acordo com UF Dest e Emit }
    Function StatusDaNota: string;

    procedure CarregaConfiguracoes;
    procedure CalculaNota;
    procedure CalculaValorTotalNota;
    procedure ZeraEdits;
    procedure HabDesabBotoesComando;

    Function InsereItemNota(idItem: integer): Boolean;
    Function InsereItemAutomatico: Boolean;
    Function InsereItemManual: Boolean;
    Function ConfirmarLancamentoItem: Boolean;

    function AnsiReplaceStr(const AText, AFromText, AToText: string): string;
    procedure Alimenta_Componente;
    function ValueIn(Value: Integer; const Values: array of Integer): Boolean;

  public
    { Public declarations }
  end;

var
  F_NFeSaidaBt: TF_NFeSaidaBt;
  Regra: TRegrasNFE;
  NFEItens: TNFeItens;
  My_NFE: IXMLTNFe;
  nfe_filename: String;
  nfe_STR: TStrings;
  cDV : string;
  cNF : Integer;
  vNF : string;

const
 AlfaArray: PChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZàâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ 0123456789.;,<>?/[]{}*&^%$#@!_+-="`~\';        //é necessário passar caracteres acentuados nos dois formatos pois UPPER e LOWER case não funcionam com caracteres acentuados
 NumArray: PChar = '0123456789.:-';

 tipo_demo: String = 'NF-e';


implementation

{$R *.dfm}

uses UDm, UKernel_FuncoesInteiros, U_ConsultaProdutos, U_ConsultaClientes,
  UKernel_VariaveisPublic,
  UKernel_Classe_Regras_CFOP, U_NFeLancaItem, UKernel_FuncoesFloats,
  UKernel_Funcoes_Util, U_NFeInfAddProdutos, U_DM_NFe,pcnConversao,pcnConversaoNFe;


//Declaração de Funções disponiveis na assinaturaNFe32dll.dll para assinatura de arquivos XML de NFe
//Declação de funções onde o conteúdo completo do XML a ser assinado é passado como parâmtro TStrings
//Function fncAssinarXML(sXml: TStrings): String; SafeCall; external 'assinaturaNFe32dll.dll';

//Declação de funções onde é passado o path do XML a ser assinado e a assinatura é feita diretamente no arquivo
//Nas funções declaradas (abaixo) a dll utiliza internamente as mesmas funções originais (acima) para fazer a assinatura do arquivo
//Function fncAssinarXMLPath(sXmlPath: Pchar): integer; SafeCall; external 'assinaturaNFe32dll.dll';


//Function fncDVNFe(sChave: PChar): PChar; safecall; external 'assinaturaNFe32dll.dll';

//Function fncGeraChave_v110(cUF: Pchar; DEmi: Pchar; CNPJ: Pchar; mod_: Pchar; serie: Pchar; nNF: Pchar;
//                           cNF: Pchar; incluir_dv: boolean): Pchar; safecall; external 'assinaturaNFe32dll.dll';
//Function fncGeraChave_v200(cUF: Pchar; DEmi: Pchar; CNPJ: Pchar; mod_: Pchar; serie: Pchar; nNF: Pchar;
//                           tpEmis: Pchar; cNF: Pchar; incluir_dv: boolean): Pchar; safecall; external 'assinaturaNFe32dll.dll';

function fncDVNFe(sChave: PChar): PChar; SafeCall; export;
var
wValor : WideString;
Soma : integer;
Cont, Peso, Digito, resto : integer;
Base: Integer;
begin
wValor := sChave;
Soma   := 0;
Peso   := 2;
Base   := 9;
for Cont := Length(wValor) downto 1 do
  begin
   Soma := Soma + (StrToInt(wValor[Cont]) * Peso);
   if Peso < Base then
    Peso := Peso + 1
  else
    Peso := 2;
  end;
resto := (Soma mod 11);
//Conforme o manual se resto = 0 ou 1 então DV=0
//Exemplo de chave de NFe onde resto = 0 2508120316848800015955001000113334166660521
if (resto = 0) or (resto = 1) then
  Digito := 0
else
  Digito := 11 - (Soma mod 11);

Result := PChar(IntToStr(Digito));
end;

//Remove caracteres invalidos de uma String conforme String de caracteres válidos
//Usage: "NotToRemoveStr" is the Char Array NOT to be removed, "FromStr" is the ShortString to be removed from
Function RemoveInvalid(NotToRemoveStr: String; FromStr: String): ShortString; stdcall; export;
var
 TempStr: String;
 Res: ShortString;
 x: Byte;
begin
 TempStr := UpperCase(FromStr);
 Res := '';
 for x := 1 to Length(TempStr)  do
  begin
   if Pos(TempStr[x], NotToRemoveStr) <> 0 then
    Res := Res + FromStr[x];
  end;
 Result := Res;
end;

function RemoveAcento(Str: string): string;
const
 ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
 SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
 AlfaArray = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789.;,<>?/[]{}*&^%$#@!_+-="`~|\:';
var
   x: Integer;
begin;
 for x := 1 to Length(Str) do
  begin
   if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  end;

 Str := RemoveInvalid(AlfaArray, Str);
 Result := Str;
end;

function Tamanho_Arquivo(Path_Arquivo: String): Double;
var
 Arquivo: File of Byte;
begin
 Result := 0;

 if FileExists(Path_Arquivo) then
  begin
   AssignFile(Arquivo, Path_Arquivo);     //Transforma o arquivo em bytes independente de sua extensão
   Reset(Arquivo);
   Result := (FileSize(Arquivo) / 1024);  //Retorna o tamanho do arquivo em Kbytes
   CloseFile(Arquivo);
  end;
end;

//Esta função remove caracteres acentuados de uma string substituindo os mesmos pela sua versão não acentuada
function Remove_Acentos(str: String): String;
var
i, j: Integer;
const
 com_acento: array[1..48] of char = ('á','é','í','ó','ú','à','è','ì','ò','ù','â','ê','î','ô','û','ä','ë','ï',
                'ö','ü','ã','õ','ñ','ç','Á','É','Í','Ó','Ú','À','È','Ì','Ò','Ù','Â','Ê',
                'Î','Ô','Û','Ä','Ë','Ï','Ö','Ü','Ã','Õ','Ñ','Ç');

 sem_acento: array[1..48] of char = ('a','e','i','o','u','a','e','i','o','u','a','e','i','o','u','a','e','i',
               'o','u','a','o','n','c','A','E','I','O','U','A','E','I','O','U','A','E',
               'I','O','U','A','E','I','O','U','A','O','N','C');
begin
 for i := 1 to Length (str) do
  for j := 0 to High(com_acento) do
   if com_acento[j] = str[i] then
    str[i] := sem_acento[j];

 result := str;
end;

//------ Preenche String com caracter de Enchimento até o tamanho indicado ------
//Caracter de enchimento numérico de acordo com manual do SIntegra = '0'
Function NumStuff(Str: String; Tamanho: Byte): String;
const
 NumStuffChar: ShortString = '0';
begin
 Result := '';
 If (Tamanho = 0) then
  Exit;

 while length(Str) < Tamanho do
  Str := NumStuffChar + Str;
 Result := Str;
end;

//Na geração do arquivo XML da NF-e, excetuados os campos identificados como obrigatórios
//no modelo, não deverão ser incluídas as TAGs de campos zerados (para campos tipo numérico)
//ou vazios (para campos tipo caractere).

//A regra constante do parágrafo anterior deverá estender-se para os campos onde não há
//indicação de obrigatoriedade e que, no entanto, seu preenchimento torna-se obrigatório por
//estar condicionado à legislação específica ou ao negócio do contribuinte. Neste caso,
//deverá constar a TAG com o valor correspondente e, para os demais campos, deverão ser
//eliminadas as TAGs.

//Para reduzir o tamanho do XML da NF-e alguns cuidados deverão ser assumidos:
//• não incluir "zeros não significativos" para campos numéricos;
//• não incluir "espaços" no final de campos alfanuméricos;
//• não incluir comentários no arquivo XML;
//• não incluir anotação e documentação no arquivo XML (TAG annotation e TAG documentation);
//• não incluir caracteres de formatação no arquivo XML ("line-feed", "carriage return", "tab", "espaço" entre as TAGs).
Function FormatoAlfa(var listeditor: TValueListEditor; value: String): Boolean;
begin
 result := false;

 listeditor.Values[value] := Trim(listeditor.Values[value]);
 listeditor.Values[value] := RemoveInvalid(AlfaArray, listeditor.Values[value]);
 listeditor.Values[value] := Remove_Acentos(listeditor.Values[value]);              //TODO: Não remover acentos!!! Verificar pagina 69 sobre tratamento de caracteres especiais

 if listeditor.Values[value] <> '' then
  result := true;
end;

Function FormatoNum(var listeditor: TValueListEditor; value: String): Boolean;
begin
 result := false;

 listeditor.Values[value] := Trim(listeditor.Values[value]);
 listeditor.Values[value] := RemoveInvalid(NumArray, listeditor.Values[value]);

 if (listeditor.Values[value] <> '') and
    (strtoint64(listeditor.Values[value]) <> 0) then
  result := true;
end;

Function FormataCampo(value: String; Tipo: Char; Tamanho_Max: integer): Boolean;
begin
 result := false;

 value := Trim(value);
 if Tamanho_Max <> -1 then
  value := copy(value, 0, tamanho_max);

 Case Tipo of
  'C', 'c':
   begin
    value := RemoveInvalid(AlfaArray, value);
    value := Remove_Acentos(value);
   end;
  'N', 'n', 'D', 'd', 'H', 'h':
   begin
    value := RemoveInvalid(NumArray, value);
   end;
 end;

 if (value <> '') then
  result := true;
end;

{*------------------------------------------------------------------------------
Gera chave de acesso a partir da versão 2.00
Tamanho dos parâmetros devem obedecer o formato declarado no manual de integração
Parâmetros passados com menos caracteres do que o tamanho indicado serão adicionados 0 a esquerda do valor passado
Parâmetros passados com mais caracteres do que o tamanho indicado serão cortados
Caracteres inválidos são removidos
@Author Victory Fernandes
@Version 13/01/2009 Última alteração por Victory Fernandes
@param cUF Código da UF do emitente do Documento Fiscal. 2 caracteres conforme padrão IBGE
@param AAMM Ano e Mês de emissão da NF-e. 4 caracteres
@param CNPJ CNPJ do emitente. 14 caracteres, não incluir formatação
@param mod_ Modelo do Documento Fiscal. 2 caracteres, '55' para NFe
@param serie Série do Documento Fiscal. 3 caracteres, preencher com 0 a esquerda se necessário
@param nNF Número do Documento Fiscal. 9 caracteres, preencher com 0 a esquerda se necessário
@param tpEmis forma de emissão da NF-e
@param cNF Código Numérico que compõe a Chave de Acesso. Número aleatório gerado pela sua aplicação. 9 caracteres, preencher com 0 a esquerda se necessário
@param incluir_dv Incluir no retorno o Dígito Verificador da Chave de Acesso calculado com base nos valores informados nos demais parâmetros.
@return Chave de acesso gerada conforme formato descrito no Manual de Integração disponibilizado no portal oficial da NFe em www.nfe.fazenda.gov.br
@return '-1 ERRO: Erro durante o processo de geração da chave de acesso. Verifique:' + E.message
-------------------------------------------------------------------------------}
function fncGeraChave_v200(cUF: PChar; AAMM: PChar; CNPJ: PChar; mod_: PChar; serie: PChar; nNF: PChar; tpEmis: PChar;
                           cNF: PChar; incluir_dv: boolean): PChar;
begin
//try
  result := '1';
//  if not      is_Int_Str(nNF) then
//   result := pchar('-2  ERRO: Número do Documento Fiscal Inválido!')
//  else if not is_Int_Str(cNF) then
//   result := pchar('-3  ERRO: Código Numérico que compõe a Chave de Acesso Inválido!')
// else if not (length(mod_) = 2) then
//   result := pchar('-4  ERRO: Modelo Inválido!')
//  else if not Verifica_UF(cUF) then
//   result := pchar('-5  ERRO: UF Inválida!')
//  else if not Verifica_CNPJ(CNPJ) then
//  result := pchar('-6  ERRO: CNPJ Inválido!')
//  else if not Verifica_Modelo(mod_) then
//   result := pchar('-7  ERRO: Modelo de Documento Fiscal Inválido!')
//  else if  (not ((length(serie) >= 1) and (length(serie) <= 3))) or (not is_Int_Str(serie)) then
//  result := pchar('-8  ERRO: Série de Documento Fiscal Inválido!')
//  else if not IsNFeAnoMes(AAMM) then
//   result := pchar('-9  ERRO: Data de Documento Fiscal Inválida!')
//  else if not is_Int_Str(tpEmis) then
//   result := pchar('-10 ERRO: Forma de emissão da NF-e!')
//  else if result = '1' then
//   begin
//29080334261131000144550010000000103638874924

//29121034261131000144550010101363887491
    result := PChar(string(cUF) +                                    //Código da UF do emitente do Documento Fiscal
                    string(AAMM) +                                   //Ano e Mês de emissão da NF-e
                    string(CNPJ) +                                   //CNPJ do emitente
                    string(mod_) +                                   //Modelo do Documento Fiscal
                    string(serie) +                                  //Série do Documento Fiscal
                    string(nNF) +                                    //Número do Documento Fiscal
                    string(tpEmis) +                                 //Forma de emissão da NF-e
                    string(cNF));                                    //Código Numérico que compõe a Chave de Acesso
    if incluir_dv then
     result := PChar(string(result) + string(fncDVNFe(result)));     //Dígito Verificador da Chave de Acesso
// end;
//except
//  on e: Exception do
//   result := pchar('-1 ERRO: Erro durante o processo de geração da chave de acesso. Verifique: ' + E.message);
//end;
end;

procedure TF_NFeSaidaBt.ActEditarExecute(Sender: TObject);
begin
  inherited;

  if oCdsItens.State in [dsedit, dsinsert, dsBrowse] then
  begin
    oCdsItens.Edit;
  end;

end;

procedure TF_NFeSaidaBt.ActNovoExecute(Sender: TObject);
begin
  inherited;

  ZeraEdits;
  dtEmissao.Date := Date;
  dtEntradaSaida.Date := Date;

  Dm.sqlNFeCabecalho.Close;
  Dm.sqlNFeCabecalho.CommandText:=EmptyStr;
  Dm.sqlNFeCabecalho.CommandText:='Select * from NFE_Cabecalho Where ID = 0';
  Dm.sqlNFeCabecalho.Open;
//  Dm.sqlNFeCabecalho.Insert;

  oCds.close;
  oCds.open;

  oCdsNNota.Value := Incrementa('NNota', 'NFE_Cabecalho', 'Where IDEmitente = ' + oCdsEmitenteID.AsString +
  ' and AMBIENTE = ' + QuotedStr(oCdsEmitenteAmbiente.AsString) + ' and EntradaSaida = ' +
  QuotedStr(oCdsEntradaSaida.AsString) + ' and SERIE = ' + oCdsSERIE.AsString);

//  oCdsDataEmissao.Value := dtEmissao.Date;
//  oCdsDataEntradaSaida.Value := dtEntradaSaida.Date;
  oCdsHoraEntradaSaida.Value := FormatDateTime('hh:mm:ss', now);
  oCdsModFrete.Value := 3;
  oCdsCFOP.Value := IsInteger(oCdsEmitenteCFOPPadrao.AsString);

  oCdsItens.Close;
  oCdsItens.Open;

  dtEmissao.Date := Date;
  dtEntradaSaida.Date := Date;

  DBEditCFOPNota.SetFocus;

end;

procedure TF_NFeSaidaBt.ActSalvarExecute(Sender: TObject);
begin


  // oCdsItens.Edit;
  // oCdsItensValorFrete.Value := EditVFrete.Value;
  // oCdsItensValorSeguro.Value := EditVSeguro.Value;
  // oCdsItensValorOutras.Value := EditVOutras.Value;
  // oCdsItensValorFrete.Value := EditVFrete.Value;
  // oCdsItensValorFrete.Value := EditVFrete.Value;
  // oCdsItens.Post;
  CalculaNota;

  if oCdsItens.State in [dsedit, dsinsert] then
  begin
  oCdsItens.Post;
  oCdsItens.ApplyUpdates(-1);
  end;

  if Length(oCdsCFOP.AsString) = 0 then
  begin
    DM.tmsMSGQ('Informação',('Favor preencher o cabecalho antes de salvar.'));
    abort;
  end;

  oCdsDataEmissao.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', dtEmissao.Date));
  oCdsDataEntradaSaida.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', dtEntradaSaida.Date));
  oCdsHoraEntradaSaida.Value := FormatDateTime('hh:mm', now);
  oCdsT_ValorBC.Value := EditBCICMS.Value;
  oCdsT_ValorBCST.Value := EditBCICMSST.Value;
  oCdsT_ValorICMS.Value := EditvICMS.Value;
  oCdsT_ValorICMSST.Value := EditvICMSST.Value;
  oCdsT_ValorST.Value := EditvICMSST.Value;

  oCdsT_ValorFrete.Value := EditVFrete.Value;
  oCdsT_ValorSeguro.Value := EditVSeguro.Value;
  oCdsT_ValorOutrasDespesas.Value := EditVOutras.Value;
  oCdsT_ValorDesconto.Value := EditVDesconto.Value;
  oCdsT_ValorIPI.Value := EditVIPI.Value;

  oCdsT_ValorProdutos.Value := EditVTotalProd.Value;
  oCdsT_ValorNotaFiscal.Value := EditVTotalNota.Value;

  inherited;

end;

procedure TF_NFeSaidaBt.Alimenta_Componente;
begin
//
//  DM.SNFe.Softhouse:='01554006651';
//
//  DM.SNFe.NFe_Sharing.Itens_NFe.Clear;
//  DM.SNFe.NFe_Sharing.Faturas.Clear;
//
//
//  {$REGION 'Dados da Nota Fiscal'}
//
//    DM_NFe.NFe.Close;
//    DM_NFe.NFe.SQL.Clear;
//    DM_NFe.NFe.SQL.Text:='Select * from NFE_CABECALHO where NNOTA ='+oCdsNNOTA.AsString;
//    DM_NFe.NFe.Open;
//
//    DM.SNFe.NFe_Sharing.Numero_NFe                :=  DM_NFe.NFe.FieldByName('NNOTA').AsInteger;
//    DM.SNFe.NFe_Sharing.Natureza_Operacao         :=  DM_NFe.NFe.FieldByName('CFOPDESC').AsString;
//
//    DM.SNFe.NFe_Sharing.Forma_Pagamento           :=  0; // campo não encontrado
//    (*
//
//      0 - Pagamento a vista
//      1 - Pagamento a Prazo
//      2 - Outros
//
//    *)
//
//
//    DM.SNFe.NFe_Sharing.modelo                    :=  55;
//
//    DM.SNFe.NFe_Sharing.serie                     :=  DM_NFe.NFe.FieldByName('SERIE').AsInteger;
//    DM.SNFe.NFe_Sharing.Data_Emissao              :=  DM_NFe.NFe.FieldByName('DATAEMISSAO').AsDateTime;
//    DM.SNFe.NFe_Sharing.Data_Saida                :=  DM_NFe.NFe.FieldByName('DATAENTRADASAIDA').AsDateTime;
//    DM.SNFe.NFe_Sharing.Hora_Saida                :=  DM_NFe.NFe.FieldByName('HORAENTRADASAIDA').AsDateTime;
//
//    if oCdsEntradaSaida.AsString = 'S' then
//      DM.SNFe.NFe_Sharing.Tipo_Operacao           := 1;
//    if oCdsEntradaSaida.AsString = 'E' then
//      DM.SNFe.NFe_Sharing.Tipo_Operacao           :=0;
//
//    if oCdsEmitenteAMBIENTE.AsString = 'P' then
//     DM.SNFe.NFe_Sharing.Ambiente := 1;
//    if oCdsEmitenteAMBIENTE.AsString = 'H' then
//     DM.SNFe.NFe_Sharing.Ambiente := 2;
//
//    DM.SNFe.NFe_Sharing.Tipo_Atendimento          :=  0; // campo não encontrado
//    (*
//
//      pcNao, pcPresencial, pcInternet, pcTeleatendimento, pcEntregaDomicilio, pcOutros
//
//    *)
//
//
//
//    DM.SNFe.NFe_Sharing.Finalidade                :=  DM_NFe.NFe.FieldByName('FINALIDADENOTA').AsInteger;
//    DM.SNFe.NFe_Sharing.FretePorConta             :=  DM_NFe.nfe.fieldbyname('ModFrete').asinteger;
//    DM.SNFe.NFe_Sharing.Informacoes_Complementar  :=  DM_NFe.nfe.fieldbyname('INFADD').AsString;
//
//    DM.SNFe.NFe_Sharing.Valor_Frete               :=  DM_NFe.nfe.fieldbyname('T_VALORFRETE').asfloat;
//    DM.SNFe.NFe_Sharing.Valor_Seguro              :=  DM_NFe.nfe.fieldbyname('T_VALORSEGURO').asfloat;
//    DM.SNFe.NFe_Sharing.Valor_Desconto            :=  DM_NFe.nfe.FieldByName('T_VALORDESCONTO').asfloat;
//    DM.SNFe.NFe_Sharing.Valor_Outros              :=  DM_NFe.nfe.fieldbyname('T_VALOROUTRASDESPESAS').asfloat;
//
//    DM.SNFe.NFe_Sharing.Valor_Total_NFe           :=  DM_NFe.nfe.fieldbyname('T_VALORNOTAFISCAL').asfloat;
//    DM.SNFe.NFe_Sharing.Valor_Produto             :=  DM_NFe.nfe.fieldbyname('T_VALORPRODUTOS').asfloat;
//
//    DM.SNFe.NFe_Sharing.Versao_Aplicacao          := 'Projeto NFe 1.0';
//
//
//  {$ENDREGION 'Dados da Nota Fiscal'}
//
//
//  {$REGION 'Dados do emitente'}
//
//    DM_NFe.Emitente.Close;
//    DM_NFe.Emitente.SQL.Clear;
//    DM_NFe.Emitente.SQL.Text:='Select * from NFe_Emitente';
//    DM_NFe.Emitente.Open;
//
//    DM.SNFe.NFe_Sharing.Emitente.CPFCNPJ           :=  DM_NFe.Emitente.FieldByName('CNPJ').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.InscEstadual      :=  DM_NFe.Emitente.FieldByName('IE').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Nome_Razao        :=  DM_NFe.Emitente.FieldByName('NOMERAZAOSOCIAL').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Fantasia          :=  DM_NFe.Emitente.FieldByName('NOMEFANTASIA').AsString;
//
//    if FormataCampo(DM_NFe.Emitente.FieldByName('CEP').AsString, 'N', 8) then
//
//    DM.SNFe.NFe_Sharing.Emitente.CEP               := DM_NFe.Emitente.FieldByName('CEP').AsString ;
//    DM.SNFe.NFe_Sharing.Emitente.UF                :=  DM_NFe.Emitente.FieldByName('UF').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Logradouro        :=  DM_NFe.Emitente.FieldByName('ENDERECO').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Numero            :=  DM_NFe.Emitente.FieldByName('NUMERO').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Complemento       :=  DM_NFe.Emitente.FieldByName('COMPLEMENTO').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Bairro            :=  DM_NFe.Emitente.FieldByName('BAIRRO').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Cidade            :=  DM_NFe.Emitente.FieldByName('CIDADE').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.Fone              :=  DM_NFe.Emitente.FieldByName('TELEFONE').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.InscMunicipal     :=  '';
//    DM.SNFe.NFe_Sharing.Emitente.Cnae              :=  '';
//    DM.SNFe.NFe_Sharing.Emitente.CodIBGE           :=  StrToInt(AnsiReplaceStr((oCdsCODCIDADEDESTINATARIO.AsString),'.',''));
//    DM.SNFe.NFe_Sharing.Emitente.CodPais           :=  1058;
//    DM.SNFe.NFe_Sharing.Emitente.Pais              :=  DM_NFe.Emitente.FieldByName('PAIS').AsString;
//    DM.SNFe.NFe_Sharing.Emitente.CRT               :=  DM_NFe.Emitente.FieldByName('CODTIPOREGIME').AsInteger;
//    DM.SNFe.NFe_Sharing.Emitente.CUF               :=  DM_NFe.Emitente.FieldByName('CODUF').AsInteger;
//  {$ENDREGION 'Dados do emitente'}
//
//  {$Region 'Dados destinatario'}
//
//   { DM_NFe.Emitente.Close;
//    DM_NFe.Emitente.SQL.Clear;
//    DM_NFe.Emitente.SQL.Text:='Select * from NFe_CliFor where ID = ';
//    DM_NFe.Emitente.Open;}
//
//
//    if FormataCampo(oCdsCNPJDESTINATARIO.AsString, 'N', 14) then
//      DM.SNFe.NFe_Sharing.Destinatario.CPFCNPJ   := oCdsCNPJDESTINATARIO.AsString;
//
//    if FormataCampo(oCdsIEDESTINATARIO.AsString, 'N', 14) then
//      DM.SNFe.NFe_Sharing.Destinatario.InscEstadual    := oCdsIEDESTINATARIO.AsString;
//
//    if FormataCampo(oCdsDESTINATARIO.AsString, 'C', 60) then
//      DM.SNFe.NFe_Sharing.Destinatario.Nome_Razao:= oCdsDESTINATARIO.AsString;
//
//    if FormataCampo(oCdsENDERECODESTINATARIO.AsString, 'C', 60) then
//     DM.SNFe.NFe_Sharing.Destinatario.Logradouro    := oCdsENDERECODESTINATARIO.AsString;   // logradouro
//    if FormataCampo(oCdsNUMEROENDDESTINATARIO.AsString, 'C', 60) then
//     DM.SNFe.NFe_Sharing.Destinatario.Numero     := oCdsNUMEROENDDESTINATARIO.AsString;  // número, informar S/N quando inexistente para evitar erro de Schema XML
//    if FormataCampo(oCdsCOMPLEMENTODESTINATARIO.AsString, 'C', 60) then
//     DM.SNFe.NFe_Sharing.Destinatario.Complemento    := oCdsCOMPLEMENTODESTINATARIO.AsString;// complemento do endereço, o conteúdo pode ser omitido
//    if FormataCampo(oCdsBAIRRODESTINATARIO.AsString, 'C', 60) then
//     DM.SNFe.NFe_Sharing.Destinatario.Bairro  := oCdsBAIRRODESTINATARIO.AsString;     // bairro
//    if FormataCampo(oCdsCODCIDADEDESTINATARIO.AsString, 'N', 7) then
//     DM.SNFe.NFe_Sharing.Destinatario.CodIBGE    := oCdsCODCIDADEDESTINATARIO.AsInteger;  // código do município - codificação IBGE, deve ser compatível com a UF
//    if FormataCampo(oCdsCIDADEDESTINATARIO.AsString, 'C', 60) then
//     DM.SNFe.NFe_Sharing.Destinatario.Cidade    := oCdsCIDADEDESTINATARIO.AsString;     // nome do município
//    if FormataCampo(oCdsUFDESTINATARIO.AsString, 'C', 2) then
//     DM.SNFe.NFe_Sharing.Destinatario.UF     := oCdsUFDESTINATARIO.AsString;         // sigla da UF
//    if FormataCampo(oCdsCEPDESTINATARIO.AsString, 'N', 8) then
//     DM.SNFe.NFe_Sharing.Destinatario.CEP     := oCdsCEPDESTINATARIO.AsString;        // CEP - sem máscara
//     DM.SNFe.NFe_Sharing.Destinatario.CodPais   := 1058;                              //código do país - deve fixo em 1058 - Brasil
//     DM.SNFe.NFe_Sharing.Destinatario.Pais   := 'Brasil';                            // nome do país (Brasil ou BRASIL)
//    if FormataCampo(oCdsTELEFONEDESTINATARIO.AsString, 'N', 14) then
//     DM.SNFe.NFe_Sharing.Destinatario.Fone    := oCdsTELEFONEDESTINATARIO.AsString;   // número do telefone sem máscara
//
//    DM.SNFe.NFe_Sharing.Destinatario.Fantasia          := DM.SNFe.NFe_Sharing.Destinatario.Nome_Razao;
//    DM.SNFe.NFe_Sharing.Destinatario.Tipo_Contribuinte :=  1;  // ADICIONAR EM CLIENTES
//    DM.SNFe.NFe_Sharing.Destinatario.Consumidor        := 'S'; //(S OU N) OU (SIM OU NAO)
//    DM.SNFe.NFe_Sharing.Destinatario.Estrangeiro       := '';  //(S OU N) OU (SIM OU NAO)
//    DM.SNFe.NFe_Sharing.Destinatario.DocEstrangeiro    := '';
//
//  {$ENDREGION 'dados destinatario}
//
//  {$REGION 'Transportadora}
//
//   { DM.SNFe.NFe_Sharing.Tranportadora.CPFCNPJ           :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.InscEstadual      :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Nome_Razao        :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Fantasia          :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.CEP               :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.UF                :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Logradouro        :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Numero            :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Complemento       :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Bairro            :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Cidade            :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Fone              :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.InscMunicipal     :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.Cnae              :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.CodIBGE           :=  0;
//    DM.SNFe.NFe_Sharing.Tranportadora.CodPais           :=  0;
//    DM.SNFe.NFe_Sharing.Tranportadora.Pais              :=  DM_NFe.Transportadora.FieldByName('CLI_DOC_ESTRANGEIRO').AsString;
//    DM.SNFe.NFe_Sharing.Tranportadora.CRT               :=  0;
//    DM.SNFe.NFe_Sharing.Tranportadora.CUF               :=  31;
//                                                             }
//  {$ENDREGION}
//
//
//
//  {$REGION 'Itens da NFe'}
//
//
//  { DM_NFe.Produto.Close;
//   DM_NFe.Produto.SQL.Clear;
//   DM_NFe.Produto.SQL.Text:='Select * from NFe_CliFor where ID = ';
//   DM_NFe.Produto.Open;}
//
//    oCdsItens.First;
//    REPEAT
//
//      DM.SNFe.Crie_Novo_Produto;
//
//      if FormataCampo(oCdsItensCODPRODUTO.AsString, 'C', 60) then
//       DM.SNFe.Produto.CodProduto     := oCdsItensCODPRODUTO.AsString;
//
//      if FormataCampo(oCdsItensCODEAN.AsString, 'C', 14) then                                 //Atencao este campo deve ser gerado no XML mesmo quando nao tiver valor, neste caso basta tirar o IF q sera gerado como <cEAN />
//       DM.SNFe.Produto.EAN     := oCdsItensCODEAN.AsString;
//
//      if FormataCampo(oCdsItensPRODUTO.AsString, 'C', 120) then
//       DM.SNFe.Produto.Descricao    := oCdsItensPRODUTO.AsString;
//
//      if FormataCampo(oCdsItensNCM.AsString, 'C', 8) then
//       DM.SNFe.Produto.NCM       := oCdsItensNCM.AsString;
//
//      //if FormataCampo(oCdsItensEXTIPI.AsString, 'C', 3) then
//      //My_NFE.InfNFe.Det.Items[0].Prod.EXTIPI   := oCdsItensEXTIPI.AsString;
//
//      if FormataCampo(oCdsItensCFOP.AsString, 'N', 4) then
//         DM.SNFe.Produto.CFOP    := oCdsItensCFOP.AsString;
//
//        if FormataCampo(oCdsItensUNCOMERCIAL.AsString, 'C', 6) then
//         DM.SNFe.Produto.UCom      := oCdsItensUNCOMERCIAL.AsString;
//
//      if FormataCampo(oCdsItensQTDCOMERCIAL.AsString, 'N', 15) then
//         DM.SNFe.Produto.Quantidade    := oCdsItensQTDCOMERCIAL.AsCurrency;
//
//        DM.SNFe.Produto.Valor_Unitario    := oCdsItensVALORPRODUTO.AsCurrency;
//
//      if FormataCampo(oCdsItensCODEANTRIB.AsString, 'C', 14) then
//         DM.SNFe.Produto.EANTRIB  := oCdsItensCODEANTRIB.AsString;
//      if FormataCampo(oCdsItensUNTRIB.AsString, 'C', 6) then
//         DM.SNFe.Produto.Utrib    := oCdsItensUNTRIB.AsString;
//
//       DM.SNFe.Produto.Valor_Frete     :=  oCdsItensVALORFRETE.AsCurrency;
//       DM.SNFe.Produto.Valor_Seguro    :=  oCdsItensVALORSEGURO.AsCurrency;
//       DM.SNFe.Produto.Valor_Desconto  :=  oCdsItensVALORDESCONTO.AsCurrency;
//       DM.SNFe.Produto.Valor_Outro     :=  oCdsItensVALOROUTRAS.AsCurrency;
//       DM.SNFe.Produto.Cest            :=  '';                              // Verificar se há necessidade
//
//       DM.SNFe.Produto.CSON_CST                :=  500; //Localizado em produto
//
//
//       DM.SNFe.Produto.AliqIPI                 := 0; // campo não encontrado    - Localizado em produto
//       DM.SNFe.Produto.AliqPIS                 := 0; // campo não encontrado    - Localizado em produto
//       DM.SNFe.Produto.AliqCOFINS              := 0; // campo não encontrado    - Localizado em produto
//
//       DM.SNFe.Produto.redBaseICMS             := 0; // campo não encontrado    - Localizado em produto
//       DM.SNFe.Produto.redBaseICMSST           := 0; // campo não encontrado (%)
//
//       DM.SNFe.Produto.Origem                  := 0; //Localizado em produto
//
//
//       DM.SNFe.Produto.COFINS                  := 0; // campo não encontrado    - Localizado em produto
//       DM.SNFe.Produto.IPI                     := 0; // campo não encontrado    - Localizado em produto
//       DM.SNFe.Produto.PIS                     := 0; // campo não encontrado    - Localizado em produto
//
//        //Transparencia de Impostos   tabela IBPT
//       DM.SNFe.Produto.NCM_Aliq_Nacional       := 0; // campo não encontrado
//       DM.SNFe.Produto.NCM_Aliq_Importacao     := 0; // campo não encontrado
//       DM.SNFe.Produto.NCM_Aliq_Estadual       := 0; // campo não encontrado
//       DM.SNFe.Produto.NCM_Aliq_Municipal      := 0;// campo não encontrado
//
//      (*
//          campo não encontrado - Caso de diferença de aliquota que te falei do seu cliente
//
//          ICMS_CDIFERENCIADO - no meu criei um campo checkbox = S OU N
//          INT_ICMS_DIFERENCIADO  Campo currency  valor da aliquota a ser usada
//
//
//       if Pesquisa.Integracao.FieldByName('INT_ICMS_CDIFERENCIADO').AsString = 'S' then
//         DM.SNFe.Produto.Aliq_UF_Interna         := Pesquisa.Integracao.FieldByName('INT_ICMS_DIFERENCIADO').AsFloat
//       Else
//         DM.SNFe.Produto.Aliq_UF_Interna         := Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsFloat;
//      *)
//
//
//      DM.SNFe.Produto.Aliq_UF_Interna          := 0; // campo não encontrado aliquota icms dentro do estado  (%)
//      DM.SNFe.Produto.Aliq_UF_Externa          := 0; // campo não encontrado aliquota icms fora do estado (%)
//      DM.SNFe.Produto.FundoCombatePobreza      := 0; // campo não encontrado (%)
//
//      DM.SNFe.Produto.MVA                      := 0; // campo não encontrado    - Localizado em produto
//
//      DM.SNFe.Produto.STICMS                 :='N'; //S ou N campo não encontrado
//      DM.SNFe.Produto.CIncideICMS            :='N'; //S ou N campo não encontrado
//      DM.SNFe.Produto.CIncideIPI             :='N'; //S ou N campo não encontrado
//      DM.SNFe.Produto.CreducaoBaseICMS       :='N'; //S ou N campo não encontrado
//      DM.SNFe.Produto.CreducaoBaseICMSST     :='N'; //S ou N campo não encontrado
//
//
//      DM.SNFe.NFe_Sharing.Itens_NFe.Add(DM.SNFe.Produto);
//
//     //Pesquisa.Itens_nfe.Next;
//       oCdsItens.Next;
//    UNTIL (oCdsItens.Eof);
//
//
//
//  {$ENDREGION 'Itens NFe'}
//
//  {$REGION 'Dados da Fatura'}
//   {NFE_FATURA
//
//    if Pesquisa.Receber.RecordCount > 0 then begin
//
//      REPEAT
//
//        DM.SNFe.Fatura.NumDuplicata   :=  Pesquisa.Receber.FieldByName('REC_NUM_FATURA').AsString;
//        DM.SNFe.Fatura.Vencimento     :=  Pesquisa.Receber.FieldByName('REC_VENCIMENTO').AsDateTime;
//        DM.SNFe.Fatura.Valor          :=  Pesquisa.Receber.FieldByName('REC_VALOR_TOTAL_FATURA').asfloat;
//
//        DM.SNFe.NFe_Sharing.Faturas.Add(DM.SNFe.Fatura);
//
//        Pesquisa.Receber. Next;
//
//      UNTIL (Pesquisa.Receber.Eof);
//    end;    }
//
//  {$ENDREGION 'Dados da Fatura'}


end;

procedure TF_NFeSaidaBt.Ambiente(sAmbiente: string);
begin
  if sAmbiente = 'P' then
  begin
    lbAmbiente.Caption := 'Produção';
    lbAmbiente.Font.Color := clGreen;
  end;

  if sAmbiente = 'H' then
  begin
    lbAmbiente.Caption := 'Homologação(Testes)';
    lbAmbiente.Font.Color := clRed;
  end;

  if (sAmbiente <> 'H') and (sAmbiente <> 'P') then
  begin
    lbAmbiente.Caption := '(Não configurado)';
    lbAmbiente.Font.Color := clYellow;
  end;
end;

function TF_NFeSaidaBt.AnsiReplaceStr(const AText, AFromText,
  AToText: string): string;
begin
  Result := StringReplace(AText, AFromText, AToText, [rfReplaceAll]);
end;

procedure TF_NFeSaidaBt.btConfirmarItemClick(Sender: TObject);
begin
  inherited;

  if ConfirmarLancamentoItem then
    // btSalvarNota.Click;

end;

procedure TF_NFeSaidaBt.btDestClick(Sender: TObject);
begin
  inherited;

  if (oCds.State <> dsEdit) and (oCds.State <> dsInsert) then
    exit;

  F_ConsultaClientes := TF_ConsultaClientes.Create(Application);
  F_ConsultaClientes.IDPesquisa:= EditCodNomeProduto.Text;
  F_ConsultaClientes.ShowModal;
  FreeAndNil(F_ConsultaClientes);

  if DM.sqlCliFor.Active = true then
  begin

    oCdsIDDestinatario.Value := DM.sqlCidades.FieldByName('ID').Value;
    oCdsDestinatario.Value := DM.sqlCidades.FieldByName('NomeRazao').Value;
    oCdsCNPJDestinatario.Value := DM.sqlCidades.FieldByName('CGC').Value;

    // Se for pessoa fisica então o ie é ISENTO
    if Length(oCdsCNPJDestinatario.Value) <= 11 then
      oCdsIEDestinatario.Value := 'ISENTO'
    else
     oCdsIEDESTINATARIO.Value := DM.sqlCidades.FieldByName('IERG').Value;

    oCdsEnderecoDestinatario.Value := DM.sqlCidades.FieldByName('Endereco').Value;
    oCdsNumeroEndDestinatario.Value := DM.sqlCidades.FieldByName('Numero').Value;
    oCdsBairroDestinatario.Value := DM.sqlCidades.FieldByName('Bairro').Value;

    oCdsCepDestinatario.Value := DM.sqlCidades.FieldByName('Cep').Value;

    oCdsCidadeDestinatario.Value := DM.sqlCidades.FieldByName('Cidade').Value;
    oCdsCodCidadeDestinatario.Value := DM.sqlCidades.FieldByName('CodCidade').Value;
    oCdsUFDestinatario.Value := DM.sqlCidades.FieldByName('UF').Value;
    oCdsCodUFDestinatario.Value := DM.sqlCidades.FieldByName('CodUF').Value;

  end;

  DM.sqlCliFor.close;



  MudaCFOPInterestadual;
end;

procedure TF_NFeSaidaBt.btnAssXMLClick(Sender: TObject);
var
 nfe_assinada, nfe_nao_assinada: String;
 UTF8_Str: String;
begin
//   if not DM.StatusServico('123') = True then
//   begin
//
//   end
//   else
//   begin
//      //Assina a NF
//   end;


 {$REGION ' Antigo'}

 (* inherited;
 //Configura o OpenDialog
 opendialog1.InitialDir := ExtractFileDir(application.ExeName);

 //Solicita que usuário indique o caminho do arquivo
 if OpenDialog1.Execute then
  begin
   nfe_filename := OpenDialog1.FileName;

   //Abre o arquivo em modo WebBrowsing e em modo texto
//ebBrowser1.Navigate(nfe_filename);
   memo1.Lines.LoadFromFile(nfe_filename);

   //Habilitar esta linha para:
   //Garantir que toda acentuação seja removida
   //Caracteres inválidos como quebras de linha indevidas sejam removidos
  //f checkbox1.Checked then
    memo1.lines.Text := RemoveAcento(memo1.lines.Text);
  end;

 try
  //testa se memo1 preenchido
  if memo1.lines.Count > 0 then
   begin
    nfe_nao_assinada := Memo1.Lines.text;

    //chama a função de assinatura passando como parâmetro o conteúdo do arquivo selecionado
    //Esta função NÃO é compatível para ser chamada por outras linguagens e plataformas de programação
    //Esta função NÃO é compatível para ser chamada por inferiores ao Delphi6
//    nfe_assinada := fncAssinarXML(Memo1.Lines); ******

    if nfe_assinada[1] <> '-' then                 //Testa se NFe asinada corretamente
     begin
      //se nenhum erro ocorreu o retorno é a NFe assinada
      //Atenção para salvar em formato ANSI remover caracteres iniciais do resultado assinado
      memo2.Lines.Text := copy(nfe_assinada, 4, length(nfe_assinada));

      memo1.Lines.Text := nfe_nao_assinada;

      showmessage('NFe assinada com sucesso');
     end
    else
     memo2.Lines.Text := nfe_assinada;            //Apresenta erro/advertência ao usuário retornado pela dll
   end
  else
   showmessage('Conteúdo inválido. Selecione o arquivo XML da NFe')
 except
  showmessage('Erro durante o processo de assinatura. Verifique!');
 end;

 try
  //configura o SaveDialog
  savedialog1.InitialDir := ExtractFileDir(application.ExeName);
  SaveDialog1.FileName := ExtractFileName(nfe_filename);

  //Realiza o salvamento do arquivo conforme path escolhido pelo usuário
  if savedialog1.Execute then
   begin
    //Alterações para realizar salvamento em formato UTF-8
    //UTF8_Str := Memo2.Lines.Text;
    //UTF8_Str := UTF8Encode(UTF8_Str);
    //UTF8_Str := char($EF) + char($BB) + char($BF) + UTF8_Str;   //adding BOM
    //Memo2.Lines.Text := UTF8_Str;

    //Salvando o arquivo
    memo2.Lines.SaveToFile(savedialog1.filename);

    //Testa tamanho do arquivo final
    //Conforme Manual de Integração da SEFAZ o tamanho máximo dos arquivos para transmissão é de 500Kb!
    if Tamanho_Arquivo(savedialog1.filename) > 500 then
     showmessage('ATENÇÃO: Tamanho máximo de 500KB por arquivo excedido. Este arquivo não poderá ser trasmitido');
   end;
 except
  showmessage('Erro durante o salvamento do arquivo de NFe assinado');
  exit;
 end;

 showmessage('Arquivo de NFe salvo com sucesso.' + #13#10 +
             'Atenção: Para transmitir arquivos de NFe é preciso antes gerar um arquivo de Lote contendo uma ou mais NFe assinadas' + #13#10 +
             'Consulte o demo localizado na pasta Geracao_XML\enviNFe para informações sobre geração de lotes de NFe')

  *)
 {$ENDREGION}
end;

procedure TF_NFeSaidaBt.btnXMLClick(Sender: TObject);
var
   temp_int, x, i    : Integer;
   tpNF, tpAmb       : string;
   ConverteOk        : Boolean;
   StatusNota        : Integer;
   NumeroLote        : String;
   MsgRetorno        : String;
   ErrosRegraNegocio : String;
   MsgMotivoDenegacao: String;
begin
   if oCds.State <> dsEdit then
      btnEditar.OnClick(Sender); // ativação modo editar

   DM.ACBrNFe.NotasFiscais.Clear;
   with DM.ACBrNFe.NotasFiscais.Add.NFe do
   begin
      // Ambiente
      Ide.tpAmb     := DM.ACBrNFe.Configuracoes.WebServices.Ambiente;
      Ide.verProc   := '1.0.0.0';
      Ide.tpImp     := TpcnTipoImpressao.tiRetrato;
      Ide.tpEmis    := TpcnTipoEmissao.teNormal;
      Ide.tpNF      := TpcnTipoNFe.tnSaida;
      Ide.finNFe    := TpcnFinalidadeNFe.fnNormal;
      Ide.indPag    := TpcnIndicadorPagamento.ipVista;

      // Identificação da nota fiscal eletrônica
      Ide.modelo    := 55;
      Ide.cNF       := 1;
      Ide.nNF       := 1;
      Ide.serie     := 1;
      Ide.natOp     := 'VENDA DE MERCADORIA';
      Ide.dEmi      := Now;
      Ide.dSaiEnt   := Date;
      Ide.hSaiEnt   := Time;
      Ide.cUF       := UFtoCUF('SP');
      Ide.cMunFG    := 3505708;

    // identificação do EMITENTE
    Emit.CRT               := TpcnCRT.crtRegimeNormal;
    Emit.xNome             := 'RAZAO SOCIAL DO EMITENTE';
    Emit.xFant             := 'NOME FANTASIA DO EMITENTE';
    Emit.CNPJCPF           := '11222333000155';
    Emit.IE                := '1234567890';
    Emit.IEST              := '';
    Emit.CNAE              := '0';
    Emit.IM                := '';
    Emit.EnderEmit.fone    := '1122223333';
    Emit.EnderEmit.xLgr    := 'ENDERECO DO EMITENTE';
    Emit.EnderEmit.nro     := 'SN';
    Emit.EnderEmit.xCpl    := 'COMPLEMENTO';
    Emit.EnderEmit.xBairro := 'BAIRRO';
    Emit.EnderEmit.xMun    := 'ARAXA';
    Emit.EnderEmit.cMun    := 3505708;
    Emit.EnderEmit.UF      := 'MG';
    Emit.EnderEmit.CEP     := 11222333;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';

    // informações do destinatário da nota fiscal
    Dest.xNome             := 'NOME OU RAZAO SOCIAL DO DESTINATARIO';
    Dest.CNPJCPF           := '11122233399';
    Dest.ISUF              := '';
    Dest.EnderDest.Fone    := '1122223333';
    Dest.EnderDest.xLgr    := 'ENDERECO DO DESTINATARIO';
    Dest.EnderDest.nro     := 'SN';
    Dest.EnderDest.xCpl    := '';
    Dest.EnderDest.xBairro := 'BAIRRO';
    Dest.EnderDest.xMun    := 'ARAXA';
    Dest.EnderDest.cMun    := 3104007;
    Dest.EnderDest.UF      := 'MG';
    Dest.EnderDest.CEP     := 11222333;
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'Brasil';
    Dest.indIEDest         := inNaoContribuinte;
    Dest.IE                := '';

    if Dest.EnderDest.UF = 'EX' then
      Ide.idDest := doExterior
    else
    begin
      if Emit.EnderEmit.UF = Dest.EnderDest.UF then
        Ide.idDest := doInterna
      else
        Ide.idDest := doInterestadual;
    end;

    // Informações do frete
    Transp.modFrete := TpcnModalidadeFrete.mfSemFrete;

    // Informações dos volumes tranportados
    Transp.Transporta.xNome    := '';
    Transp.Transporta.CNPJCPF  := '';
    Transp.Transporta.IE       := '';
    Transp.Transporta.xEnder   := '';
    Transp.Transporta.xMun     := '';
    Transp.Transporta.UF       := '';

    // Informações do veículo
    Transp.veicTransp.placa := '';
    Transp.veicTransp.UF    := '';
    Transp.veicTransp.RNTC  := '';

    // Volumes transportados ( pode ser mais de um, faça um novo add para cada um
    Transp.Vol.Clear;
    for I := 1 to 3 do
    begin
      with Transp.Vol.Add do
      begin
        qVol  := 1;
        esp   := 'especie';
        marca := 'marca';
        nVol  := 'volume';
        pesoL := 1.234;
        pesoB := 1.234;
      end;
    end;

    // Totais da nota fiscal
    Total.ICMSTot.vBC        := 0.00;
    Total.ICMSTot.vICMS      := 0.00;
    Total.ICMSTot.vFrete     := 0.00;
    Total.ICMSTot.vSeg       := 0.00;
    Total.ICMSTot.vOutro     := 0.00;
    Total.ICMSTot.vDesc      := 0.00;
    Total.ICMSTot.vBCST      := 0.00;
    Total.ICMSTot.vST        := 0.00;
    Total.ICMSTot.vIPI       := 0.00;
    Total.ICMSTot.vPIS       := 0.00;
    Total.ICMSTot.vCOFINS    := 0.00;
    Total.ICMSTot.vProd      := 0.00;
    Total.ICMSTot.vNF        := 0.00;

    // informações complementares
    InfAdic.infCpl := 'observações que deseja informar na nota';

    // itens da nota fiscal ( faça uma .add para cada item da nota )
    Det.Clear;
    for I := 1 to 3 do // simulando a adição de 3 itens
    begin
      with Det.Add do
      begin
        Prod.nItem    := I;
        Prod.cProd    := 'Cod123456789';
        Prod.cEAN     := '7894561233214';
        Prod.xProd    := 'DESCRICAO DO PRODUTO';
        Prod.NCM      := '99';
        Prod.EXTIPI   := '';
        Prod.CFOP     := '5102';
        Prod.uCom     := 'UN';
        Prod.qCom     := 1;
        Prod.vUnCom   := 1.23;
        Prod.vProd    := Prod.qCom * Prod.vUnCom;
        Prod.cEANTrib := '7894561233214';
        Prod.uTrib    := 'UN';
        Prod.qTrib    := 1;
        Prod.vUnTrib  := 1.23;
        Prod.vFrete   := 0.00;
        Prod.vSeg     := 0.00;
        Prod.vOutro   := 0.00;
        Prod.vDesc    := 0.00;

        infAdProd     := 'OBSERVAÇÃO ADICIONAL DO PRODUTO QUANDO DESEJAR';

        // Tributação do ICMS
        with Imposto do
        begin
          // origem da mercadoria
          ICMS.orig := TpcnOrigemMercadoria.oeNacional;

          // situação tributária
          if Emit.CRT = crtSimplesNacional then
          begin
            // campos do simples nacional
            ICMS.CSOSN := StrToCSOSNIcms(ConverteOk, '102');
            if not ConverteOk then
              raise Exception.Create('Situação tributária no simples nacional desconhecida.');

            ICMS.pCredSN     := 0.00;
            ICMS.vCredICMSSN := 0.00;
          end
          else
          begin
            // icms normal
            ICMS.CST := StrToCSTICMS(ConverteOk, '00');
            if not ConverteOk then
              raise Exception.Create('Situação tributária desconhecida.');

            ICMS.modBC  := dbiValorOperacao;
            ICMS.vBC    := 1.23;
            ICMS.pICMS  := 7.00;
            ICMS.vICMS  := 0.09;
            ICMS.pRedBC := 0.00;
          end;

          // icms st
          ICMS.modBCST := dbisMargemValorAgregado;
          ICMS.vBCST   := 0.00;
          ICMS.pICMSST := 0.00;
          ICMS.vICMSST := 0.00;
          ICMS.pMVAST  := 0.00;
          ICMS.pRedBCST:= 0.00;

          // imposto do IPI
          IPI.CST := StrToCSTIPI(ConverteOk, '99');
          if not ConverteOk then
            raise Exception.Create('Situação tributária do IPI desconhecida.');

          IPI.cEnq  := '';
          IPI.vBC   := 0.00;
          IPI.pIPI  := 0.00;
          IPI.vIPI  := 0.00;

          // imposto do pis
          PIS.CST := StrToCSTPIS(ConverteOk, '07');
          if not ConverteOk then
            raise Exception.Create('Situação tributária do PIS desconhecida.');

          PIS.vBC  := 0.00;
          PIS.pPIS := 0.00;
          PIS.vPIS := 0.00;

          // imposto do cofins
          COFINS.CST := StrToCSTCOFINS(ConverteOk, '07');
          if not ConverteOk then
            raise Exception.Create('Situação tributária do COFINS desconhecida.');

          COFINS.vBC     := 0.00;
          COFINS.pCOFINS := 0.00;
          COFINS.vCOFINS := 0.00;
        end;
      end;
    end;
  end;

  // validar o schema da NFe
  try
    DM.ACBrNFe.NotasFiscais.Validar;
  except
    on E: Exception do
    begin
//      raise Exception.Create(
//        IfThen(
//          DM.ACBrNFe.NotasFiscais.Items[0].ErroValidacao <> '',
//          DM.ACBrNFe.NotasFiscais.Items[0].ErroValidacao,
//          E.Message
//        )
//      );
    end;
  end;

  // validação das regras de negócio, as validações seguem o manual da NF-e
  DM.ACBrNFe.NotasFiscais.ValidarRegrasdeNegocios(ErrosRegraNegocio);
  if ErrosRegraNegocio <> '' then
    raise Exception.Create(ErrosRegraNegocio);

  // Criar novo número de lote
  NumeroLote := FormatDateTime('yyyymmddhhmmss', NOW);

  // enviar o lote de notas fiscias
  if DM.ACBrNFe.Enviar(NumeroLote, False) then
  begin
    // guardar o status da nota atual
    StatusNota := DM.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat;

    MsgRetorno := '';
    if ValueIn(StatusNota, [100, 150, 110, 301, 302]) then
    begin
      // dados que considero importante gravar no banco de dados
      // ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF;
      // ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie;
      // ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
      // ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      // ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;
      // ACBrNFe1.NotasFiscais.Items[0].XML;
      // ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.xMotivo;

      // efetuar o tratamento das notas conforme o status
      case StatusNota of
        100, 150:
          begin
            MsgRetorno :=
              'Nota fiscal autorizada:' + sLineBreak +
              Format('Número: %9.9d    Série: %3.3d    Data: %s', [
                  dM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF,
                  dM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.serie,
                  FormatDateTime('dd/mm/yyyy', DM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi)
              ]) + sLineBreak;
          end;

        110, 301, 302:
          begin
            case StatusNota of
              110: MsgMotivoDenegacao := '110 - Nota fiscal denegada';
              301: MsgMotivoDenegacao := '301 - Irregularidade fiscal do emitente';
              302: MsgMotivoDenegacao := '302 - Irregularidade fiscal do destinatário';
            end;

            MsgRetorno :=
              Format('Número: %9.9d    Série: %3.3d    Data: %s    Motivo: %s', [
                  dM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF,
                  dM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.serie,
                  FormatDateTime('dd/mm/yyyy', dM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi),
                  MsgMotivoDenegacao
              ]) + sLineBreak;
          end;
      end;
    end
    else
    begin
      MsgRetorno :=
        Format('Número: %9.9d    Série: %3.3d    Data: %s    ', [
            DM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF,
            DM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.serie,
            FormatDateTime('dd/mm/yyyy', DM.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi)
        ]) +
        String(DM.ACBrNFe.NotasFiscais.Items[0].Msg) +
        sLineBreak;
    end;

    // atualizar tela
    if MsgRetorno <> '' then
      Application.MessageBox(PWideChar(MsgRetorno), 'Envio NF-e', MB_ICONINFORMATION + MB_OK);
  end;




{$REGION ' Antigo'}
//  Alimenta_Componente;

  //  DM.SNFe.Gerar_NFe(true);
//  DM.SNFe.NotasFiscais.Assinar;
//  DM.SNFe.NotasFiscais.Validar;
//  DM.SNFe.Enviar(4);


  //SEU CODIGO
 (*
  Gera_Chave;       // ativação automática do cálculo do digito verificador
  Versao_NFe;       // nº versao da NF ;
  Finalidade_NFe;   // código da finalidade de emissão da NF-e

 try
  //Cálculo do campo Id
  //Consultar página 15 do documento Manual_de_Integracao _Contribuinte_versao_203 _2007_11_30.pdf sobre formato do campo Id
  //A assinatura do Contribuinte na NF-e será feita na TAG <infNFe> identificada pelo atributo
  //Id, cujo conteúdo deverá ser um identificador único (chave de acesso) precedido do literal
  //‘NFe’ para cada NF-e, conforme leiaute descrito no Anexo I.
  //Button9Click(sender);         //Calcula digito verificador da NF-e
  //button7.click;                //Calcula chave de acesso da NF-e
  //ValueListEditor8.Values['Id'] := 'NFe' + edit1.Text;

  PageGrid.ActivePageIndex := 0;

  My_NFE := NewNFe;

  //Adição de atributos padrões
  My_NFE.OwnerDocument.Encoding := 'UTF-8';

  //TODO: Parametros comentado pois é dispensavel na maioria das UFs
  //My_consStatServ.SetAttributeNS('xmlns:ds', 'http://www.portalfiscal.inf.br/nfe', 'http://www.w3.org/2000/09/xmldsig#');
  //My_consStatServ.SetAttributeNS('xmlns:xsi', 'http://www.portalfiscal.inf.br/nfe', 'http://www.w3.org/2001/XMLSchema-instance');

  //My_NFE.InfNFe

   My_NFE.InfNFe.Versao      := vNF;                                                 // Versão da NFe
   My_NFE.InfNFe.Id          := oCdsCHAVEACESSO.Value;

  //My_NFE.InfNFe.Ide
   My_NFE.InfNFe.Ide.CUF     := oCdsEmitenteCODUF.AsString;
   My_NFE.InfNFe.Ide.CNF     := IntToStr(cNF);                                  //Documento Manual_de_Integracao _Contribuinte_versao_203 _2007_11_30.pdf informa tamanhos diferen`tes para o mesmo campo! tamanho 8 e 9 constam no documento! tamanho 8 dá erro!
   My_NFE.InfNFe.Ide.NatOp   := AnsiReplaceStr((oCdsCFOP.AsString),'.','');


   My_NFE.InfNFe.Ide.IndPag  := '0';                                            //indPag - Indicador da forma de pagamento
   My_NFE.InfNFe.Ide.Mod_    := oCdsEmitenteMODELODANFE.AsString;
   My_NFE.InfNFe.Ide.Serie   := oCdsSERIE.AsString;                             //preencher com zeros na hipótese de a NF-e não possuir série. (v2.0) Série 890-899 de uso exclusivo para emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco (procEmi=2). (v2.0) Serie 900-999 – uso exclusivo de NF-e emitidas no SCAN. (v2.0)
   My_NFE.InfNFe.Ide.NNF     := oCdsNNOTA.AsString;

{********-------------------------------------***********
 Nesta nova versão do leiaute, serão aceitos os horários de qualquer região do mundo (faixa de
 horário UTC de -11 a +12) e não só as faixas de horário do Brasil.
 Exemplo: no formato UTC para os campos de Data-Hora, "TZD" pode ser -02:00 (Fernando de Noronha), -03:00 (Brasília) ou -04:00 (Manaus), no
 horário de verão serão -01:00, -02:00 e -03:00. Exemplo: "2010-08-19T13:00:15-03:00".
********-------------------------------------***********}

  if FormataCampo(oCdsDATAEMISSAO.AsString, 'D', -1) then              //Formato “AAAA-MMDDTHH:MM:SS”
//  if oCdsDATAEMISSAO.AsString <> '' then
   My_NFE.InfNFe.Ide.DhEmi    := (FormatDateTime('YYYY-MM-DD', strtodatetime(oCdsDATAEMISSAO.AsString)) + 'T' + FormatDateTime('HH:NN:SS', strtodatetime(oCdsDATAEMISSAO.AsString))+'-03:00');
   if FormataCampo(oCdsDATAENTRADASAIDA.AsString, 'D', -1) then           //Formato “AAAA-MMDDTHH:MM:SS”
//  if oCdsDATAENTRADASAIDA.AsString <> '' then
   My_NFE.InfNFe.Ide.DhSaiEnt := (FormatDateTime('YYYY-MM-DD', strtodatetime(oCdsDATAENTRADASAIDA.AsString)) + 'T' + FormatDateTime('HH:NN:SS', strtodatetime(oCdsDATAENTRADASAIDA.AsString))+ '-03:00');

  if oCdsEntradaSaida.AsString = 'S' then
    tpNF := '1';
  if oCdsEntradaSaida.AsString = 'E' then
    tpNF := '0';

   My_NFE.InfNFe.Ide.TpNF     := tpNF;                                          // Tipo de Operação da NF-e: 0 - entrada e 1 - saída.
   My_NFE.InfNFe.Ide.IdDest   := oCdsIDDESTINATARIO.AsString;
   My_NFE.InfNFe.Ide.CMunFG   := AnsiReplaceStr((oCdsCODCIDADEDESTINATARIO.AsString),'.','');

    //My_NFE.InfNFe.Ide
  //if FormataCampo(ValueListEditor1, 'tpImp', 'N', 1) then
   My_NFE.InfNFe.Ide.TpImp := '1';                                              // informar o formato de impressão do DANFE: 0 - Sem geração de DANFE;1 - DANFE normal, Retrato;2 - DANFE normal, Paisagem;3 - DANFE Simplificado;4 - DANFE NFC-e;5 - DANFE NFC-e em mensagem eletrônica (o envio de mensagem eletrônica pode ser feita de forma simultânea com a impressão do DANFE; usar o tpImp - 5 quando esta for a única forma de disponibilização do DANFE).
  //if FormataCampo(ValueListEditor1, 'tpEmis', 'N', 1) then
   My_NFE.InfNFe.Ide.TpEmis := '1';                                             // informar o código da forma de emissão: 1 - Emissão normal (não em contingência);2 - Contingência FS-IA, com impressão do DANFE em formulário de segurança;3 - Contingência SCAN (Sistema de Contingência do Ambiente Nacional) Desativação prevista para 30/06/2014;4 - Contingência DPEC (Declaração Prévia da Emissão em Contingência);5 - Contingência FS-DA, com impressão do DANFE em formulário de segurança;6 - Contingência SVC-AN (SEFAZ Virtual de Contingência do AN);7 - Contingência SVC-RS (SEFAZ Virtual de Contingência do RS);9 - Contingência off-line da NFC-e (as demais opções de contingência são válidas também para a NFC-e);
  if FormataCampo(cDV, 'N', 1) then
   My_NFE.InfNFe.Ide.CDV := cDV;

  if oCdsEmitenteAMBIENTE.AsString = 'P' then
    tpAmb := '1';
  if oCdsEmitenteAMBIENTE.AsString = 'H' then
    tpAmb := '2';

  if FormataCampo(tpAmb, 'N', 1) then
   My_NFE.InfNFe.Ide.TpAmb := tpAmb;                                            // informar o código de identificação do Ambiente: 1 - Produção; 2 - Homologação
  if FormataCampo(oCdsFINALIDADENOTA.AsString, 'N', 1) then
   My_NFE.InfNFe.Ide.FinNFe := oCdsFINALIDADENOTA.AsString;                     // informar o código da finalidade de emissão da NF-e: 1 - NF-e normal;2 - NF-e complementar;3 - NF-e de ajuste;4 - Devolução
//  if FormataCampo(ValueListEditor1, 'IndFinal', 'N', 1) then
   My_NFE.InfNFe.Ide.IndFinal := '0';                                           // informar o indicador de operação com Consumidor final: 0 - Não; 1 - Consumidor final;
  //if FormataCampo(ValueListEditor1, 'IndPres', 'N', 1) then
   My_NFE.InfNFe.Ide.IndPres := '1';                                            // informar o indicador de presença do comprador no estabelecimento comercial no momento da operação:0 - Não se aplica (por exemplo, Nota Fiscal complementar ou de ajuste);1 - Operação presencial;2 - Operação não presencial, pela Internet;3 - Operação não presencial, Teleatendimento;4 - NFC-e em operação com entrega a domicílio;9 - Operação não presencial, outros.
  //if FormataCampo(ValueListEditor1, 'procEmi', 'N', 1) then
   My_NFE.InfNFe.Ide.ProcEmi := '0';                                            // informar o código de identificação do processo de emissão da NF-e: Identificador do processo de emissão da NF-e:0 - emissão de NF-e com aplicativo do contribuinte;1 - emissão de NF-e avulsa pelo Fisco;2 - emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco; 3 - emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco.
  //if FormataCampo(ValueListEditor1, 'verProc', 'C', 20) then
   My_NFE.InfNFe.Ide.VerProc := 'Projeto NFe 1.0';                              // informar a versão do processo de emissão da NF-e utilizada (aplicativo emissor de NF-e).

{ // IMPORTANTE - CAMPOS abaixo não obrigatorios;
  //if FormataCampo(ValueListEditor1, 'dhCont', 'D', -1) then                   //Formato “AAAA-MMDDTHH:MM:SS”
  if ValueListEditor1.Values['DhCont'] <> '' then
    My_NFE.InfNFe.Ide.DhCont := (FormatDateTime('YYYY-MM-DD', strtodatetime(ValueListEditor1.Values['DhCont'])) + 'T' + FormatDateTime('HH:NN:SS', strtodatetime(ValueListEditor1.Values['DhCont']))+ '-03:00');
      //informar a data e hora de entrada em contingência no padrão UTC - Universal Coordinated Time, onde TZD pode ser -02:00 (Fernando de Noronha), -03:00 (Brasília) ou -04:00(Manaus), no horário de verão serão - 01:00, -02:00 e -03:00. Ex.: 2010-08-19T13:00:15-03:00.
      //Importante: dhCont e xJust devem ser ambos informados ou omitidos.
  if FormataCampo(ValueListEditor1, 'xJust', 'C', 256) then
    My_NFE.InfNFe.Ide.XJust := ValueListEditor1.Values['xJust'];
      // informar a justificativa de entrada em contingência, deve ser informado sempre que tpEmis for diferente de 1.
      // Importante: dhCont e xJust devem ser ambos informados ou omitidos.
}

  //Neste ponto o Add esta comentado indicando q nao havera NFref
  //Para os casos onde ha NFref faz-se quantos add forem necessarios e o acesso ao item do array e' feito conforme o indice desejado.
  //Note que o no demo acessamos sempre o indice 0 (zero) nas linhas seguinte, mas na pratica isso pode ser feito em um loop usando uma variavel X no lugar do 0(zero) para quantos itens houver no seu banco de dados!
  //My_NFE.InfNFe.Ide.NFref.Add;                      //Grupo com as informações das NF/NF-e /NF de produtor/ Cupom Fiscal referenciadas. Esta informação será utilizada nas hipóteses previstas na legislação. (Ex.: Devolução de Mercadorias, Substituição de NF cancelada, Complementação de NF, etc.). (v.2.0)

  if My_NFE.InfNFe.Ide.NFref.Count > 0 then
   begin
//  if FormataCampo(ValueListEditor84, 'refNFe', 'N', 44) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefNFe := '';                             // Funcionalidade para gerar o XML com a informação da NF-e referenciada.
    //My_NFE.InfNFe.Ide.NFref.Items[0].RefNF                                    //Grupo com as informações NF modelo 1/1A referenciada
   if FormataCampo(oCdsEmitenteCODUF.AsString, 'N', 2) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefNF.CUF   := oCdsEmitenteCODUF.AsString;
   if FormataCampo(oCdsDATAEMISSAO.AsString, 'N', 4) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefNF.AAMM  := formatdatetime('YYMM', strtodatetime(oCdsDATAEMISSAO.AsString));
   if FormataCampo(oCdsEmitenteCNPJ.AsString, 'C', 14) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefNF.CNPJ  := oCdsEmitenteCNPJ.AsString;
   if FormataCampo(oCdsEmitenteMODELODANFE.AsString, 'N', 2) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefNF.Mod_  :=  oCdsEmitenteMODELODANFE.AsString;
   if FormataCampo(oCdsSERIE.AsString, 'N', 3) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefNF.Serie := oCdsSERIE.AsString;
   if FormataCampo(oCdsNNOTA.AsString, 'N', 9) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefNF.NNF   := oCdsNNOTA.AsString;

    //My_NFE.InfNFe.Ide.NFref.Items[0]
//    if FormataCampo(ValueListEditor84, 'refCTe', 'N', 44) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefCTe    := '';                          //**Funcionalidade para gerar o XML com a informação do CT-e referenciado.

{ ***** Funcionalidade para gerar o XML com a informação do Cupom Fiscal referenciado. ****
    //My_NFE.InfNFe.Ide.NFref.Items[0].RefECF
//    if FormataCampo(ValueListEditor85, 'mod', 'C', 2) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefECF.Mod_    := ValueListEditor85.Values['mod'];
    if FormataCampo(ValueListEditor85, 'nECF', 'N', 3) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefECF.NECF    := ValueListEditor85.Values['nECF'];
    if FormataCampo(ValueListEditor85, 'nCOO', 'N', 6) then
     My_NFE.InfNFe.Ide.NFref.Items[0].RefECF.NCOO    := ValueListEditor85.Values['nCOO'];
   end;
} //*** Funcionalidade para gerar o XML com a informação do Cupom Fiscal referenciado. ****
   end;

//***** Informações do Emitente ****
  //My_NFE.InfNFe.Emit
  if FormataCampo(oCdsEmitenteCNPJ.AsString, 'N', 14) then
   My_NFE.InfNFe.Emit.CNPJ  := oCdsEmitenteCNPJ.AsString;                       //CNPJ do emitente sem máscara de formatação
//  if FormataCampo(ValueListEditor6, 'CPF', 'C', 11) then
   My_NFE.InfNFe.Emit.CPF := '';                                                //CPF do emitente, uso exclusivo do Fisco
  if FormataCampo(oCdsEmitenteNOMERAZAOSOCIAL.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.XNome := oCdsEmitenteNOMERAZAOSOCIAL.AsString;            //Razão social do emitente, evitar caracteres acentuados e &
  if FormataCampo(oCdsEmitenteNOMEFANTASIA.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.XFant := oCdsEmitenteNOMEFANTASIA.AsString;               //Nome fantasia
  if FormataCampo(oCdsEmitenteIE.AsString, 'C', 14) then
   My_NFE.InfNFe.Emit.IE    := oCdsEmitenteIE.AsString;                         //Inscrição Estadual do emitente sem máscara
//  if FormataCampo(ValueListEditor6, 'IEST', 'C', 14) then
//   My_NFE.InfNFe.Emit.IEST  := '';                                              //Inscrição Estadual do ST
  if FormataCampo(oCdsEmitenteIM.AsString, 'C', 15) then
   My_NFE.InfNFe.Emit.IM    := oCdsEmitenteIM.AsString;                         //Inscrição Municipal
  if FormataCampo(oCdsEmitenteCNAE.AsString, 'C', 7) then
   My_NFE.InfNFe.Emit.CNAE  := oCdsEmitenteCNAE.AsString;                       //Código do CNAE
  if FormataCampo(oCdsEmitenteCODTIPOREGIME.AsString, 'N', 1) then
   My_NFE.InfNFe.Emit.CRT   := oCdsEmitenteCODTIPOREGIME.AsString;              //Código do CRT: 1-Simples Nacional; 2-Simples Nacional - excesso de sublimite de receita bruta; 3 - Regime Normal.

//***** Informações do Endereço do Emitente ****
  //My_NFE.InfNFe.Emit.EnderEmit
  if FormataCampo(oCdsEmitenteENDERECO.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.EnderEmit.XLgr := oCdsEmitenteENDERECO.AsString;
  if FormataCampo(oCdsEmitenteNUMERO.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.EnderEmit.Nro :=  oCdsEmitenteNUMERO.AsString;
  if FormataCampo(oCdsEmitenteCOMPLEMENTO.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.EnderEmit.XCpl := oCdsEmitenteCOMPLEMENTO.AsString;
  if FormataCampo(oCdsEmitenteBAIRRO.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.EnderEmit.XBairro := oCdsEmitenteBAIRRO.AsString;
  if FormataCampo(oCdsEmitenteCODCIDADE.AsString, 'N', 7) then
   My_NFE.InfNFe.Emit.EnderEmit.CMun := oCdsEmitenteCODCIDADE.AsString;
  if FormataCampo(oCdsEmitenteCIDADE.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.EnderEmit.XMun := oCdsEmitenteCIDADE.AsString;
  if FormataCampo(oCdsEmitenteUF.AsString, 'C', 2) then
   My_NFE.InfNFe.Emit.EnderEmit.UF := oCdsEmitenteUF.AsString;
  if FormataCampo(oCdsEmitenteCEP.AsString, 'N', 8) then
   My_NFE.InfNFe.Emit.EnderEmit.CEP := AnsiReplaceStr((oCdsEmitenteCEP.AsString),'.','');
  if FormataCampo(oCdsEmitenteCODPAIS.AsString, 'N', 4) then
   My_NFE.InfNFe.Emit.EnderEmit.CPais := oCdsEmitenteCODPAIS.AsString;
  if FormataCampo(oCdsEmitentePAIS.AsString, 'C', 60) then
   My_NFE.InfNFe.Emit.EnderEmit.XPais := oCdsEmitentePAIS.AsString;
  if FormataCampo(oCdsEmitenteTELEFONE.AsString, 'N', 14) then
   My_NFE.InfNFe.Emit.EnderEmit.Fone := oCdsEmitenteTELEFONE.AsString;

{ Não Aplica para este tipo de emissão de NFe
//O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco

  //My_NFE.InfNFe.Avulsa
  if FormataCampo(ValueListEditor7, 'CNPJ', 'C', 14) then
   My_NFE.InfNFe.Avulsa.CNPJ    := ValueListEditor7.Values['CNPJ'];
  if FormataCampo(ValueListEditor7, 'xOrgao', 'C', 60) then
   My_NFE.InfNFe.Avulsa.XOrgao  := ValueListEditor7.Values['xOrgao'];
  if FormataCampo(ValueListEditor7, 'matr', 'C', 60) then
   My_NFE.InfNFe.Avulsa.Matr    := ValueListEditor7.Values['matr'];
  if FormataCampo(ValueListEditor7, 'xAgente', 'C', 60) then
   My_NFE.InfNFe.Avulsa.XAgente := ValueListEditor7.Values['xAgente'];
  if FormataCampo(ValueListEditor7, 'fone', 'N', 14) then
   My_NFE.InfNFe.Avulsa.Fone    := ValueListEditor7.Values['fone'];
  if FormataCampo(ValueListEditor7, 'UF', 'C', 2) then
   My_NFE.InfNFe.Avulsa.UF      := ValueListEditor7.Values['UF'];
  if FormataCampo(ValueListEditor7, 'nDAR', 'C', 60) then
   My_NFE.InfNFe.Avulsa.NDAR    := ValueListEditor7.Values['nDAR'];
  //if FormataCampo(ValueListEditor7, 'dEmi', 'D', -1) then              //Formato “AAAA-MM-DD”
  if ValueListEditor7.Values['DEmi'] <> '' then
   My_NFE.InfNFe.Avulsa.DEmi    := FormatDateTime('YYYY-MM-DD', strtodatetime(ValueListEditor7.Values['dEmi']));
  if FormataCampo(ValueListEditor7, 'vDAR', 'N', 15) then
   My_NFE.InfNFe.Avulsa.VDAR    := ValueListEditor7.Values['vDAR'];
  if FormataCampo(ValueListEditor7, 'repEmi', 'C', 60) then
   My_NFE.InfNFe.Avulsa.RepEmi  := ValueListEditor7.Values['repEmi'];
  //if FormataCampo(ValueListEditor7, 'dPag', 'D', -1) then              //Formato “AAAA-MM-DD”
  if ValueListEditor7.Values['DPag'] <> '' then
   My_NFE.InfNFe.Avulsa.DPag    := FormatDateTime('YYYY-MM-DD', strtodatetime(ValueListEditor7.Values['dPag']));

}

//***** Informações do Destinatário ****
 //My_NFE.InfNFe.Dest
  if FormataCampo(oCdsCNPJDESTINATARIO.AsString, 'N', 14) then
   My_NFE.InfNFe.Dest.CNPJ  := oCdsCNPJDESTINATARIO.AsString;                   // CNPJ do emitente sem máscara de formatação
//  if FormataCampo(ValueListEditor26, 'CPF', 'N', 11) then
//   My_NFE.InfNFe.Dest.CPF   := '';                                              // CPF do emitente, uso exclusivo do Fisco
//  if FormataCampo(ValueListEditor26, 'IdEstrangeiro', 'C', 20) then
//   My_NFE.InfNFe.Dest.IdEstrangeiro := '';                                      // No caso de operação com o exterior, ou para comprador estrangeiro informar a tag "idEstrangeiro", com o número do passaporte ou outro documento legal para identificar pessoa estrangeira.
  if FormataCampo(oCdsDESTINATARIO.AsString, 'C', 60) then
   My_NFE.InfNFe.Dest.XNome := oCdsDESTINATARIO.AsString;                       // Razão social do emitente, evitar caracteres acentuados e &

  //My_NFE.InfNFe.Dest
//  if FormataCampo(ValueListEditor26, 'IndIEDest', 'N', 1) then
   My_NFE.InfNFe.Dest.IndIEDest    := '1';                                      //Indicador da IE do Destinatário, informar: 1 - Contribuinte ICMS (informar a IE do destinatário); 2 - Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS; 9 - Não Contribuinte, que pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS.
  if FormataCampo(oCdsIEDESTINATARIO.AsString, 'N', 14) then
   My_NFE.InfNFe.Dest.IE    := oCdsIEDESTINATARIO.AsString;                     //Informar a IE do destinatário, sem formatação ou máscara Nota: Não informar esta tag no caso da NFC-e.
//  if FormataCampo(ValueListEditor26, 'ISUF', 'C', 9) then
//   My_NFE.InfNFe.Dest.ISUF  := '';                                              //Informar a Inscrição SUFRAMA do destinatário, sem formatação ou máscara, se existir.
//  if FormataCampo(ValueListEditor26, 'IM', 'C', 15) then
//   My_NFE.InfNFe.Dest.IM  := '';                                                //Inscrição Municipal do Tomador do Serviço, campo opcional, pode ser informado na NF-e conjugada, com itens de produtos sujeitos ao ICMS e itens de serviços sujeitos ao ISSQN
//  if FormataCampo(ValueListEditor26, 'email', 'C', 60) then
//   My_NFE.InfNFe.Dest.Email := '';                                              //Informar o e-mail do destinatário, pode ser omitido

//***** Informações do Endereço do Destinatário ****
  //My_NFE.InfNFe.Dest.EnderDest
  if FormataCampo(oCdsENDERECODESTINATARIO.AsString, 'C', 60) then
   My_NFE.InfNFe.Dest.EnderDest.XLgr    := oCdsENDERECODESTINATARIO.AsString;   // logradouro
  if FormataCampo(oCdsNUMEROENDDESTINATARIO.AsString, 'C', 60) then
   My_NFE.InfNFe.Dest.EnderDest.Nro     := oCdsNUMEROENDDESTINATARIO.AsString;  // número, informar S/N quando inexistente para evitar erro de Schema XML
  if FormataCampo(oCdsCOMPLEMENTODESTINATARIO.AsString, 'C', 60) then
   My_NFE.InfNFe.Dest.EnderDest.XCpl    := oCdsCOMPLEMENTODESTINATARIO.AsString;// complemento do endereço, o conteúdo pode ser omitido
  if FormataCampo(oCdsBAIRRODESTINATARIO.AsString, 'C', 60) then
   My_NFE.InfNFe.Dest.EnderDest.XBairro := oCdsBAIRRODESTINATARIO.AsString;     // bairro
  if FormataCampo(oCdsCODCIDADEDESTINATARIO.AsString, 'N', 7) then
   My_NFE.InfNFe.Dest.EnderDest.CMun    := oCdsCODCIDADEDESTINATARIO.AsString;  // código do município - codificação IBGE, deve ser compatível com a UF
  if FormataCampo(oCdsCIDADEDESTINATARIO.AsString, 'C', 60) then
   My_NFE.InfNFe.Dest.EnderDest.XMun    := oCdsCIDADEDESTINATARIO.AsString;     // nome do município
  if FormataCampo(oCdsUFDESTINATARIO.AsString, 'C', 2) then
   My_NFE.InfNFe.Dest.EnderDest.UF      := oCdsUFDESTINATARIO.AsString;         // sigla da UF
  if FormataCampo(oCdsCEPDESTINATARIO.AsString, 'N', 8) then
   My_NFE.InfNFe.Dest.EnderDest.CEP     := oCdsCEPDESTINATARIO.AsString;        // CEP - sem máscara
//  if FormataCampo(ValueListEditor9, 'cPais', 'N', 4) then
   My_NFE.InfNFe.Dest.EnderDest.CPais   := '1058';                              //código do país - deve fixo em 1058 - Brasil
//  if FormataCampo(ValueListEditor9, 'xPais', 'C', 60) then
   My_NFE.InfNFe.Dest.EnderDest.XPais   := 'Brasil';                            // nome do país (Brasil ou BRASIL)
  if FormataCampo(oCdsTELEFONEDESTINATARIO.AsString, 'N', 14) then
   My_NFE.InfNFe.Dest.EnderDest.Fone    := oCdsTELEFONEDESTINATARIO.AsString;   // número do telefone sem máscara

{
//***** Informações do Endereço de Retirada ****
//
//***** Este grupo de informação só deve ser informado nos casos em que o local de retirada
//      seja diferente do endereço do remetente, cabendo ressaltar que é necessário que a situação
//      esteja prevista na legislação, como é o caso da obra de construção civil.
//
  //My_NFE.InfNFe.Retirada
//  if FormataCampo(ValueListEditor10, 'CNPJ', 'C', 14) then
   My_NFE.InfNFe.Retirada.CNPJ    := oCdsCNPJDESTINATARIO.AsString;
//  if FormataCampo(ValueListEditor10, 'CPF', 'C', 11) then
     My_NFE.InfNFe.Retirada.CPF   := '';
//  if FormataCampo(ValueListEditor10, 'xLgr', 'C', 60) then
   My_NFE.InfNFe.Retirada.XLgr    := oCdsENDERECODESTINATARIO.AsString;         // logradouro
//  if FormataCampo(ValueListEditor10, 'nro', 'C', 60) then
   My_NFE.InfNFe.Retirada.Nro     := oCdsNUMEROENDDESTINATARIO.AsString;        // número, informar S/N quando inexistente para evitar erro de Schema XML
//  if FormataCampo(ValueListEditor10, 'xCpl', 'C', 60) then
   My_NFE.InfNFe.Retirada.XCpl    := oCdsCOMPLEMENTODESTINATARIO.AsString;      // complemento do endereço, o conteúdo pode ser omitido
//  if FormataCampo(ValueListEditor10, 'xBairro', 'C', 60) then
   My_NFE.InfNFe.Retirada.XBairro := oCdsBAIRRODESTINATARIO.AsString;           // bairro
//  if FormataCampo(ValueListEditor10, 'cMun', 'N', 7) then
   My_NFE.InfNFe.Retirada.CMun    := oCdsCODCIDADEDESTINATARIO.AsString;        // código do município - codificação IBGE, deve ser compatível com a UF
//  if FormataCampo(ValueListEditor10, 'xMun', 'C', 60) then
   My_NFE.InfNFe.Retirada.XMun    := oCdsCIDADEDESTINATARIO.AsString;           // nome do município
//  if FormataCampo(ValueListEditor10, 'UF', 'C', 2) then
   My_NFE.InfNFe.Retirada.UF      := oCdsUFDESTINATARIO.AsString;               // sigla da UF

//***** Informações do Endereço de Entrega ****
//
//***** Este grupo de informação só deve ser informado nos casos em que o local de entrega
//      seja diferente do endereço do destinatário, cabendo ressaltar que é necessário que a situação
//      esteja prevista na legislação, como é o caso da obra de construção civil.
//
  //My_NFE.InfNFe.Entrega
//  if FormataCampo(ValueListEditor11, 'CNPJ', 'C', 14) then
   My_NFE.InfNFe.Entrega.CNPJ    := oCdsCNPJDESTINATARIO.AsString;
//  if FormataCampo(ValueListEditor11, 'CPF', 'C', 11) then
     My_NFE.InfNFe.Entrega.CPF   := '';
//  if FormataCampo(ValueListEditor11, 'xLgr', 'C', 60) then
   My_NFE.InfNFe.Entrega.XLgr    := oCdsENDERECODESTINATARIO.AsString;          // logradouro
//  if FormataCampo(ValueListEditor11, 'nro', 'C', 60) then
   My_NFE.InfNFe.Entrega.Nro     := oCdsNUMEROENDDESTINATARIO.AsString;         // número, informar S/N quando inexistente para evitar erro de Schema XML
//  if FormataCampo(ValueListEditor11, 'xCpl', 'C', 60) then
   My_NFE.InfNFe.Entrega.XCpl    := oCdsCOMPLEMENTODESTINATARIO.AsString;       // complemento do endereço, o conteúdo pode ser omitido
//  if FormataCampo(ValueListEditor11, 'xBairro', 'C', 60) then
   My_NFE.InfNFe.Entrega.XBairro := oCdsBAIRRODESTINATARIO.AsString;            // bairro
//  if FormataCampo(ValueListEditor11, 'cMun', 'N', 7) then
   My_NFE.InfNFe.Entrega.CMun    := oCdsCODCIDADEDESTINATARIO.AsString;         // código do município - codificação IBGE, deve ser compatível com a UF
//  if FormataCampo(ValueListEditor11, 'xMun', 'C', 60) then
   My_NFE.InfNFe.Entrega.XMun    := oCdsCIDADEDESTINATARIO.AsString;            // nome do município
//  if FormataCampo(ValueListEditor11, 'UF', 'C', 2) then
   My_NFE.InfNFe.Entrega.UF      := oCdsUFDESTINATARIO.AsString;                // sigla da UF

// ***** Funcionalidade para gerar o XML com a informação do CNPJ ou do CPF
//       das pessoas autorizadas a fazer o download do XML da NF-e no portal nacional.
  //My_NFE.InfNFe.AutXML
//  if FormataCampo(ValueListEditor21, 'CNPJ', 'N', 14) then
   My_NFE.InfNFe.AutXML.CNPJ    := '';
//  if FormataCampo(ValueListEditor21, 'CPF', 'N', 11) then
   My_NFE.InfNFe.AutXML.CPF    := '';
}

  //Neste o Add indica q  havera 1 InfNfe
  //Para os casos onde ha vários InfNfe faz-se quantos add forem necessarios e o acesso ao item do array e' feito conforme o indice desejado.
  //Note que o no demo acessamos sempre o indice 0 (zero) nas linhas seguinte, mas na pratica isso pode ser feito em um loop usando uma variavel X no lugar do 0(zero) para quantos itens houver no seu banco de dados!

  //My_NFE.InfNFe.Det
  My_NFE.InfNFe.Det.Add;


  if My_NFE.InfNFe.Det.count > 0 then                               
   begin
    //My_NFE.InfNFe.Det.Items[0]
//    if FormataCampo(ValueListEditor81, 'nItem', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].NItem := oCdsItensNITEM.AsString;

    //My_NFE.InfNFe.Det.Items[0].Prod
    if FormataCampo(oCdsItensCODPRODUTO.AsString, 'C', 60) then
     My_NFE.InfNFe.Det.Items[0].Prod.CProd    := oCdsItensCODPRODUTO.AsString;
    if FormataCampo(oCdsItensCODEAN.AsString, 'C', 14) then                                 //Atencao este campo deve ser gerado no XML mesmo quando nao tiver valor, neste caso basta tirar o IF q sera gerado como <cEAN />
     My_NFE.InfNFe.Det.Items[0].Prod.CEAN     := oCdsItensCODEAN.AsString;
    if FormataCampo(oCdsItensPRODUTO.AsString, 'C', 120) then
     My_NFE.InfNFe.Det.Items[0].Prod.XProd    := oCdsItensPRODUTO.AsString;
    if FormataCampo(oCdsItensNCM.AsString, 'C', 8) then
     My_NFE.InfNFe.Det.Items[0].Prod.NCM      := oCdsItensNCM.AsString;

    //Codificação opcional que detalha alguns NCM.
    //Formato: duas letras maiúsculas e 4 algarismos. Se a mercadoria se enquadrar em mais de uma codificação,
    //informar até 8 codificações principais. Vide: Anexo X - Identificador NVE.

    //My_NFE.InfNFe.Det.Items[0].Prod.NVE.Add;  //Todo: Everton - Verificar com Victory.
    //-----Novos
    //My_NFE.InfNFe.Det.Items[0].Prod.NVE
    //if FormataCampo(ValueListEditor20, 'indTot', 'N', 1) then
     //My_NFE.InfNFe.Det.Items[0].Prod.NVE.Add;
     //My_NFE.InfNFe.Det.Items[0].Prod.DetExport.Items[0].
       //:= ValueListEditor20.Values['indTot'];
    //----
//    if FormataCampo(ValueListEditor20, 'CEST', 'C', 7) then
   My_NFE.InfNFe.Det.Items[0].Prod.CEST   := '';                              // Verificar se há necessidade
    if FormataCampo(oCdsItensEXTIPI.AsString, 'C', 3) then
     My_NFE.InfNFe.Det.Items[0].Prod.EXTIPI   := oCdsItensEXTIPI.AsString;
    if FormataCampo(oCdsItensCFOP.AsString, 'N', 4) then
     My_NFE.InfNFe.Det.Items[0].Prod.CFOP     := oCdsItensCFOP.AsString;
    if FormataCampo(oCdsItensUNCOMERCIAL.AsString, 'C', 6) then
     My_NFE.InfNFe.Det.Items[0].Prod.UCom     := oCdsItensUNCOMERCIAL.AsString;
    if FormataCampo(oCdsItensQTDCOMERCIAL.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.QCom     := oCdsItensQTDCOMERCIAL.AsString;
    if FormataCampo(oCdsItensVALORUNCOMERCIAL.AsString, 'N', 21) then
     My_NFE.InfNFe.Det.Items[0].Prod.VUnCom   := oCdsItensVALORUNCOMERCIAL.AsString;
    if FormataCampo(oCdsItensVALORPRODUTO.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.VProd    := oCdsItensVALORPRODUTO.AsString;
    if FormataCampo(oCdsItensCODEANTRIB.AsString, 'C', 14) then
     My_NFE.InfNFe.Det.Items[0].Prod.CEANTrib := oCdsItensCODEANTRIB.AsString;
  if FormataCampo(oCdsItensUNTRIB.AsString, 'C', 6) then
     My_NFE.InfNFe.Det.Items[0].Prod.UTrib    := oCdsItensUNTRIB.AsString;
  if FormataCampo(oCdsItensQTDTRIB.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.QTrib    := oCdsItensQTDTRIB.AsString;
    if FormataCampo(oCdsItensVALORUNTRIB.AsString, 'N', 21) then
     My_NFE.InfNFe.Det.Items[0].Prod.VUnTrib  := oCdsItensVALORUNTRIB.AsString;
    if FormataCampo(oCdsItensVALORFRETE.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.VFrete   := oCdsItensVALORFRETE.AsString;
    if FormataCampo(oCdsItensVALORSEGURO.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.VSeg     := oCdsItensVALORSEGURO.AsString;
    if FormataCampo(oCdsItensVALORDESCONTO.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.VDesc    := oCdsItensVALORDESCONTO.AsString;
    if FormataCampo(oCdsItensVALOROUTRAS.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.VOutro   := oCdsItensVALOROUTRAS.AsString;
    if FormataCampo(oCdsItensVALORTOTAL.AsString, 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.IndTot   := oCdsItensVALORTOTAL.AsString;

{
    //My_NFE.InfNFe.Det.Items[0].Prod.DI
    if FormataCampo(ValueListEditor24, 'nDI', 'C', 10) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.NDI         := ValueListEditor24.Values['nDI'];
    if ValueListEditor24.Values['dDI'] <> '' then        //Formato “AAAA-MM-DD”
     My_NFE.InfNFe.Det.Items[0].Prod.DI.DDI         := FormatDateTime('YYYY-MM-DD', strtodatetime(ValueListEditor24.Values['dDI']));
    if FormataCampo(ValueListEditor24, 'xLocDesemb', 'C', 60) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.XLocDesemb  := ValueListEditor24.Values['xLocDesemb'];
    if FormataCampo(ValueListEditor24, 'UFDesemb', 'C', 2) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.UFDesemb    := ValueListEditor24.Values['UFDesemb'];
    if ValueListEditor24.Values['dDesemb'] <> '' then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.DDesemb     := FormatDateTime('YYYY-MM-DD', strtodatetime(ValueListEditor24.Values['dDesemb']));
    if FormataCampo(ValueListEditor24, 'TpViaTransp', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.TpViaTransp     := ValueListEditor24.Values['TpViaTransp'];
    if FormataCampo(ValueListEditor24, 'VAFRMM', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.VAFRMM     := ValueListEditor24.Values['VAFRMM'];
    if FormataCampo(ValueListEditor24, 'TpIntermedio', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.TpIntermedio     := ValueListEditor24.Values['TpIntermedio'];
    if FormataCampo(ValueListEditor24, 'CNPJ', 'N', 14) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.CNPJ     := ValueListEditor24.Values['CNPJ'];
    if FormataCampo(ValueListEditor24, 'UFTerceiro', 'C', 2) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.UFTerceiro     := ValueListEditor24.Values['UFTerceiro'];
    if FormataCampo(ValueListEditor24, 'cExportador', 'C', 60) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.CExportador := ValueListEditor24.Values['cExportador'];

    //My_NFE.InfNFe.Det.Items[0].Prod.DI.Items[0].Adi
    //My_NFE.InfNFe.Det.Items[0].Prod.DI.Items[0].Adi.Items[0]
    if FormataCampo(ValueListEditor27, 'nAdicao', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.Adi.NAdicao     := ValueListEditor27.Values['nAdicao'];
    if FormataCampo(ValueListEditor27, 'nSeqAdic', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.Adi.NSeqAdic    := ValueListEditor27.Values['nSeqAdic'];
    if FormataCampo(ValueListEditor27, 'cFabricante', 'C', 60) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.Adi.CFabricante := ValueListEditor27.Values['cFabricante'];
    if FormataCampo(ValueListEditor27, 'vDescDI', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.Adi.VDescDI     := ValueListEditor27.Values['vDescDI'];
    if FormataCampo(ValueListEditor27, 'NDraw', 'N', 11) then
     My_NFE.InfNFe.Det.Items[0].Prod.DI.Adi.NDraw     := ValueListEditor27.Values['NDraw'];


  //My_NFE.InfNFe.Det.Prod.DetExport
  //My_NFE.InfNFe.Det.Items[0].Prod.DetExport.Add;               //TODO: Inserir somente se tiver dado
  if My_NFE.InfNFe.Det.Items[0].Prod.DetExport.count > 0 then
   begin
    //My_NFE.InfNFe.Det.Items[0]
    if FormataCampo(ValueListEditor44, 'NDraw', 'N', 11) then
     My_NFE.InfNFe.Det.Items[0].Prod.DetExport.Items[0].NDraw := ValueListEditor44.Values['NDraw'];

    if FormataCampo(ValueListEditor45, 'NRE', 'N', 12) then
     My_NFE.InfNFe.Det.Items[0].Prod.DetExport.Items[0].ExportInd.NRE := ValueListEditor45.Values['NRE'];
    if FormataCampo(ValueListEditor45, 'ChNFe', 'N', 44) then
     My_NFE.InfNFe.Det.Items[0].Prod.DetExport.Items[0].ExportInd.ChNFe := ValueListEditor45.Values['ChNFe'];
    if FormataCampo(ValueListEditor45, 'QExport', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.DetExport.Items[0].ExportInd.QExport := ValueListEditor45.Values['QExport'];
   end;

    // My_NFE.InfNFe.Det.Items[0].Prod
    if FormataCampo(ValueListEditor20, 'xPed', 'C', 15) then
     My_NFE.InfNFe.Det.Items[0].Prod.XPed     := ValueListEditor20.Values['xPed'];
    if FormataCampo(ValueListEditor20, 'nItemPed', 'N', 6) then
     My_NFE.InfNFe.Det.Items[0].Prod.NItemPed := ValueListEditor20.Values['nItemPed'];
    if FormataCampo(ValueListEditor20, 'nFCI', 'C', 36) then
     My_NFE.InfNFe.Det.Items[0].Prod.NFCI := ValueListEditor20.Values['nFCI'];

    //My_NFE.InfNFe.Det.Items[0].Prod.VeicProd
    if FormataCampo(ValueListEditor28, 'tpOp', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.TpOp     := ValueListEditor28.Values['tpOp'];
    if FormataCampo(ValueListEditor28, 'chassi', 'C', 17) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.Chassi   := ValueListEditor28.Values['chassi'];
    if FormataCampo(ValueListEditor28, 'cCor', 'C', 4) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.CCor     := ValueListEditor28.Values['cCor'];
    if FormataCampo(ValueListEditor28, 'xCor', 'C', 40) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.XCor     := ValueListEditor28.Values['xCor'];
    if FormataCampo(ValueListEditor28, 'pot', 'C', 4) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.Pot      := ValueListEditor28.Values['pot'];
    if FormataCampo(ValueListEditor28, 'cilin', 'C', 4) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.Cilin    := ValueListEditor28.Values['cilin'];
    if FormataCampo(ValueListEditor28, 'pesoL', 'C', 9) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.PesoL    := ValueListEditor28.Values['pesoL'];
    if FormataCampo(ValueListEditor28, 'pesoB', 'C', 9) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.PesoB    := ValueListEditor28.Values['pesoB'];
    if FormataCampo(ValueListEditor28, 'nSerie', 'C', 9) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.NSerie   := ValueListEditor28.Values['nSerie'];
    if FormataCampo(ValueListEditor28, 'tpComb', 'C', 2) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.TpComb   := ValueListEditor28.Values['tpComb'];
    if FormataCampo(ValueListEditor28, 'nMotor', 'C', 21) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.NMotor   := ValueListEditor28.Values['nMotor'];
    if FormataCampo(ValueListEditor28, 'CMT', 'C', 9) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.CMT     := ValueListEditor28.Values['CMT'];
    if FormataCampo(ValueListEditor28, 'dist', 'C', 4) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.Dist     := ValueListEditor28.Values['dist'];
    if FormataCampo(ValueListEditor28, 'anoMod', 'N', 4) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.AnoMod   := ValueListEditor28.Values['anoMod'];
    if FormataCampo(ValueListEditor28, 'anoFab', 'N', 4) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.AnoFab   := ValueListEditor28.Values['anoFab'];
    if FormataCampo(ValueListEditor28, 'tpPint', 'C', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.TpPint   := ValueListEditor28.Values['tpPint'];
    if FormataCampo(ValueListEditor28, 'tpVeic', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.TpVeic   := ValueListEditor28.Values['tpVeic'];
    if FormataCampo(ValueListEditor28, 'espVeic', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.EspVeic  := ValueListEditor28.Values['espVeic'];
    if FormataCampo(ValueListEditor28, 'VIN', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.VIN      := ValueListEditor28.Values['VIN'];
    if FormataCampo(ValueListEditor28, 'condVeic', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.CondVeic := ValueListEditor28.Values['condVeic'];
    if FormataCampo(ValueListEditor28, 'cMod', 'N', 6) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.CMod     := ValueListEditor28.Values['cMod'];
    if FormataCampo(ValueListEditor28, 'cCorDEN', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.CCorDENATRAN     := ValueListEditor28.Values['cCorDEN'];
    if FormataCampo(ValueListEditor28, 'lota', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.Lota             := ValueListEditor28.Values['lota'];
    if FormataCampo(ValueListEditor28, 'tpRest', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Prod.VeicProd.TpRest           := ValueListEditor28.Values['tpRest'];

    //My_NFE.InfNFe.Det.Items[0].Prod.Med
    //My_NFE.InfNFe.Det.Items[0].Prod.Med.Add;                //TODO: Inserir somente se tiver dado

    if My_NFE.InfNFe.Det.Items[0].Prod.Med.count > 0 then
     begin
      //My_NFE.InfNFe.Det.Items[0].Prod.Med.Items[0]
      if FormataCampo(ValueListEditor29, 'nLote', 'C',20) then
       My_NFE.InfNFe.Det.Items[0].Prod.Med.Items[0].NLote := ValueListEditor29.Values['nLote'];
      if FormataCampo(ValueListEditor29, 'qLote', 'N',11) then
       My_NFE.InfNFe.Det.Items[0].Prod.Med.Items[0].QLote := ValueListEditor29.Values['qLote'];
      //if FormataCampo(ValueListEditor29, 'dFab', 'D', -1) then          //Formato “AAAA-MM-DD”
       My_NFE.InfNFe.Det.Items[0].Prod.Med.Items[0].DFab  := FormatDateTime('YYYY-MM-DD', strtodatetime(ValueListEditor29.Values['dFab']));
      //if FormataCampo(ValueListEditor29, 'dVal', 'D', -1) then          //Formato “AAAA-MM-DD”
       My_NFE.InfNFe.Det.Items[0].Prod.Med.Items[0].DVal  := FormatDateTime('YYYY-MM-DD', strtodatetime(ValueListEditor29.Values['dVal']));
      if FormataCampo(ValueListEditor29, 'vPMC', 'N', 15) then
       My_NFE.InfNFe.Det.Items[0].Prod.Med.Items[0].VPMC  := ValueListEditor29.Values['vPMC'];
     end;

    //My_NFE.InfNFe.Det.Items[0].Prod.Arma
    //My_NFE.InfNFe.Det.Items[0].Prod.Arma.Add;              TODO: Inserir somente se tiver dado

    if My_NFE.InfNFe.Det.Items[0].Prod.Arma.count > 0 then
     begin
      //My_NFE.InfNFe.Det.Items[0].Prod.Arma.Items[0]
      if FormataCampo(ValueListEditor30, 'tpArma', 'N',1) then
       My_NFE.InfNFe.Det.Items[0].Prod.Arma.Items[0].TpArma := ValueListEditor30.Values['tpArma'];
      if FormataCampo(ValueListEditor30, 'nSerie', 'N', 9) then
       My_NFE.InfNFe.Det.Items[0].Prod.Arma.Items[0].NSerie := ValueListEditor30.Values['nSerie'];
      if FormataCampo(ValueListEditor30, 'nCano', 'N', 9) then
       My_NFE.InfNFe.Det.Items[0].Prod.Arma.Items[0].NCano  := ValueListEditor30.Values['nCano'];
      if FormataCampo(ValueListEditor30, 'descr', 'C',256) then
       My_NFE.InfNFe.Det.Items[0].Prod.Arma.Items[0].Descr  := ValueListEditor30.Values['descr'];
     end;

    //My_NFE.InfNFe.Det.Items[0].Prod.Comb
    if FormataCampo(ValueListEditor31, 'cProdANP', 'N', 9) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.CProdANP := ValueListEditor31.Values['cProdANP'];
    if FormataCampo(ValueListEditor31, 'PMixGN', 'N', 6) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.PMixGN := ValueListEditor31.Values['PMixGN'];
    if FormataCampo(ValueListEditor31, 'CODIF', 'N', 21) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.CODIF    := ValueListEditor31.Values['CODIF'];
    if FormataCampo(ValueListEditor31, 'qTemp', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.QTemp    := ValueListEditor31.Values['qTemp'];
    if FormataCampo(ValueListEditor31, 'UFCons', 'N',2) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.UFCons   := ValueListEditor31.Values['UFCons'];

    //My_NFE.InfNFe.Det.Items[0].Prod.Comb.CIDE
    if FormataCampo(ValueListEditor32, 'qBCProd', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.CIDE.QBCProd   := ValueListEditor32.Values['qBCProd'];
    if FormataCampo(ValueListEditor32, 'vAliqProd', 'N',15) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.CIDE.VAliqProd := ValueListEditor32.Values['vAliqProd'];
    if FormataCampo(ValueListEditor32, 'vCIDE', 'N',15) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.CIDE.VCIDE     := ValueListEditor32.Values['vCIDE'];

    //My_NFE.InfNFe.Det.Items[0].Prod.Comb.Encerrante
    if FormataCampo(ValueListEditor49, 'NBico', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.Encerrante.NBico   := ValueListEditor49.Values['NBico'];
    if FormataCampo(ValueListEditor49, 'NBomba', 'N',3) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.Encerrante.NBomba := ValueListEditor49.Values['NBomba'];
    if FormataCampo(ValueListEditor49, 'NTanque', 'N',3) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.Encerrante.NTanque     := ValueListEditor49.Values['NTanque'];
    if FormataCampo(ValueListEditor49, 'VEncIni', 'N',15) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.Encerrante.VEncIni := ValueListEditor49.Values['VEncIni'];
    if FormataCampo(ValueListEditor49, 'VEncFin', 'N',15) then
     My_NFE.InfNFe.Det.Items[0].Prod.Comb.Encerrante.VEncFin     := ValueListEditor49.Values['VEncFin'];


    //Todo: everton -  Verificar My_NFE.InfNFe.Det.Items[0].Prod.nRECOPI
    if FormataCampo(ValueListEditor20, 'nRECOPI', 'N', 1) then
     //My_NFE.InfNFe.Det.Items[0].Prod.NRECOPI  := ValueListEditor20.Values['nRECOPI'];
}
    //My_NFE.InfNFe.Det.Items[0].Imposto
//    if FormataCampo(ValueListEditor2, 'vTotTrib', 'N', 15) then
//     My_NFE.InfNFe.Det.Items[0].Imposto.vTotTrib := oCdsItensVALOR.AsString;

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS00
    if FormataCampo(oCdsItensICMS_ORIGEM.AsString, 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS00.Orig  := oCdsItensICMS_ORIGEM.AsString;
    if FormataCampo(oCdsItensICMS_CSTCSOSN.AsString, 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS00.CST   := oCdsItensICMS_CSTCSOSN.AsString;
    if FormataCampo(oCdsItensICMS_MODBC.AsString, 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS00.ModBC := oCdsItensICMS_MODBC.AsString;
    if FormataCampo(oCdsItensICMS_VBCICMS.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS00.VBC   := oCdsItensICMS_VBCICMS.AsString;
    if FormataCampo(oCdsItensICMS_PICMS.AsString, 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS00.PICMS := oCdsItensICMS_PICMS.AsString;
    if FormataCampo(oCdsItensICMS_VICMS.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS00.VICMS := oCdsItensICMS_VICMS.AsString;
{
    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10
    if FormataCampo(ValueListEditor54, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.Orig     := ValueListEditor54.Values['orig'];
    if FormataCampo(ValueListEditor54, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.CST      := ValueListEditor54.Values['CST'];
    if FormataCampo(ValueListEditor54, 'modBC', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.ModBC    := ValueListEditor54.Values['modBC'];
    if FormataCampo(ValueListEditor54, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.VBC      := ValueListEditor54.Values['vBC'];
    if FormataCampo(ValueListEditor54, 'pICMS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.PICMS    := ValueListEditor54.Values['pICMS'];
    if FormataCampo(ValueListEditor54, 'vICMS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.VICMS    := ValueListEditor54.Values['vICMS'];
    if FormataCampo(ValueListEditor54, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.ModBCST  := ValueListEditor54.Values['modBCST'];
    if FormataCampo(ValueListEditor54, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.PMVAST   := ValueListEditor54.Values['pMVAST'];
    if FormataCampo(ValueListEditor54, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.PRedBCST := ValueListEditor54.Values['pRedBCST'];
    if FormataCampo(ValueListEditor54, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.VBCST    := ValueListEditor54.Values['vBCST'];
    if FormataCampo(ValueListEditor54, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.PICMSST  := ValueListEditor54.Values['pICMSST'];
    if FormataCampo(ValueListEditor54, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS10.VICMSST  := ValueListEditor54.Values['vICMSST'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20
    if FormataCampo(ValueListEditor55, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.Orig   := ValueListEditor55.Values['orig'];
    if FormataCampo(ValueListEditor55, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.CST    := ValueListEditor55.Values['CST'];
    if FormataCampo(ValueListEditor55, 'modBC', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.ModBC  := ValueListEditor55.Values['modBC'];
    if FormataCampo(ValueListEditor55, 'pRedBC', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.PRedBC := ValueListEditor55.Values['PRedBC'];
    if FormataCampo(ValueListEditor55, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.VBC    := ValueListEditor55.Values['vBC'];
    if FormataCampo(ValueListEditor55, 'pICMS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.PICMS  := ValueListEditor55.Values['pICMS'];
    if FormataCampo(ValueListEditor55, 'vICMS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.VICMS  := ValueListEditor55.Values['vICMS'];
    if FormataCampo(ValueListEditor55, 'VICMSDeson', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.VICMSDeson  := ValueListEditor55.Values['VICMSDeson'];
    if FormataCampo(ValueListEditor55, 'MotDesICMS', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS20.MotDesICMS  := ValueListEditor55.Values['MotDesICMS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30
    if FormataCampo(ValueListEditor56, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.Orig     := ValueListEditor56.Values['orig'];
    if FormataCampo(ValueListEditor56, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.CST      := ValueListEditor56.Values['CST'];
    if FormataCampo(ValueListEditor56, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.ModBCST  := ValueListEditor56.Values['modBCST'];
    if FormataCampo(ValueListEditor56, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.PMVAST   := ValueListEditor56.Values['pMVAST'];
    if FormataCampo(ValueListEditor56, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.PRedBCST := ValueListEditor56.Values['pRedBCST'];
    if FormataCampo(ValueListEditor56, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.VBCST    := ValueListEditor56.Values['vBCST'];
    if FormataCampo(ValueListEditor56, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.PICMSST  := ValueListEditor56.Values['pICMSST'];
    if FormataCampo(ValueListEditor56, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.VICMSST  := ValueListEditor56.Values['vICMSST'];
    if FormataCampo(ValueListEditor56, 'VICMSDeson', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.VICMSDeson  := ValueListEditor56.Values['VICMSDeson'];
    if FormataCampo(ValueListEditor56, 'MotDesICMS', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS30.MotDesICMS  := ValueListEditor56.Values['MotDesICMS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS40
    if FormataCampo(ValueListEditor57, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS40.Orig        := ValueListEditor57.Values['orig'];
    if FormataCampo(ValueListEditor57, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS40.CST         := ValueListEditor57.Values['CST'];
    if FormataCampo(ValueListEditor57, 'VICMSDeson', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS40.VICMSDeson       := ValueListEditor57.Values['VICMSDeson'];
    if FormataCampo(ValueListEditor57, 'motDesICMS', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS40.MotDesICMS  := ValueListEditor57.Values['motDesICMS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51
    if FormataCampo(ValueListEditor58, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.Orig   := ValueListEditor58.Values['orig'];
    if FormataCampo(ValueListEditor58, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.CST    := ValueListEditor58.Values['CST'];
    if FormataCampo(ValueListEditor58, 'modBC', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.ModBC  := ValueListEditor58.Values['modBC'];
    if FormataCampo(ValueListEditor58, 'pRedBC', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.PRedBC := ValueListEditor58.Values['pRedBC'];
    if FormataCampo(ValueListEditor58, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.VBC    := ValueListEditor58.Values['vBC'];
    if FormataCampo(ValueListEditor58, 'pICMS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.PICMS  := ValueListEditor58.Values['pICMS'];
    if FormataCampo(ValueListEditor58, 'VICMSOp', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.VICMSOp := ValueListEditor58.Values['VICMSOp'];
    if FormataCampo(ValueListEditor58, 'PDif', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.PDif    := ValueListEditor58.Values['PDif'];
    if FormataCampo(ValueListEditor58, 'VICMSDif', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.VICMSDif  := ValueListEditor58.Values['VICMSDif'];
    if FormataCampo(ValueListEditor58, 'vICMS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS51.VICMS  := ValueListEditor58.Values['vICMS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS60
    if FormataCampo(ValueListEditor59, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS60.Orig       := ValueListEditor59.Values['orig'];
    if FormataCampo(ValueListEditor59, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS60.CST        := ValueListEditor59.Values['CST'];
    if FormataCampo(ValueListEditor59, 'vBCSTRet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS60.VBCSTRet   := ValueListEditor59.Values['vBCSTRet'];
    if FormataCampo(ValueListEditor59, 'vICMSSTRet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS60.VICMSSTRet := ValueListEditor59.Values['vICMSSTRet'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70
    if FormataCampo(ValueListEditor60, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.Orig     := ValueListEditor60.Values['orig'];
    if FormataCampo(ValueListEditor60, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.CST      := ValueListEditor60.Values['CST'];
    if FormataCampo(ValueListEditor60, 'modBC', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.ModBC    := ValueListEditor60.Values['modBC'];
    if FormataCampo(ValueListEditor60, 'pRedBC', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.PRedBC   := ValueListEditor60.Values['pRedBC'];
    if FormataCampo(ValueListEditor60, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.VBC      := ValueListEditor60.Values['vBC'];
    if FormataCampo(ValueListEditor60, 'pICMS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.PICMS    := ValueListEditor60.Values['pICMS'];
    if FormataCampo(ValueListEditor60, 'vICMS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.VICMS    := ValueListEditor60.Values['vICMS'];
    if FormataCampo(ValueListEditor60, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.ModBCST  := ValueListEditor60.Values['modBCST'];
    if FormataCampo(ValueListEditor60, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.PMVAST   := ValueListEditor60.Values['pMVAST'];
    if FormataCampo(ValueListEditor60, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.PRedBCST := ValueListEditor60.Values['pRedBCST'];
    if FormataCampo(ValueListEditor60, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.VBCST    := ValueListEditor60.Values['VbCST'];
    if FormataCampo(ValueListEditor60, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.PICMSST  := ValueListEditor60.Values['pICMSST'];
    if FormataCampo(ValueListEditor60, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.VICMSST  := ValueListEditor60.Values['vICMSST'];
    if FormataCampo(ValueListEditor60, 'VICMSDeson', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.VICMSDeson  := ValueListEditor60.Values['VICMSDeson'];
    if FormataCampo(ValueListEditor60, 'MotDesICMS', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS70.MotDesICMS  := ValueListEditor60.Values['MotDesICMS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90
    if FormataCampo(ValueListEditor61, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.Orig     := ValueListEditor61.Values['orig'];
    if FormataCampo(ValueListEditor61, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.CST      := ValueListEditor61.Values['CST'];
    if FormataCampo(ValueListEditor61, 'modBC', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.ModBC    := ValueListEditor61.Values['modBC'];
    if FormataCampo(ValueListEditor61, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.VBC      := ValueListEditor61.Values['vBC'];
    if FormataCampo(ValueListEditor61, 'pRedBC', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.PRedBC   := ValueListEditor61.Values['pRedBC'];
    if FormataCampo(ValueListEditor61, 'pICMS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.PICMS    := ValueListEditor61.Values['pICMS'];
    if FormataCampo(ValueListEditor61, 'vICMS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.VICMS    := ValueListEditor61.Values['vICMS'];
    if FormataCampo(ValueListEditor61, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.ModBCST  := ValueListEditor61.Values['modBCST'];
    if FormataCampo(ValueListEditor61, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.PMVAST   := ValueListEditor61.Values['pMVAST'];
    if FormataCampo(ValueListEditor61, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.PRedBCST := ValueListEditor61.Values['pRedBCST'];
    if FormataCampo(ValueListEditor61, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.VBCST    := ValueListEditor61.Values['vBCST'];
    if FormataCampo(ValueListEditor61, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.PICMSST  := ValueListEditor61.Values['pICMSST'];
    if FormataCampo(ValueListEditor61, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.VICMSST  := ValueListEditor61.Values['vICMSST'];
    if FormataCampo(ValueListEditor61, 'VICMSDeson', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.VICMSDeson  := ValueListEditor61.Values['VICMSDeson'];
    if FormataCampo(ValueListEditor61, 'MotDesICMS', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMS90.MotDesICMS  := ValueListEditor61.Values['MotDesICMS'];

    // My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart
    if FormataCampo(ValueListEditor33, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.Orig     := ValueListEditor33.Values['orig'];
    if FormataCampo(ValueListEditor33, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.CST      := ValueListEditor33.Values['CST'];
    if FormataCampo(ValueListEditor33, 'modBC', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.ModBC    := ValueListEditor33.Values['ModBC'];
    if FormataCampo(ValueListEditor33, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.VBC      := ValueListEditor33.Values['VBC'];
    if FormataCampo(ValueListEditor33, 'pRedBC', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.PRedBC   := ValueListEditor33.Values['PRedBC'];
    if FormataCampo(ValueListEditor33, 'pICMS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.PICMS    := ValueListEditor33.Values['PICMS'];
    if FormataCampo(ValueListEditor33, 'vICMS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.VICMS    := ValueListEditor33.Values['VICMS'];
    if FormataCampo(ValueListEditor33, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.ModBCST  := ValueListEditor33.Values['ModBCST'];
    if FormataCampo(ValueListEditor33, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.PMVAST   := ValueListEditor33.Values['PMVAST'];
    if FormataCampo(ValueListEditor33, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.PRedBCST := ValueListEditor33.Values['PRedBCST'];
    if FormataCampo(ValueListEditor33, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.VBCST    := ValueListEditor33.Values['VBCST'];
    if FormataCampo(ValueListEditor33, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.PICMSST  := ValueListEditor33.Values['PICMSST'];
    if FormataCampo(ValueListEditor33, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.VICMSST  := ValueListEditor33.Values['VICMSST'];
    if FormataCampo(ValueListEditor33, 'pBCOp', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.PBCOp    := ValueListEditor33.Values['PBCOp'];
    if FormataCampo(ValueListEditor33, 'UFST', 'C', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSPart.UFST     := ValueListEditor33.Values['UFST'];

    // My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSST
    if FormataCampo(ValueListEditor34, 'orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSST.Orig         := ValueListEditor34.Values['orig'];
    if FormataCampo(ValueListEditor34, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSST.CST          := ValueListEditor34.Values['CST'];
    if FormataCampo(ValueListEditor34, 'vBCSTRet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSST.VBCSTRet     := ValueListEditor34.Values['vBCSTRet'];
    if FormataCampo(ValueListEditor34, 'vICMSSTRet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSST.VICMSSTRet   := ValueListEditor34.Values['vICMSSTRet'];
    if FormataCampo(ValueListEditor34, 'vBCSTDest', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSST.VBCSTDest    := ValueListEditor34.Values['vBCSTDest'];
    if FormataCampo(ValueListEditor34, 'vICMSSTDest', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSST.VICMSSTDest  := ValueListEditor34.Values['vICMSSTDest'];

    // My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN101
    if FormataCampo(ValueListEditor35, 'Orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN101.Orig              := ValueListEditor35.Values['orig'];
    if FormataCampo(ValueListEditor35, 'CSOSN', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN101.CSOSN             := ValueListEditor35.Values['cSOSN'];
    if FormataCampo(ValueListEditor35, 'pCredSN', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN101.PCredSN           := ValueListEditor35.Values['pCredSN'];
    if FormataCampo(ValueListEditor35, 'vCredICMSSN', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN101.VCredICMSSN       := ValueListEditor35.Values['vCredICMSSN'];

   //  My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN102
    if FormataCampo(ValueListEditor76, 'Orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN102.Orig       := ValueListEditor76.Values['Orig'];
    if FormataCampo(ValueListEditor76, 'CSOSN', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN102.CSOSN      := ValueListEditor76.Values['CSOSN'];

    //  My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201
    if FormataCampo(ValueListEditor77, 'Orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.Orig        := ValueListEditor77.Values['Orig'];
    if FormataCampo(ValueListEditor77, 'CSOSN', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.CSOSN       := ValueListEditor77.Values['CSOSN'];
    if FormataCampo(ValueListEditor77, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.ModBCST     := ValueListEditor77.Values['modBCST'];
    if FormataCampo(ValueListEditor77, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.PMVAST      := ValueListEditor77.Values['pMVAST'];
    if FormataCampo(ValueListEditor77, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.PRedBCST    := ValueListEditor77.Values['pRedBCST'];
    if FormataCampo(ValueListEditor77, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.VBCST       := ValueListEditor77.Values['vBCST'];
    if FormataCampo(ValueListEditor77, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.PICMSST     := ValueListEditor77.Values['pICMSST'];
    if FormataCampo(ValueListEditor77, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.VICMSST     := ValueListEditor77.Values['vICMSST'];
    if FormataCampo(ValueListEditor77, 'pCredSN', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.PCredSN     := ValueListEditor77.Values['pCredSN'];
    if FormataCampo(ValueListEditor77, 'vCredICMSSN', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN201.VCredICMSSN := ValueListEditor77.Values['vCredICMSSN'];

     //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202
    if FormataCampo(ValueListEditor78, 'Orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.Orig     := ValueListEditor78.Values['Orig'];
    if FormataCampo(ValueListEditor78, 'CSOSN', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.CSOSN    := ValueListEditor78.Values['CSOSN'];
    if FormataCampo(ValueListEditor78, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.ModBCST  := ValueListEditor78.Values['modBCST'];
    if FormataCampo(ValueListEditor78, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.PMVAST   := ValueListEditor78.Values['pMVAST'];
    if FormataCampo(ValueListEditor78, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.PRedBCST := ValueListEditor78.Values['pRedBCST'];
    if FormataCampo(ValueListEditor78, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.VBCST    := ValueListEditor78.Values['vBCST'];
    if FormataCampo(ValueListEditor78, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.PICMSST  := ValueListEditor78.Values['pICMSST'];
    if FormataCampo(ValueListEditor78, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN202.VICMSST  := ValueListEditor78.Values['vICMSST'];

     //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN500
    if FormataCampo(ValueListEditor79, 'Orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN500.Orig       := ValueListEditor79.Values['Orig'];
    if FormataCampo(ValueListEditor79, 'CSOSN', 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN500.CSOSN      := ValueListEditor79.Values['CSOSN'];
    if FormataCampo(ValueListEditor79, 'vBCSTRet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN500.VBCSTRet   := ValueListEditor79.Values['vBCSTRet'];
    if FormataCampo(ValueListEditor79, 'vICMSSTRet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN500.VICMSSTRet := ValueListEditor79.Values['vICMSSTRet'];

     //My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900
    if FormataCampo(ValueListEditor80, 'Orig', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.Orig        := ValueListEditor80.Values['Orig'];
    if FormataCampo(ValueListEditor80, 'CSOSN', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.CSOSN       := ValueListEditor80.Values['CSOSN'];
    if FormataCampo(ValueListEditor80, 'modBC', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.ModBC       := ValueListEditor80.Values['modBC'];
    if FormataCampo(ValueListEditor80, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.VBC         := ValueListEditor80.Values['vBC'];
    if FormataCampo(ValueListEditor80, 'pRedBC', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.PRedBC      := ValueListEditor80.Values['pRedBC'];
    if FormataCampo(ValueListEditor80, 'pICMS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.PICMS       := ValueListEditor80.Values['pICMS'];
    if FormataCampo(ValueListEditor80, 'vICMS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.VICMS       := ValueListEditor80.Values['vICMS'];
    if FormataCampo(ValueListEditor80, 'modBCST', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.ModBCST     := ValueListEditor80.Values['modBCST'];
    if FormataCampo(ValueListEditor80, 'pMVAST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.PMVAST      := ValueListEditor80.Values['pMVAST'];
    if FormataCampo(ValueListEditor80, 'pRedBCST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.PRedBCST    := ValueListEditor80.Values['pRedBCST'];
    if FormataCampo(ValueListEditor80, 'vBCST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.VBCST       := ValueListEditor80.Values['vBCST'];
    if FormataCampo(ValueListEditor80, 'pICMSST', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.PICMSST     := ValueListEditor80.Values['pICMSST'];
    if FormataCampo(ValueListEditor80, 'vICMSST', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.VICMSST     := ValueListEditor80.Values['vICMSST'];

    //TODO: Verificar no Manual_NFe_v401_2009-11-04.pdf (Pag 141/142) existem os campos vBCSTRet e vICMSSTRet q n~ao constam na classe gerada automaticamente a partir do schema XSD obtido na SEFAZ. Provavel erro no SCHEMA!

    if FormataCampo(ValueListEditor80, 'pCredSN', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.PCredSN      := ValueListEditor80.Values['pCredSN'];
    if FormataCampo(ValueListEditor80, 'vCredICMSSN', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMS.ICMSSN900.VCredICMSSN  := ValueListEditor80.Values['vCredICMSSN'];
}

    //My_NFE.InfNFe.Det.Items[0].Imposto.IPI
    if FormataCampo(oCdsItensIPI_CLENQ.AsString, 'C', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.ClEnq    := oCdsItensIPI_CLENQ.AsString;
    if FormataCampo(oCdsItensIPI_CNPJPROD.AsString, 'C', 14) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.CNPJProd := oCdsItensIPI_CNPJPROD.AsString;
    if FormataCampo(oCdsItensIPI_CSELO.AsString, 'C', 60) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.CSelo    := oCdsItensIPI_CSELO.AsString;
    if FormataCampo(oCdsItensIPI_QSELO.AsString, 'N', 12) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.QSelo    := oCdsItensIPI_QSELO.AsString;
    if FormataCampo(oCdsItensIPI_CENQ.AsString, 'N', 3) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.CEnq     := oCdsItensIPI_CENQ.AsString;

    //My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPITrib
    if FormataCampo(oCdsItensIPI_CST.AsString, 'C', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPITrib.CST   := oCdsItensIPI_CST.AsString;
    if FormataCampo(oCdsItensIPI_VALORBC.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPITrib.VBC   := oCdsItensIPI_VALORBC.AsString;
    if FormataCampo(oCdsItensIPI_PIPI.AsString, 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPITrib.PIPI  := oCdsItensIPI_PIPI.AsString;
    if FormataCampo(oCdsItensIPI_QUNID.AsString, 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPITrib.QUnid := oCdsItensIPI_QUNID.AsString;
    if FormataCampo(oCdsItensIPI_VALORUNID.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPITrib.VUnid := oCdsItensIPI_VALORUNID.AsString;
    if FormataCampo(oCdsItensIPI_VALORIPI.AsString, 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPITrib.VIPI  := oCdsItensIPI_VALORIPI.AsString;
{
    //My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPINT
    if FormataCampo(ValueListEditor75, 'CST', 'C', 2) then
    My_NFE.InfNFe.Det.Items[0].Imposto.IPI.IPINT.CST := ValueListEditor75.Values['CST'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.II
    if FormataCampo(ValueListEditor63, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.II.VBC      := ValueListEditor63.Values['vBC'];
    if FormataCampo(ValueListEditor63, 'vDespAdu', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.II.VDespAdu := ValueListEditor63.Values['vDespAdu'];
    if FormataCampo(ValueListEditor63, 'vII', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.II.VII      := ValueListEditor63.Values['vII'];
    if FormataCampo(ValueListEditor63, 'vIOF', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.II.VIOF     := ValueListEditor63.Values['vIOF'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN
    if FormataCampo(ValueListEditor74, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VBC       := ValueListEditor74.Values['vBC'];
    if FormataCampo(ValueListEditor74, 'vAliq', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VAliq     := ValueListEditor74.Values['vAliq '];
    if FormataCampo(ValueListEditor74, 'vISSQN', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VISSQN    := ValueListEditor74.Values['vISSQN'];
    if FormataCampo(ValueListEditor74, 'cMunFG', 'N', 7) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.CMunFG    := ValueListEditor74.Values['cMunFG'];
    if FormataCampo(ValueListEditor74, 'cListServ', 'C', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.CListServ := ValueListEditor74.Values['cListServ'];
    if FormataCampo(ValueListEditor74, 'VDeducao', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VDeducao := ValueListEditor74.Values['VDeducao'];
    if FormataCampo(ValueListEditor74, 'VOutro', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VOutro := ValueListEditor74.Values['VOutro'];
    if FormataCampo(ValueListEditor74, 'VDescIncond', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VDescIncond := ValueListEditor74.Values['VDescIncond'];
    if FormataCampo(ValueListEditor74, 'VDescCond', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VDescCond := ValueListEditor74.Values['VDescCond'];
    if FormataCampo(ValueListEditor74, 'VISSRet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.VISSRet := ValueListEditor74.Values['VISSRet'];
    if FormataCampo(ValueListEditor74, 'IndISS', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.IndISS := ValueListEditor74.Values['IndISS'];
    if FormataCampo(ValueListEditor74, 'CServico', 'C', 20) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.CServico := ValueListEditor74.Values['CServico'];
    if FormataCampo(ValueListEditor74, 'CMun', 'N', 7) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.CMun := ValueListEditor74.Values['CMun'];
    if FormataCampo(ValueListEditor74, 'CPais', 'N', 4) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.CPais := ValueListEditor74.Values['CPais'];
    if FormataCampo(ValueListEditor74, 'NProcesso', 'C', 30) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.NProcesso := ValueListEditor74.Values['NProcesso'];
    if FormataCampo(ValueListEditor74, 'IndIncentivo', 'N', 1) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ISSQN.IndIncentivo := ValueListEditor74.Values['IndIncentivo'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISAliq
    if FormataCampo(ValueListEditor64, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISAliq.CST  := ValueListEditor64.Values['CST'];
    if FormataCampo(ValueListEditor64, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISAliq.VBC  := ValueListEditor64.Values['vBC'];
    if FormataCampo(ValueListEditor64, 'pPIS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISAliq.PPIS := ValueListEditor64.Values['pPIS'];
    if FormataCampo(ValueListEditor64, 'vPIS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISAliq.VPIS := ValueListEditor64.Values['vPIS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISQtde
    if FormataCampo(ValueListEditor65, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISQtde.CST       := ValueListEditor65.Values['CST'];
    if FormataCampo(ValueListEditor65, 'qBCProd', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISQtde.QBCProd   := ValueListEditor65.Values['qBCProd'];
    if FormataCampo(ValueListEditor65, 'vAliqProd', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISQtde.VAliqProd := ValueListEditor65.Values['vAliqProd'];
    if FormataCampo(ValueListEditor65, 'vPIS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISQtde.VPIS      := ValueListEditor65.Values['vPIS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISNT
    if FormataCampo(ValueListEditor66, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISNT.CST := ValueListEditor66.Values['CST'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISOutr
    if FormataCampo(ValueListEditor67, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISOutr.CST       := ValueListEditor67.Values['CST'];
    if FormataCampo(ValueListEditor67, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISOutr.VBC       := ValueListEditor67.Values['vBC'];
    if FormataCampo(ValueListEditor67, 'pPIS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISOutr.PPIS      := ValueListEditor67.Values['pPIS'];
    if FormataCampo(ValueListEditor67, 'qBCProd', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISOutr.QBCProd   := ValueListEditor67.Values['qBCProd'];
    if FormataCampo(ValueListEditor67, 'vAliqProd', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISOutr.VAliqProd := ValueListEditor67.Values['vAliqProd'];
    if FormataCampo(ValueListEditor67, 'vPIS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PIS.PISOutr.VPIS      := ValueListEditor67.Values['vPIS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.PISST
    if FormataCampo(ValueListEditor68, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PISST.VBC       := ValueListEditor68.Values['vBC'];
    if FormataCampo(ValueListEditor68, 'pPIS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PISST.PPIS      := ValueListEditor68.Values['pPIS'];
    if FormataCampo(ValueListEditor68, 'qBCProd', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PISST.QBCProd   := ValueListEditor68.Values['qBCProd'];
    if FormataCampo(ValueListEditor68, 'vAliqProd', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PISST.VAliqProd := ValueListEditor68.Values['vAliqProd'];
    if FormataCampo(ValueListEditor68, 'vPIS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.PISST.VPIS      := ValueListEditor68.Values['vPIS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSAliq
    if FormataCampo(ValueListEditor69, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSAliq.CST     := ValueListEditor69.Values['CST'];
    if FormataCampo(ValueListEditor69, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSAliq.VBC     := ValueListEditor69.Values['vBC'];
    if FormataCampo(ValueListEditor69, 'pCOFINS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSAliq.PCOFINS := ValueListEditor69.Values['pCOFINS'];
    if FormataCampo(ValueListEditor69, 'vCOFINS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSAliq.VCOFINS := ValueListEditor69.Values['vCOFINS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSQtde
    if FormataCampo(ValueListEditor70, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSQtde.CST       := ValueListEditor70.Values['CST'];
    if FormataCampo(ValueListEditor70, 'qBCProd', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSQtde.QBCProd   := ValueListEditor70.Values['qBCProd'];
    if FormataCampo(ValueListEditor70, 'vAliqProd', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSQtde.VAliqProd := ValueListEditor70.Values['vAliqProd'];
    if FormataCampo(ValueListEditor70, 'vCOFINS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSQtde.VCOFINS   := ValueListEditor70.Values['vCOFINS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSNT
    if FormataCampo(ValueListEditor71, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSNT.CST := ValueListEditor71.Values['CST'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSOutr
    if FormataCampo(ValueListEditor72, 'CST', 'N', 2) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSOutr.CST       := ValueListEditor72.Values['CST'];
    if FormataCampo(ValueListEditor72, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSOutr.VBC       := ValueListEditor72.Values['vBC'];
    if FormataCampo(ValueListEditor72, 'pCOFINS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSOutr.PCOFINS   := ValueListEditor72.Values['pCOFINS'];
    if FormataCampo(ValueListEditor72, 'qBCProd', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSOutr.QBCProd   := ValueListEditor72.Values['qBCProd'];
    if FormataCampo(ValueListEditor72, 'vAliqProd', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSOutr.VAliqProd := ValueListEditor72.Values['vAliqProd'];
    if FormataCampo(ValueListEditor72, 'vCOFINS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINS.COFINSOutr.VCOFINS   := ValueListEditor72.Values['vCOFINS'];

    //My_NFE.InfNFe.Det.Items[0].Imposto.COFINSST
    if FormataCampo(ValueListEditor73, 'vBC', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINSST.VBC       := ValueListEditor73.Values['vBC'];
    if FormataCampo(ValueListEditor73, 'pCOFINS', 'N', 5) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINSST.PCOFINS   := ValueListEditor73.Values['pCOFINS'];
    if FormataCampo(ValueListEditor73, 'qBCProd', 'N', 16) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINSST.QBCProd   := ValueListEditor73.Values['qBCProd'];
    if FormataCampo(ValueListEditor73, 'vAliqProd', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINSST.VAliqProd := ValueListEditor73.Values['vAliqProd'];
    if FormataCampo(ValueListEditor73, 'vCOFINS', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.COFINSST.VCOFINS   := ValueListEditor73.Values['vCOFINS'];


    //My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest
    if (FormataCampo(ValueListEditor46, 'vBCUFDest', 'N', 15)) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.VBCUFDest := ValueListEditor46.Values['VBCUFDest'];
    if FormataCampo(ValueListEditor46, 'pFCPUFDest', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.PFCPUFDest   := ValueListEditor46.Values['PFCPUFDest'];
    if FormataCampo(ValueListEditor46, 'pICMSUFDest', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.PICMSUFDest   := ValueListEditor46.Values['pICMSUFDest'];
    if FormataCampo(ValueListEditor46, 'pICMSInter', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.PICMSInter   := ValueListEditor46.Values['pICMSInter'];
    if FormataCampo(ValueListEditor46, 'pICMSInterPart', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.PICMSInterPart   := ValueListEditor46.Values['pICMSInterPart'];
    if FormataCampo(ValueListEditor46, 'vFCPUFDest', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.VFCPUFDest   := ValueListEditor46.Values['vFCPUFDest'];
    if FormataCampo(ValueListEditor46, 'vICMSUFDest', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.VICMSUFDest   := ValueListEditor46.Values['vICMSUFDest'];
    if FormataCampo(ValueListEditor46, 'vICMSUFRemet', 'N', 15) then
     My_NFE.InfNFe.Det.Items[0].Imposto.ICMSUFDest.VICMSUFRemet   := ValueListEditor46.Values['vICMSUFRemet'];

    //My_NFE.InfNFe.Det.Items[0].ImpostoDevol
    if FormataCampo(ValueListEditor47, 'pDevol', 'C', 500) then
     My_NFE.InfNFe.Det.Items[0].ImpostoDevol.PDevol := ValueListEditor47.Values['pDevol'];
    if FormataCampo(ValueListEditor48, 'vIPIDevol', 'C', 500) then
     My_NFE.InfNFe.Det.Items[0].ImpostoDevol.IPI.VIPIDevol := ValueListEditor48.Values['vIPIDevol'];

    //My_NFE.InfNFe.Det.Items[0]
    if FormataCampo(ValueListEditor81, 'infAdProd', 'C', 500) then
     My_NFE.InfNFe.Det.Items[0].InfAdProd := ValueListEditor81.Values['infAdProd'];
}
    end;

  //Tags de Signature n~ao devem ser geradas aqui! Elas sao criadas automaticamente durante o processo de assinatura!
  //My_NFE.Signature

  memo1.lines.add((datetimetostr(now) + ' -' +  tipo_demo  + ' Gerada com Sucesso! Clique em "Salvar" para gerar o arquivo XML referente à ' +  tipo_demo  + ' criada'));
 except
  memo1.lines.add((datetimetostr(now) + ' - Erro ao tentar gerar ' +  tipo_demo  + '!'));
 end;


 try


  //Consultar item "5.2 Padrão de nomes para os arquivos" página 68 do documento Manual_de_Integracao _Contribuinte_versao_203 _2007_11_30.pdf
  //O nome do arquivo será a chave de acesso completa com extensão “-nfe.xml”

  SaveDialog1.filename := copy(oCdsCHAVEACESSO.Value, 4, 44) + '-nfe.xml';

  if SaveDialog1.Execute then
   begin
    PageGrid.ActivePageIndex := 0;

    My_NFE.OwnerDocument.SaveToFile(SaveDialog1.FileName);

//    WebBrowser1.Navigate(SaveDialog1.FileName);

    memo1.lines.add((datetimetostr(now) + ' - Arquivo de Nota Fiscal Eletrônica ('+ SaveDialog1.FileName +') salvo com sucesso!'));
    showmessage('Arquivo de NFe salvo com sucesso.' + #13#10 +
                'Atenção: Para transmitir arquivos de NFe é preciso antes assinar e gerar um arquivo de Lote contendo uma ou mais NFe assinadas' + #13#10 +
                'Consulte o demo localizado na pasta Geracao_XML\enviNFe para informações sobre geração de lotes de NFe');

   end;
 except
  memo1.lines.add((datetimetostr(now) + ' - Erro ao tentar Salvar Nota Fiscal Eletrônica!'));
 end;
  *)
{$ENDREGION}

end;

function TF_NFeSaidaBt.ValueIn(Value: Integer; const Values: array of Integer): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := Low(Values) to High(Values) do
  begin
    if Value = Values[I] then
    begin
      Result := True;
      Break;
    end;
  end;
end;

procedure TF_NFeSaidaBt.btRecalcularClick(Sender: TObject);
begin
  inherited;

  CalculaNota;

end;

procedure TF_NFeSaidaBt.Button8Click(Sender: TObject);
begin
  inherited;

  Gera_Chave;
end;

procedure TF_NFeSaidaBt.CalculaNota;
begin
  ZeraEdits;

  oCdsItens.First;

  while not oCdsItens.Eof do
  begin

    EditBCICMS.Value := EditBCICMS.Value + isFloat(oCdsItensICMS_VBCICMS.AsString);
    EditBCICMSST.Value := EditBCICMSST.Value + isFloat(oCdsItensICMS_VBCICMSST.AsString);

    EditvICMS.Value := EditvICMS.Value + isFloat(oCdsItensICMS_VICMS.AsString);
    EditvICMSST.Value := EditvICMSST.Value + isFloat(oCdsItensICMS_VICMSST.AsString);

    EditVFrete.Value := isFloat(oCdsT_ValorFrete.AsString);
    EditVSeguro.Value := isFloat(oCdsT_ValorSeguro.AsString);
    EditVOutras.Value := isFloat(oCdsT_ValorOutrasDespesas.AsString);

    EditVIPI.Value := EditVIPI.Value + isFloat(oCdsItensIPI_ValorIPI.AsString);
    EditVDesconto.Value := EditVDesconto.Value + isFloat(oCdsItensValorDesconto.AsString);

    EditVTotalProd.Value := EditVTotalProd.Value + isFloat(oCdsItensValorTotal.AsString);

    oCdsItens.Next;

    Application.ProcessMessages;
  end;

  CalculaValorTotalNota;

end;

procedure TF_NFeSaidaBt.CalculaValores;
begin
  EditTotalLiq.Value := (EditQuantidade.Value * EditValorUnit.Value) - EditDesconto.Value;
  EditValorTotal.Value := (EditQuantidade.Value * EditValorUnit.Value);
end;

procedure TF_NFeSaidaBt.CalculaValorTotalNota;
begin
  EditVTotalNota.Value := EditvICMSST.Value + EditVFrete.Value + EditVIPI.Value - EditVDesconto.Value + EditVTotalProd.Value;
end;

procedure TF_NFeSaidaBt.CarregaConfiguracoes;
begin
  oCdsEmitente.Close;
  oCdsEmitente.Open;

  Dm.sqlConfiguracoes.Close;
  Dm.sqlConfiguracoes.Open;

  // se Gera CREDITO ICMS PESSOA FISICA
  bGeraICMSpFisica := Dm.sqlConfiguracoesGERARCREDICMSPFISICA.AsBoolean;
end;

function TF_NFeSaidaBt.ConfirmarLancamentoItem: Boolean;
begin
  InsereItemNota(NFEItens.IDProduto);

  EditCodNomeProduto.Text := '';
  EditCodNomeProduto.SetFocus;
  EditQuantidade.Value := 1;
  EditValorUnit.Value := 0;
  EditValorTotal.Value := 0;
  EditDesconto.Value := 0;
  EditTotalLiq.Value := 0;

  Result := true;
end;

procedure TF_NFeSaidaBt.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if Length(ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'ID', 'nfe_clifor')) > 0 then
    begin
      oDS.DataSet.FieldByName('Destinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'NomeRazao', 'nfe_clifor');
      oDS.DataSet.FieldByName('CNPJDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'CGC', 'nfe_clifor');
      oDS.DataSet.FieldByName('IEDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'IERG', 'nfe_clifor');
      oDS.DataSet.FieldByName('EnderecoDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'Endereco', 'nfe_clifor');
      oDS.DataSet.FieldByName('BairroDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'Bairro', 'nfe_clifor');
      oDS.DataSet.FieldByName('NumeroEndDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'Numero', 'nfe_clifor');
      oDS.DataSet.FieldByName('CepDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'Cep', 'nfe_clifor');
      oDS.DataSet.FieldByName('CidadeDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'Cidade', 'nfe_clifor');
      oDS.DataSet.FieldByName('CodCidadeDestinatario').Value := IsInteger(ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'CodCidade', 'nfe_clifor'));
      oDS.DataSet.FieldByName('UFDestinatario').Value := ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'UF', 'nfe_clifor');
      oDS.DataSet.FieldByName('CodUFDestinatario').Value := IsInteger(ConsultaRegistroSimples(DBEdit4.Text, 'ID', 'CodUF', 'nfe_clifor'));
      MudaCFOPInterestadual;
    end
    else
    begin
      if DM.tmsMSGQ('Informação','Destinatário não encontrado, favor localizar corretamente.') = mrOk then
      btDest.Click;
    end;

  end;
end;

procedure TF_NFeSaidaBt.DBEditCFOPNotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ES: string;
begin
  inherited;

  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if Length(ConsultaRegistroSimples(DBEditCFOPNota.Text, 'ID', 'ID', 'NFE_CFOP')) > 0 then
    begin
      oDS.DataSet.FieldByName('CFOP').Value := IsInteger(ConsultaRegistroSimples(DBEditCFOPNota.Text, 'ID', 'ID', 'NFE_CFOP'));
      oDS.DataSet.FieldByName('CFOPDesc').Value := ConsultaRegistroSimples(DBEditCFOPNota.Text, 'ID', 'Descricao', 'NFE_CFOP');
      oDS.DataSet.FieldByName('AMBIENTE').Value := oCdsEmitenteAmbiente.AsString;
      ES := ConsultaRegistroSimples(DBEditCFOPNota.Text, 'ID', 'EntradaSaida', 'NFE_CFOP');

      if ES = 'E' then
        RadioEntradaSaida.ItemIndex := 0;

      if ES = 'S' then
        RadioEntradaSaida.ItemIndex := 1;

      oDS.DataSet.FieldByName('EntradaSaida').Value := ES;
      oDS.DataSet.FieldByName('SERIE').Value := SerieNFe;

      oCdsNNota.Value := Incrementa('NNota', 'NFE_Cabecalho', 'Where IDEmitente = ' + oCdsEmitenteID.AsString +
        ' and AMBIENTE = ' + QuotedStr(oCdsEmitenteAmbiente.AsString) + ' and EntradaSaida = ' +
        QuotedStr(oCdsEntradaSaida.AsString) + ' and SERIE = ' + oCdsSERIE.AsString);

      // Se não estiver informado o tipo de cfop (Entrada/Saida)
      if (ConsultaRegistroSimples(DBEditCFOPNota.Text, 'ID', 'EntradaSaida', 'NFE_CFOP') = '') then
      begin
        if DM.tmsMSGQ('Informação','Atenção, não está definido nas configurações de regras CFOP o tipo de ' + #13 + #10 +
          ' operação (Entrada/Saída) para este CFOP, favor informar manualmente.') = mrOk then
          begin
            RadioEntradaSaida.SetFocus;
            RadioEntradaSaida.ItemIndex := 1;
          end;
      end;

    end
    else
    begin
      if DM.tmsMSGQ('Informação','CFOP não encontrado, favor localizar corretamente.') = mrOk then
        btCFOP.Click;
    end;

  end;


end;

procedure TF_NFeSaidaBt.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;

  if DBGrid1.SelectedField = oCdsItensInfAdProduto then
  begin
    AbreForm(TF_NFeInfAddProdutos, F_NFeInfAddProdutos);
  end;

end;

procedure TF_NFeSaidaBt.DBRadioGroup1Change(Sender: TObject);
begin
  inherited;
  pnTransportador.Visible := DBRadioGroup1.ItemIndex <> 3;
end;

procedure TF_NFeSaidaBt.edCfopKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if not( key in['0'..'9',#08,#13,#27,#42] ) then
  key:=#0;

  if key =#13 then   //Apertei 'ENTER'
  //edit4.SetFocus;

  if key =#27 then   //Apertei 'ESC'
  //EdtCodBarra.Text:='';
end;

procedure TF_NFeSaidaBt.EditCodNomeProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if Key = VK_RETURN then
  begin

    if oCds.State in [dsBrowse, dsInactive] then
      exit;

    if Length(ConsultaRegistroSimples(EditCodNomeProduto.Text, 'CodBarras', 'CodBarras', 'NFE_Produtos')) > 0 then
      LocalizaProduto(False)
    else
      LocalizaProduto(true);

  end;
   inherited;
end;

procedure TF_NFeSaidaBt.EditDescontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CalculaValores;
end;

procedure TF_NFeSaidaBt.EditQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CalculaValores;

end;

procedure TF_NFeSaidaBt.EditTotalLiqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CalculaValores;
end;

procedure TF_NFeSaidaBt.EditValorTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CalculaValores;
end;

procedure TF_NFeSaidaBt.EditValorUnitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CalculaValores;
end;

procedure TF_NFeSaidaBt.Finalidade_NFe;
begin

  oCdsFINALIDADENOTA.Value := 0;

  {
  informar o código da finalidade de emissão da NF-e:
  1 - NF-e normal;
  2 - NF-e complementar;
  3 - NF-e de ajuste;
  4 - Devolução
  }
end;

procedure TF_NFeSaidaBt.FormCreate(Sender: TObject);
begin

  Regra := TRegrasNFE.Create;

 // pnTitulo.caption := 'Emissão de NFe - Nota Fiscal Eletrônica 3.1';

  //CarregaConfiguracoesNFE;

  inherited;

end;

procedure TF_NFeSaidaBt.FormShow(Sender: TObject);
var
  ES: string;
  IdNota: integer;
begin
  inherited;

  CarregaConfiguracoes;

  if oCds.State = dsInsert then
  begin
    //ZeraEdits;

   oCdsID.Value := StrToInt(ConsultaRegistroId('gen_id("GEN_NFE_CABECALHO_ID",1) as id', 'id', 'rdb$database'));

    dtEmissao.Date := Date;
    dtEntradaSaida.Date := Date;

    oDS.DataSet.FieldByName('AMBIENTE').Value := oCdsEmitenteAmbiente.AsString;

    //ES := ConsultaRegistroSimples(DBEditCFOPNota.Text, 'ID', 'EntradaSaida', 'nfe_cfop');
    ES := 'E';

    if ES = 'E' then
      RadioEntradaSaida.ItemIndex := 0;

    if ES = 'S' then
      RadioEntradaSaida.ItemIndex := 1;

    Dm.sqlNFeCabecalho.Close;
    Dm.sqlNFeCabecalho.CommandText:='';
    Dm.sqlNFeCabecalho.CommandText:=('Select * from NFE_CABECALHO Where ID=0');
    Dm.sqlNFeCabecalho.Open;

    oCdsEntradaSaida.Value := ES;
    oCdsSERIE.Value := SerieNFe;

    oCdsNNota.Value := Incrementa('NNota', 'NFE_Cabecalho', 'Where IDEmitente = ' + oCdsEmitenteID.AsString +
      ' and AMBIENTE = ' + QuotedStr(oCdsEmitenteAmbiente.AsString) + ' and EntradaSaida = ' +
      QuotedStr(oCdsEntradaSaida.AsString) + ' and SERIE = ' + oCdsSERIE.AsString);


    oCdsDataEmissao.AsDateTime := dtEmissao.Date;
    oCdsDATAENTRADASAIDA.AsDateTime := dtEntradaSaida.Date;
    oCdsHoraEntradaSaida.Value := FormatDateTime('hh:mm:ss', now);

    oCdsModFrete.Value := 3;
    oCdsCFOP.Value := IsInteger(oCdsEmitenteCFOPPadrao.AsString);

    oCdsItens.Close;
    oCdsItens.Open;

    dtEmissao.Date := Date;
    dtEntradaSaida.Date := Date;

    DBEditCFOPNota.SetFocus;

  if oCdsEmitente.RecordCount = 0 then
  begin
    if DM.tmsMSGQ('Informação','Cadastro do emitente não configurado.') = mrOk then
    abort;
  end
  else oCdsIDEMITENTE.Value :=  oCdsEmitenteID.Value;

  end;

  if oCds.State = dsBrowse then
  begin

    IdNota := oCdsID.Value;

    if IdNota = 0 then
      exit;

    Dm.sqlNFeItens.Close;
    Dm.sqlNFeItens.Params.ParamByName('ID').AsInteger := IdNota;
    dtEmissao.Date := oCdsDataEmissao.AsDateTime;
    dtEntradaSaida.Date := oCdsDataEmissao.AsDateTime;
    Dm.sqlNFeItens.Open;

    oCdsItens.Close;
    oCdsItens.Open;

    CalculaNota;

  end;

  if FileExists(oCdsEmitenteLogo.AsString) then
    imgLogoNFE.Picture.LoadFromFile(oCdsEmitenteLogo.AsString);

  Ambiente(oCdsEmitenteAmbiente.AsString);
  CrtEmitente.iRegime := oCdsEmitenteCodTipoRegime.AsInteger;

  dtEmissao.Date := Date;
  dtEntradaSaida.Date := Date;

  imgLogoNFE.Stretch := Dm.sqlConfiguracoesDANFE_LOGOEXPANDIDA.AsString = '1';
  imgLogoNFE.Proportional := Dm.sqlConfiguracoesDANFE_LOGOEXPANDIDA.AsString = '0';

end;


procedure TF_NFeSaidaBt.Gera_Chave;
begin

  Gera_cNFe;

 //Esta função não é valida para o pacote de liberação versão PL005a e inferiores
 edtChave.text := fncGeraChave_v200(Pchar(oCdsEmitenteCODUF.AsString),                                   //Código da UF do emitente do Documento Fiscal
                                 Pchar(formatdatetime('YYMM', strtodatetime(oCdsDATAEMISSAO.AsString))), //Ano e Mês de emissão da NF-e
                                 Pchar(oCdsEmitenteCNPJ.AsString),                                       //CNPJ do emitente
                                 Pchar(oCdsEmitenteMODELODANFE.AsString),                                //Modelo do Documento Fiscal
                                 Pchar(NumStuff(oCdsSERIE.AsString, 3)),                                 //Série do Documento Fiscal
                                 Pchar(NumStuff(oCdsNNOTA.AsString, 3)),                                 //Número do Documento Fiscal
                                 Pchar(oCdsEmitenteFORMAEMISSAO.AsString),                               //Forma de emissão da NF-e
                                 Pchar(NumStuff(IntToStr(cNF), 3)),                                      //Código Numérico que compõe a Chave de Acesso
                                 true);

 //Calcula o DV
 cDV := fncDVNFe(PChar(copy(edtChave.text, 0, length(edtChave.text)-1)));

 //Atualiza o DV no campo respectivo da NFe
// ValueListEditor1.Values['cDV'] := edit2.Text;

 //Atualiza o campo respectivo da NFe
 edtChave.text := 'NFe' + edtChave.Text;

 // Atualiza a Chave gerada na tabela NFe_Cabecalho
 oCdsCHAVEACESSO.Value := edtChave.text;

end;

procedure TF_NFeSaidaBt.Gera_cNFe;
var
 my_cNF: integer;
begin
 //cNF é um campo de valor randômico com 8 caracteres que compoe a chave de acesso da NFe
 //O valor ramdômico que deve ser gerado pela sua aplicação
 Randomize;

 my_cNF := Random(99999999);

//Atualiza o campo respectivo da NFe
 cNF := my_cNF;
end;

procedure TF_NFeSaidaBt.HabDesabBotoesComando;
begin
{
  // Nova se nao estiver em edicao ou inserção ou se estive inativo
  btNovaNota.Visible := dtsCabecalho.DataSet.State in [dsBrowse, dsInactive];

  // Salvar somente se estive em modo de ins ou edit
  btSalvarNota.Visible := dtsCabecalho.DataSet.State in [dsinsert, dsedit];

  // btCancelarLancamento.Visible := dtsCabecalho.DataSet.State in [dsinsert, dsedit];
  btCancelarLancamento.Enabled := dtsCabecalho.DataSet.State in [dsinsert, dsedit];

  // Excluir e Cancelar somente se estive uma nota seleciona e nao estive T e nem C
  btExcluirNota.Enabled := (dtsCabecalho.DataSet.State in [dsBrowse]) and (StatusDaNota <> 'T') and (StatusDaNota <> 'C');

  // Alterar somente se estive uma nota seleciona e nao estive T e nem C
  btAlterarNota.Visible := (dtsCabecalho.DataSet.State in [dsBrowse]) and (StatusDaNota <> 'T') and (StatusDaNota <> 'C');
  btAlterarNota.Enabled := (dtsCabecalho.DataSet.State in [dsBrowse]) and (StatusDaNota <> 'T') and (StatusDaNota <> 'C');

  // Se Estive visualizando e for dif de Transmitida e cancelada
  // if dtsItens.DataSet.IsEmpty then
  btEnviarNotas.Enabled := (dtsCabecalho.DataSet.State in [dsBrowse]) and (StatusDaNota <> 'T') and (StatusDaNota <> 'C');

  btImprimir.Enabled := (dtsCabecalho.DataSet.State in [dsBrowse]);
  if StatusDaNota = 'T' then
    btImprimir.Caption := 'Im&primir'
  else
    btImprimir.Caption := '&Pré-Visualizar';

  // Botoes de Comando
  btConfirmarItem.Enabled := (dtsCabecalho.DataSet.State in [dsinsert, dsedit]) and (StatusDaNota <> 'T') and (StatusDaNota <> 'C');
  btExcluirItem.Enabled := (dtsCabecalho.DataSet.State in [dsinsert, dsedit]) and (StatusDaNota <> 'T') and (StatusDaNota <> 'C');

  btLocalizar.Enabled := (dtsCabecalho.DataSet.State in [dsBrowse]);

  // btSair.Enabled := dtsCabecalho.DataSet.State in [dsBrowse];
}
end;

function TF_NFeSaidaBt.InsereItemAutomatico: Boolean;
var
  CR: string;
begin

  Regra.RegraCFOP.MudaCFOP(IsInteger(DBEditCFOPNota.Text), NFEItens.CodCST);

  DM.sqlNFeItens.Append;

  // Links
  oCdsItensIDNOTA.Value := oCdsID.AsInteger;

  // NCM/SH
  oCdsItensNCM.Value := NFEItens.NCM;

  oCdsItensCodProduto.Value := IntToStr(NFEItens.IDProduto);
  oCdsItensCodEAN.Value := copy(NFEItens.CodEAN, 0, oCdsItensCodEAN.Size);
  oCdsItensProduto.Value := copy(NFEItens.Produto, 0, oCdsItensCodEAN.Size);;
  oCdsItensCFOP.Value := Regra.RegraCFOP.iCFOP;
  oCdsItensUnComercial.Value := NFEItens.UN;
  oCdsItensQtdComercial.Value := EditQuantidade.Value;
  oCdsItensUnComercial.Value := NFEItens.UN;
  oCdsItensValorUnComercial.Value := EditValorUnit.Value;
  oCdsItensValorProduto.Value := oCdsItensValorUnComercial.Value;
  oCdsItensUnTrib.Value := NFEItens.UN;
  oCdsItensQtdTrib.Value := oCdsItensQtdComercial.Value;

  // Regras CST
  CR := oCdsConsumoRevenda.AsString;
  Regra.RegraCST.MudaCST(NFEItens.CodCST, CR, oCdsCNPJDestinatario.AsString);
  oCdsItensICMS_CSTCSOSN.Value := NFEItens.CodCST;

  // Altera Cabecalho Conforme tabela
  if CR <> oCdsConsumoRevenda.AsString then
  begin
    if oCds.State in [dsinsert, dsedit] then
    else
      oCds.Edit;

    oCdsConsumoRevenda.Value := CR;

  end;

  oCdsItens.Edit;

  oCdsItensIPI_PIPI.Value := NFEItens.pIPI;
  oCdsItensIPI_ValorIPI.Value := (EditTotalLiq.Value * NFEItens.pIPI) / 100;

  oCdsItensICMS_Origem.Value := NFEItens.CodOrigem;
  oCdsItensICMS_ModBC.Value := NFEItens.ModBCICMS;
  oCdsItensICMS_ModBCST.Value := NFEItens.ModBCICMSST;

  // Regra Aqui de pICMS so existir se for 00,101,102
  oCdsItensICMS_PICMS.Value := NFEItens.pICMS;

  { : (REGRAS CST e CSOSN) }
  Regra.ValorICMS(NFEItens.CodCST, EditQuantidade.Value, EditValorUnit.Value, EditDesconto.Value, NFEItens.pICMS, NFEItens.RedICMS,
    NFEItens.pMVA, NFEItens.pIVA, NFEItens.pIPI);

  // Valores das BC e ICMS e ICMS ST
  oCdsItensICMS_VBCICMS.Value := Regra.Valor_BCICMS;
  oCdsItensICMS_VBCICMSST.Value := Regra.Valor_BCICMSST;

  oCdsItensICMS_VICMS.Value := Regra.Valor_ICMS;
  oCdsItensICMS_VICMSST.Value := Regra.Valor_ICMSST;

  oCdsItensICMS_PMVAST.Value := NFEItens.pMVA;

  // Regra Aqui de pICMS so existir se for 00,101,102
  oCdsItensICMS_PRedBC.Value := NFEItens.RedICMS;

  // Regra Aqui de ICMS ST
  // Dm.QryNFeItensICMS_PICMSST.Value := 0;
  // Dm.QryNFeItensICMS_VICMSST.Value := 0;

  // Regra
  oCdsItensIPI_CST.Value := 0;

  { : Quantidade }
  oCdsItensQtdComercial.Value := EditQuantidade.Value;
  oCdsItensQtdTrib.Value := EditQuantidade.Value;

  { : Valor Unitario }
  oCdsItensValorUnComercial.Value := EditValorUnit.Value;
  oCdsItensValorUnTrib.Value := EditValorUnit.Value;

  { : Desconto }
  oCdsItensValorDesconto.Value := EditDesconto.Value;

  { : Totais }
  oCdsItensValorTotal.Value := EditQuantidade.Value * EditValorUnit.Value;
  oCdsItensValorTotalLiquido.Value := EditQuantidade.Value * EditValorUnit.Value - EditDesconto.Value;

  // Dm.QryNFeItensValorFrete.Value := EditVFrete.Value;
  // Dm.QryNFeItensValorSeguro.Value := EditVSeguro.Value;
  // Dm.QryNFeItensValorFrete.Value := EditVFrete.Value;

  oCdsItens.Post;

  { : Atualiza values dos Edits }
  EditBCICMS.Value := EditBCICMS.Value + Regra.Valor_BCICMS;
  EditBCICMSST.Value := EditBCICMSST.Value + Regra.Valor_BCICMSST;

  EditvICMS.Value := EditvICMS.Value + Regra.Valor_ICMS;
  EditvICMSST.Value := EditvICMSST.Value + Regra.Valor_ICMSST;

  EditVIPI.Value := EditVIPI.Value + (EditTotalLiq.Value * NFEItens.pIPI) / 100;

  EditVDesconto.Value := EditVDesconto.Value + EditDesconto.Value;

  EditVTotalProd.Value := EditVTotalProd.Value + EditValorTotal.Value;

  EditVTotalNota.Value := EditVTotalNota.Value + EditvICMSST.Value + EditVFrete.Value + EditVIPI.Value + EditTotalLiq.Value;

  { : Zera variaveis }
  Regra.Valor_BCICMS := 0;
  Regra.Valor_BCICMSST := 0;
  Regra.Valor_ICMS := 0;
  Regra.Valor_ICMSST := 0;
end;

function TF_NFeSaidaBt.InsereItemManual: Boolean;
var
  CR: string;
  Det: TDetalhaItem;
begin

  Regra.RegraCFOP.MudaCFOP(IsInteger(DBEditCFOPNota.Text), NFEItens.CodCST);

  { : (REGRAS CST e CSOSN) }
  Regra.ValorICMS(NFEItens.CodCST, EditQuantidade.Value, EditValorUnit.Value, EditDesconto.Value, NFEItens.pICMS, NFEItens.RedICMS,
    NFEItens.pMVA, NFEItens.pIVA, NFEItens.pIPI);

  Det := TF_NFeLancaItem.DetalhaItem(EditQuantidade.Value, EditValorUnit.Value, EditValorTotal.Value, EditDesconto.Value, EditTotalLiq.Value,
    NFEItens.pICMS, Regra.Valor_ICMS, NFEItens.RedICMS, NFEItens.pIPI, 0, NFEItens.pIVA, NFEItens.CodCST, Regra.RegraCFOP.iCFOP,
    NFEItens.ModBCICMS, NFEItens.ModBCICMSST);

  oCdsItens.Insert;

  // Links

  oCdsItensID.Value := StrToInt(ConsultaRegistroId('gen_id("GEN_NFE_ITENS_ID",1) as id', 'id', 'rdb$database'));
  oCdsItensIDNota.Value := oCdsID.AsInteger;

  // NCM/SH
  oCdsItensNCM.Value := NFEItens.NCM;

  oCdsItensCodProduto.Value := IntToStr(NFEItens.IDProduto);
  oCdsItensCodEAN.Value := NFEItens.CodEAN;
  oCdsItensProduto.Value := NFEItens.Produto;

  oCdsItensICMS_CSTCSOSN.Value := Det.dCST;
  oCdsItensCFOP.Value := Det.dCFOP;

  oCdsItensUnComercial.Value := NFEItens.UN;
  oCdsItensQtdComercial.Value := Det.dQtd;

  oCdsItensValorUnComercial.Value := Det.dValorUnit;
  oCdsItensValorProduto.Value := Det.dValorUnit;

  oCdsItensUnTrib.Value := NFEItens.UN;
  oCdsItensQtdTrib.Value := Det.dQtd;

  oCdsItensIPI_PIPI.Value := Det.dIPIp;
  oCdsItensIPI_ValorIPI.Value := Det.dIPIr;

  oCdsItensICMS_Origem.Value := NFEItens.CodOrigem;
  oCdsItensICMS_ModBC.Value := Det.dModBC;
  oCdsItensICMS_ModBCST.Value := Det.dModBC;


  // Regra Aqui de pICMS so existir se for 00,101,102
  oCdsItensICMS_PICMS.Value := Det.dICMSp;

  // Valores das BC e ICMS e ICMS ST
  oCdsItensICMS_VBCICMS.Value := Det.dBCICMS;
  oCdsItensICMS_VBCICMSST.Value := Det.dBCICMSST;

  oCdsItensICMS_VICMS.Value := Det.dICMSr;
  oCdsItensICMS_VICMSST.Value := Det.dICMSSTr;

  oCdsItensICMS_PMVAST.Value := NFEItens.pMVA;

  // Regra Aqui de pICMS so existir se for 00,101,102
   oCdsItensICMS_PRedBC.Value := Det.dReducao;

  // Regra Aqui de ICMS ST
  // oCdsItensICMS_PICMSST.Value := 0;
  // oCdsItensICMS_VICMSST.Value := 0;

  // Regra
  oCdsItensIPI_CST.Value := 0;

  { : Quantidade }
  oCdsItensQtdComercial.Value := Det.dQtd;
  oCdsItensQtdTrib.Value := Det.dQtd;

  { : Valor Unitario }
  oCdsItensValorUnComercial.AsFloat := Det.dValorUnit;
  oCdsItensValorUnTrib.AsFloat := Det.dValorUnit;

  { : Desconto }
  oCdsItensValorDesconto.Value := Det.dValorDesconto;

  { : Totais }
  oCdsItensValorTotal.Value := Det.dValorTotal;
  oCdsItensValorTotalLiquido.Value := Det.dValorLiquido;

  // oCdsItensValorFrete.Value := EditVFrete.Value;
  // oCdsItensValorSeguro.Value := EditVSeguro.Value;
  // oCdsItensValorFrete.Value := EditVFrete.Value;

  oCdsItens.Post;
  oCdsItens.ApplyUpdates(-1);

  { : Atualiza values dos Edits }
  EditBCICMS.Value := EditBCICMS.Value + Det.dBCICMS;
  EditBCICMSST.Value := EditBCICMSST.Value + Det.dBCICMSST;

  EditvICMS.Value := EditvICMS.Value + Det.dICMSr;
  EditvICMSST.Value := EditvICMSST.Value + Det.dICMSSTr;

  EditVIPI.Value := EditVIPI.Value + Det.dIPIr;

  EditVDesconto.Value := EditVDesconto.Value + Det.dValorDesconto;

  EditVTotalProd.Value := EditVTotalProd.Value + Det.dValorTotal;

  EditVTotalNota.Value := EditVTotalNota.Value + EditvICMSST.Value + EditVFrete.Value + EditVIPI.Value + Det.dValorLiquido;

  { : Zera variaveis }
  Regra.Valor_BCICMS := 0;
  Regra.Valor_BCICMSST := 0;
  Regra.Valor_ICMS := 0;
  Regra.Valor_ICMSST := 0;


end;

function TF_NFeSaidaBt.InsereItemNota(idItem: integer): Boolean;
begin

  if oCds.State in [dsedit, dsinsert] then
  begin
    oCds.Post;
    oCds.Edit;
  end;

  // Lanca Itens nas Variaveis
  ProdutoNFe(idItem);

  if DetalhaLancamentoProduto then
    InsereItemManual
  else
    InsereItemAutomatico;

end;

function TF_NFeSaidaBt.LocalizaProduto(abreTela: Boolean): Boolean;
begin

  if (oCds.State <> dsEdit) and (oCds.State <> dsInsert) then
    exit;

  DM.sqlProdutos.open;
  F_ConsultaProdutos := TF_ConsultaProdutos.Create(Application);
  F_ConsultaProdutos.IDPesquisa:= EditCodNomeProduto.Text;
  F_ConsultaProdutos.ShowModal;
  FreeAndNil(F_ConsultaProdutos);

  if DM.sqlProdutos.Active = true then
  begin
    NFEItens := ProdutoNFe(IsInteger(DM.sqlProdutos.FieldByName('ID').Value));
    EditCodNomeProduto.Text := NFEItens.Produto;
    EditValorUnit.Value := NFEItens.PrecoVenda;
    EditQuantidade.SetFocus;
    {
    oCdsCodCidade.Value := DM.QryAux.FieldByName('CodCidade').Value;
    oCdsCidade.Value := DM.QryAux.FieldByName('Cidade').Value;
    oCdsUF.Value := DM.QryAux.FieldByName('SIGLA').Value;
    oCdsCodUF.Value := DM.QryAux.FieldByName('CodUF').Value;
    }
  end;
  DM.sqlProdutos.close;

  CalculaValores;
end;

procedure TF_NFeSaidaBt.MudaCFOPInterestadual;
var
  sCFOPid, sCFOPint, sCFOPdesc: string;
//  RegraCFOP: TRegrasCFOP;
begin
{
  // Caso a uf do dest seja dif da uf do emitente
  if Dm.QryCadEmitenteMudaCFOPInte.AsString = 'S' then
  begin
    try
      RegraCFOP := TRegrasCFOP.Create;

      sCFOPid := ConsultaRegistroSimples(Dm.QryNFeCabecalhoCFOP.AsString, 'ID', 'ID', 'NFE_CFOP');

      // se o dest é de fora do estado muda CFOP
      if Dm.QryNFeCabecalhoCodUFDestinatario.AsString <> Dm.QryCadEmitenteCodUF.AsString then
      begin
        sCFOPint := IntToStr(RegraCFOP.MudaCfopTOForaUF(IsInteger(sCFOPid)));
        sCFOPdesc := ConsultaRegistroSimples(sCFOPint, 'ID', 'Descricao', 'NFE_CFOP');

        Dm.QryNFeCabecalhoCFOPDesc.Value := sCFOPdesc;
        Dm.QryNFeCabecalhoCFOP.Value := IsInteger(sCFOPint);
      end
      else // se o dest é de dentro do estado muda CFOP
      begin
        sCFOPint := IntToStr(RegraCFOP.MudaCfopTODentroUF(IsInteger(sCFOPid)));
        sCFOPdesc := ConsultaRegistroSimples(sCFOPint, 'ID', 'Descricao', 'NFE_CFOP');

        Dm.QryNFeCabecalhoCFOPDesc.Value := sCFOPdesc;
        Dm.QryNFeCabecalhoCFOP.Value := IsInteger(sCFOPint);
      end;

    finally
      RegraCFOP.Free;
    end;

  end;
}
end;

procedure TF_NFeSaidaBt.oDSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnCabecalho.Enabled := oDS.DataSet.State in [dsedit, dsinsert];

  btCFOP.Enabled := oDS.DataSet.State in [dsedit, dsinsert];
  btDest.Enabled := oDS.DataSet.State in [dsedit, dsinsert];
  btTransportador.Enabled := oDS.DataSet.State in [dsedit, dsinsert];
  spbtLocalizaProduto.Enabled := oDS.DataSet.State in [dsedit, dsinsert];
  dtEmissao.Enabled := oDS.DataSet.State in [dsedit, dsinsert];
  dtEntradaSaida.Enabled := oDS.DataSet.State in [dsedit, dsinsert];

  btConfirmarItem.Enabled := oDS.DataSet.State in [dsedit, dsinsert];
  btExcluirItem.Enabled := oDS.DataSet.State in [dsedit, dsinsert];

  btRecalcular.Enabled := oDS.DataSet.State in [dsedit, dsinsert];

  EditCodNomeProduto.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditQuantidade.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditValorUnit.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditValorTotal.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditDesconto.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditTotalLiq.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;

  DBGrid1.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditBCICMS.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditBCICMSST.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditvICMS.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditvICMSST.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditVFrete.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditVSeguro.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditVOutras.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditVIPI.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditVDesconto.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditVTotalProd.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;
  EditVTotalNota.ReadOnly := oDS.DataSet.State in [dsedit, dsinsert] = False;

  StatusDaNota;

  HabDesabBotoesComando;
end;

function TF_NFeSaidaBt.SerieNFe: integer;
begin
//  case TTipoEmissao(TipoEmissao) of
//    temNormal:
//      begin

        if oCdsEntradaSaida.AsString = 'S' then
          Result := 1;

        if oCdsEntradaSaida.AsString = 'E' then
          Result := 2;

        if (Result <> 1) and (Result <> 2) then
        if DM.tmsMSGQ('Informação','A Nota de Número "' + Dm.sqlNFeCabecalhoNNota.AsString + '" é nota de Saída?') = mrOk then
            Result := 1
          else
            Result := 2;

//      end;
{
    temScan:
      begin

        if Dm.sqlNFeCabecalhoEntradaSaida.AsString = 'S' then
          Result := 900;

        if Dm.sqlNFeCabecalhoEntradaSaida.AsString = 'E' then
          Result := 999;

        if (Result <> 900) and (Result <> 999) then
          if DM.tmsMSGQ('A Nota de Número "' + Dm.sqlNFeCabecalhoNNota.AsString + '" é nota de Saída?') = mrOk then
            Result := 900
          else
            Result := 999;

      end;

  end;
}
end;

procedure TF_NFeSaidaBt.spbtLocalizaProdutoClick(Sender: TObject);
begin
  inherited;
  if oCds.State in [dsBrowse, dsInactive] then
    exit;

  LocalizaProduto(true);
end;

function TF_NFeSaidaBt.StatusDaNota: string;
begin
  lbStatus.Font.Color := clWhite;

  // Transmitida - autorizada
  if oCdsStatusNota.Value = 'T' then
  begin
    lbStatus.Caption := 'Autorizada';
    lbStatus.Color := $0052A400;
    Result := 'T';
  end;

  // Cancelada
  if oCdsStatusNota.Value = 'C' then
  begin
    lbStatus.Caption := 'Cancelada';
    lbStatus.Color := $00AAD5FF;
    lbStatus.Font.Color := clBlack;
    Result := 'C';
  end;

  // Rejeitada
  if oCdsStatusNota.Value = 'R' then
  begin
    lbStatus.Caption := 'Rejeitada';
    lbStatus.Color := clRed;
    Result := 'R';
  end;

  // Denegada
  if oCdsStatusNota.Value = 'D' then
  begin
    lbStatus.Caption := 'Denegada';
    lbStatus.Color := $000000BB;
    Result := 'D';
  end;

  // Sem Reposta ou digitada
  if oCdsStatusNota.Value = '' then
  begin
    lbStatus.Caption := 'Lançada';
    lbStatus.Color := $00EAF0E8;
    lbStatus.Font.Color := clBlack;
    Result := '';
  end;

  // Sem Reposta
  if (oCdsStatusNota.Value = '') or (oCdsStatusNota.IsNull) then
  begin
    lbStatus.Caption := '...';
    lbStatus.Color := $00E9C778;
    lbStatus.Font.Color := clBlack;
    Result := '';
  end;
end;

procedure TF_NFeSaidaBt.Versao_NFe;
begin
 vNF := '3.10';  // Versao da Emissao NFe
end;

procedure TF_NFeSaidaBt.ZeraEdits;
begin
  EditBCICMS.Value := 0;
  EditBCICMSST.Value := 0;
  EditvICMS.Value := 0;
  EditvICMSST.Value := 0;
  EditVFrete.Value := 0;
  EditVSeguro.Value := 0;
  EditVOutras.Value := 0;
  EditVIPI.Value := 0;
  EditVDesconto.Value := 0;
  EditVTotalProd.Value := 0;
  EditVTotalNota.Value := 0;
end;

end.
