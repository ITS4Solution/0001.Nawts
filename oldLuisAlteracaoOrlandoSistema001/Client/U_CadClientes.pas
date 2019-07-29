unit U_CadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TF_CadClientes = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsnome: TStringField;
    oCdscnpj: TStringField;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    cxGrid1DBTableView1cnpj: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
   F_CadClientesBt.oCds.Locate('id',oCdsId.AsInteger,[]);
   F_CadClientesBt.ShowModal;
   F_CadClientesBt.Free;
    oCds.Refresh;
end;

procedure TF_CadClientes.FormCreate(Sender: TObject);
begin
   dm.SMGen.FechaConexaoServer;
   dm.SMGen.AbreConexaoServer;
  inherited;

end;

end.
