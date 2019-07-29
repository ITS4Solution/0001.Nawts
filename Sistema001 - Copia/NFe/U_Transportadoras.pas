unit U_Transportadoras;

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
  TF_Transportadoras = class(TF_AbstratoGrid)
    dspTransportadoras: TDataSetProvider;
    oCdsID: TIntegerField;
    oCdsNOME: TStringField;
    oCdsRAZAO_SOCIAL: TStringField;
    oCdsCONTATO: TStringField;
    oCdsCNPJ: TStringField;
    oCdsINSCRICAO_ESTADUAL: TStringField;
    oCdsENDERECO: TStringField;
    oCdsUF: TStringField;
    oCdsMUNICIPIO: TStringField;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAO_SOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1CONTATO: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ: TcxGridDBColumn;
    oCdsTELEFONE1: TStringField;
    oCdsTELEFONE2: TStringField;
    cxGrid1DBTableView1TELEFONE1: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Transportadoras: TF_Transportadoras;

implementation

{$R *.dfm}

uses U_TransportadorasBt;

procedure TF_Transportadoras.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_TransportadorasBt := TF_TransportadorasBt.Create(nil);
  F_TransportadorasBt.btnNovo.Click;
  F_TransportadorasBt.ShowModal;
  F_TransportadorasBt.Free;
end;

procedure TF_Transportadoras.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  F_TransportadorasBt := TF_TransportadorasBt.Create(nil);
  F_TransportadorasBt.oCds.Locate('id', oCdsID.AsInteger, []);
  F_TransportadorasBt.ShowModal;
  F_TransportadorasBt.Free;
  oCds.Refresh;
end;

end.
