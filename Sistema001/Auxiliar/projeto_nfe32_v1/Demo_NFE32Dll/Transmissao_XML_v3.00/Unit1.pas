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

 //Declaração de Funções disponiveis na transmissaoNFe32dll.dll para transmissão de arquivos XML de NFe
 //Declação de funções onde o conteúdo completo do XML a ser transmitido é passado como parâmtro PChar
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

 //Declação de funções onde é passado o path do XML a ser transmitido e indicado o path onde a dll salvará o retorno da transmissão
 //Nas funções declaradas (abaixo) a dll utiliza internamente as mesmas funções originais (acima) para fazer a carga do arquivo, transmissão e retorno
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

 //Tabela de códigos de UF conforme IBGE:
 //NORTE
 // RO-11-Rondônia
 // AC-12-Acre
 // AM-13-Amazonas
 // RR-14-Roraima
 // PA-15-Pará
 // AP-16-Amapá
 // TO-17-Tocantins
 //NORDESTE
 // MA-21-Maranhão
 // PI-22-Piauí
 // CE-23-Ceará
 // RN-24-Rio Grande do Norte
 // PB-25-Paraíba
 // PE-26-Pernambuco
 // AL-27-Alagoas
 // SE-28-Sergipe
 // BA-29-Bahia
 //SUDESTE
 // MG-31-Minas Gerais
 // ES-32-Espírito Santo
 // RJ-33-Rio de Janeiro
 // SP-35-São Paulo
 //SUL
 // PR-41-Paraná
 // SC-42-Santa Catarina
 // RS-43-Rio Grande do Sul
 //Região Centro-Oeste	PR
 // MS-50-Mato Grosso do Sul
 // MT-51-Mato Grosso
 // GO-52-Goiás
 // DF-53-Distrito Federal
 
 //SCAN=Sistema de Contingência do Ambiente Nacional (SCAN)
 //Sistema de contingência usado quando os servidores de uma determinada UF encontram-se offline
 
 //SVAN=Sefaz Virtual AN (Ambiente Nacional)
 //Estados Emissores pela Sefaz Virtual AN (Ambiente Nacional): CE, ES, MA, PA, PI e RN.
 //Conforme listado em http://www.nfe.fazenda.gov.br/portal/VerificacaoDeServicos/VerificacaoServicos.aspx
 
 //SVRS=Sefaz Virtual RS (Rio Grande do Sul)
 //Estados Emissores pela Sefaz Virtual RS (Rio Grande do Sul): AC, AL, AM, AP, DF, MS, PB, RJ, RO, RR, SC, SE e TO.
 //Conforme listado em http://www.nfe.fazenda.gov.br/portal/VerificacaoDeServicos/VerificacaoServicos.aspx
 
 //DPEC = Declaração Prévia de Emissão em Contingência
 //O arquivo XML de DPEC deve ser enviado para o Sistema de Contingência Eletrônica – SCE via Web Service ou via upload através de página www.nfe.fazenda.gov.br
 
//Seleciona XMl a ser transmitido
procedure TForm1.Button12Click(Sender: TObject);
begin
 //Diretório inicial será o diretório onde a aplicação está executando
 opendialog1.InitialDir := ExtractFileDir(application.ExeName);

 //Abre caixa de seleção de arquivos
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

//Esta função recebe uma UF e retorna o código da UF conforme tabela do IBGE acima
//Alterda em 26/11/2013 para incluir as opções 'SVAN','SVRS','SVCAN', 'SVCRS'
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

 //Str := RemoveInvalid(AlfaArray, Str);      //TODO: Esta linha foi comentada pois estava removendo aspas simples q apareciam em alguns arquivos, exemplo: versao='1.00'
 Result := Str;
end;

