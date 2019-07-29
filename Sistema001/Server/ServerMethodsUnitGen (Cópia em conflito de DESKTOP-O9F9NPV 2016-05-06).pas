unit ServerMethodsUnitGen;

interface

uses
  SysUtils, Classes, DSServer, FMTBcd, DB, SqlExpr, Provider,
  Datasnap.DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset, variants,iniFiles,forms,midaslib,
  frxClass, frxDBSet, frxExportPDF, frxExportXLS,TypInfo,
  ACBrBase, ACBrBoleto, ACBrBoletoFCFR, Datasnap.DSProviderDataModuleAdapter,JPEG,Graphics,Vcl.ExtCtrls;

type
  TServerMethodsGen = class(TDSServerModule)
    QryUsuariosListaold: TZQuery;
    QryUsuariosUnold: TZQuery;
    dspUsuariosLista: TDataSetProvider;
    dspUsuariosUn: TDataSetProvider;
    QryUsuariosUnoldId: TIntegerField;
    QryUsuariosUnoldNome: TWideStringField;
    QryUsuariosUnoldEmail: TWideStringField;
    QryUsuariosUnoldUsuario: TWideStringField;
    QryUsuariosUnoldSenha: TWideStringField;
    QryUsuariosUnoldNivel: TIntegerField;
    frxXLSExport: TfrxXLSExport;
    qryAux: TZQuery;
    qryOrdemServicoold: TZQuery;
    dspOrdemServico: TDataSetProvider;
    qryOrdemServicooldid: TLargeintField;
    qryOrdemServicooldnumeroos: TWideStringField;
    qryOrdemServicooldpedido: TIntegerField;
    qryOrdemServicooldcliente: TWideStringField;
    qryOrdemServicoolddataentrega: TDateField;
    qryOrdemServicooldtempoitem: TIntegerField;
    qryOrdemServicooldtkprojeto: TIntegerField;
    qryOrdemServicooldtkcompras: TIntegerField;
    qryOrdemServicooldtkmp: TIntegerField;
    qrySql: TZQuery;
    qryOrdemServicooldbtkprojeto: TSmallintField;
    qryOrdemServicooldbtkcompras: TSmallintField;
    qryOrdemServicooldbtkmp: TSmallintField;
    qryOrdemServicooldtkserralheria: TIntegerField;
    qryOrdemServicooldbtkserralheria: TSmallintField;
    qryOrdemServicooldtktornoc: TIntegerField;
    qryOrdemServicooldbtktornoc: TSmallintField;
    qryOrdemServicooldtktornocnc: TIntegerField;
    qryOrdemServicooldbtktornocnc: TSmallintField;
    qryOrdemServicooldtkfresa: TIntegerField;
    qryOrdemServicooldbtkfresa: TSmallintField;
    qryOrdemServicooldtkcentrousinagem: TIntegerField;
    qryOrdemServicooldbtkcentrousinagem: TSmallintField;
    qryOrdemServicooldtkbancada: TIntegerField;
    qryOrdemServicooldbtkbancada: TSmallintField;
    qryOrdemServicooldtktt: TIntegerField;
    qryOrdemServicooldbtktt: TSmallintField;
    qryOrdemServicooldtkretpla: TIntegerField;
    qryOrdemServicooldbtkretpla: TSmallintField;
    qryOrdemServicooldtkretcil: TIntegerField;
    qryOrdemServicooldbtkretcil: TSmallintField;
    qryOrdemServicooldtkerosaof: TIntegerField;
    qryOrdemServicooldbtkerosaof: TSmallintField;
    qryOrdemServicooldtkerosaop: TIntegerField;
    qryOrdemServicooldbtkerosaop: TSmallintField;
    qryOrdemServicooldtkhsm: TIntegerField;
    qryOrdemServicooldbtkhsm: TSmallintField;
    qryOrdemServicooldtkmontagem: TIntegerField;
    qryOrdemServicooldbtkmontagem: TSmallintField;
    qryOrdemServicooldtkinspecao: TIntegerField;
    qryOrdemServicooldbtkinspecao: TSmallintField;
    qryOrdemServicooldtkrefugo: TIntegerField;
    qryClientesOLD: TZQuery;
    dspClientes: TDataSetProvider;
    qryClientesOLDid: TIntegerField;
    qryClientesOLDnome: TWideStringField;
    qryClientesOLDcnpj: TWideStringField;
    qryOSVisualizacaoOLD: TZQuery;
    LargeintField1: TLargeintField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField2: TWideStringField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    IntegerField6: TIntegerField;
    SmallintField4: TSmallintField;
    IntegerField7: TIntegerField;
    SmallintField5: TSmallintField;
    IntegerField8: TIntegerField;
    SmallintField6: TSmallintField;
    IntegerField9: TIntegerField;
    SmallintField7: TSmallintField;
    IntegerField10: TIntegerField;
    SmallintField8: TSmallintField;
    IntegerField11: TIntegerField;
    SmallintField9: TSmallintField;
    IntegerField12: TIntegerField;
    SmallintField10: TSmallintField;
    IntegerField13: TIntegerField;
    SmallintField11: TSmallintField;
    IntegerField14: TIntegerField;
    SmallintField12: TSmallintField;
    IntegerField15: TIntegerField;
    SmallintField13: TSmallintField;
    IntegerField16: TIntegerField;
    SmallintField14: TSmallintField;
    IntegerField17: TIntegerField;
    SmallintField15: TSmallintField;
    IntegerField18: TIntegerField;
    SmallintField16: TSmallintField;
    IntegerField19: TIntegerField;
    SmallintField17: TSmallintField;
    IntegerField20: TIntegerField;
    dspOSVisualizacao: TDataSetProvider;
    qryImagemOLD: TZQuery;
    dspImagem: TDataSetProvider;
    qryImagemOLDid: TIntegerField;
    qryImagemOLDidordemservico: TIntegerField;
    qryImagemOLDenviado: TSmallintField;
    qryImagemOLDimagem: TBlobField;
    qryOSRelatorio: TZQuery;
    LargeintField2: TLargeintField;
    WideStringField3: TWideStringField;
    IntegerField21: TIntegerField;
    WideStringField4: TWideStringField;
    DateField2: TDateField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    SmallintField18: TSmallintField;
    SmallintField19: TSmallintField;
    SmallintField20: TSmallintField;
    IntegerField26: TIntegerField;
    SmallintField21: TSmallintField;
    IntegerField27: TIntegerField;
    SmallintField22: TSmallintField;
    IntegerField28: TIntegerField;
    SmallintField23: TSmallintField;
    IntegerField29: TIntegerField;
    SmallintField24: TSmallintField;
    IntegerField30: TIntegerField;
    SmallintField25: TSmallintField;
    IntegerField31: TIntegerField;
    SmallintField26: TSmallintField;
    IntegerField32: TIntegerField;
    SmallintField27: TSmallintField;
    IntegerField33: TIntegerField;
    SmallintField28: TSmallintField;
    IntegerField34: TIntegerField;
    SmallintField29: TSmallintField;
    IntegerField35: TIntegerField;
    SmallintField30: TSmallintField;
    IntegerField36: TIntegerField;
    SmallintField31: TSmallintField;
    IntegerField37: TIntegerField;
    SmallintField32: TSmallintField;
    IntegerField38: TIntegerField;
    SmallintField33: TSmallintField;
    IntegerField39: TIntegerField;
    SmallintField34: TSmallintField;
    IntegerField40: TIntegerField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    qryOSRelatoriocalcPercentagem: TStringField;
    frxPDFExport1: TfrxPDFExport;
    qryImagem2: TZQuery;
    qryImagem2id: TIntegerField;
    qryImagem2idordemservico: TIntegerField;
    qryImagem2imagem: TBlobField;
    qryImagem2enviado: TSmallintField;
    qryOrdemServicooldemail: TWideStringField;
    qryOrdemServicoCadOLD: TZQuery;
    LargeintField3: TLargeintField;
    WideStringField5: TWideStringField;
    IntegerField41: TIntegerField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateField3: TDateField;
    IntegerField42: TIntegerField;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    IntegerField45: TIntegerField;
    SmallintField35: TSmallintField;
    SmallintField36: TSmallintField;
    SmallintField37: TSmallintField;
    IntegerField46: TIntegerField;
    SmallintField38: TSmallintField;
    IntegerField47: TIntegerField;
    SmallintField39: TSmallintField;
    IntegerField48: TIntegerField;
    SmallintField40: TSmallintField;
    IntegerField49: TIntegerField;
    SmallintField41: TSmallintField;
    IntegerField50: TIntegerField;
    SmallintField42: TSmallintField;
    IntegerField51: TIntegerField;
    SmallintField43: TSmallintField;
    IntegerField52: TIntegerField;
    SmallintField44: TSmallintField;
    IntegerField53: TIntegerField;
    SmallintField45: TSmallintField;
    IntegerField54: TIntegerField;
    SmallintField46: TSmallintField;
    IntegerField55: TIntegerField;
    SmallintField47: TSmallintField;
    IntegerField56: TIntegerField;
    SmallintField48: TSmallintField;
    IntegerField57: TIntegerField;
    SmallintField49: TSmallintField;
    IntegerField58: TIntegerField;
    SmallintField50: TSmallintField;
    IntegerField59: TIntegerField;
    SmallintField51: TSmallintField;
    IntegerField60: TIntegerField;
    dspOrdemServicoCad: TDataSetProvider;
    qryOSRelatorioemail: TWideStringField;
    qryVerifica: TZQuery;
    cdsImage: TClientDataSet;
    dspImage: TDataSetProvider;
    cdsImageid: TIntegerField;
    cdsImageidordemservico: TIntegerField;
    cdsImageimagem: TBlobField;
    cdsImageenviado: TSmallintField;
    qryVerificaConexao: TZQuery;
    dspVerificaConexao: TDataSetProvider;
    qryOrdemServicooldfinalizada: TSmallintField;
    qryOSVisualizacaoOLDfinalizada: TSmallintField;
    qryOSVisualizacaoOLDultimaalteracao: TDateField;
    qryOrdemServicooldultimaalteracao: TDateField;
    qryOrdemServicoCadOLDultimaalteracao: TDateField;
    qryOrdemServicoCadOLDcnpj: TWideStringField;
    qryVerificaConexaoidtblconexao: TIntegerField;
    SQLQuery1: TSQLQuery;
    QryUsuariosLista: TSQLQuery;
    QryUsuariosUn: TSQLQuery;
    QryUsuariosUnid: TIntegerField;
    QryUsuariosUnnome: TStringField;
    QryUsuariosUnemail: TStringField;
    QryUsuariosUnusuario: TStringField;
    QryUsuariosUnsenha: TStringField;
    QryUsuariosUnnivel: TIntegerField;
    qryOrdemServico: TSQLQuery;
    qryOrdemServicoid: TLargeintField;
    qryOrdemServiconumeroos: TStringField;
    qryOrdemServicopedido: TIntegerField;
    qryOrdemServicocliente: TStringField;
    qryOrdemServicodataentrega: TDateField;
    qryOrdemServicotempoitem: TIntegerField;
    qryOrdemServicotkprojeto: TIntegerField;
    qryOrdemServicobtkprojeto: TSmallintField;
    qryOrdemServicotkcompras: TIntegerField;
    qryOrdemServicobtkcompras: TSmallintField;
    qryOrdemServicotkmp: TIntegerField;
    qryOrdemServicobtkmp: TSmallintField;
    qryOrdemServicotkserralheria: TIntegerField;
    qryOrdemServicobtkserralheria: TSmallintField;
    qryOrdemServicotktornoc: TIntegerField;
    qryOrdemServicobtktornoc: TSmallintField;
    qryOrdemServicotktornocnc: TIntegerField;
    qryOrdemServicobtktornocnc: TSmallintField;
    qryOrdemServicotkfresa: TIntegerField;
    qryOrdemServicobtkfresa: TSmallintField;
    qryOrdemServicotkcentrousinagem: TIntegerField;
    qryOrdemServicobtkcentrousinagem: TSmallintField;
    qryOrdemServicotkbancada: TIntegerField;
    qryOrdemServicobtkbancada: TSmallintField;
    qryOrdemServicotktt: TIntegerField;
    qryOrdemServicobtktt: TSmallintField;
    qryOrdemServicotkretpla: TIntegerField;
    qryOrdemServicobtkretpla: TSmallintField;
    qryOrdemServicotkretcil: TIntegerField;
    qryOrdemServicobtkretcil: TSmallintField;
    qryOrdemServicotkerosaof: TIntegerField;
    qryOrdemServicobtkerosaof: TSmallintField;
    qryOrdemServicotkerosaop: TIntegerField;
    qryOrdemServicobtkerosaop: TSmallintField;
    qryOrdemServicotkhsm: TIntegerField;
    qryOrdemServicobtkhsm: TSmallintField;
    qryOrdemServicotkmontagem: TIntegerField;
    qryOrdemServicobtkmontagem: TSmallintField;
    qryOrdemServicotkinspecao: TIntegerField;
    qryOrdemServicobtkinspecao: TSmallintField;
    qryOrdemServicotkrefugo: TIntegerField;
    qryOrdemServicofinalizada: TSmallintField;
    qryOrdemServicoemail: TStringField;
    qryOrdemServicoultimaalteracao: TDateField;
    qryOrdemServicocnpj: TStringField;
    qryClientes: TSQLQuery;
    qryClientesid: TIntegerField;
    qryClientesnome: TStringField;
    qryClientescnpj: TStringField;
    qryOSVisualizacao: TSQLQuery;
    qryOSVisualizacaoid: TLargeintField;
    qryOSVisualizacaonumeroos: TStringField;
    qryOSVisualizacaopedido: TIntegerField;
    qryOSVisualizacaocliente: TStringField;
    qryOSVisualizacaodataentrega: TDateField;
    qryOSVisualizacaotempoitem: TIntegerField;
    qryOSVisualizacaotkprojeto: TIntegerField;
    qryOSVisualizacaobtkprojeto: TSmallintField;
    qryOSVisualizacaotkcompras: TIntegerField;
    qryOSVisualizacaobtkcompras: TSmallintField;
    qryOSVisualizacaotkmp: TIntegerField;
    qryOSVisualizacaobtkmp: TSmallintField;
    qryOSVisualizacaotkserralheria: TIntegerField;
    qryOSVisualizacaobtkserralheria: TSmallintField;
    qryOSVisualizacaotktornoc: TIntegerField;
    qryOSVisualizacaobtktornoc: TSmallintField;
    qryOSVisualizacaotktornocnc: TIntegerField;
    qryOSVisualizacaobtktornocnc: TSmallintField;
    qryOSVisualizacaotkfresa: TIntegerField;
    qryOSVisualizacaobtkfresa: TSmallintField;
    qryOSVisualizacaotkcentrousinagem: TIntegerField;
    qryOSVisualizacaobtkcentrousinagem: TSmallintField;
    qryOSVisualizacaotkbancada: TIntegerField;
    qryOSVisualizacaobtkbancada: TSmallintField;
    qryOSVisualizacaotktt: TIntegerField;
    qryOSVisualizacaobtktt: TSmallintField;
    qryOSVisualizacaotkretpla: TIntegerField;
    qryOSVisualizacaobtkretpla: TSmallintField;
    qryOSVisualizacaotkretcil: TIntegerField;
    qryOSVisualizacaobtkretcil: TSmallintField;
    qryOSVisualizacaotkerosaof: TIntegerField;
    qryOSVisualizacaobtkerosaof: TSmallintField;
    qryOSVisualizacaotkerosaop: TIntegerField;
    qryOSVisualizacaobtkerosaop: TSmallintField;
    qryOSVisualizacaotkhsm: TIntegerField;
    qryOSVisualizacaobtkhsm: TSmallintField;
    qryOSVisualizacaotkmontagem: TIntegerField;
    qryOSVisualizacaobtkmontagem: TSmallintField;
    qryOSVisualizacaotkinspecao: TIntegerField;
    qryOSVisualizacaobtkinspecao: TSmallintField;
    qryOSVisualizacaotkrefugo: TIntegerField;
    qryOSVisualizacaofinalizada: TSmallintField;
    qryOSVisualizacaoemail: TStringField;
    qryOSVisualizacaoultimaalteracao: TDateField;
    qryOSVisualizacaocnpj: TStringField;
    qryImagem: TSQLQuery;
    qryImagemid: TIntegerField;
    qryImagemidordemservico: TIntegerField;
    qryImagemimagem: TBlobField;
    qryImagemenviado: TSmallintField;
    qryOrdemServicoCad: TSQLQuery;
    qryOrdemServicoCadid: TLargeintField;
    qryOrdemServicoCadnumeroos: TStringField;
    qryOrdemServicoCadpedido: TIntegerField;
    qryOrdemServicoCadcliente: TStringField;
    qryOrdemServicoCaddataentrega: TDateField;
    qryOrdemServicoCadtempoitem: TIntegerField;
    qryOrdemServicoCadtkprojeto: TIntegerField;
    qryOrdemServicoCadbtkprojeto: TSmallintField;
    qryOrdemServicoCadtkcompras: TIntegerField;
    qryOrdemServicoCadbtkcompras: TSmallintField;
    qryOrdemServicoCadtkmp: TIntegerField;
    qryOrdemServicoCadbtkmp: TSmallintField;
    qryOrdemServicoCadtkserralheria: TIntegerField;
    qryOrdemServicoCadbtkserralheria: TSmallintField;
    qryOrdemServicoCadtktornoc: TIntegerField;
    qryOrdemServicoCadbtktornoc: TSmallintField;
    qryOrdemServicoCadtktornocnc: TIntegerField;
    qryOrdemServicoCadbtktornocnc: TSmallintField;
    qryOrdemServicoCadtkfresa: TIntegerField;
    qryOrdemServicoCadbtkfresa: TSmallintField;
    qryOrdemServicoCadtkcentrousinagem: TIntegerField;
    qryOrdemServicoCadbtkcentrousinagem: TSmallintField;
    qryOrdemServicoCadtkbancada: TIntegerField;
    qryOrdemServicoCadbtkbancada: TSmallintField;
    qryOrdemServicoCadtktt: TIntegerField;
    qryOrdemServicoCadbtktt: TSmallintField;
    qryOrdemServicoCadtkretpla: TIntegerField;
    qryOrdemServicoCadbtkretpla: TSmallintField;
    qryOrdemServicoCadtkretcil: TIntegerField;
    qryOrdemServicoCadbtkretcil: TSmallintField;
    qryOrdemServicoCadtkerosaof: TIntegerField;
    qryOrdemServicoCadbtkerosaof: TSmallintField;
    qryOrdemServicoCadtkerosaop: TIntegerField;
    qryOrdemServicoCadbtkerosaop: TSmallintField;
    qryOrdemServicoCadtkhsm: TIntegerField;
    qryOrdemServicoCadbtkhsm: TSmallintField;
    qryOrdemServicoCadtkmontagem: TIntegerField;
    qryOrdemServicoCadbtkmontagem: TSmallintField;
    qryOrdemServicoCadtkinspecao: TIntegerField;
    qryOrdemServicoCadbtkinspecao: TSmallintField;
    qryOrdemServicoCadtkrefugo: TIntegerField;
    qryOrdemServicoCadfinalizada: TSmallintField;
    qryOrdemServicoCademail: TStringField;
    qryOrdemServicoCadultimaalteracao: TDateField;
    qryOrdemServicoCadcnpj: TStringField;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure qryOSRelatorioCalcFields(DataSet: TDataSet);
  private
    procedure DSPBeforeUpdateRecord_Gen(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    Procedure LoadParams;
    Procedure FechaAverbacao;
    function ItsParcial(sTerminal: String) : boolean;
    Procedure PreencheVlrFaturamento;
    function ItsMultiEmpresa(sTerminal: String): integer;
    function getValorDocumento(sTipo, sTerminal: String): double;

    { Private declarations }
  public
   //win32
   Function VerificaUsuario(sLogin,sSenha: String) : Integer;
   Procedure UpdateSenhaUsuario(sLogin,sSenha: String);
   Procedure ProcessamentoFaturamento(idProcessamento: integer; sTerminal: String; sdtInicial,sdtFinal: string);
   Procedure Fechamento;
   Function VerificaParametro(sTpParametro,sTpFaturamento: String; oValor : Variant) : Boolean;
   procedure ProcessaLiberados;
   procedure configurarBoleto;
   procedure execSql(sSql: String);
   function verificaconexao : Integer;
   procedure AbreConexaoServer;
    procedure FechaConexaoServer;
   //android
   Function VerificaUsuarioAndroid(sLogin,sSenha: String) : Integer;
   Function ExecSqlAndroid(sSql: String) : Integer;
   Procedure EnviaRelatorioAndroid(iId: Integer);
   Procedure Resize(sImage: String);
   function VerificaOsVsCnpj(sCnpj,sOS: String): Integer;

   //Funções para substituir o parâmetro
   procedure putQryRelations_ex(sTerminal: String);


    { Public declarations }
  end;

implementation

uses UDMCnn, U_UtilsServer, U_Utils, U_Email, U_Const, System.DateUtils,
  U_FunctionsNF, UMail;

{$R *.dfm}

{ TServerMethodsGen }




procedure TServerMethodsGen.DSServerModuleCreate(Sender: TObject);
var
  I: Integer;
begin
   Try
   Begin
   for I := 0 to ComponentCount - 1 do
   begin
      if Components[i] is TDataSetProvider  then
      begin
         if not Assigned(TDataSetProvider(Components[i]).BeforeUpdateRecord) then
          TDataSetProvider(Components[i]).BeforeUpdateRecord :=  DSPBeforeUpdateRecord_Gen;
      end
   end;
   LoadParams;
   End;
   Except on e : Exception do
   begin
      GravaLog(E.message,self.name,e.ClassName,'');
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName);
   end;

   End;
