unit U_AcertoEstoqueBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.StdCtrls, cxDropDownEdit, cxCalendar,
  Vcl.Mask, Vcl.DBCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TF_AcertoEstoqueBt = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdsidnfeentrada: TIntegerField;
    oCdsidinsumo: TIntegerField;
    Label3: TLabel;
    oCdstipo: TStringField;
    oCdsdata: TDateField;
    Label1: TLabel;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    oCdsobs: TStringField;
    oCdsquantd: TSingleField;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cdsInsumo: TClientDataSet;
    cdsInsumoid: TIntegerField;
    cdsInsumocodigo: TStringField;
    cdsInsumoue: TStringField;
    cdsInsumolitragem: TSingleField;
    cdsInsumodescricao: TStringField;
    cdsInsumotipo: TStringField;
    dsInsumos: TDataSource;
    cxDBComboBox1: TcxDBComboBox;
    oCdslote: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    recSeq: TPanel;
    Label4: TLabel;
    edtSeq: TEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    btnCI: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    edtQtdEstoque: TEdit;
    Label8: TLabel;
    dtfldCdsdataval: TDateField;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsEstoqueLote: TClientDataSet;
    dsEstoqueLote: TDataSource;
    cdsEstoqueLotelote: TStringField;
    cdsEstoqueLotedataval: TDateField;
    cdsEstoqueLoteQTD: TFloatField;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1dataval: TcxGridDBColumn;
    cxGrid1DBTableView1QTD: TcxGridDBColumn;
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure btnCIClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxDBComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxDBDateEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AcertoEstoqueBt: TF_AcertoEstoqueBt;

implementation

{$R *.dfm}

uses UDM, U_ComunicadoInterno;

procedure TF_AcertoEstoqueBt.ActSalvarExecute(Sender: TObject);
begin
  recSeq.Enabled := True;
  recSeq.Visible := True;
//  inherited;
  if cxDBDateEdit1.text = ''then
  begin
   // Application.MessageBox('Digite uma data de validade',MB_OK + MB_ICONERROR);
    cxDBDateEdit1.SetFocus;
  end;
end;

procedure TF_AcertoEstoqueBt.AdvGlassButton1Click(Sender: TObject);
begin
  //inherited;
  oCdsidnfeentrada.AsInteger := -1;
  oCdsobs.AsString := 'Acerto Estoque:' + oCdsobs.AsString;

  oCds.Post;
  oCds.ApplyUpdates(-1);
  recSeq.Enabled := False;
  recSeq.Visible := False;

  dm.opencnn;
  edtQtdEstoque.Text := FormatFloat('#,##0.000', strtofloat(dm.SMGen.EstInsumo(oCdsidinsumo.AsInteger)));
  dm.closecnn;
end;

procedure TF_AcertoEstoqueBt.AdvGlassButton2Click(Sender: TObject);
begin
  inherited;
  recSeq.Enabled := False;
  recSeq.Visible := False;
end;

procedure TF_AcertoEstoqueBt.AdvGlassButton3Click(Sender: TObject);
begin
  if edtSeq.Text = '' then
  begin
     ShowMessage('É necessário digitar código do CI');
  end
  else
  begin
    DM.opencnn;
    if DM.SMGen.UsoCI(strtoint(edtSeq.Text)) = True then
    begin

       oCdsidnfeentrada.AsInteger := -1;
       oCdsobs.AsString := 'Acerto Estoque:' + oCdsobs.AsString;

       oCds.Post;
       oCds.ApplyUpdates(-1);
       recSeq.Enabled := False;
       recSeq.Visible := False;

       edtQtdEstoque.Text := FormatFloat('#,##0.000', strtofloat(dm.SMGen.EstInsumo(oCdsidinsumo.AsInteger)));
       DM.closecnn;
    end
    else
    begin
       ShowMessage('Código já utilizado ou inexistente!');
       edtSeq.Text := '';
    end;
  end;
end;

procedure TF_AcertoEstoqueBt.btnCIClick(Sender: TObject);
begin
  //inherited;
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

procedure TF_AcertoEstoqueBt.cxDBComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  dm.opencnn;
//  edtQtdEstoque.Text := FormatFloat('#,##0.00', strtofloat(dm.SMGen.EstInsumo(oCdsidinsumo.AsInteger)));
//  dm.closecnn;
end;

procedure TF_AcertoEstoqueBt.cxDBDateEdit1Exit(Sender: TObject);
begin
  inherited;
  if cxDBDateEdit1.text = ''then
  begin
   // Application.MessageBox('Digite uma data de validade',MB_OK + MB_ICONERROR);
  end;
end;

procedure TF_AcertoEstoqueBt.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
 ///era aqui antes
  dm.opencnn;
  edtQtdEstoque.Text := FormatFloat('#,##0.000', strtofloat(dm.SMGen.EstInsumo(oCdsidinsumo.AsInteger)));
  cdsEstoqueLote.Close;
  cdsEstoqueLote.Params[0].Value := oCdsidinsumo.AsInteger;
  cdsEstoqueLote.Open;
  dm.closecnn;
end;

procedure TF_AcertoEstoqueBt.cxDBLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
//  dm.opencnn;
//  edtQtdEstoque.Text := FormatFloat('#,##0.00', strtofloat(dm.SMGen.EstInsumo(oCdsidinsumo.AsInteger)));
//  dm.closecnn;
end;

procedure TF_AcertoEstoqueBt.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DBEdit2.Text <> '' then
  begin
    dm.opencnn;
    cxDBDateEdit1.Text := dm.SMGen.RetornoData(DBEdit2.Text);
    dm.closecnn;
  end;
end;

procedure TF_AcertoEstoqueBt.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
