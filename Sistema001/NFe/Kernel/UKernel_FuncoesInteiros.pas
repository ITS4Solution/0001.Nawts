unit UKernel_FuncoesInteiros;

interface

uses SysUtils;

// Valida se str é Inteiro - Retorna 0 se nao for
Function isInteger(str: string): int64;

implementation

Function isInteger(str: string): int64;
begin

  try
    Result := strtoint(str);
  except
    Result := 0;
  end;

end;

end.