end;

procedure TServerMethodsGen.EnviaRelatorioAndroid(iId: Integer);
Var
   oListaArquivos : Array[0..9] of String;
   sArquivo,sListaDeEmail : String;
   i,jarray : integer;
   sDir : String;
   BlobStream : TStream;
   JpegImage : TJPEGImage;
   bitmap:TBitMap;
begin
   cdsImage.Close;
   cdsImage.Params[0].Value := iId;
   cdsImage.Open;
   i := cdsImage.RecordCount;
   jarray := 0;
   sDir := ExtractFilePath(Application.ExeName) + 'relatorio\';
   while not cdsImage.Eof do
   begin
      cdsImageImagem.SaveToFile(sDir + 'imgRelat' + IntToStr(i) + IntToStr(iId) + '.png');
      //BlobStream := cdsImage.CreateBlobStream(cdsImage.FieldByName('imagem'),TBlobStreamMode.bmRead);
      //cdsImage.CreateBlobStream(cdsImage.FieldByname('imagem'), bmRead);
//    if BlobStream.Size <> 0 then
//    begin
//      JpegImage  := TJPEGImage.Create;
//      try
//         bitmap := TBitmap.Create;
//         bitmap.LoadFromStream(BlobStream);
//         JpegImage := TJPEGImage.Create;
//         JpegImage.CompressionQuality := 35;
//         JpegImage.Assign(bitmap);
//         JpegImage.SaveToFile(sDir + 'imgRelat' + IntToStr(i) + IntToStr(iId) + '.jpg');
//      finally
//         bitmap.Free;
//         JpegImage.Free;
//         BlobStream.Free;
//        end;
//    end;
      oListaArquivos[jarray] := sDir + 'imgRelat' + IntToStr(i) + IntToStr(iId) + '.png';
      //Resize(sDir + 'imgRelat' + IntToStr(i) + IntToStr(iId) + '.jpg');
      inc(jarray);
      i := i -1;
      cdsImage.Next;
   end;
   qryOSRelatorio.Close;
   qryOSRelatorio.Params[0].Value := iId;
   qryOSRelatorio.Open;
   sListaDeEmail := qryOSRelatorioemail.AsString;
   frxReport1.LoadFromFile('C:\ControleDeOS\relMonitorProdutividade.fr3');
   frxReport1.ShowProgress := False;
   sArquivo := 'relatorioprodutividade_' + IntToStr(iId) + '.pdf';
   frxPDFExport1.FileName := sArquivo;
   frxPDFExport1.DefaultPath := ExtractFilePath(Application.ExeName);
   frxPDFExport1.ShowDialog := False;
   frxPDFExport1.ShowProgress := False;
   frxPDFExport1.OverwritePrompt := False;
   frxReport1.PrepareReport();
   frxReport1.Export(frxPDFExport1);

