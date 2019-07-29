unit UKernel_Classe_Regras_CFOP;

interface

uses Db, sysutils, UKernel_VariaveisPublic, UKernel_ConsultaSQL;

type

  TRegrasCFOP = class
  private
    FiCFOP: integer;
    procedure SetiCFOP(const Value: integer);
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }

    { :Muda CFOP de acordo com Estado }
    Function MudaCfopTOForaUF(iCFOP: integer): integer;
    Function MudaCfopTODentroUF(iCFOP: integer): integer;

    { :Muda CFOP de acordo com CST }
    Function MudaCFOP(iCFOPNota, iCST: integer): Boolean;
    property iCFOP: integer read FiCFOP write SetiCFOP;

  end;

implementation

{ TRegrasCFOP }

uses UDm, UKernel_FuncoesInteiros;

function TRegrasCFOP.MudaCFOP(iCFOPNota, iCST: integer): Boolean;
var
teste :string;
begin

  with DM do
  begin

    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('Select * from NFE_REGRAS_CFOP');
    Qry.SQL.Add('Where seCFOPNOTA = ' + IntToStr(iCFOPNota));
    Qry.SQL.Add('and eCSTCSOSN = ' + IntToStr(iCST));
    Qry.SQL.Add('and SimplesNormal = ' + IntToStr(CrtEmitente.iRegime));
    Qry.Open;

    if Qry.RecordCount > 0 then
    begin
      Result := true;

//      iCFOP := isInteger(Qry.FieldByName('entaoCFOPItem').AsInteger);
      iCFOP := Qry.FieldByName('entaoCFOPItem').AsInteger;
      // iCFOPNota := iCFOP;
    end
    else
    begin
      Result := false;
      iCFOP := iCFOPNota;
    end;

  end;
end;

function TRegrasCFOP.MudaCfopTODentroUF(iCFOP: integer): integer;
begin
  Result := iCFOP;

  // 2.000 – ENTRADA E/OU AQUISIÇÕES DE SERVIÇOS DE OUTROS ESTADOS
  if (iCFOP >= 2000) and (iCFOP < 3000) then
    Result := isInteger(ConsultaRegistroSimples(IntToStr(iCFOP), 'ID', 'CFOPINTER', 'NFE_CFOP'));

  // 6.000 - SAÍDAS OU PRESTAÇÕES DE SERVIÇOS PARA OUTROS ESTADOS
  if (iCFOP >= 6000) and (iCFOP < 7000) then
    Result := isInteger(ConsultaRegistroSimples(IntToStr(iCFOP), 'ID', 'CFOPINTER', 'NFE_CFOP'));
end;

function TRegrasCFOP.MudaCfopTOForaUF(iCFOP: integer): integer;
begin

  Result := iCFOP;

  // 1.000 – ENTRADA E/OU AQUISIÇÕES DE SERVIÇOS DO ESTADO
  if (iCFOP >= 1000) and (iCFOP < 2000) then
    Result := isInteger(ConsultaRegistroSimples(IntToStr(iCFOP), 'ID', 'CFOPINTER', 'NFE_CFOP'));

  // 5.000 - SAÍDAS OU PRESTAÇÕES DE SERVIÇOS PARA O ESTADO
  if (iCFOP >= 5000) and (iCFOP < 6000) then
    Result := isInteger(ConsultaRegistroSimples(IntToStr(iCFOP), 'ID', 'CFOPINTER', 'NFE_CFOP'));

end;

procedure TRegrasCFOP.SetiCFOP(const Value: integer);
begin
  FiCFOP := Value;
end;

end.
