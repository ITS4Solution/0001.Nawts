unit UKernel_Classe_Pesquisa;

interface

type
  TPesquisa = class
  private
    FstrRetorno: string;
    FstrFieldRetorno: string;
    FbAbreTela: Boolean;
    procedure SetstrRetorno(const Value: string);
    procedure SetstrFieldRetorno(const Value: string);
    procedure SetbAbreTela(const Value: Boolean);
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }

    {: Propriedades de Pesquisa}
    property strFieldRetorno: string read FstrFieldRetorno write SetstrFieldRetorno;
    property bAbreTela: Boolean read FbAbreTela write SetbAbreTela;
    property sResult: string read FstrRetorno write SetstrRetorno;

  end;

implementation


{ TPesquisa }

procedure TPesquisa.SetbAbreTela(const Value: Boolean);
begin
  FbAbreTela := Value;
end;

procedure TPesquisa.SetstrFieldRetorno(const Value: string);
begin
  FstrFieldRetorno := Value;
end;

procedure TPesquisa.SetstrRetorno(const Value: string);
begin
  FstrRetorno := Value;
end;

end.
