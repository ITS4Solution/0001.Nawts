unit U_Classes;

interface

Procedure AddValueOfClasses;

type TAverbacao = class
   private
      FDiaFechamento : Integer;
   protected
      // atributos e métodos protegidos
   Public
      property DiaFechamento : Integer read FDiaFechamento write FDiaFechamento;
      // atibutos e métodos públicos
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
