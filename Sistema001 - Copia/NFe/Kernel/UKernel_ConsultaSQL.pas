unit UKernel_ConsultaSQL;

interface

uses UDm , sysUtils, Forms;

{ : Funcoes de Consultas no Banco }
Function ConsultaRegistroSimples(strPesquisa, strCampoWhere: string; strFieldRetorno, strTabela: string): string;
Function ConsultaRegistro(strPesquisa, strCampoWhere: string; strFieldRetorno, strTabela: string; bMostraAviso: Boolean): string;

implementation

uses UKernel_Mensagem;

Function ConsultaRegistroSimples(strPesquisa, strCampoWhere: string; strFieldRetorno, strTabela: string): string;
begin
  Result := ConsultaRegistro(strPesquisa, strCampoWhere, strFieldRetorno, strTabela, false);
end;

Function ConsultaRegistro(strPesquisa, strCampoWhere: string; strFieldRetorno, strTabela: string; bMostraAviso: Boolean): string;
begin
  try

  with DM do
  begin

    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('Select ');
    Qry.SQL.Add(strFieldRetorno);
    Qry.SQL.Add(' from ');
    Qry.SQL.Add(strTabela);
    Qry.SQL.Add(' Where ');
    Qry.SQL.Add(strCampoWhere + ' like ' + QuotedStr(strPesquisa));
    Qry.Open;

    if Qry.RecordCount = 0 then
    begin
      Result := EmptyStr;
      if bMostraAviso then
      begin
        TKernel_Mensagem.Mensagem(Kernel_Msg_Nenhum_Registro_Encontrado, icErro, [mbOk]);
        Abort;
      end;
    end;

    if Qry.RecordCount > 1 then
      Result := EmptyStr;

    if Qry.RecordCount > 0 then
      Result := Qry.FieldByName(strFieldRetorno).AsString;
  end;
  finally
    DM.Qry.Close;
  end;

end;

end.
