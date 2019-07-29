unit U_CI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, AdvGlassButton,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Datasnap.DBClient, frxClass,
  frxDBSet, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TF_CI = class(TForm)
    DBoCDS: TfrxDBDataset;
    ReportCDS: TfrxReport;
    SaveDialog: TSaveDialog;
    dsCI: TDataSource;
    cdsCIs: TClientDataSet;
    ActionList: TActionList;
    ActSair: TAction;
    Panel1: TPanel;
    btnsair: TAdvGlassButton;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    StatusBar1: TStatusBar;
    cdsCIsseqci: TIntegerField;
    cdsCIsdata: TDateField;
    cdsCIsidusuario: TIntegerField;
    cdsCIsobs: TStringField;
    cdsCIsid: TIntegerField;
    cdsCIsusado: TIntegerField;
    pn1: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    AdvGlassButton1: TAdvGlassButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CI: TF_CI;

implementation

{$R *.dfm}

uses UDM;

procedure TF_CI.AdvGlassButton1Click(Sender: TObject);
var
MS : TMemoryStream;
begin
  pn1.Visible := True;
  ms := TMemoryStream.Create;
  Memo1.Lines.Clear;
  Memo1.Lines.Add(cdsCIsobs.AsString);
end;

procedure TF_CI.Button1Click(Sender: TObject);
begin
pn1.Visible := False;
end;

procedure TF_CI.FormCreate(Sender: TObject);
begin
  dm.opencnn;
  cdsCIs.Close;
  cdsCIs.Open;
  cdsCIs.Active := true;
  dm.closecnn;
end;

end.
