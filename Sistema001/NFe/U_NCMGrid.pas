unit U_NCMGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.Provider;

type
  TF_NCMGrid = class(TF_AbstratoGrid)
    dspNCMGrid: TDataSetProvider;
    oCdsCOD_NCM: TIntegerField;
    oCdsNCM_CODIGO: TStringField;
    oCdsNCM_EX: TStringField;
    oCdsNCM_DESCRICAO: TStringField;
    oCdsNCM_ALIQNAC: TFMTBCDField;
    oCdsNCM_ALIQIMP: TFMTBCDField;
    oCdsNCM_ALIQESTADUAL: TFMTBCDField;
    oCdsNCM_ALIQMUNICIPAL: TFMTBCDField;
    oCdsNCM_CEST: TStringField;
    oCdsNCM_UF: TStringField;
    cxGrid1DBTableView1COD_NCM: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_EX: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_ALIQNAC: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_ALIQIMP: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_ALIQESTADUAL: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_ALIQMUNICIPAL: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_CEST: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_UF: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_NCMGrid: TF_NCMGrid;

implementation

{$R *.dfm}

uses UDm, U_NCMBt;

procedure TF_NCMGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_NCMBt := TF_NCMBt.Create(nil);
  F_NCMBt.btnNovo.Click;
  F_NCMBt.ShowModal;
  F_NCMBt.Free;
end;

procedure TF_NCMGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   F_NCMBt := TF_NCMBt.Create(nil);
   F_NCMBt.oCds.Locate('COD_NCM', oCdsCOD_NCM.AsInteger, []);
   F_NCMBt.ShowModal;
   F_NCMBt.Free;
   oCds.Refresh;
end;

end.
