unit U_Sequencial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.ComCtrls, AdvGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TF_Sequencial = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    btnSalvar: TAdvGlassButton;
    StatusBar1: TStatusBar;
    oCds: TClientDataSet;
    oDs: TDataSource;
    oCdsGEN_ID: TLargeintField;
    Label1: TLabel;
    edtValor: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Sequencial: TF_Sequencial;

implementation

{$R *.dfm}

uses UDM;

procedure TF_Sequencial.btnSalvarClick(Sender: TObject);
begin
  dm.opencnn;
  if DM.SMGen.VlrSequencial(StrToInt(edtValor.Text)) = True then
  begin
     ShowMessage('Alterado com sucesso');
  end
  else
  begin
     ShowMessage('Digite o valor corretamente!');
  end;
  dm.closecnn;
end;

procedure TF_Sequencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if ocds.State in [dsEdit,dsInsert] then
  begin
      if not(DM.tmsMSGQ('Informação','Os registros não forma salvos. Deseja sair assim mesmo ?') = mrOk) then
      begin
         Abort;
      end;
  end;
end;

procedure TF_Sequencial.FormCreate(Sender: TObject);
begin
  oCds.Close;
  oCds.Open;
end;

end.
