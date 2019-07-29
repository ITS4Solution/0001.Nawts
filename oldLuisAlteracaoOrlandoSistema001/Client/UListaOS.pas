unit UListaOS;

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
  TF_ListaOS = class(TF_AbstratoGrid)
    oCdsnumeroos: TStringField;
    oCdspedido: TIntegerField;
    oCdscliente: TStringField;
    oCdsdataentrega: TDateField;
    oCdstempoitem: TIntegerField;
    cxGrid1DBTableView1numeroos: TcxGridDBColumn;
    cxGrid1DBTableView1pedido: TcxGridDBColumn;
    cxGrid1DBTableView1cliente: TcxGridDBColumn;
    cxGrid1DBTableView1dataentrega: TcxGridDBColumn;
    cxGrid1DBTableView1tempoitem: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    oCdsid: TLargeintField;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ListaOS: TF_ListaOS;

implementation

{$R *.dfm}

uses UDM, U_CadOS;

procedure TF_ListaOS.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_cadOS := TF_cadOS.Create(nil);
   F_cadOS.btnNovo.Click;
   F_cadOS.ShowModal;
   F_cadOS.Free;
   oCds.Refresh;
end;

procedure TF_ListaOS.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCds.RecordCount <> 0 then
   begin
      F_cadOS := TF_cadOS.Create(nil);
      F_cadOS.oCds.Locate('id',oCdsId.AsInteger,[]);
      F_cadOS.ShowModal;
      F_CadOS.Free;
      oCds.Refresh;
   end;
end;

procedure TF_ListaOS.FormCreate(Sender: TObject);
begin
   dm.SMGen.FechaConexaoServer;
   dm.SMGen.AbreConexaoServer;
  inherited;

end;

end.
