unit U_CIListaBtn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  frxClass, frxDBSet;

type
  TF_CIListaBtn = class(TF_AbstratoButtons)
    btnImprimir: TAdvGlassButton;
    oCdsid: TIntegerField;
    oCdsseqci: TIntegerField;
    oCdsdata: TDateField;
    oCdsidusuario: TIntegerField;
    oCdsobs: TStringField;
    oCdsusado: TIntegerField;
    oCdsnome: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    reportCI: TfrxReport;
    dbReportCi: TfrxDBDataset;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CIListaBtn: TF_CIListaBtn;

implementation

{$R *.dfm}

uses UDM;

procedure TF_CIListaBtn.btnImprimirClick(Sender: TObject);
begin
  inherited;
  reportCI.PrepareReport();
  reportCI.ShowReport();
end;

end.
