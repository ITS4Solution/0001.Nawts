unit UDM;

interface

uses
  SysUtils, Classes, DBXDataSnap, DBXCommon, DB, SqlExpr, DBClient, DSConnect,
  shellapi,U_FuncServer,IPPeerClient,controls,forms,midaslib,inifiles,
  frxClass, frxExportPDF, frxDBSet, AdvSmoothMessageDialog;

type
  EExcpPers = Class(Exception);
  TDM = class(TDataModule)
    sqlCnn: TSQLconnection;
    ShCoGen: TDSProviderConnection;
    cdsRelEstoque: TClientDataSet;
    ReportRelat2: TfrxReport;
    DBRelat: TfrxDBDataset;
    PDFExport1: TfrxPDFExport;
    PDFExport2: TfrxPDFExport;
    DBRelat2: TfrxDBDataset;
    ReportRelat: TfrxReport;
    cdsRelEstoque2: TClientDataSet;
    cdsRelEstoque2descricao: TStringField;
    cdsRelEstoque2codigo: TStringField;
    cdsRelEstoque2SUM: TFloatField;
    cdsRelEstoque2estoqueminimo: TSingleField;
    cdsRelEstoque2estoquemaximo: TSingleField;
    cdsRelEstoque2FALTA: TFloatField;
    tmsMsgComp: TAdvSmoothMessageDialog;
    cdsRelEstoque2Data: TDateTimeField;
    cdsRelEstoquedescricao: TStringField;
    cdsRelEstoquecodigo: TStringField;
    cdsRelEstoqueSUM: TFloatField;
    cdsRelEstoqueestoqueminimo: TSingleField;
    cdsRelEstoqueestoquemaximo: TSingleField;
    cdsRelEstoqueFALTA: TFloatField;
    reportMP: TfrxReport;
    pdfMP: TfrxPDFExport;
    cdsMP: TfrxDBDataset;
    cdsMatPrima: TClientDataSet;
    cdsMatPrimadescricao: TStringField;
    cdsMatPrimacodigo: TStringField;
    cdsMatPrimaSUM: TFloatField;
    cdsMatPrimaestoqueminimo: TSingleField;
    cdsMatPrimaestoquemaximo: TSingleField;
    cdsMatPrimaFALTA: TFloatField;
    reportUsoInt: TfrxReport;
    pdfUsoInt: TfrxPDFExport;
    cdsUInt: TfrxDBDataset;
    cdsUsoInt: TClientDataSet;
    cdsUsoIntdescricao: TStringField;
    cdsUsoIntcodigo: TStringField;
    cdsUsoIntSUM: TFloatField;
    cdsUsoIntestoqueminimo: TSingleField;
    cdsUsoIntestoquemaximo: TSingleField;
    cdsUsoIntFALTA: TFloatField;
    cdsMatPrimaData: TDateField;
    cdsUsoIntData: TDateField;
    pdfExpSaida: TfrxPDFExport;
    cdsExpSaida: TClientDataSet;
    DBExpSaida: TfrxDBDataset;
    reportExp: TfrxReport;
    pdfExp: TfrxPDFExport;
    DBExp: TfrxDBDataset;
    cdsExp: TClientDataSet;
    cdsExpSaidadescricao: TStringField;
    cdsExpSaidaidprod: TIntegerField;
    cdsExpSaidacodproduto: TIntegerField;
    cdsExpSaidaqtd: TSingleField;
    cdsExpSaidaid: TIntegerField;
    cdsExpSaidaidop: TIntegerField;
    cdsExpSaidadataexp: TDateField;
    cdsExpSaidahoraexp: TTimeField;
    cdsExpSaidanumnf: TStringField;
    cdsExpSaidanomecliente: TStringField;
    cdsExpSaidaobs: TStringField;
    reportExpSaida: TfrxReport;
    cdsExpSaidasDate: TDateField;
    cdsExpdescricao: TStringField;
    cdsExpidprod: TIntegerField;
    cdsExpcodproduto: TIntegerField;
    cdsExpqtd: TSingleField;
    cdsExpid: TIntegerField;
    cdsExpidop: TIntegerField;
    cdsExpdataexp: TDateField;
    cdsExphoraexp: TTimeField;
    cdsExpnumnf: TStringField;
    cdsExpnomecliente: TStringField;
    cdsExpobs: TStringField;
    cdsExpsData: TDateField;
    cdRelEstoqueInativo: TClientDataSet;
    cdRelEstoqueInativodescricao: TStringField;
    cdRelEstoqueInativocodigo: TStringField;
    cdRelEstoqueInativoSUM: TFloatField;
    cdRelEstoqueInativoestoqueminimo: TSingleField;
    cdRelEstoqueInativoestoquemaximo: TSingleField;
    cdRelEstoqueInativoFALTA: TFloatField;
    DBInativo: TfrxDBDataset;
    DBEForItensCons: TfrxDBDataset;
    cdsForItensCons: TClientDataSet;
    rptForItensCons: TfrxReport;
    frxPDFForItensCons: TfrxPDFExport;
    cdsForItensConscodproduto: TIntegerField;
    cdsForItensConsdescricao: TStringField;
    cdsForItensConsQTDE: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsRelEstoque2CalcFields(DataSet: TDataSet);
    procedure cdsMatPrimaCalcFields(DataSet: TDataSet);
    procedure cdsUsoIntCalcFields(DataSet: TDataSet);
    procedure cdsExpSaidaCalcFields(DataSet: TDataSet);
    procedure cdsExpCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
    function tmsMSGQ(sCaption, sMessage: String): Integer;
    function tmsMSG(sCaption, sMessage: String): Integer;


   Var
      SMGen                   : TServerMethodsGenClient;
      sUsuarioLogado          : String;
      iNivelUsuario           : Integer;
      idUser                  : Integer;

    procedure opencnn;
    procedure closecnn;

   Const
      sVersao = '5.4 build 2';

    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  Windows, Vcl.Dialogs, U_LogErro;


