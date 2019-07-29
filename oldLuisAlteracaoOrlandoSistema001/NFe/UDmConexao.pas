unit UDmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, AdvSmoothMessageDialog, IdBaseComponent, IdAntiFreezeBase,
  Vcl.IdAntiFreeze;

type
  TDMConexao = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
