unit U_OPExpedicaoBtn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls, dxBevel,
  AdvGlassButton, Vcl.StdCtrls, Data.DB, Datasnap.DBClient;

type
  TF_OPExpedicaoBtn = class(TForm)
    dxBevel1: TdxBevel;
    dxBevel2: TdxBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnLista: TAdvGlassButton;
    btnBaixa: TAdvGlassButton;
    Label1: TLabel;
    lblCod: TLabel;
    Label2: TLabel;
    lblProd: TLabel;
    Label3: TLabel;
    lblLote: TLabel;
    edtRecebido: TEdit;
    Label4: TLabel;
    cdsQTD: TClientDataSet;
    cdsQTDqtd: TSingleField;
    recSeq: TPanel;
    Label11: TLabel;
    edtSeq: TEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    btnCI: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    procedure btnBaixaClick(Sender: TObject);
    procedure btnListaClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure btnCIClick(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    var
valordigitado : string;
  end;

var
  F_OPExpedicaoBtn: TF_OPExpedicaoBtn;

implementation

{$R *.dfm}

uses UDM, U_OPExpedicao, U_ComunicadoInterno;

procedure TF_OPExpedicaoBtn.AdvGlassButton1Click(Sender: TObject);
begin
  if edtRecebido.Text <> '' then
  begin
    dm.opencnn;
    dm.SMGen.InsertEstExp(F_OPExpedicao.oCdsid.AsInteger, F_OPExpedicao.oCdsidprodutos.AsInteger, STRTOFLOAT(edtRecebido.Text));
    dm.closecnn;
    ShowMessage('Cadastrado com sucesso!');
    recSeq.Visible := False;
    recSeq.Enabled := fALSE;
  end
  else
  begin
     ShowMessage('Insira o valor da quantidade recebida!');
  end;
end;

procedure TF_OPExpedicaoBtn.AdvGlassButton2Click(Sender: TObject);
begin
  recSeq.Enabled := fALSE;
  recSeq.Visible := fALSE;
end;

procedure TF_OPExpedicaoBtn.AdvGlassButton3Click(Sender: TObject);
begin
  if edtRecebido.Text <> '' then
  begin
    if edtSeq.Text <> '' then
    begin
      dm.opencnn;
      if DM.SMGen.UsoCI(strtoint(edtSeq.Text)) = True then
      begin
         dm.SMGen.InsertEstExp(F_OPExpedicao.oCdsid.AsInteger, F_OPExpedicao.oCdsidprodutos.AsInteger, STRTOFLOAT(edtRecebido.Text));
         ShowMessage('Cadastrado com sucesso!');
         recSeq.Visible := False;
         recSeq.Enabled := fALSE;
      end
      else
      begin
         ShowMessage('Código já utilizado ou inexistente!');
         edtSeq.Text := '';
      end;
      dm.closecnn;
    end
    else
    begin
      ShowMessage('É necessário digitar código do CI');
    end;
   end
  else
  begin
    ShowMessage('Insira o valor da quantidade recebida!');
  end;
end;

procedure TF_OPExpedicaoBtn.btnBaixaClick(Sender: TObject);
begin
  F_OPExpedicaoBtn.Close;
end;

procedure TF_OPExpedicaoBtn.btnCIClick(Sender: TObject);
begin
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

procedure TF_OPExpedicaoBtn.btnListaClick(Sender: TObject);
begin
  recSeq.Enabled := True;
  recSeq.Visible := True;
end;

end.
