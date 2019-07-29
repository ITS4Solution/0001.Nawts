unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, ExtCtrls, ComCtrls;

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
    Button1: TButton;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    CheckBox1: TCheckBox;
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Form1: TForm1;
 nfe_filename: String;

implementation

{$R *.dfm}

 //Declaração de Funções disponiveis na assinaturaNFe32dll.dll para assinatura de arquivos XML de NFe
 //Declação de funções onde o conteúdo completo do XML a ser assinado é passado como parâmtro TStrings
 Function fncAssinarXML(sXml: TStrings): String; SafeCall; external 'assinaturaNFe32dll.dll';

 //Declação de funções onde é passado o path do XML a ser assinado e a assinatura é feita diretamente no arquivo
 //Nas funções declaradas (abaixo) a dll utiliza internamente as mesmas funções originais (acima) para fazer a assinatura do arquivo
 Function fncAssinarXMLPath(sXmlPath: Pchar): integer; SafeCall; external 'assinaturaNFe32dll.dll';

//--- Remove caracteres invalidos de uma ShortString ---
//Usage: "NotToRemoveStr" is the Char Array NOT to be removed, "FromStr" is the ShortString to be removed from
Function RemoveInvalid(NotToRemoveStr: String; FromStr: String): String;
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

//Seleção do arquivo de NFe a ser assinado
procedure TForm1.Button12Click(Sender: TObject);
begin
 //Configura o OpenDialog
 opendialog1.InitialDir := ExtractFileDir(application.ExeName);

 //Solicita que usuário indique o caminho do arquivo
 if OpenDialog1.Execute then
  begin
   nfe_filename := OpenDialog1.FileName;

   //Abre o arquivo em modo WebBrowsing e em modo texto
   WebBrowser1.Navigate(nfe_filename);
   memo1.Lines.LoadFromFile(nfe_filename);

   //Habilitar esta linha para:
   //Garantir que toda acentuação seja removida
   //Caracteres inválidos como quebras de linha indevidas sejam removidos 
   if checkbox1.Checked then
    memo1.lines.Text := RemoveAcento(memo1.lines.Text);
  end;
end;

//Realiza a chamada da assinatura32dll.dll e assina o arquivo de NFe
procedure TForm1.Button1Click(Sender: TObject);
var
 nfe_assinada, nfe_nao_assinada: String;
begin
 try
  //testa se memo1 preenchido
  if memo1.lines.Count > 0 then
   begin
    nfe_nao_assinada := Memo1.Lines.text;

    //chama a função de assinatura passando como parâmetro o conteúdo do arquivo selecionado
    //Esta função NÃO é compatível para ser chamada por outras linguagens e plataformas de programação
    //Esta função NÃO é compatível para ser chamada por inferiores ao Delphi6
    nfe_assinada := fncAssinarXML(Memo1.Lines);

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

//Salva o arquivo de NFe devidamente assinado
procedure TForm1.Button2Click(Sender: TObject);
var
 UTF8_Str: String;
begin
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
var
 nfe_assinada: integer;
begin
 try
  //testa se memo1 preenchido
  if memo1.lines.Count > 0 then
   begin
    //chama a função de assinatura passando como parâmetro o path do arquivo selecionado
    //Função principal da dll que executa a assinatura dos arquivos
    //Esta função assina e altera diretamente o conteúdo do arquivo indicado que não deve estar em uso por nenhuma outra aplicação
    //Esta função é compatível cpara ser chamada por outras linguagens e plataformas de programação
    nfe_assinada := fncAssinarXMLPath(PChar(nfe_filename));

    if nfe_assinada = 1 then
     begin
      memo2.Lines.LoadFromFile(nfe_filename);

      memo2.Lines.Text := copy(memo2.Lines.Text, 4, length(memo2.Lines.Text));
     end
    else
     begin
      showmessage('Erro durante o processo de assinatura. Verifique!');
      exit;
     end;
   end
  else
   begin
    showmessage('Conteúdo inválido. Selecione o arquivo XML da NFe');
    exit;
   end;
 except
  showmessage('Erro durante o processo de assinatura. Verifique!');
  exit;
 end;

 showmessage('NFe assinada com sucesso');

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 memo1.Lines.Clear;
 memo2.Lines.clear;
end;

end.

