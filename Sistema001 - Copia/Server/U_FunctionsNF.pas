unit U_FunctionsNF;


interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Controls,
  Dialogs, StdCtrls;

Function SoNumero(Const Texto:String):String;
function GerarTxt(Caminho,_0001_0009,_0010_0015,_0016_0023,_0024_0029,_0030_0043,
  _0044_0057,_0058_0058,_0059_0108,_0109_0110,_0111_0111,
  _0112_0161,_0162_0175,_0176_0275,_0276_0325,_0326_0327,
  _0328_0329,_0330_0379,_0380_0381,_0382_0431,_0432_0437,
  _0438_0445,_0446_0495,_0496_0505,_0506_0565,_0566_0819,
  _0820_0833,_0834_0847,_0848_0861,_0862_0875,_0876_0889,
  _0890_0903,_0904_0917,_0918_0925,_0926_0934,_0935_2934 : String): String;

implementation

Function SoNumero(Const Texto:String):String;
var
I: integer;
S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
      S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;


function GerarTxt(Caminho,_0001_0009,_0010_0015,_0016_0023,_0024_0029,_0030_0043,
  _0044_0057,_0058_0058,_0059_0108,_0109_0110,_0111_0111,
  _0112_0161,_0162_0175,_0176_0275,_0276_0325,_0326_0327,
  _0328_0329,_0330_0379,_0380_0381,_0382_0431,_0432_0437,
  _0438_0445,_0446_0495,_0496_0505,_0506_0565,_0566_0819,
  _0820_0833,_0834_0847,_0848_0861,_0862_0875,_0876_0889,
  _0890_0903,_0904_0917,_0918_0925,_0926_0934,_0935_2934 : String):String;
var
   F: TextFile;
   i,j,Tamanho,TamanhoCampo,diferenca : integer;
   aux : string;
   Variaveis : TStringList;
   Valores   : TStringList;