//   sListaDeEmail := 'alexandre.rigonato@usicomp.com.br;luiscamargobr@gmail.com';//Pega do banco de dados
   if sListaDeEmail <> '' then
   begin
      EnviarEmail(sArquivo,'smtp.usicomp.com.br', 587, 'followup@usicomp.com.br','flo7852usi',sListaDeEmail,'Envio de email','Relatório de Monitoramento de produtividade  !', True, False);
   end;
   deletefile(sArquivo);
   for i := 0 to jarray -1 do
   begin
      deletefile(oListaArquivos[i]);
   end;
end;

procedure TServerMethodsGen.execSql(sSql: String);
begin

end;

function TServerMethodsGen.ExecSqlAndroid(sSql: String): Integer;
begin
   DMCnn.dbCnn.Connect;
   qrySql.Close;
   qrySql.SQL.Add(sSql);
   Try
      qrySql.ExecSQL;
   Except
      Result := 0;
   End;
end;

procedure TServerMethodsGen.FechaAverbacao;
begin
end;

procedure TServerMethodsGen.Fechamento;
begin

end;

function TServerMethodsGen.ItsMultiEmpresa(sTerminal: String): integer;
begin
end;

function TServerMethodsGen.ItsParcial(sTerminal: String): boolean;
begin
end;

