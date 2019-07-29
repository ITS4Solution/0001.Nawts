unit U_EmitenteBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons, Datasnap.Provider, Vcl.ExtDlgs;

type
  TF_EmitenteBt = class(TF_AbstratoButtons)
    PageControl1: TPageControl;
    TabEmpresa: TTabSheet;
    pnEmpresa: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    Label22: TLabel;
    imgLogoMarca: TImage;
    SpeedButton4: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    btLimparImg: TSpeedButton;
    btInserirImg: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBoxAmbCert: TGroupBox;
    Label18: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit23: TDBEdit;
    DBRadioAmbiente2: TDBRadioGroup;
    DBRadioRegime: TDBRadioGroup;
    DBEdit16: TDBEdit;
    DBEdit8: TDBEdit;
    TabTributo: TTabSheet;
    pnTributo: TPanel;
    Panel2: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    dspEmitente: TDataSetProvider;
    oCdsID: TIntegerField;
    oCdsNomeRazaoSocial: TStringField;
    oCdsNomeFantasia: TStringField;
    oCdsEndereco: TStringField;
    oCdsNumero: TStringField;
    oCdsComplemento: TStringField;
    oCdsBairro: TStringField;
    oCdsCidade: TStringField;
    oCdsCodCidade: TIntegerField;
    oCdsCEP: TStringField;
    oCdsUF: TStringField;
    oCdsCodUF: TIntegerField;
    oCdsPais: TStringField;
    oCdsCodPais: TIntegerField;
    oCdsTelefone: TStringField;
    oCdsCNPJ: TStringField;
    oCdsIE: TStringField;
    oCdsSUFRAMA: TStringField;
    oCdsIM: TStringField;
    oCdsCNAE: TIntegerField;
    oCdsLogo: TStringField;
    oCdsCodTipoRegime: TIntegerField;
    oCdspSimples: TFloatField;
    oCdsCertificado: TStringField;
    oCdsTituloCertificado: TStringField;
    oCdsValidadeCert: TSQLTimeStampField;
    oCdsSenhaCert: TStringField;
    oCdsAmbiente: TStringField;
    oCdsEmail1: TStringField;
    oCdsEmail2: TStringField;
    oCdsEmail3: TStringField;
    oCdsModeloDanfe: TIntegerField;
    oCdsFormaEmissao: TIntegerField;
    oCdsCFOPPadrao: TIntegerField;
    oCdsMudaCFOPInte: TStringField;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btInserirImgClick(Sender: TObject);
    procedure btLimparImgClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure oDSDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EmitenteBt: TF_EmitenteBt;

implementation

{$R *.dfm}

uses
  UDm, UKernel_FuncoesInteiros, U_ConsultaCidades, UKernel_FuncoesStrings;

procedure TF_EmitenteBt.btInserirImgClick(Sender: TObject);
begin
  inherited;

  if OpenPictureDialog1.Execute then
  begin
    oCdsLogo.Value := OpenPictureDialog1.FileName;
    if FileExists(OpenPictureDialog1.FileName) then
      imgLogoMarca.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;

end;

procedure TF_EmitenteBt.btLimparImgClick(Sender: TObject);
begin
  inherited;
  oCdsLogo.Value := '';
  imgLogoMarca.Picture := nil;
end;

procedure TF_EmitenteBt.DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if Length(ConsultaRegistroSimples(DBEdit10.Text, 'Sigla', 'Sigla', 'NFE_Cidades')) > 0 then
    begin
      oCdsUF.Value := ConsultaRegistroSimples(DBEdit10.Text, 'Sigla', 'Sigla', 'NFE_Cidades');
      oCdsCodUF.Value := isInteger(ConsultaRegistroSimples(DBEdit10.Text, 'Sigla', 'CodUF', 'NFE_Cidades'));
    end
    else
    begin
      if DM.tmsMSGQ('Informação', 'UF não encontrada, favor localizar corretamente.') = mrOk then
        SpeedButton4.Click;
    end;

  end;
end;

