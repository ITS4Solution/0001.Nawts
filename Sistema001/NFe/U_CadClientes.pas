unit U_CadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.Provider;

type
  TF_CadClientes = class(TF_AbstratoGrid)
    AdvGlassButton1: TAdvGlassButton;
    dspCliFor: TDataSetProvider;
    cxGrid1DBTableView1NomeRazao: TcxGridDBColumn;
    cxGrid1DBTableView1NomeFantasia: TcxGridDBColumn;
    cxGrid1DBTableView1CGC: TcxGridDBColumn;
    cxGrid1DBTableView1Telefone: TcxGridDBColumn;
    oCdsID: TIntegerField;
    oCdsNOMERAZAO: TStringField;
    oCdsNOMEFANTASIA: TStringField;
    oCdsENDERECO: TStringField;
    oCdsNUMERO: TStringField;
    oCdsBAIRRO: TStringField;
    oCdsCIDADE: TStringField;
    oCdsCODCIDADE: TIntegerField;
    oCdsUF: TStringField;
    oCdsCODUF: TIntegerField;
    oCdsCEP: TStringField;
    oCdsCGC: TStringField;
    oCdsIERG: TStringField;
    oCdsFJ: TStringField;
    oCdsTELEFONE: TStringField;
    oCdsDATACADASTRO: TSQLTimeStampField;
    oCdsEMAI: TStringField;
    oCdsCLIFORTRANSP: TStringField;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadClientes: TF_CadClientes;

implementation

{$R *.dfm}

uses UDM, U_CadClientesBt;

procedure TF_CadClientes.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_CadClientesBt := TF_CadClientesBt.Create(nil);
  F_CadClientesBt.btnNovo.Click;
  F_CadClientesBt.ShowModal;
  F_CadClientesBt.Free;
end;

procedure TF_CadClientes.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  F_CadClientesBt := TF_CadClientesBt.Create(nil);
  F_CadClientesBt.oCds.Locate('id', oCdsID.AsInteger, []);
  F_CadClientesBt.ShowModal;
  F_CadClientesBt.Free;
  oCds.Refresh;
end;

end.
