unit U_CadClientesBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.StdCtrls;

type
  TF_CadClientesBt = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdsnome: TStringField;
    oCdscnpj: TStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure ActNovoExecute(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure ActDeletarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadClientesBt: TF_CadClientesBt;

implementation

{$R *.dfm}

uses UDM;

procedure TF_CadClientesBt.ActDeletarExecute(Sender: TObject);
begin
   dm.SMGen.FechaConexaoServer;
   dm.SMGen.AbreConexaoServer;
  inherited;

end;

procedure TF_CadClientesBt.ActEditarExecute(Sender: TObject);
begin
   dm.SMGen.FechaConexaoServer;
   dm.SMGen.AbreConexaoServer;
  inherited;

end;

procedure TF_CadClientesBt.ActNovoExecute(Sender: TObject);
begin
   dm.SMGen.FechaConexaoServer;
   dm.SMGen.AbreConexaoServer;
  inherited;

end;

procedure TF_CadClientesBt.ActSalvarExecute(Sender: TObject);
begin
   dm.SMGen.FechaConexaoServer;
   dm.SMGen.AbreConexaoServer;
  inherited;

end;

end.
