unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, SHDocVw, OleCtrls, DateUtils;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    Memo2: TMemo;
    Button12: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    WebBrowser1: TWebBrowser;
    SaveDialog1: TSaveDialog;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    ComboBox2: TComboBox;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    TabSheet3: TTabSheet;
    Memo3: TMemo;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Button1: TButton;
    Label6: TLabel;
    Edit1: TEdit;
    Button6: TButton;
    CheckBox2: TCheckBox;
    Label4: TLabel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Form1: TForm1;
 xml_filename: String;

implementation

uses Unit_NetworkTest;

{$R *.dfm}

 //Declara��o de Fun��es disponiveis na transmissaoNFe32dll.dll para transmiss�o de arquivos XML de NFe
 //Decla��o de fun��es onde o conte�do completo do XML a ser transmitido � passado como par�mtro PChar
 function fncNfeRecepcao        (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncCadConsultaCadastro(sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncNfeCancelamento    (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncNfeConsulta        (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncNfeInutilizacao    (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncNfeRetRecepcao     (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncNfeStatusServico   (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncRecepcaoEvento     (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; StdCall; external 'transmissaoNFe32dll.dll';
 function fncNfeConsultaDest    (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeDownloadNF      (sXML: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; stdcall; external 'transmissaoNFe32dll.dll';

 //Decla��o de fun��es onde � passado o path do XML a ser transmitido e indicado o path onde a dll salvar� o retorno da transmiss�o
 //Nas fun��es declaradas (abaixo) a dll utiliza internamente as mesmas fun��es originais (acima) para fazer a carga do arquivo, transmiss�o e retorno
 function fncNfeRecepcaoPath        (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncCadConsultaCadastroPath(sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeCancelamentoPath    (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeConsultaPath        (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeInutilizacaoPath    (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeRetRecepcaoPath     (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeStatusServicoPath   (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncRecepcaoEventoPath     (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeConsultaDestPath    (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncNfeDownloadNFPath      (sXMLPath, RetornoPath: PChar; iUF, iTipo: integer; versaoDados: PChar; usa_SCAN: Boolean; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';

 function fncSCERecepcaoRFB     (sXML: PChar; iTipo: integer; versaoDados: PChar; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; stdcall; external 'transmissaoNFe32dll.dll';
 function fncSCEConsultaRFB     (sXML: PChar; iTipo: integer; versaoDados: PChar; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): PChar; stdcall; external 'transmissaoNFe32dll.dll';

 function fncSCERecepcaoRFBPath (sXMLPath, RetornoPath: PChar; iTipo: integer; versaoDados: PChar; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';
 function fncSCEConsultaRFBPath (sXMLPath, RetornoPath: PChar; iTipo: integer; versaoDados: PChar; retorno_detalhado: Boolean; IgnoreInvalidCert: Boolean): integer; stdcall; external 'transmissaoNFe32dll.dll';

 //Tabela de c�digos de UF conforme IBGE:
 //NORTE
 // RO-11-Rond�nia
 // AC-12-Acre
 // AM-13-Amazonas
 // RR-14-Roraima
 // PA-15-Par�
 // AP-16-Amap�
 // TO-17-Tocantins
 //NORDESTE
 // MA-21-Maranh�o
 // PI-22-Piau�
 // CE-23-Cear�
 // RN-24-Rio Grande do Norte
 // PB-25-Para�ba
 // PE-26-Pernambuco
 // AL-27-Alagoas
 // SE-28-Sergipe
 // BA-29-Bahia
 //SUDESTE
 // MG-31-Minas Gerais
 // ES-32-Esp�rito Santo
 // RJ-33-Rio de Janeiro
 // SP-35-S�o Paulo
 //SUL
 // PR-41-Paran�
 // SC-42-Santa Catarina
 // RS-43-Rio Grande do Sul
 //Regi�o Centro-Oeste	PR
 // MS-50-Mato Grosso do Sul
 // MT-51-Mato Grosso
 // GO-52-Goi�s
 // DF-53-Distrito Federal
 
 //SCAN=Sistema de Conting�ncia do Ambiente Nacional (SCAN)
 //Sistema de conting�ncia usado quando os servidores de uma determinada UF encontram-se offline
 
 //SVAN=Sefaz Virtual AN (Ambiente Nacional)
 //Estados Emissores pela Sefaz Virtual AN (Ambiente Nacional): CE, ES, MA, PA, PI e RN.
 //Conforme listado em http://www.nfe.fazenda.gov.br/portal/VerificacaoDeServicos/VerificacaoServicos.aspx
 
 //SVRS=Sefaz Virtual RS (Rio Grande do Sul)
 //Estados Emissores pela Sefaz Virtual RS (Rio Grande do Sul): AC, AL, AM, AP, DF, MS, PB, RJ, RO, RR, SC, SE e TO.
 //Conforme listado em http://www.nfe.fazenda.gov.br/portal/VerificacaoDeServicos/VerificacaoServicos.aspx
 
 //DPEC = Declara��o Pr�via de Emiss�o em Conting�ncia
 //O arquivo XML de DPEC deve ser enviado para o Sistema de Conting�ncia Eletr�nica � SCE via Web Service ou via upload atrav�s de p�gina www.nfe.fazenda.gov.br
 
//Seleciona XMl a ser transmitido
procedure TForm1.Button12Click(Sender: TObject);
begin
 //Diret�rio inicial ser� o diret�rio onde a aplica��o est� executando
 opendialog1.InitialDir := ExtractFileDir(application.ExeName);

 //Abre caixa de sele��o de arquivos
 if OpenDialog1.Execute then
  begin
   xml_filename := OpenDialog1.FileName;

   //Apresenta XML escolhido em modo browser
   WebBrowser1.Navigate(xml_filename);

   //Apresenta XML escolhido em modo texto
   memo1.Lines.LoadFromFile(xml_filename);

   PageControl1.ActivePageIndex := 1;
  end;
end;

//Esta fun��o recebe uma UF e retorna o c�digo da UF conforme tabela do IBGE acima
//Alterda em 26/11/2013 para incluir as op��es 'SVAN','SVRS','SVCAN', 'SVCRS'
function Cod_UF_IBGE(MyUF: String): integer;
var
 i: integer;
const
 UF: array[1..31] of String[2] = ('RO','AC','AM','RR','PA','AP','TO','MA','PI','CE','RN','PB','PE',
                                  'AL','SE','BA','MG','ES','RJ','SP','PR','SC','RS','MS','MT','GO','DF','AN','SR','SV','VC');
 Cod_IBGE: array[1..31] of integer = (11,12,13,14,15,16,17,21,22,23,24,25,26,
                                      27,28,29,31,32,33,35,41,42,43,50,51,52,5,-1,-2,-3,-4);
begin
 result := -1;

 if trim(MyUF) = '' then
  exit;

 try
  for i := 0 to High(UF) do
   begin
    if MyUF = UF[i] then
     begin
      result := Cod_IBGE[i];
      break;
     end;
   end;
  except
   result := -1;
  end;
end;

function copy_SubStr(SrcStr: String; SubStr: String; Count: integer): String;
begin
 result := copy(SrcStr, pos(SubStr, SrcStr) + length(SubStr), Count);
end;

//--- Remove caracteres invalidos de uma ShortString ---
//Usage: "NotToRemoveStr" is the Char Array NOT to be removed, "FromStr" is the ShortString to be removed from
Function RemoveInvalid(NotToRemoveStr: String; FromStr: String): PChar;
var
 TempStr: String;
 Res: String;
 x: integer;
begin
 TempStr := UpperCase(FromStr);
 Res := '';
 for x := 1 to Length(TempStr) do
  begin
   if Pos(TempStr[x], NotToRemoveStr) <> 0 then
    Res := Res + FromStr[x];
  end;
 Result := PChar(Res);
end;

function RemoveAcento(Str: String): string;
const
 ComAcento = '����������������������������';
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

 //Str := RemoveInvalid(AlfaArray, Str);      //TODO: Esta linha foi comentada pois estava removendo aspas simples q apareciam em alguns arquivos, exemplo: versao='1.00'
 Result := Str;
end;

//Transmite XML selecionado
{
 Descri��o dos par�metros:
 sXML : PChar;
   Conte�do do XML a ser transmitido
 iUF: Integer;
   C�digo da Unidade da Federa��o para a qual deseja fazer a transmiss�o conforme tabela IBGE
   Os dados ser�o enviados para a UF indicada ou para o SEFAZ Virtual caso a UF n�o d� suporte conforme tabela:
     Estados Emissores pela Sefaz Virtual RS (VR): AC, AL, AM, AP, MS, PB, RJ, RR, SC, SE e TO
     Estados Emissores pela Sefaz Virtual AN (NR): CE, ES, MA, PA, PI, PR e RN
 iTipo: integer;
   Op��o ainda n�o implementada
   Consultar item 9 do manual de integra��o
   As Secretarias de Fazenda Estaduais dever�o manter dois ambientes para recep��o de NFe.
   O ambiente de homologa��o � espec�fico para a realiza��o de testes e integra��o das
   aplica��es do contribuinte durante a fase de implementa��o e adequa��o do sistema de
   emiss�o de NF-e do contribuinte.
   A autoriza��o para emiss�o de NF-e no ambiente de produ��o fica condicionada � pr�via
   aprova��o das equipes de TI e de neg�cios da Secretaria de Fazenda, que dever� avaliar a
   adequa��o, comportamento e performance do sistema de emiss�o de NF-e do contribuinte
   interessado no ambiente de homologa��o.
 versao: String;
   Consultar item 3.4.1 do manual de integra��o
   Vers�o do leiaute de transmiss�o (1.02)
 versaoDados: String
   Consultar item 3.4.1 do manual de integra��o
   O campo versaoDados deve conter a informa��o da vers�o do leiaute da estrutura XML
   armazenada na �rea de dados da mensagem.
}
procedure TForm1.Button1Click(Sender: TObject);
var
 MyiUF, MyiTipo, i: Integer;
 MysXML, MyversaoDados: PChar;
 datahora_ini, datahorafim: TDateTime;
 retorno: Pchar;
 mystr, UF_IBGE: String;
begin
 try
  datahora_ini := now;

  case combobox1.ItemIndex of
   0..27: UF_IBGE := ComboBox1.Text;
   28: UF_IBGE := 'AN'; //SVAN
   29: UF_IBGE := 'SR'; //SVRS
   30: UF_IBGE := 'SV'; //SVCAN
   31: UF_IBGE := 'VC'; //SVCRS

  end;
  //Atribue valores das vari�veis q ser�o passadas como par�metro durante a transmiss�o
  MyiUF         := Cod_UF_IBGE(UF_IBGE);                 //Consultar Anexo VII � Tabelas de UF, Munic�pio e Pa�s do Manual de Integra��o
  MyiTipo       := combobox2.ItemIndex + 1;                     //1 � Produ��o / 2 - Homologa��o
  MysXML        := PChar(memo1.Lines.Text);                     //Conte�do XML a ser transmitido
  MyversaoDados := PChar(copy_SubStr(MysXML, 'versao="', 4));   //vers�o do leiaute da estrutura XML informada na �rea de dados da mensagem

  //Realiza a chamada da fun��o da dll de acordo com o tipo de transa��o escolhida
  //Consulte Manual de Integra��o para informa��es referentes ao valores dos par�metros vers�o e versaoDados no cabe�alho da transmiss�o
  retorno := '';
  case radiogroup1.ItemIndex of
   0: retorno := fncNfeRecepcao        (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
   1: retorno := fncCadConsultaCadastro(MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
   2: retorno := fncNfeCancelamento    (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
   3: retorno := fncNfeConsulta        (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
   4: retorno := fncNfeInutilizacao    (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
   5: retorno := fncNfeRetRecepcao     (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
   6: retorno := fncNfeStatusServico   (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
   7: retorno := fncSCERecepcaoRFB     (MysXML, MyiTipo, MyversaoDados, checkbox3.checked, checkbox4.checked);
   8: retorno := fncSCEConsultaRFB     (MysXML, MyiTipo, MyversaoDados, checkbox3.checked, checkbox4.checked);
   9: retorno := fncRecepcaoEvento     (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
  10: retorno := fncNFeConsultaDest    (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
  11: retorno := fncNFeDownloadNF      (MysXML, MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked);
  end;

  //Este loop foi necess�rio pois o retorno do tipo PChar vem com #0 ao final. Isso fazia com q o ultimo caractere '>' sumisse ao converter PChar para String

  mystr := '';
  i := 0;
  while retorno[i] <> #0 do
   begin
    mystr := mystr + retorno[i];
    inc(i);
   end;

  memo2.Lines.text := mystr;

  //memo2.Lines.text := retorno;

  datahorafim := now;
 except
  showmessage('ATEN�AO: Erro durante a transmiss�o');
  exit;
 end;

 showmessage('XML transmitido com sucesso. Verifique o retorno para informa��es de retorno');

 label5.caption := 'Arquivo transmitido em ' + inttostr(SecondsBetween(datahorafim, datahora_ini)) +  'segundos';
end;

{
function RemoveAcento(Str: string): string;
const
  ComAcento = '����������������������������';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
   if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;
}

//Salva arquivo de retorno
procedure TForm1.Button2Click(Sender: TObject);
//var
// UTF8_Str: String;
begin
 try
  //Diret�rio inicial ser� o diret�rio onde a aplica��o est� executando
  savedialog1.InitialDir := ExtractFileDir(application.ExeName);

  //Concatena nome para arquivo de retorno
  SaveDialog1.FileName := 'retorno_' + combobox1.Text + '_' + ExtractFileName(xml_filename);

  //Salva arquivo de retorno
  if savedialog1.Execute then
   begin
    //Alguns arquivos de retorno da SEFAZ como o de consulta de de status do servi�o s�o retornados com acentua��o o que n�o permite abrir os mesmos no browser
    //Esta fun��o remove tais acentos e elimina o problema
    if checkbox1.Checked then
     memo2.lines.Text := RemoveAcento(memo2.lines.Text);

    //Altera��es para realizar salvamento em formato UTF-8
    //UTF8_Str := Memo2.Lines.Text;
    //UTF8_Str := UTF8Encode(UTF8_Str);
    //UTF8_Str := char($EF) + char($BB) + char($BF) + UTF8_Str;   //adding BOM
    //Memo2.Lines.Text := UTF8_Str;

    //Salvando arquivo
    memo2.Lines.SaveToFile(savedialog1.filename);
   end;
 except
  showmessage('ATEN�AO: Erro durante o salvamento do arquivo de retorno');
  exit;
 end;

 showmessage('Arquivo de retorno salvo com sucesso.' + #13#10 +
             'Consulte os demos respectivos localizados na pasta Geracao_XML paa informa��es sobre como ABRIR e manipular os XMLs de retorno');
end;

//Sistema volta a solicitar que o usu�rio selecione o certificado desejado para a assinatura
//Esta funcionalidade pode ser implementada em seu aplicativo final para desfazer a op��o implementada na tela da dll
procedure TForm1.Button3Click(Sender: TObject);
var
 myfilename: String;
begin
 try
  //Configura o diret�rio onde se encontra o arquivo que armazena o �ndice
  //Da forma que est� implementada aqui s� funciona se a dll estiver localizada no mesmo diret�rio do .exe
  myfilename := ExtractFilePath(application.ExeName) + '\DefCertificado.res';

  //testa se arquivo existe
  if fileexists(myfilename) then
   begin
    //exclue o arquivo q armazena o indice
    //Usu�rio logado no windows deve ter permiss�es sobre o diret�rio e o arquivo em quest�o
    DeleteFile(myfilename);

    showmessage('Arquivo' + myfilename + 'exclu�do. O sistema voltar� a solicitar que o usu�rio selecione o certificado desejado para a assinatura');
   end;
 except                          
  showmessage('Erro durante exclus�o do arquivo ' + myfilename)
 end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 memo1.lines.Clear;
 memo2.lines.clear;
end;


//Os testes implementados nesta fun��o podem ser utilizados antes de se tentar o acesso aos webservices
//de forma a garantir que o computador est� conectado e evitar erros de transmiss�o
procedure TForm1.Button5Click(Sender: TObject);
var
 flags : DWORD;
begin
 if IsNetworkAlive(flags) = 0 then
  ShowMessage('Nenhum tipo de conex�o de rede detectada, Ok.')
 else
  begin
   if (flags and NETWORK_ALIVE_LAN) <> 0 then
    ShowMessage('connected to a local area network');

   if (flags and NETWORK_ALIVE_WAN) <> 0 then
    ShowMessage('connected to a wide area network');

   if (flags and NETWORK_ALIVE_AOL) <> 0 then
    ShowMessage('connected to an aol network');

   if (flags and INTERNET_CONNECTION_MODEM) <> 0 then
    ShowMessage('connected to a modem');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 MyiUF, MyiTipo: Integer;
 MysXML, MyversaoDados: PChar;
 datahora_ini, datahorafim: TDateTime;
begin
 try
  datahora_ini := now;

  //Atribue valores das vari�veis q ser�o passadas como par�metro durante a transmiss�o
  MyiUF         := Cod_UF_IBGE(combobox1.text);                 //Consultar Anexo VII � Tabelas de UF, Munic�pio e Pa�s do Manual de Integra��o
  MyiTipo       := combobox2.ItemIndex + 1;                     //1 � Produ��o / 2 - Homologa��o
  MysXML        := PChar(memo1.Lines.Text);                     //Conte�do XML a ser transmitido
  MyversaoDados := PChar(copy_SubStr(MysXML, 'versao="', 4));   //vers�o do leiaute da estrutura XML informada na �rea de dados da mensagem

  //Realiza a chamada da fun��o da dll de acordo com o tipo de transa��o escolhida
  //Consulte Manual de Integra��o para informa��es referentes ao valores dos par�metros vers�o e versaoDados no cabe�alho da transmiss�o
  case radiogroup1.ItemIndex of
   0: memo2.Lines.Text := inttostr(fncNfeRecepcaoPath        (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
   1: memo2.Lines.Text := inttostr(fncCadConsultaCadastroPath(PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
   2: memo2.Lines.Text := inttostr(fncNfeCancelamentoPath    (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
   3: memo2.Lines.Text := inttostr(fncNfeConsultaPath        (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
   4: memo2.Lines.Text := inttostr(fncNfeInutilizacaoPath    (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
   5: memo2.Lines.Text := inttostr(fncNfeRetRecepcaoPath     (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
   6: memo2.Lines.Text := inttostr(fncNfeStatusServicoPath   (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
   7: memo2.Lines.Text := inttostr(fncSCERecepcaoRFBPath     (PChar(xml_filename), PChar(edit1.text), MyiTipo, MyversaoDados, checkbox3.checked, checkbox4.checked));
   8: memo2.Lines.Text := inttostr(fncSCEConsultaRFBPath     (PChar(xml_filename), PChar(edit1.text), MyiTipo, MyversaoDados, checkbox3.checked, checkbox4.checked));
   9: memo2.Lines.Text := inttostr(fncRecepcaoEventoPath     (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
  10: memo2.Lines.Text := inttostr(fncNFeConsultaDestPath    (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
  11: memo2.Lines.Text := inttostr(fncNFeDownloadNFPath      (PChar(xml_filename), PChar(edit1.text), MyiUF, MyiTipo, MyversaoDados, checkbox2.checked, checkbox3.checked, checkbox4.checked));
  end;

  datahorafim := now;
 except
  showmessage('ATEN�AO: Erro durante a transmiss�o');
  exit;
 end;

 showmessage('Verifique o retorno para informa��es de retorno');

 label5.caption := 'Tempo decorrido ' + inttostr(SecondsBetween(datahorafim, datahora_ini)) +  'segundos';

end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
 //Se os servi�os de Contig�ncia DPEC forem selecionados n�o � preciso indica UF e o envio tb n�o ser� via SCAN, portanto desabilita componentes na tela do demo!
 if (RadioGroup1.ItemIndex = 7) or (RadioGroup1.ItemIndex = 8) then
  begin
   label1.Enabled       := false;
   label4.Enabled       := false;
   combobox1.Enabled    := false;
   checkbox2.Enabled    := false
  end
 else
  begin
   label1.Enabled       := true;
   label4.Enabled       := true;
   combobox1.Enabled    := true;
   checkbox2.Enabled    := true
  end;


end;

end.