begin
   Variaveis   := TStringList.Create;

   Variaveis.Add('_0001_0009_N_S');
   Variaveis.Add('_0010_0015_N_S');
   Variaveis.Add('_0016_0023_D_S');
   Variaveis.Add('_0024_0029_N_S');
   Variaveis.Add('_0030_0043_N_S');
   Variaveis.Add('_0044_0057_N_N');
   Variaveis.Add('_0058_0058_C_S');
   Variaveis.Add('_0059_0108_C_S');
   Variaveis.Add('_0109_0110_C_S');
   Variaveis.Add('_0111_0111_C_S');
   Variaveis.Add('_0112_0161_C_N');
   Variaveis.Add('_0162_0175_N_S');
   Variaveis.Add('_0176_0275_C_S');
   Variaveis.Add('_0276_0325_C_S');
   Variaveis.Add('_0326_0327_C_S');
   Variaveis.Add('_0328_0329_C_N');
   Variaveis.Add('_0330_0379_C_N');
   Variaveis.Add('_0380_0381_C_S');
   Variaveis.Add('_0382_0431_C_S');
   Variaveis.Add('_0432_0437_N_N');
   Variaveis.Add('_0438_0445_N_N');
   Variaveis.Add('_0446_0495_C_N');
   Variaveis.Add('_0496_0505_N_N');
   Variaveis.Add('_0506_0565_C_N');
   Variaveis.Add('_0566_0819_C_N');
   Variaveis.Add('_0820_0833_N_N');
   Variaveis.Add('_0834_0847_N_N');
   Variaveis.Add('_0848_0861_N_N');
   Variaveis.Add('_0862_0875_N_N');
   Variaveis.Add('_0876_0889_N_N');
   Variaveis.Add('_0890_0903_N_N');
   Variaveis.Add('_0904_0917_N_N');
   Variaveis.Add('_0918_0925_N_N');
   Variaveis.Add('_0926_0934_N_S');
   Variaveis.Add('_0935_2934_T_S');

   Valores   := TStringList.Create;

   Valores.Add(_0001_0009);
   Valores.Add(_0010_0015);
   Valores.Add(_0016_0023);
   Valores.Add(_0024_0029);
   Valores.Add(_0030_0043);
   Valores.Add(_0044_0057);
   Valores.Add(_0058_0058);
   Valores.Add(_0059_0108);
   Valores.Add(_0109_0110);
   Valores.Add(_0111_0111);
   Valores.Add(_0112_0161);
   Valores.Add(_0162_0175);
   Valores.Add(_0176_0275);
   Valores.Add(_0276_0325);
   Valores.Add(_0326_0327);
   Valores.Add(_0328_0329);
   Valores.Add(_0330_0379);
   Valores.Add(_0380_0381);
   Valores.Add(_0382_0431);
   Valores.Add(_0432_0437);
   Valores.Add(_0438_0445);
   Valores.Add(_0446_0495);
   Valores.Add(_0496_0505);
   Valores.Add(_0506_0565);
   Valores.Add(_0566_0819);
   Valores.Add(_0820_0833);
   Valores.Add(_0834_0847);
   Valores.Add(_0848_0861);
   Valores.Add(_0862_0875);
   Valores.Add(_0876_0889);
   Valores.Add(_0890_0903);
   Valores.Add(_0904_0917);
   Valores.Add(_0918_0925);
   Valores.Add(_0926_0934);
   Valores.Add(_0935_2934);

   for i := 0 to Variaveis.Count -1 do
   begin
      Tamanho := 1 + StrToInt(Copy(Variaveis[i],7,4)) - StrToInt(Copy(Variaveis[i],2,4));
      TamanhoCampo := Length(Valores[i]);
      diferenca :=  Tamanho - TamanhoCampo;
      if Copy(Variaveis[i],12,1) = 'N' then
      begin
         Valores[i] := SoNumero(Valores[i]);
         TamanhoCampo := Length(Valores[i]);
         diferenca :=  Tamanho - TamanhoCampo;
         if Copy(Variaveis[i],14,1) = 'N' then
         begin
            if (TamanhoCampo < Tamanho) then
            begin
               for j := 1 to diferenca do
                  Valores[i] := '0'+ Valores[i];
            end;
         end
         else
         begin
            if TamanhoCampo = 0 then
            begin
               Result := 'Campo "' + Valores[i] + '" está vazio';
               exit;
            end
            else
            begin
               for j := 1 to diferenca do
                  Valores[i] := '0'+ Valores[i];
            end;
         end;
      end
      else
      if Copy(Variaveis[i],12,1) = 'T' then
      begin
         if Copy(Variaveis[i],14,1) = 'N' then
         begin
            if (TamanhoCampo < Tamanho) then
               for j := 1 to diferenca do
                  Valores[i] := Valores[i] + ' ';
         end
         else
         begin
            if TamanhoCampo = 0 then
            begin
               Result := 'Campo "' + Variaveis[i] + '" está vazio';
               exit;
            end
            else
            begin
               for j := 1 to diferenca do
                  Valores[i] := Valores[i] + ' ';
            end;
         end;
      end
      else
      if Copy(Variaveis[i],12,1) = 'D' then
      begin
         Valores[i] := SoNumero(Valores[i]);
         TamanhoCampo := Length(Valores[i]);
         diferenca :=  Tamanho - TamanhoCampo;
         if Copy(Variaveis[i],14,1) = 'N' then
         begin
            if (TamanhoCampo <> Tamanho) then
            begin
               Result := 'Campo "' + Valores[i] + '" incompleto, formato da data deve ser "aaaammdd"';
               exit;
            end;
         end
         else
         begin
//            if (TamanhoCampo <> Tamanho) then
//            begin
//               Result := 'Campo "' + Valores[i] + '" incompleto, formato da data deve ser "aaaammdd"';
//               exit;
//            end
//            else
            begin
               for j := 1 to diferenca do
                  Valores[i] := Valores[i] + ' ';
            end;
         end;
      end
      else
      if Copy(Variaveis[i],12,1) = 'C' then
      begin
         if Copy(Variaveis[i],14,1) = 'N' then
         begin
            if (TamanhoCampo < Tamanho) then
               for j := 1 to diferenca do
                  Valores[i] := Valores[i] + ' ';
         end
         else
         begin
            if TamanhoCampo = 0 then
            begin
               Result := 'Campo "' + Variaveis[i] + '" está vazio';
               exit;
            end
            else
            begin
               for j := 1 to diferenca do
                  Valores[i] := Valores[i] + ' ';
            end;
         end;
      end;

   end;

   AssignFile(f, copy(Caminho,1,length(Caminho)-2)+'.txt');
   {$I-} Reset(f);
   {$I+}
   if (IOResult <> 0) then
   begin
     Rewrite(f);
   end
   else
   begin
     CloseFile(f);
     Append(f);
   end;
   for i := 0 to Valores.Count - 1 do
      Write(f,Valores[i]);

  Closefile(f);

  Variaveis.Destroy;
  Valores.Destroy;

  result := 'Transação OK';
end;
end.
