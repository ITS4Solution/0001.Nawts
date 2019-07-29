unit UKernel_Classe_Regras_NFEItens;

interface

uses SysUtils, DB;

type
  TNFeItens = record
    IDProduto: integer;
    Produto: string;
    CodBarras: string;
    CodEAN: string;
    UN: string;
    PrecoVenda: double;
    CodOrigem: integer;
    CodCST: integer;
    pICMS: double;
    NCM: string;
    CodCSTIPI: integer;
    CodCSTPIS: integer;
    CodCSTCofins: integer;
    pIPI: double;
    pPIS: double;
    pCofins: double;
    RedICMS: double;
    pMVA: double;
    pIVA: double;
    ModBCICMS: integer;
    ModBCICMSST: integer;

  end;

function ProdutoNFe(IDProduto: integer): TNFeItens;

implementation

uses UKernel_FuncoesStrings, UKernel_FuncoesInteiros, UDm, UKernel_Funcoes_Util;

function ProdutoNFe(IDProduto: integer): TNFeItens;
begin

  with DM do
  begin

    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('Select * from NFe_produtos');
    Qry.SQL.Add('Where ID = ' + IntToStr(IDProduto));
    Qry.Open;

    Result.IDProduto := IDProduto;
    Result.Produto := RemoveEspacoDuplo(Qry.FieldByName('NomeProduto').AsString);
    Result.CodBarras := Qry.FieldByName('CodBarras').AsString;

    // Valida GTin
    Result.CodEAN := ValidaGtinStr(Qry.FieldByName('CodBarras').AsString);

    Result.UN := Qry.FieldByName('UN').AsString;
    Result.PrecoVenda := Qry.FieldByName('PrecoVenda').AsFloat;
    Result.CodOrigem := Qry.FieldByName('CodOrigem').AsInteger;
    Result.CodCST := Qry.FieldByName('CodCST').AsInteger;
    Result.pICMS := Qry.FieldByName('AliqICMS').AsFloat;

    // Completa NCM
    Result.NCM := StrZero(isInteger(Qry.FieldByName('NCM').AsString), 8);

    Result.CodCSTIPI := Qry.FieldByName('CodCSTIPI').AsInteger;
    Result.CodCSTPIS := Qry.FieldByName('CodCSTPIS').AsInteger;
    Result.CodCSTCofins := Qry.FieldByName('CodCSTCofins').AsInteger;
    Result.pIPI := Qry.FieldByName('AliqIPI').AsFloat;
    Result.pPIS := Qry.FieldByName('AliqPIS').AsFloat;
    Result.pCofins := Qry.FieldByName('AliqCofins').AsFloat;
    Result.RedICMS := Qry.FieldByName('RedICMS').AsFloat;
    Result.pMVA := Qry.FieldByName('AliqMVA').AsFloat;
    Result.pIVA := Qry.FieldByName('AliqIVA').AsFloat;
    Result.ModBCICMS := Qry.FieldByName('ModBCICMS').AsInteger;
    Result.ModBCICMSST := Qry.FieldByName('ModBCICMSST').AsInteger;

  end;

end;

end.

