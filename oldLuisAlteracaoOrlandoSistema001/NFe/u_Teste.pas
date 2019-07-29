unit u_Teste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, Datasnap.Provider;

type
  TFrmTeste = class(TForm)
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1CODUF: TIntegerField;
    ClientDataSet1ESTADO: TStringField;
    ClientDataSet1SIGLA: TStringField;
    ClientDataSet1CODCIDADE: TIntegerField;
    ClientDataSet1CIDADE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTeste: TFrmTeste;

implementation

{$R *.dfm}

uses UDM;

end.