procedure TServerMethodsGen.LoadParams;
var
   ArqIni: TIniFile;
   sDatabase,sHostName,sUser,sPassWord,sPort : String;
   sDBLink : String;
begin
   ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\Conf.ini');
   Try
   Begin
      Try
      Begin
         sDatabase          := ArqIni.ReadString( 'ConexaoATMWeb' , 'DataBase','');
         sHostName          := ArqIni.ReadString( 'ConexaoATMWeb' , 'HostName','');
         sUser              := ArqIni.ReadString( 'ConexaoATMWeb' , 'User'    ,'');
         sPassword          := ArqIni.ReadString( 'ConexaoATMWeb' , 'PassWord','');
         sPort              := ArqIni.ReadString( 'ConexaoATMWeb' , 'Port'    ,'');
      End;
      Except on e : Exception do
      begin
         GravaLog(E.message,self.name,e.ClassName,'');
         raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName);
      end;
      End;
   End;
   finally
      ArqIni.Free;
      sDBLink := 'hostaddr=' + sHostName + ' dbname=' + sDatabase + ' user=' + sUser + ' password=' + Decript(sPassword) + ' port=5434';
   end;
   //QryListaClientesFat.Params[0].Value := sDBLink;
end;

procedure TServerMethodsGen.PreencheVlrFaturamento;
begin
//Como preencher os valores e não ficar indo sempre no banco
end;