//Transmite XML selecionado
{
 Descrição dos parâmetros:
 sXML : PChar;
   Conteúdo do XML a ser transmitido
 iUF: Integer;
   Código da Unidade da Federação para a qual deseja fazer a transmissão conforme tabela IBGE
   Os dados serão enviados para a UF indicada ou para o SEFAZ Virtual caso a UF não dê suporte conforme tabela:
     Estados Emissores pela Sefaz Virtual RS (VR): AC, AL, AM, AP, MS, PB, RJ, RR, SC, SE e TO
     Estados Emissores pela Sefaz Virtual AN (NR): CE, ES, MA, PA, PI, PR e RN
 iTipo: integer;
   Opção ainda não implementada
   Consultar item 9 do manual de integração
   As Secretarias de Fazenda Estaduais deverão manter dois ambientes para recepção de NFe.
   O ambiente de homologação é específico para a realização de testes e integração das
   aplicações do contribuinte durante a fase de implementação e adequação do sistema de
   emissão de NF-e do contribuinte.
   A autorização para emissão de NF-e no ambiente de produção fica condicionada à prévia
   aprovação das equipes de TI e de negócios da Secretaria de Fazenda, que deverá avaliar a
   adequação, comportamento e performance do sistema de emissão de NF-e do contribuinte
   interessado no ambiente de homologação.
 versao: String;
   Consultar item 3.4.1 do manual de integração
   Versão do leiaute de transmissão (1.02)
 versaoDados: String
   Consultar item 3.4.1 do manual de integração
   O campo versaoDados deve conter a informação da versão do leiaute da estrutura XML
   armazenada na área de dados da mensagem.
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
  //Atribue valores das variáveis q serão passadas como parâmetro durante a transmissão
  MyiUF         := Cod_UF_IBGE(UF_IBGE);                 //Consultar Anexo VII – Tabelas de UF, Município e País do Manual de Integração
  MyiTipo       := combobox2.ItemIndex + 1;                     //1 – Produção / 2 - Homologação
  MysXML        := PChar(memo1.Lines.Text);                     //Conteúdo XML a ser transmitido
  MyversaoDados := PChar(copy_SubStr(MysXML, 'versao="', 4));   //versão do leiaute da estrutura XML informada na área de dados da mensagem

  //Realiza a chamada da função da dll de acordo com o tipo de transação escolhida
  //Consulte Manual de Integração para informações referentes ao valores dos parâmetros versão e versaoDados no cabeçalho da transmissão
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

  //Este loop foi necessário pois o retorno do tipo PChar vem com #0 ao final. Isso fazia com q o ultimo caractere '>' sumisse ao converter PChar para String

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
  showmessage('ATENÇAO: Erro durante a transmissão');
  exit;
 end;

 showmessage('XML transmitido com sucesso. Verifique o retorno para informações de retorno');

 label5.caption := 'Arquivo transmitido em ' + inttostr(SecondsBetween(datahorafim, datahora_ini)) +  'segundos';
end;

{
function RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
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
  //Diretório inicial será o diretório onde a aplicação está executando
  savedialog1.InitialDir := ExtractFileDir(application.ExeName);

  //Concatena nome para arquivo de retorno
  SaveDialog1.FileName := 'retorno_' + combobox1.Text + '_' + ExtractFileName(xml_filename);

  //Salva arquivo de retorno
  if savedialog1.Execute then
   begin
    //Alguns arquivos de retorno da SEFAZ como o de consulta de de status do serviço são retornados com acentuação o que não permite abrir os mesmos no browser
    //Esta função remove tais acentos e elimina o problema
    if checkbox1.Checked then
     memo2.lines.Text := RemoveAcento(memo2.lines.Text);

    //Alterações para realizar salvamento em formato UTF-8
    //UTF8_Str := Memo2.Lines.Text;
    //UTF8_Str := UTF8Encode(UTF8_Str);
    //UTF8_Str := char($EF) + char($BB) + char($BF) + UTF8_Str;   //adding BOM
    //Memo2.Lines.Text := UTF8_Str;

    //Salvando arquivo
    memo2.Lines.SaveToFile(savedialog1.filename);
   end;
 except
  showmessage('ATENÇAO: Erro durante o salvamento do arquivo de retorno');
  exit;
 end;

 showmessage('Arquivo de retorno salvo com sucesso.' + #13#10 +
             'Consulte os demos respectivos localizados na pasta Geracao_XML paa informações sobre como ABRIR e manipular os XMLs de retorno');
end;

//Sistema volta a solicitar que o usuário selecione o certificado desejado para a assinatura
//Esta funcionalidade pode ser implementada em seu aplicativo final para desfazer a opção implementada na tela da dll
procedure TForm1.Button3Click(Sender: TObject);
var
 myfilename: String;
begin
 try
  //Configura o diretório onde se encontra o arquivo que armazena o índice
  //Da forma que está implementada aqui só funciona se a dll estiver localizada no mesmo diretório do .exe
  myfilename := ExtractFilePath(application.ExeName) + '\DefCertificado.res';

  //testa se arquivo existe
  if fileexists(myfilename) then
   begin
    //exclue o arquivo q armazena o indice
    //Usuário logado no windows deve ter permissões sobre o diretório e o arquivo em questão
    DeleteFile(myfilename);

    showmessage('Arquivo' + myfilename + 'excluído. O sistema voltará a solicitar que o usuário selecione o certificado desejado para a assinatura');
   end;
 except                          
  showmessage('Erro durante exclusão do arquivo ' + myfilename)
 end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 memo1.lines.Clear;
 memo2.lines.clear;
end;


//Os testes implementados nesta função podem ser utilizados antes de se tentar o acesso aos webservices
//de forma a garantir que o computador está conectado e evitar erros de transmissão
procedure TForm1.Button5Click(Sender: TObject);
var
 flags : DWORD;
begin
 if IsNetworkAlive(flags) = 0 then
  ShowMessage('Nenhum tipo de conexão de rede detectada, Ok.')
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

  //Atribue valores das variáveis q serão passadas como parâmetro durante a transmissão
  MyiUF         := Cod_UF_IBGE(combobox1.text);                 //Consultar Anexo VII – Tabelas de UF, Município e País do Manual de Integração
  MyiTipo       := combobox2.ItemIndex + 1;                     //1 – Produção / 2 - Homologação
  MysXML        := PChar(memo1.Lines.Text);                     //Conteúdo XML a ser transmitido
  MyversaoDados := PChar(copy_SubStr(MysXML, 'versao="', 4));   //versão do leiaute da estrutura XML informada na área de dados da mensagem

  //Realiza a chamada da função da dll de acordo com o tipo de transação escolhida
  //Consulte Manual de Integração para informações referentes ao valores dos parâmetros versão e versaoDados no cabeçalho da transmissão
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
  showmessage('ATENÇAO: Erro durante a transmissão');
  exit;
 end;

 showmessage('Verifique o retorno para informações de retorno');

 label5.caption := 'Tempo decorrido ' + inttostr(SecondsBetween(datahorafim, datahora_ini)) +  'segundos';

end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
 //Se os serviços de Contigência DPEC forem selecionados não é preciso indica UF e o envio tb não será via SCAN, portanto desabilita componentes na tela do demo!
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



