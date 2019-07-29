unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.Provider,
  Vcl.StdCtrls, Datasnap.DBClient, System.StrUtils, FireDAC.Comp.UI,
  FireDAC.VCLUI.Wait;

type
  TF_Principal = class(TForm)
    cnnAccess: TFDConnection;
    cnnFirebird: TFDConnection;
    fdqFormAccess: TFDQuery;
    fdqItensAccess: TFDQuery;
    fdqFormAccessCodigo_formula: TWideStringField;
    fdqFormAccessDescr_formula: TWideStringField;
    fdqFormAccessCodigo_mp: TWideStringField;
    fdqFormAccessCodigo_prod_acab: TWideStringField;
    fdqFormAccessPercentual: TFloatField;
    fdqFormAccessObs_formula: TWideMemoField;
    fdqItensAccessCodigo_formula: TWideStringField;
    fdqItensAccessCodigo_mp: TWideStringField;
    fdqItensAccessCodigo_prod_acab: TWideStringField;
    fdqItensAccessPercentual: TFloatField;
    btnIniciar: TButton;
    qryAuxForm: TFDQuery;
    qryAuxItens: TFDQuery;
    lblQtdFor: TLabel;
    lblResultF: TLabel;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryInsumos: TFDQuery;
    qryInsumosid: TIntegerField;
    qryInsumoscodigo: TStringField;
    Label1: TLabel;
    procedure btnIniciarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     Function GetNextIdFormula : String;
     Function GetNextItens : String;
     Function GetIdMatPrima (sCodigo : String) : string;
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

procedure TF_Principal.btnIniciarClick(Sender: TObject);
var
   sSql : String;
   i : Integer;
   Soma : Integer;
   SomaItens : Integer;
   Validade : Integer;
   sCodFormula : String;
begin
   i := 1;
   Validade := 0;

   cnnAccess.Connected := True;
   cnnFirebird.Connected := True;

   qryInsumos.Close;
   qryInsumos.Open;

   fdqFormAccess.Close;
   fdqFormAccess.Open;

   lblResultF.Caption := intToStr(fdqFormAccess.RecordCount);


   fdqFormAccess.First;
   while not fdqFormAccess.eof do
   begin
      sCodFormula := GetNextIdFormula;
      lblUnidForm.Caption := inttostr(Soma);

      sSql := '';
      sSql := 'insert into "tblformulas" ("id", "codigo", "descricaoformula", "idcodprocesso",' +
                                         '"observacao", "percentual", "valido") values ('
                                             + sCodFormula +
                                         ',' + quotedStr(fdqFormAccessCodigo_formula.AsString) +
                                         ',' + quotedStr(fdqFormAccessDescr_formula.AsString) +
                                         ',' + quotedStr(fdqFormAccessCodigo_prod_acab.AsString) +
                                         ',' + quotedStr(fdqFormAccessObs_formula.AsString) +
                                         ',' + replaceStr(replaceStr(FloatToStr(fdqFormAccessPercentual.AsFloat), '.',''),',','.') +
                                         ',' + Validade.ToString + ')';

      cnnFirebird.ExecSQL(sSql);

      fdqItensAccess.Close;
      fdqItensAccess.Params[0].Value := fdqFormAccessCodigo_formula.AsString;
      fdqItensAccess.Open;

      Application.ProcessMessages;

      fdqItensAccess.First;

      while not fdqItensAccess.Eof do
      begin
      lblUnidItens.Caption :=  inttostr(SomaItens);

      sSql := '';
      sSql := 'insert into "tblformuladetalhe" ("id", "idtblformula", "idmateriaprima", "codprodutoacab", "percentual")' +
                                                ' values ('
                                                    + GetNextItens +
                                                ',' + quotedStr(sCodFormula) +
                                                ',' + GetIdMatPrima(fdqItensAccessCodigo_mp.AsString) +
                                                ',' + quotedStr(fdqItensAccessCodigo_prod_acab.AsString) +
                                                ',' + replaceStr(replaceStr(FloatToStr(fdqItensAccessPercentual.AsFloat), '.',''),',','.')
                                                    + ')';

      cnnFirebird.ExecSQL(sSql);
      fdqItensAccess.Next;

      SomaItens := i + 1;
      end;
      fdqFormAccess.Next;
      Soma := i + 1;
   end;
end;



procedure TF_Principal.FormCreate(Sender: TObject);
begin
  //
end;

function TF_Principal.GetIdMatPrima(sCodigo : String) : String;
begin
   qryInsumos.Locate('codigo', sCodigo, []);
   Result := qryInsumosid.AsString;
end;

function TF_Principal.GetNextIdFormula: String;
Var
   sSql : String;
begin
   sSql := 'select gen_id("GEN_tblformulas_ID",1) as id from rdb$database';
   qryAuxForm.Close;
   qryAuxForm.SQL.Clear;
   qryAuxForm.SQL.Add(sSql);
   qryAuxForm.Open;
   Result := qryAuxForm.FieldByName('id').AsString;
   qryAuxForm.Close;
end;

function TF_Principal.GetNextItens: String;
Var
   sSql : String;
begin
   sSql := 'select gen_id("GEN_tblformuladetalhe_ID",1) as id from rdb$database';
   qryAuxItens.Close;
   qryAuxItens.SQL.Clear;
   qryAuxItens.SQL.Add(sSql);
   qryAuxItens.Open;
   Result := qryAuxItens.FieldByName('id').AsString;
   qryAuxItens.Close;
end;

end.
