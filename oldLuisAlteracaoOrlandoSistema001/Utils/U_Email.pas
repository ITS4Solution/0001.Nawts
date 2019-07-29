unit U_Email;

interface

uses
  IdBaseComponent, IdComponent // Units Genéricas do Indy
 , IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL // Objeto SSL
 , IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP // Objeto SMTP
 , IdMessage // Objeto de Mensagem
 , IdAttachmentFile,sysutils ;// Objeto de Arquivos Anexos

function EnviarEmail(aHost : String; aPort : Integer; aLogin, aSenha,aListaEmail, aAssunto, aCorpo : String; aAuth, aAuthSSL : Boolean) : Boolean;

implementation

function EnviarEmail(aHost : String; aPort : Integer; aLogin, aSenha,aListaEmail, aAssunto, aCorpo : String; aAuth, aAuthSSL : Boolean) : Boolean;
var
 AuthSSL : TIdSSLIOHandlerSocketOpenSSL;
 IdSMTP    : TIdSMTP;
 IdMessage : TIdMessage;
Const
  ArqTeste = 'c:\teste.txt';
begin
  Result:= False;
  IdSMTP    := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host     := aHost;
    IdSMTP.Port     := aPort;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username := aLogin;
    IdSMTP.Password := aSenha;
    if aAuthSSL then
    begin
      AuthSSL                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      IdSMTP.IOHandler          := AuthSSL;
      IdSMTP.UseTLS             := utUseImplicitTLS;
      AuthSSL.SSLOptions.Method := sslvSSLv3;
      AuthSSL.SSLOptions.Mode   := sslmClient;
    end;
    if aAuth then
      IdSMTP.AuthType := satDefault
    else
      IdSMTP.AuthType := satNone;
    try
    IdSMTP.Connect;

    IdMessage.From.Address               := aLogin;
    IdMessage.Recipients.EMailAddresses  := aListaEmail;
    IdMessage.Subject                    := aAssunto;
    IdMessage.Body.Text:=                'Data/Hora: ' + FormatDateTime('dd/MM/yyyy HH:mm:ss', Now) +
                                         #13#10#13#10 +
                                         aCorpo;
    IdMessage.Body.SaveToFile(ArqTeste);
    IdMessage.MessageParts.Clear; // Limpa os anexos da lista
    TIdAttachmentFile.Create(IdMessage.MessageParts, TFileName(ArqTeste)); // adiciona anexo na lista, pode ser utilizado com looping

    IdSMTP.Send(IdMessage);
    //ShowMessage('E-Mail Enviado com sucesso para: ' +  aListaEmail);
    except
      on E: Exception do
      begin
        //ShowMessage('Erro ao enviar E-Mail:'+#13#10+e.Message);
        Exit;
      end;
    end;
  finally
    IdSMTP.Disconnect;
    FreeAndNil(IdSMTP);
    FreeAndNil(IdMessage);
    if AuthSSL <> nil then
    FreeAndNil(AuthSSL);
  end;
  Result:= True;
end;

end.

