unit U_AcertoExpBtn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TF_AcertoExpBtn = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdsidop: TIntegerField;
    oCdsidprod: TIntegerField;
    oCdsqtd: TSingleField;
    oCdsdataexp: TDateField;
    oCdshoraexp: TTimeField;
    oCdsnumnf: TStringField;
    oCdsnomecliente: TStringField;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoid: TIntegerField;
    cdsProdutocodproduto: TIntegerField;
    cdsProdutodescricao: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    oCdsobs: TStringField;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    recSeq: TPanel;
    Label11: TLabel;
    edtSeq: TEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    btnCI: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    procedure ActSalvarExecute(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure btnCIClick(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AcertoExpBtn: TF_AcertoExpBtn;

implementation

{$R *.dfm}

uses UDM, U_ComunicadoInterno;

procedure TF_AcertoExpBtn.ActSalvarExecute(Sender: TObject);
begin
  recSeq.Visible := True;
  recSeq.Enabled := True;
end;

procedure TF_AcertoExpBtn.AdvGlassButton2Click(Sender: TObject);
begin
  recSeq.Enabled := fALSE;
  recSeq.Visible := fALSE;
end;

procedure TF_AcertoExpBtn.AdvGlassButton3Click(Sender: TObject);
begin
    if edtSeq.Text <> '' then
    begin
      dm.opencnn;
      if DM.SMGen.UsoCI(strtoint(edtSeq.Text)) = True then
      begin
         oCds.Post;
         oCds.ApplyUpdates(-1);
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
end;

procedure TF_AcertoExpBtn.btnCIClick(Sender: TObject);
begin
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

end.