{$R *.dfm}


procedure TDM.cdsExpCalcFields(DataSet: TDataSet);
begin
  cdsExpsData.Value := Date;
end;

procedure TDM.cdsExpSaidaCalcFields(DataSet: TDataSet);
begin
  cdsExpSaidasDate.Value := Date;
end;

procedure TDM.cdsMatPrimaCalcFields(DataSet: TDataSet);
begin
 cdsMatPrimaData.Value := Date;
end;

procedure TDM.cdsRelEstoque2CalcFields(DataSet: TDataSet);
begin
  cdsRelEstoque2Data.Value := Date;
end;

procedure TDM.cdsUsoIntCalcFields(DataSet: TDataSet);
begin
 cdsUsoIntData.Value := Date;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
Var
   Ini    : TInifile;
begin
   Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\Conf.ini');
   ini.Free;
   Try
    sqlCnn.Connected   := True;
    ShCoGen.Connected  := True;
    SMGen              := TServerMethodsGenClient.Create(sqlCnn.DBXConnection);

   Except on e : exception do
   begin
      ShowMessage('Erro:' + e.Message);
   end;
   End;
end;

function TDM.tmsMSGQ(sCaption,sMessage: String): Integer;
begin
   //With DM do
   begin
      tmsMsgComp.Buttons.Clear;
      with tmsMsgComp.Buttons.Add do
      begin
         ButtonResult  := mrOK;
         Caption       := 'Sim';
      end;
      with tmsMsgComp.Buttons.Add do
      begin
         ButtonResult  := mrCancel;
         Caption       := 'Não';
      end;
      tmsMsgComp.Caption       := sCaption;
      tmsMsgComp.HTMLText.Text := sMessage;
      tmsMsgComp.Position      := poScreenCenter;
      if tmsMsgComp.Execute then
      begin
         Result := 1;
      end
      else
      Begin
         Result := 0
      End;
   end;
end;

function TDM.tmsMSG(sCaption,sMessage: String): Integer;
begin
   //With DM do
   begin
      tmsMsgComp.Buttons.Clear;
      with tmsMsgComp.Buttons.Add do
      begin
         ButtonResult  := mrOK;
         Caption       := 'Ok';
      end;

      tmsMsgComp.Caption       := sCaption;
      tmsMsgComp.HTMLText.Text := sMessage;
      tmsMsgComp.Position      := poScreenCenter;
      if tmsMsgComp.Execute then
      begin
         Result := 1;
      end

   end;
end;


procedure TDM.closecnn;
begin
  sqlCnn.Connected := False;
  FreeAndNil(SMGen);
end;


procedure TDM.opencnn;
begin
  sqlCnn.Connected := False;
  sqlCnn.Connected := True;
  SMGen            := TServerMethodsGenClient.Create(sqlCnn.DBXConnection);
end;

end.
