unit UKernel_Classe_Regras_NFE;

interface

uses UKernel_Classe_Regras_CST, UKernel_Classe_Regras_CFOP, UKernel_Classe_Regras_CRT;

type
  TRegrasNFE = class
  private
    FRegraCFOP: TRegrasCFOP;
    FRegraCST: TRegrasCST;
    FValor_ICMS: double;
    FValor_BCICMSST: double;
    FValor_BCICMS: double;
    FValor_ICMSST: double;
    procedure SetRegraCFOP(const Value: TRegrasCFOP);
    procedure SetRegraCST(const Value: TRegrasCST);
    procedure SetValor_BCICMS(const Value: double);
    procedure SetValor_BCICMSST(const Value: double);
    procedure SetValor_ICMS(const Value: double);
    procedure SetValor_ICMSST(const Value: double);
    { private declarations }
  protected
    { protected declarations }
    Function ValorICMSSimples(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;
    Function ValorICMSNormal(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;
  public
    { public declarations }

    // Calcula valor bc ICMS
    Function ValorBCICMS(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA: double): double;

    // Funcao Mestre
    Function ValorICMS(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;

    // Calcula valor bc ICMS ST
    Function ValorBCICMSST(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;
    Function ValorICMSST(vBCICMSST, pAliqICMS, vICMSNota: double): double;

    // Propriedades dos calculos setados nas funcoes
    property Valor_BCICMS: double read FValor_BCICMS write SetValor_BCICMS;
    property Valor_BCICMSST: double read FValor_BCICMSST write SetValor_BCICMSST;
    property Valor_ICMS: double read FValor_ICMS write SetValor_ICMS;
    property Valor_ICMSST: double read FValor_ICMSST write SetValor_ICMSST;

    property RegraCFOP: TRegrasCFOP read FRegraCFOP write SetRegraCFOP;
    property RegraCST: TRegrasCST read FRegraCST write SetRegraCST;

    constructor create;
  end;

implementation

{ TRegrasNFE }

uses UKernel_VariaveisPublic, UKernel_FuncoesFloats;

constructor TRegrasNFE.create;
begin
  FRegraCFOP := TRegrasCFOP.create;
  FRegraCST := TRegrasCST.create;

end;

procedure TRegrasNFE.SetRegraCFOP(const Value: TRegrasCFOP);
begin

  FRegraCFOP := Value;

end;

procedure TRegrasNFE.SetRegraCST(const Value: TRegrasCST);
begin
  FRegraCST := Value;
end;

procedure TRegrasNFE.SetValor_BCICMS(const Value: double);
begin
  FValor_BCICMS := Value;
end;

procedure TRegrasNFE.SetValor_BCICMSST(const Value: double);
begin
  FValor_BCICMSST := Value;
end;

procedure TRegrasNFE.SetValor_ICMS(const Value: double);
begin
  FValor_ICMS := Value;
end;

procedure TRegrasNFE.SetValor_ICMSST(const Value: double);
begin
  FValor_ICMSST := Value;
end;

function TRegrasNFE.ValorBCICMS(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA: double): double;
var
  dValorBase: double;
begin
  dValorBase := (QtdItens * vUnit) - vDesconto;

  case iCST of
    { ::Normal }
    00: // 00	Tributada integralmente
      begin
        Result := dValorBase;
      end;
    10: // Tributada e com cobrança do ICMS por substituição tributária
      begin
        Result := 0;
      end;
    20: // Com redução de base de cálculo
      begin
        Result := ValorDesconto(dValorBase, pRed);
      end;
    30: // Isenta ou não tributada e com cobrança do ICMS por substituição tributária
      begin
        Result := 0; // Sem ICMS
      end;
    40: // Isenta
      begin
        Result := 0;
      end;
    41: // Não tributada
      begin
        Result := 0;
      end;
    50: // Suspensão
      begin
        Result := 0;
      end;
    51: // Suspensão
      begin
        Result := 0; // Empurra o Imposto para a proxima operação
      end;
    60: // ICMS cobrado anteriormente por substituição tributária
      begin
        Result := 0;
      end;
    70: // Com redução de base de cálculo e cobrança do ICMS por substituição tributária
      begin
        Result := ValorDesconto(dValorBase, pRed);
      end;
    90: // Outros
      begin
        Result := 0;
      end;

    { ::Simples }
    201:
      begin
        Result := ValorDesconto(dValorBase, pRed);
      end;
    202:
      begin
        Result := ValorDesconto(dValorBase, pRed);
      end;

  end;

  Valor_BCICMS := Result;

end;

function TRegrasNFE.ValorBCICMSST(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;
var
  dValorBase: double;
begin
  dValorBase := (QtdItens * vUnit) - vDesconto;
  case iCST of
    { :Normal }
    00: // 00	Tributada integralmente
      begin
        Result := 0;
      end;
    10: // Tributada e com cobrança do ICMS por substituição tributária
      begin
        Result := 0;
      end;
    20: // Com redução de base de cálculo
      begin
        Result := 0;
      end;
    30: // Isenta ou não tributada e com cobrança do ICMS por substituição tributária
      begin
        Result := 0; // Sem ICMS
      end;
    40: // Isenta
      begin
        Result := 0;
      end;
    41: // Não tributada
      begin
        Result := 0;
      end;
    50: // Suspensão
      begin
        Result := 0;
      end;
    51: // Suspensão
      begin
        Result := 0; // Empurra o Imposto para a proxima operação
      end;
    60: // ICMS cobrado anteriormente por substituição tributária
      begin
        Result := 0;
      end;
    70: // Com redução de base de cálculo e cobrança do ICMS por substituição tributária
      begin
        Result := ValorPercentual(dValorBase, pIVA);
      end;
    90: // Outros
      begin
        Result := 0;
      end;

    { :Simples }
    201:
      begin
        Result := ValorPercentual(dValorBase, pIVA + pIPI);
      end;
    202:
      begin
        Result := ValorPercentual(dValorBase, pIVA + pIPI);
      end;

  end;

  Valor_BCICMSST := Result;
end;

function TRegrasNFE.ValorICMS(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;
begin

  case CrtEmitente.Regime of
    CrtSimples:
      Result := ValorICMSSimples(iCST, QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI);

    CrtSimplesExcesso:
      Result := ValorICMSNormal(iCST, QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI);

    CrtNormal:
      Result := ValorICMSNormal(iCST, QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI);
  end;

end;

function TRegrasNFE.ValorICMSNormal(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;
var
  dValorBase: double;
begin
  // Zera propriedades
  Valor_BCICMS := 0;
  Valor_BCICMSST := 0;
  Valor_ICMS := 0;
  Valor_ICMSST := 0;

  dValorBase := (QtdItens * vUnit) - vDesconto;

  case iCST of
    00: // 00	Tributada integralmente
      begin
        Result := (dValorBase * pICMS) / 100;
        ValorBCICMS(iCST, QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA);
      end;
    10: // Tributada e com cobrança do ICMS por substituição tributária
      begin
        Result := 0; // Sem ICMS
      end;
    20: // Com redução de base de cálculo
      begin
        Result := ((ValorDesconto(dValorBase, pRed)) * pICMS) / 100;
        ValorBCICMS(iCST, QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA);
      end;
    30: // Isenta ou não tributada e com cobrança do ICMS por substituição tributária
      begin
        Result := 0; // Sem ICMS
      end;
    40: // Isenta
      begin
        Result := 0;
      end;
    41: // Não tributada
      begin
        Result := 0;
      end;
    50: // Suspensão
      begin
        Result := 0;
      end;
    51: // Suspensão
      begin
        Result := 0; // Empurra o Imposto para a proxima operação
      end;
    60: // ICMS cobrado anteriormente por substituição tributária
      begin
        Result := 0;
      end;
    70: // Com redução de base de cálculo e cobrança do ICMS por substituição tributária
      begin
        Result := ((ValorDesconto(dValorBase, pRed)) * pICMS) / 100; // Valor ICMS
        ValorBCICMS(iCST, QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA); // Valor BC ICMS
        Valor_BCICMSST := ValorBCICMSST(iCST, QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, 0); // Sem IPI
        ValorICMSST(Valor_BCICMSST, pICMS, Result);
      end;
    90: // Outros
      begin
        Result := 0;
      end;

  end;

  Valor_ICMS := Result;

end;

function TRegrasNFE.ValorICMSSimples(iCST: integer; QtdItens, vUnit, vDesconto, pICMS, pRed, pMVA, pIVA, pIPI: double): double;
var
  dValorBase: double;
begin
  // Zera propriedades
  Valor_BCICMS := 0;
  Valor_BCICMSST := 0;
  Valor_ICMS := 0;
  Valor_ICMSST := 0;

  dValorBase := (QtdItens * vUnit) - vDesconto;
  case iCST of
    101: // Tributada pelo Simples Nacional com permissão de crédito;
      begin
        Result := 0; // Sem ICMS
      end;
    102: // Tributada pelo Simples Nacional sem permissão de crédito;
      begin
        Result := 0; // Sem ICMS
      end;
    103: // Isenção do ICMS no Simples Nacional para faixa de receita bruta;
      begin
        Result := 0;
      end;
    201: // Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária;
      begin
        // Result := ((ValorDesconto(dValorBase, 0)) * pICMS) / 100; // Valor ICMS
        Result := 0; // Nao tem credito de icms
        // ValorBCICMS(iCST, QtdItens, vUnit, vDesconto, pICMS, 0, pMVA, pIVA); // Valor BC ICMS Sem Reducao
        Valor_BCICMSST := ValorBCICMSST(iCST, QtdItens, vUnit, vDesconto, pICMS, 0, pMVA, pIVA, pIPI); // Sem Reducao
        ValorICMSST(Valor_BCICMSST, pICMS, Result);
      end;
    202: // Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária;
      begin
        // Result := ((ValorDesconto(dValorBase, 0)) * pICMS) / 100; // Valor ICMS
        Result := 0; // Nao tem credito de icms
        // ValorBCICMS(iCST, QtdItens, vUnit, vDesconto, pICMS, 0, pMVA, pIVA); // Valor BC ICMS Sem Reducao
        Valor_BCICMSST := ValorBCICMSST(iCST, QtdItens, vUnit, vDesconto, pICMS, 0, pMVA, pIVA, pIPI); // Sem Reducao
        ValorICMSST(Valor_BCICMSST, pICMS, Result);
      end;
    203: // Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária;
      begin
        Result := 0;
      end;
    300: // Imune;
      begin
        Result := 0;
      end;
    400: // Não tributada pelo Simples Nacional;
      begin
        Result := 0;
      end;
    500: // ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação;
      begin
        Result := 0;
      end;
    900: // Outros.
      begin
        Result := 0;
      end;
  end;

  Valor_ICMS := Result;

end;

function TRegrasNFE.ValorICMSST(vBCICMSST, pAliqICMS, vICMSNota: double): double;
var
  vICMSST: double;
begin

  // Valor icms ST
  vICMSST := (vBCICMSST * pAliqICMS) / 100;

  // Valor Icms St a ser recolhido
  Result := vICMSST - vICMSNota;

  Valor_ICMSST := Result;

end;

end.
