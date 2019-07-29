unit UKernel_FuncoesStrings;

interface

uses SysUtils, strUtils;

{ : Formata Valor Moeda }
Function FormataValor(Conteudo: Extended): string;
{ : Cria N Numeros de Espaço }
function Space(N: Integer): string;
{ : Remove Caractere String }
Function RemoveCaractere(sCaract, sTexto: String): String;
{ : Completa string com caractere informado }
Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;
{ : Cria replica n vezes de uma string }
function Repl(C: string; Tamanho: Integer): string;
{ : Remove todos os espaços de uma string }
Function AllTrim(s: string): string;
{ : Substitui um caractere dentro da string }
function BuscaTroca(Text, Busca, Troca: string): string;
{ : Remove Espaços em excesso string }
Function RemoveEspacoDuplo(J: String): String; Export;
{ : Adiciona n Vezes Zero antes string }
Function StrZero(const I: Integer; const Casas: byte): string;

implementation


Function FormataValor(Conteudo: Extended): string;
var
  TamMascara: Integer;
  Brancos: string;
  Dados: string;
  Mascara: string;
begin
  Mascara := '###,#0.00';
  try
    TamMascara := Length(Mascara);
    Dados := FormatFloat(Mascara, Conteudo);
    if TamMascara > Length(Dados) then
    begin
      Brancos := Space(TamMascara - Length(Dados));
      Dados := Brancos + Dados;
    end;
    Result := Dados;
  Except

    Result := '0';
  end;
end;

function Space(N: Integer): string;
var
  I: Integer;
  Dados: string;
begin
  Dados := '';
  for I := 1 to N do
  begin
    Dados := Dados + ' ';
    // Application.ProcessMessages;
  end;
  Space := Dados;
end;

Function RemoveCaractere(sCaract, sTexto: String): String;
var
  Temp_01: string;
  Temp_03, Conta: Integer;
begin
  Conta := 0;
  Temp_03 := Length(sTexto);
  while Conta < Temp_03 do
  begin
    Conta := Conta + 1;
    Temp_01 := Copy(sTexto, Conta, 1);
    if Temp_01 = sCaract then
    begin
      sTexto := Copy(sTexto, 1, (Conta - 1)) + Copy(sTexto, (Conta + 1), (Temp_03 - Conta));
    end;
  end;
  Result := sTexto;
end;

Function CompletaStr(Conteudo, Caractere: string; Tamanho: Integer): string;
begin
  Result := Copy(Conteudo, 1, Tamanho) + Repl(Caractere, (Tamanho - Length(Conteudo)));
  // Result := Result + ' - ' + IntToStr(length(Result));
end;

function Repl(C: string; Tamanho: Integer): string;
var
  Conteudo: string;
  Contar: Integer;
begin
  Conteudo := '';
  for Contar := 1 to Tamanho do
    Conteudo := Conteudo + C;

  Result := Conteudo;

end;

Function AllTrim(s: string): string;
begin
  Result := Trim(TrimLeft(TrimRight(s)));
end;

function BuscaTroca(Text, Busca, Troca: string): string;
{ Substitui um caractere dentro da string }
var
  N: Integer;
begin
  for N := 1 to Length(Text) do
  begin
    if Copy(Text, N, Length(Busca)) = Busca then
    begin
      Delete(Text, N, Length(Busca));
      Insert(Troca, Text, N);
    end;
  end;
  Result := Text;
end;

Function RemoveEspacoDuplo(J: String): String; Export;
Begin
  while Pos('  ', J) > 0 do
    J := StringReplace(J, '  ', ' ', [rfReplaceAll]);
  Result := J;
end;

Function StrZero(const I: Integer; const Casas: byte): string;
var
  Ch: char;
begin
  Result := IntToStr(I);
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';

  while Length(Result) < Casas do
    Result := Ch + Result;
end;

end.
