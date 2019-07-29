unit U_ICMSGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.Provider;

type
  TF_ICMSGrid = class(TF_AbstratoGrid)
    dspICMSGrid: TDataSetProvider;
    oCdsCOD_ICMS: TIntegerField;
    oCdsICMS_UF: TStringField;
    oCdsICMS_ALIQUOTA: TFMTBCDField;
    oCdsICMS_INTERNO: TFMTBCDField;
    cxGrid1DBTableView1COD_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_UF: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_ALIQUOTA: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS_INTERNO: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ICMSGrid: TF_ICMSGrid;

implementation

{$R *.dfm}

uses UDm, U_ICMS;

procedure TF_ICMSGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_ICMS := TF_ICMS.Create(nil);
  F_ICMS.btnNovo.Click;
  F_ICMS.ShowModal;
  F_ICMS.Free;
end;

procedure TF_ICMSGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  F_ICMS := TF_ICMS.Create(nil);
  F_ICMS.oCds.Locate('COD_ICMS', oCdsCOD_ICMS.AsInteger, []);
  F_ICMS.ShowModal;
  F_ICMS.Free;
  oCds.Refresh;
end;

end.