function TServerMethodsGen.getValorDocumento(sTipo,sTerminal: String) : double;
begin
end;

procedure TServerMethodsGen.AbreConexaoServer;
begin
   DMCnn.dbCnn.Connected := True;
end;

procedure TServerMethodsGen.FechaConexaoServer;
begin
   DMCnn.dbCnn.Connected := False;
end;


procedure TServerMethodsGen.configurarBoleto;
begin
end;


procedure TServerMethodsGen.ProcessaLiberados;
begin
end;

procedure TServerMethodsGen.ProcessamentoFaturamento(idProcessamento: integer; sTerminal: String; sdtInicial,sdtFinal: String);
begin
end;

procedure TServerMethodsGen.putQryRelations_ex(sTerminal: String);
begin

end;

procedure TServerMethodsGen.qryOSRelatorioCalcFields(DataSet: TDataSet);
Var
   fMedia : double;
   i      : integer;
begin
   fMedia   := 0;
   i        := 0;
   //Projeto
   if qryOSRelatorio.FieldByName('bTkProjeto').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('TkProjeto').AsInteger;
      inc(i);
   end;
   //Compras
   if qryOSRelatorio.FieldByName('btkcompras').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkcompras').AsInteger;
      inc(i);
   end;
   //MP
   if qryOSRelatorio.FieldByName('btkmp').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkmp').AsInteger;
      inc(i);
   end;
   //Serralheria
   if qryOSRelatorio.FieldByName('btkserralheria').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkserralheria').AsInteger;
      inc(i);
   end;
   //Torno C
   if qryOSRelatorio.FieldByName('btktornoc').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tktornoc').AsInteger;
      inc(i);
   end;
   //Torno CNC
   if qryOSRelatorio.FieldByName('btktornocnc').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tktornocnc').AsInteger;
      inc(i);
   end;
   //Fresa
   if qryOSRelatorio.FieldByName('btkfresa').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkfresa').AsInteger;
      inc(i);
   end;
   //Centro US
   if qryOSRelatorio.FieldByName('btkcentrousinagem').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkcentrousinagem').AsInteger;
      inc(i);
   end;

   //Bancada
   if qryOSRelatorio.FieldByName('btkbancada').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkbancada').AsInteger;
      inc(i);
   end;
   //TT
   if qryOSRelatorio.FieldByName('btktt').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tktt').AsInteger;
      inc(i);
   end;
   //Retifica Plana
   if qryOSRelatorio.FieldByName('btkretpla').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkretpla').AsInteger;
      inc(i);
   end;
   //Retifica Cil
   if qryOSRelatorio.FieldByName('btkretcil').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkretcil').AsInteger;
      inc(i);
   end;

   //Erosão F
   if qryOSRelatorio.FieldByName('btkerosaof').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkerosaof').AsInteger;
      inc(i);
   end;
   //Erosão P
   if qryOSRelatorio.FieldByName('btkerosaop').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkerosaop').AsInteger;
      inc(i);
   end;
   //HSM
   if qryOSRelatorio.FieldByName('btkhsm').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkhsm').AsInteger;
      inc(i);
   end;
   //MOntagem
   if qryOSRelatorio.FieldByName('btkmontagem').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('btkmontagem').AsInteger;
      inc(i);
   end;
   //Inspeção
   if qryOSRelatorio.FieldByName('btkinspecao').AsInteger = 1 then
   begin
      fMedia := fmedia + qryOSRelatorio.FieldByName('tkinspecao').AsInteger;
      inc(i);
   end;
   //Média das porcentagens
   if i <> 0 then
   begin
      qryOSRelatoriocalcPercentagem.AsString := FloatToStr((fmedia / i) - qryOSRelatorio.FieldByName('tkrefugo').AsInteger) + '%';
   end;