procedure TF_EmitenteBt.DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if Length(ConsultaRegistroSimples(UpperCase(DBEdit7.Text), 'Cidade', 'Cidade', 'NFE_Cidades')) > 0 then
    begin
      oCdsCodCidade.Value := isInteger(ConsultaRegistroSimples(UpperCase(DBEdit7.Text), 'Cidade', 'CodCidade', 'NFE_Cidades'));
      oCdsUF.Value := ConsultaRegistroSimples(UpperCase(DBEdit7.Text), 'Cidade', 'Sigla', 'NFE_Cidades');
      oCdsCodUF.Value := isInteger(ConsultaRegistroSimples(UpperCase(DBEdit7.Text), 'Cidade', 'CodUF', 'NFE_Cidades'));
    end
    else
    begin
      if DM.tmsMSGQ('Informação', 'Cidade não encontrada, favor localizar corretamente.') = mrOk then
        SpeedButton4.Click;
    end;

  end;
end;

procedure TF_EmitenteBt.FormShow(Sender: TObject);
begin
  inherited;

  if oCds.State = dsInsert then
  begin
    if FileExists(ExtractFilePath(Application.ExeName) + 'img\nfeic.bmp') then
    begin
      oCdsLogo.Value := ExtractFilePath(Application.ExeName) + 'img\nfeic.bmp';
      imgLogoMarca.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'icones\nfeic.bmp');
    end;
    oCdsCFOPPadrao.Value := 5102;
    oCdsMudaCFOPInte.Value := 'S';
    oCdsCodTipoRegime.Value := 1;
    oCdsAmbiente.Value := 'H';

    DBEdit2.SetFocus;
  end;
end;

procedure TF_EmitenteBt.oDSDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  SpeedButton4.Enabled := oCds.State in [dsEdit, dsInsert];

  btInserirImg.Enabled := oCds.State in [dsEdit, dsInsert];
  btLimparImg.Enabled := oCds.State in [dsEdit, dsInsert];

  if FileExists(oCdsLogo.AsString) then
    imgLogoMarca.Picture.LoadFromFile(oCdsLogo.AsString);

end;

procedure TF_EmitenteBt.SpeedButton1Click(Sender: TObject);
begin
  inherited;
{
  if oCds.State in [dsEdit, dsInsert] then
    oCdsCertificado.Value := DM.ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
  oCdsValidadeCert.Value := StrToDate(FormatDateTime('dd/mm/yyyy', DM.ACBrNFe1.Configuracoes.Certificados.DataVenc));
}
end;

procedure TF_EmitenteBt.SpeedButton4Click(Sender: TObject);
var
  SQL: string;
begin
  inherited;

  if (oCds.State <> dsEdit) and (oCds.State <> dsInsert) then
    exit;

  F_ConsultaCidades := TF_ConsultaCidades.Create(Application);
  F_ConsultaCidades.IDPesquisa:= DBEdit7.Text;
  F_ConsultaCidades.ShowModal;
  FreeAndNil(F_ConsultaCidades);

  if DM.sqlCidades.Active = true then
  begin
    oCdsCodCidade.Value := DM.sqlCidades.FieldByName('CodCidade').Value;
    oCdsCidade.Value := DM.sqlCidades.FieldByName('Cidade').Value;
    oCdsUF.Value := DM.sqlCidades.FieldByName('SIGLA').Value;
    oCdsCodUF.Value := DM.sqlCidades.FieldByName('CodUF').Value;
  end;

  DM.sqlCidades.close;

{
  oDS.DataSet.FieldByName('CodCidade').Value := isInteger(TF_ConsultaCidades.Pesquisar(DBEdit7.Text, true, 'CodCidade', 'CodCidade',
    'NFE_Cidades', DBEdit7.Text));

  oDS.DataSet.FieldByName('Cidade').Value := ConsultaRegistro(oDS.DataSet.FieldByName('CodCidade').Value, 'CodCidade', 'Cidade',
    'NFE_Cidades', False);

  oDS.DataSet.FieldByName('UF').Value := ConsultaRegistro(oDS.DataSet.FieldByName('CodCidade').Value, 'CodCidade', 'Sigla',
    'NFE_Cidades', False);

  oDS.DataSet.FieldByName('CodUF').Value := isInteger(ConsultaRegistro(oDS.DataSet.FieldByName('CodCidade').Value, 'CodCidade',
    'CodUF', 'NFE_Cidades', False));
}
end;

end.
