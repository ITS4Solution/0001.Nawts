unit UKernel_FuncoesFloats;

interface

uses SysUtils;

{ Valida se str é Inteiro - Retorna 0 se nao for }
Function isFloat(str: string): double;
{ Calcula Preco Venda pela margem }
Function ValorPercentual(dValor, dPercentual: double): double;
{ Calcula margem dado do preco }
Function pMargem(dValorCompra, dValorVenda: double): double;
{ Valor Desconto }
Function ValorDesconto(dValor, pDesconto: double): double;

implementation

Function isFloat(str: string): double;
begin

  try
    Result := StrToFloat(str);

  except
    Result := 0;
  end;

end;

Function ValorPercentual(dValor, dPercentual: double): double;
begin
  try
    Result := ((dValor * dPercentual) / 100) + dValor;
  except
    Result := dValor;
  end;

end;

Function pMargem(dValorCompra, dValorVenda: double): double;
begin

  try
    Result := ((dValorVenda - dValorCompra) / dValorCompra) * 100;
  except
    Result := 0;
  end;

end;

Function ValorDesconto(dValor, pDesconto: double): double;
begin

  Result := ((dValor * pDesconto / 100) - dValor) * (-1);

end;

end.