end;

procedure TServerMethodsGen.Resize(sImage: String);
Const
   iCompression = 10;
var
   oJPG: TJPegImage;
   oBMP: TBitMap;
begin
   //iCompression := abs(ACompression);
   oJPG := TJPegImage.Create;
   oJPG.LoadFromFile(sImage);
   oBMP := TBitMap.Create;
   oBMP.Assign(oJPG);
  { Fazer a Compressão e salva o novo arquivo }
   oJPG.CompressionQuality := iCompression;
   oJPG.Compress;
   oJPG.SaveToFile(sImage + '1');
   { Limpar }
   oJPG.Free;
   oBMP.Free;
end;

procedure TServerMethodsGen.UpdateSenhaUsuario(sLogin, sSenha: String);
Var
   sSql : string;
begin
   Try
   Begin
      sSql := '';
      sSql := 'update "usuarios" set "Senha" = ' + QuotedStr(sSenha) + ' Where "Usuario" = ' + QuotedStr(sLogin);
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Text := sSql;
      QryAux.ExecSQL;
   End;
   Except on e : Exception do
   Begin
      GravaLog(E.message,self.name,e.ClassName,sSql);
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName + ';' + sSql);
   End;
   End;
end;

function TServerMethodsGen.verificaconexao: Integer;
begin
   Result := 1;
