unit UKernel_Classe_Regras_CST;

interface

uses UKernel_Classe_Regras_CRT, vcl.dialogs, sysutils, UDm ;

type // Regras Gerais Pai
  TRegrasCST = class(TRegimeTriburario)
  private
    FiCST: integer;
    procedure SetiCST(const Value: integer);
    { private declarations }
  protected
    { protected declarations }
    function RegraCSTRevenda(intCst: integer): integer;
    function RegraCSTConsumo(intCst: integer): integer;
  public
    { public declarations }
    function MudaCST(var intCst: integer; var sConsumoRevenda: string; sCGC: string): Boolean;
    property iCST: integer read FiCST write SetiCST;

  end;

implementation

{ TRegrasCSTSimples }

uses UKernel_FuncoesInteiros, UKernel_FuncoesStrings, UKernel_VariaveisPublic,
  UKernel_Mensagem;

{ TRegrasCST }

function TRegrasCST.MudaCST(var intCst: integer; var sConsumoRevenda: string; sCGC: string): Boolean;
begin

  with DM do
  begin

    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('Select * from NFE_REGRAS_CST');
    Qry.SQL.Add('Where eCSTCSOSN = ' + IntToStr(intCst));
    Qry.SQL.Add('and SimplesNormal = ' + IntToStr(CrtEmitente.iRegime));
    Qry.Open;

    // Se foi localizado alguma coisa
    if Qry.RecordCount > 0 then
    begin

      if Length(sCGC) <= 11 then // Se for pessoa fisica
        sConsumoRevenda := 'C';
      // else //**********Aberto para escolha manual
      // sConsumoRevenda := 'R';

      // Regra CST de acordo com tabela de Regras
      if (sConsumoRevenda <> 'C') and (sConsumoRevenda <> 'R') then
      begin
        // Faz a pergunta ao usuario
//        if DM.tmsMSGQ('Informação', 'Esta mercadoria é para revenda?' + #13#10 + #13#10 + '* Gerar crédito de ICMS?') = mrOk then
        if TKernel_Mensagem.Mensagem('Esta mercadoria é para revenda?' + #13#10 + #13#10 + '* Gerar crédito de ICMS?', icQuestao, [mbSimNao]) then
        begin
          sConsumoRevenda := 'R';
          intCst := RegraCSTRevenda(intCst);
        end
        else
        begin
          sConsumoRevenda := 'C';
          intCst := RegraCSTConsumo(intCst);
        end;

        Result := true;

      end
      else // se sConsumoRevenda for C ou R
      begin

        if sConsumoRevenda = 'C' then
        begin
          intCst := RegraCSTConsumo(intCst);
          Result := true;
        end
        else
          Result := false;

        if sConsumoRevenda = 'R' then
        begin
          intCst := RegraCSTRevenda(intCst);
          Result := true;
        end
        else
          Result := false;

      end;

    end
    else // se nao tiver regra definida faz a pergunta
    begin
      // Faz a pergunta ao usuario caso seja uma cst desta
      if (intCst = 101) or (intCst = 102) then
      if TKernel_Mensagem.Mensagem('Esta mercadoria é para revenda?', icQuestao, [mbSimNao]) then
        begin
          sConsumoRevenda := 'R';
          intCst := RegraCSTRevenda(intCst);
        end
        else
        begin
          sConsumoRevenda := 'C';
          intCst := RegraCSTConsumo(intCst);
        end;

      Result := true

    end;
  end;

  iCST := intCst;

end;

function TRegrasCST.RegraCSTConsumo(intCst: integer): integer;
begin

  with DM do
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('Select * from NFE_REGRAS_CST');
    Qry.SQL.Add('Where eCSTCSOSN = ' + IntToStr(intCst));
    Qry.SQL.Add('and SimplesNormal = ' + IntToStr(CrtEmitente.iRegime));
    Qry.SQL.Add('and eConsumoRevenda = ' + QuotedStr('C'));
    Qry.Open;

    if Qry.RecordCount > 0 then
      Result := Qry.FieldByName('entaoCSTCSOSN').AsInteger
    else
      Result := intCst;
  end;
end;

function TRegrasCST.RegraCSTRevenda(intCst: integer): integer;
begin

  with DM do
  begin

    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('Select * from NFE_REGRAS_CST');
    Qry.SQL.Add('Where eCSTCSOSN = ' + IntToStr(intCst));
    Qry.SQL.Add('and SimplesNormal = ' + IntToStr(CrtEmitente.iRegime));
    Qry.SQL.Add('and eConsumoRevenda = ' + QuotedStr('R'));
    Qry.Open;

    if Qry.RecordCount > 0 then
      Result := Qry.FieldByName('entaoCSTCSOSN').AsInteger
    else
      Result := intCst;
  end;

end;

procedure TRegrasCST.SetiCST(const Value: integer);
begin
  FiCST := Value;
end;

end.
