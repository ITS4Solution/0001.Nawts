unit U_DM_NFe;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TDM_NFe = class(TDataModule)
    Emitente: TSQLQuery;
    Ds_Emitente: TDataSource;
    Destinatario: TSQLQuery;
    Ds_Destinatario: TDataSource;
    Transportadora: TSQLQuery;
    Ds_Transportadora: TDataSource;
    NFe: TSQLQuery;
    Ds_NFe: TDataSource;
    Itens_NFe: TSQLQuery;
    IntegerField28: TIntegerField;
    StringField73: TStringField;
    StringField74: TStringField;
    StringField75: TStringField;
    StringField76: TStringField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    IntegerField29: TIntegerField;
    StringField80: TStringField;
    StringField81: TStringField;
    IntegerField30: TIntegerField;
    StringField82: TStringField;
    IntegerField31: TIntegerField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    IntegerField32: TIntegerField;
    StringField88: TStringField;
    IntegerField33: TIntegerField;
    FloatField4: TFloatField;
    StringField89: TStringField;
    StringField90: TStringField;
    SQLTimeStampField4: TSQLTimeStampField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    StringField95: TStringField;
    IntegerField34: TIntegerField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    StringField96: TStringField;
    Ds_Itens_NFe: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_NFe: TDM_NFe;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDm;

{$R *.dfm}

end.