end;

function TServerMethodsGen.VerificaOsVsCnpj(sCnpj, sOS: String): Integer;
Var
   oSql : String;
begin
   if sCnpj = '0000' then
   begin
      oSql := 'Select id from tblcadordemservico where numeroos = '
            + QuotedStr(sOS);
   end
   else
   begin
      oSql := 'Select id from tblcadordemservico where numeroos = '
            + QuotedStr(sOS)
            + ' and cnpj = '
            +  QuotedStr(sCnpj);
   end;
   qryAux.Close;
   qryAux.SQL.Add(oSql);
   qryAux.Open;
   if qryAux.RecordCount >= 1 then
   begin
      Result := qryAux.FieldByName('id').AsInteger;
   end
   else
   begin
      Result := -1;
   end;
   qryAux.Close;
end;

function TServerMethodsGen.VerificaParametro(sTpParametro,sTpFaturamento: String; oValor : Variant) : Boolean;
begin
end;

function TServerMethodsGen.VerificaUsuario(sLogin, sSenha: String): Integer;
Var
   sSql : String;
begin
   Try
   Begin
      DMCnn.dbCnn.Connect;
      sSql := '';
      sSql := 'select * from "tblusuarios" where "usuario" = ' + QuotedStr(sLogin);
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Text := sSql;
      QryAux.Open;
      if (QryAux.FieldByName('senha').AsString = '') and (QryAux.RecordCount > 0) then
      begin
         Result := -1;
      end
      else
      begin
         sSql := '';
         sSql := 'select * from "tblusuarios" where "usuario" = ' + QuotedStr(sLogin) + ' and "senha" = ' + QuotedStr(sSenha);
         QryAux.Close;
         QryAux.SQL.Text := sSql;
         QryAux.Open;
         if QryAux.RecordCount > 0 then
         begin
            Result := QryAux.FieldByName('nivel').AsInteger;
         end
         else
         begin
            Result := 0;
         end;
      end;
      End;
   Except on e : Exception do
   begin
      GravaLog(E.message,self.name,e.ClassName,sSql);
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName + ';' + sSql);
   end;
   End;
