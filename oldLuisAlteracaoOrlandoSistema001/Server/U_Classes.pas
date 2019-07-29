unit U_Classes;

interface

Procedure AddValueOfClasses;

type TAverbacao = class
   private
      FDiaFechamento : Integer;
   protected
      // atributos e m�todos protegidos
   Public
      property DiaFechamento : Integer read FDiaFechamento write FDiaFechamento;
      // atibutos e m�todos p�blicos
end;

implementation

Procedure AddValueOfClasses;
Var
   Averbacao : TAverbacao;
begin
   Averbacao                  := TAverbacao.Create;
   Averbacao.FDiaFechamento   := 1;
end;

end.
