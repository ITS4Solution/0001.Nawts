unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function RetiraTag(Texto, AbreTag, FechaTag : String) : String;
var
  PosAbre, PosFecha : Integer;
begin
Result := '';
if (Pos(AbreTag, Texto) <> 0) And (Pos(FechaTag, Texto) <> 0) then
 begin
 PosAbre := Pos(AbreTag, Texto) + Length(AbreTag);
 PosFecha := Pos(FechaTag, Texto);
 Result := Copy(Texto, PosAbre, PosFecha-PosAbre);
 end;
end;

function ConsultaCep(const Cep: String): Boolean;
Var
IdHTTP1: TIdHTTP;
Params,Resposta :TStringList;
RespStream : TStringStream;
Cont,i : integer;
Str : String;
Begin
Result := False;
Try
//http://www.buscacep.correios.com.br/servicos/dnec/consultaLogradouroAction.do?CEP={codigo do cep}&Metodo=listaLogradouro&TipoConsulta=cep&StartRow=1&EndRow=10
Params := TStringList.Create;
Resposta := TStringList.Create;
RespStream := TStringStream.Create('');
IdHTTP1 := TIdHTTP.Create;

Params.Add('CEP='+Cep);
Params.Add('&Metodo=listaLogradouro');
Params.Add('&TipoConsulta=cep');
Params.Add('&StartRow=1');
Params.Add('&EndRow=10');
IdHTTP1.post('http://www.buscacep.correios.com.br/servicos/dnec/consultaLogradouroAction.do?',Params,RespStream);

Resposta.Clear;
Resposta.Text :=  RespStream.DataString;

Logradouro := '';
Bairro := '';
Cidade := '';
Uf := '';
Cont := 0;

for i := 0 to Resposta.Count-1 do
 Begin
 Str := Trim(RetiraTag(Resposta[i],'"padding: 2px">','</td>'));
 if Str <> '' then
  Begin
  Inc(Cont);
  if Cont = 1 then
   Begin
   Logradouro := Str;
   Result := True;
   End;

  if Cont = 2 then
   Begin
   Bairro := Str;
   Result := True;
   End;

  if Cont = 3 then
   Begin
   Cidade := Str;
   Result := True;
   End;

  if Cont = 4 then
   Begin
   Uf := Str;
   Result := True;
   End;
  End;
 End;
Finally
 Begin
 Params.Free;
 Resposta.Free;
 RespStream.Free;
 IdHTTP1.Free;
 End;
End;
End;

end.