end;

function TServerMethodsGen.VerificaUsuarioAndroid(sLogin,sSenha: String): Integer;
Var
   sSql : String;
begin
   Try
   Begin
      DMCnn.dbCnn.Connect;
      sSql := '';
      sSql := 'select * from "tblusuarios" where "usuario" = ' + QuotedStr(sLogin);
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Text := sSql;
      QryAux.Open;
      if (Cript(QryAux.FieldByName('senha').AsString) = '') and (QryAux.RecordCount > 0) then
      begin
         Result := -1;
      end
      else
      begin
         sSql := '';
         sSql := 'select * from "tblusuarios" where "usuario" = ' + QuotedStr(sLogin) + ' and "senha" = ' + QuotedStr(Cript(sSenha));
         QryAux.Close;
         QryAux.SQL.Text := sSql;
         QryAux.Open;
         if QryAux.RecordCount > 0 then
         begin
            Result := QryAux.FieldByName('nivel').AsInteger;
         end
         else
         begin
            Result := 0;
         end;
      end;
      End;
   Except on e : Exception do
   begin
      GravaLog(E.message,self.name,e.ClassName,sSql);
      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName + ';' + sSql);
   end;
   End;

end;

Procedure TServerMethodsGen.DSPBeforeUpdateRecord_Gen(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
Var
   tblName  : string;
   sErros   : String;
   sSql, sSqlValues, sSqlCampos, sSqlValuesAux, sSqlCamposAux,sSqlSets  : String;
   I        : Integer;
   _recno   : Integer;
   sUsuario : string;
begin
//   Try
//   Begin
//      tblName :=  IProviderSupport(SourceDS).PSGetTableName;
//      if tblName <> '' then
//      begin
//         case UpdateKind of
//            ukInsert : begin
//               QryAux.Close;
//               QryAux.SQL.Clear;
//               QryAux.SQL.Text := 'Insert into alteracoes ("Data","Hora","Tabela","Campo","ValorAntigo","Usuario") values ('
//                                +       QuotedStr(FormatDateTime('dd/mm/yyyy',now()))
//                                + ',' + QuotedStr(FormatDateTime('hh:mm:ss',now()))
//                                + ',' + QuotedStr(tblName)
//                                + ',' + QuotedStr('Todos')
//                                + ',' + QuotedStr('Inserção de registro na tabela')
//                                + ',' + QuotedStr(DeltaDs.FieldByName('UsuAlt').AsString)
//                                + ')';
//               QryAux.ExecSQL;
//            end;
//            ukModify : begin
//               for I := 0 to DeltaDS.FieldCount - 1 do
//               begin
//                  Try
//                     if (not VarIsClear(DeltaDs.Fields[i].NewValue)) then
//                     begin
//                        QryAux.Close;
//                        QryAux.SQL.Clear;
//                        QryAux.SQL.Text := 'Insert into alteracoes ("Data","Hora","Tabela","Campo","ValorAntigo","Usuario") values ('
//                                         +       QuotedStr(FormatDateTime('dd/mm/yyyy',now()))
//                                         + ',' + QuotedStr(FormatDateTime('hh:mm:ss',now()))
//                                         + ',' + QuotedStr(tblName)
//                                         + ',' + QuotedStr(DeltaDs.Fields[i].FieldName)
//                                         + ',' + QuotedStr(DeltaDs.Fields[i].OldValue)
//                                         + ',' + QuotedStr(IIf(DeltaDS.FieldByName('UsuAlt').NewValue = '',DeltaDS.FieldByName('UsuAlt').OldValue,DeltaDS.FieldByName('UsuAlt').NewValue))
//                                         + ')';
//                        QryAux.ExecSQL;
//                     end;
//                  Except
//
//                  End;
//               end;
//            end;
//            ukDelete : begin
//               QryAux.Close;
//               QryAux.SQL.Clear;
//               QryAux.SQL.Text := 'Insert into alteracoes ("Data","Hora","Tabela","Campo","ValorAntigo","Usuario") values ('
//                                +       QuotedStr(FormatDateTime('dd/mm/yyyy',now()))
//                                + ',' + QuotedStr(FormatDateTime('hh:mm:ss',now()))
//                                + ',' + QuotedStr(tblName)
//                                + ',' + QuotedStr('Todos')
//                                + ',' + QuotedStr('Deleção de registro na tabela')
//                                + ',' + QuotedStr(IIf(DeltaDS.FieldByName('UsuAlt').NewValue = '',DeltaDS.FieldByName('UsuAlt').OldValue,DeltaDS.FieldByName('UsuAlt').NewValue))
//                                + ')';
//               QryAux.ExecSQL;
//            end;
//         end;
//      end;
//   End;
//   Except on e : exception do
//   begin
//      GravaLog(E.message,self.name,e.ClassName,QryAux.SQL.Text);
//      raise Exception.Create(e.Message + ';' + self.name + ';' + e.ClassName + ';' + QryAux.SQL.Text);
//   end;
//   End;
end;


end.

