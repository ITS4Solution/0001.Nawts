unit UKernel_Classe_Regras_CRT;

interface

uses SysUtils;

type
  TRegime = (null, CrtSimples, CrtSimplesExcesso, CrtNormal);

type
  TRegimeTriburario = class
  private
    FRegime: TRegime;
    FCodRegime: Integer;
    FiRegime: Integer;
    procedure SetRegime(const Value: TRegime);
    procedure SetiRegime(const Value: Integer);
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property Regime: TRegime read FRegime write SetRegime;
    property iRegime: Integer read FCodRegime write SetiRegime;

    constructor create;
  end;

implementation

uses UDm;

function EnumeradoToStr(const t: variant; const AString: array of string; const AEnumerados: array of variant): variant;
var
  i: Integer;
begin
  result := '';
  for i := Low(AEnumerados) to High(AEnumerados) do
    if t = AEnumerados[i] then
      result := AString[i];

end;

function TRegimeToStr(const t: TRegime): string;
begin
  result := EnumeradoToStr(t, ['1', '2', '3'], [CrtSimples, CrtSimplesExcesso, CrtNormal]);
end;

{ TRegimeTriburario }

constructor TRegimeTriburario.create;
begin

  FRegime := CrtSimples;

end;

procedure TRegimeTriburario.SetiRegime(const Value: Integer);
begin
  case Value of
    1:
      SetRegime(CrtSimples);
    2:
      SetRegime(CrtSimplesExcesso);
    3:
      SetRegime(CrtNormal);
  end;
end;

procedure TRegimeTriburario.SetRegime(const Value: TRegime);
begin
  FRegime := Value;
  FCodRegime := StrToInt(TRegimeToStr(FRegime));
  FiRegime := StrToInt(TRegimeToStr(FRegime));
end;

end.
