unit U_Emitente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.Provider;

type
  TF_Emitente = class(TF_AbstratoGrid)
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
    cxGrid1DBTableView1NomeRazaoSocial: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Emitente: TF_Emitente;

implementation

{$R *.dfm}

uses U_EmitenteBt;

procedure TF_Emitente.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_EmitenteBt := TF_EmitenteBt.Create(nil);
  F_EmitenteBt.oCds.Insert;
  F_EmitenteBt.ShowModal;
  F_EmitenteBt.Free;
  oCds.Refresh;
end;

procedure TF_Emitente.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  F_EmitenteBt := TF_EmitenteBt.Create(nil);
  F_EmitenteBt.oCds.Locate('id', oCdsID.AsInteger, []);
  F_EmitenteBt.ShowModal;
  F_EmitenteBt.Free;
  oCds.Refresh;
end;

end.
