unit UKernel_Funcoes_Util;

interface

Uses Winapi.Windows, Vcl.Forms, System.Classes, System.SysUtils, Vcl.ExtCtrls, jpeg, Vcl.Imaging.pngimage,
  Vcl.Graphics, Vcl.DBGrids, Db;

{ : Função para facilitar o instanciamento de um form }
procedure AbreForm(ClasseForm: TComponentClass; Form: TForm);
{ : Inicializa Variaveis do Sistema }
procedure InicializaVariaveis;
{ : Finaliza Variaveis do Sistema }
procedure LiberaVariaveisMemoria;
{ : Localiza Imagem e passa como parametro timage }
procedure AbrirFoto(var Image: TImage; strCaminho: string);
{ : Altera Resolucação Imagem }
function AlteraResolucaoImagem(Imagem: TGraphic; W, H: Integer; Tipo: TGraphicClass = nil): TGraphic;
{ : Valida GTin }
Function ValidaGtin(sCod: string): Boolean;
Function ValidaGtinStr(sCod: string): string;
{ : Focaliza DBGrid na Coluna selecionada }
procedure FocalizaGrid(var DbGrid: TDBGrid; indexColuna: Integer); overload;
procedure FocalizaGrid(var DbGrid: TDBGrid; NomeColuna: string); overload;

{ : Alterar Atributos de Data de um Arquivo }
function SetFileDateTime(FileName: string; CreateTime, ModifyTime, AcessTime: TDateTime): Boolean;
{ : Data Alteracao de um arquivo }
Function DataArquivoAlteracao(Arquivo: string): TDateTime;

{ : Print Screen }
Function CapturaTela: TJPEGImage;

{ : Diretorio do windows }
Function SysSystemDir: string;

implementation

uses UKernel_VariaveisPublic, UKernel_Classe_Pesquisa, UKernel_Classe_Regras_CRT;


procedure AbreForm(ClasseForm: TComponentClass; Form: TForm);
begin

  Application.CreateForm(ClasseForm, Form);
  try
    Form.ShowModal;
  finally
    Form.Free;
  end;

end;
procedure InicializaVariaveis;
begin

  // Variavel campos das Tabelas do banco
  Pesquisa := TPesquisa.Create;

  CrtEmitente := TRegimeTriburario.Create;
end;

procedure LiberaVariaveisMemoria;
begin

  // Variavel campos das Tabelas do banco
  Pesquisa.Destroy;

end;
procedure AbrirFoto(var Image: TImage; strCaminho: string);
begin

  if FileExists(strCaminho) then
    Image.Picture.LoadFromFile(strCaminho)
  else
    Image.Picture := nil;

end;

function AlteraResolucaoImagem(Imagem: TGraphic; W, H: Integer; Tipo: TGraphicClass = nil): TGraphic;
var
  B: TBitmap;
begin
  B := TBitmap.Create;
  try
    B.Width := W;
    B.Height := H;
    B.Canvas.StretchDraw(Rect(0, 0, W, H), Imagem);
    if Tipo = nil then
      Result := TGraphic(Imagem.ClassType.Create)
    else
      Result := Tipo.Create;
    Result.Assign(B);
  finally
    B.Free;
  end;
end;

Function ValidaGtin(sCod: string): Boolean;
BEGIN
//var
//  Val: TACBrValidador;
//begin
//  Val := TACBrValidador.Create(nil);
//
//  Val.TipoDocto := docGTIN;
//
//  Val.Documento := sCod;
//  Result := Val.Validar;

end;

Function ValidaGtinStr(sCod: string): string;
begin
  if ValidaGtin(sCod) then
    Result := sCod
  else
    Result := '';

end;

procedure FocalizaGrid(var DbGrid: TDBGrid; indexColuna: Integer); overload;
begin
  DbGrid.SetFocus;
  DbGrid.SelectedIndex := indexColuna;
end;

procedure FocalizaGrid(var DbGrid: TDBGrid; NomeColuna: string); overload;
var
  i: Integer;
begin

  // if Length(NomeColuna) = 0 then
  // NomeColuna := Kernel_Cadastro.strCampo_Descricao;

  DbGrid.SetFocus;
  for i := 0 to DbGrid.Columns.Count - 1 do
    if DbGrid.Columns[i].FieldName = NomeColuna then
      DbGrid.SelectedIndex := i;

end;

Function CapturaTela: TJPEGImage;
var
  dc: hdc;
  cv: TCanvas;
  jpg: TJPEGImage;
  bmp: TBitmap;
  x, y: Integer;
begin
  try
    Result := TJPEGImage.Create;
    jpg := TJPEGImage.Create;
    bmp := TBitmap.Create;
    bmp.Width := Screen.Width;
    bmp.Height := Screen.Height;
    dc := getdc(0);
    cv := TCanvas.Create;
    cv.Handle := dc;
    bmp.Canvas.CopyRect(Rect(0, 0, Screen.Width, Screen.Height), cv, Rect(0, 0, Screen.Width, Screen.Height));

    jpg.compressionquality := 50; // Qualidade da imagem
    jpg.Assign(bmp);
    jpg.compress;
    Result.Assign(jpg);

  finally
    cv.Free;
    ReleaseDC(0, dc);
    jpg.Free;
  end;

end;

function SetFileDateTime(FileName: string; CreateTime, ModifyTime, AcessTime: TDateTime): Boolean;
  function ConvertToFileTime(DateTime: TDateTime): PFileTime;
  var
    FileTime: TFileTime;
    LFT: TFileTime;
    LST: TSystemTime;
  begin
    Result := nil;
    if DateTime > 0 then
    begin
      DecodeDate(DateTime, LST.wYear, LST.wMonth, LST.wDay);
      DecodeTime(DateTime, LST.wHour, LST.wMinute, LST.wSecond, LST.wMilliSeconds);
      if SystemTimeToFileTime(LST, LFT) then
        if LocalFileTimeToFileTime(LFT, FileTime) then
        begin
          New(Result);
          Result^ := FileTime;
        end;
    end;
  end;

var
  FileHandle: Integer;
  ftCreateTime, ftModifyTime, ftAcessTime: PFileTime;
begin
  Result := False;
  try
    ftCreateTime := ConvertToFileTime(CreateTime);
    ftModifyTime := ConvertToFileTime(ModifyTime);
    ftAcessTime := ConvertToFileTime(AcessTime);
    try
      FileHandle := FileOpen(FileName, fmOpenReadWrite or fmShareExclusive);
      Result := SetFileTime(FileHandle, ftCreateTime, ftAcessTime, ftModifyTime);
    finally
      FileClose(FileHandle);
    end;
  finally
    Dispose(ftCreateTime);
    Dispose(ftAcessTime);
    Dispose(ftModifyTime);
  end;
end;

Function DataArquivoAlteracao(Arquivo: string): TDateTime;
var
  DatadoArquivo: Integer;
begin
  DatadoArquivo := FileAge(Arquivo);
  if DatadoArquivo > -1 then
    Result := FileDateToDateTime(DatadoArquivo);
end;

Function SysSystemDir: string;
begin
  SetLength(Result, MAX_PATH);
  if GetSystemDirectory(Pchar(Result), MAX_PATH) > 0 then
    Result := string(Pchar(Result))
  else
    Result := '';
end;

end.
