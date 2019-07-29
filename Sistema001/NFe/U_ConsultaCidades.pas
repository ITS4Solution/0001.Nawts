unit U_ConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoConsulta, Data.DB,
  Datasnap.DBClient, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, AdvGlassButton, Vcl.ComCtrls,
  Datasnap.Provider, Vcl.Grids, Vcl.DBGrids;

type
  TF_ConsultaCidades = class(TF_AbstratoConsulta)
    dspCidades: TDataSetProvider;
    oCdsID: TIntegerField;
    oCdsCODUF: TIntegerField;
    oCdsESTADO: TStringField;
    oCdsSIGLA: TStringField;
    oCdsCODCIDADE: TIntegerField;
    oCdsCIDADE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure EditPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EfetuarPesquisa(strPesquisa: string); override;
  end;

var
  F_ConsultaCidades: TF_ConsultaCidades;


implementation

{$R *.dfm}

uses
  UDm;

procedure TF_ConsultaCidades.EditPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  if (Key = VK_DOWN)  or (key = VK_RETURN) then
 //   FocalizaGrid(DBGridConsulta, 'Cidade');

end;

procedure TF_ConsultaCidades.EfetuarPesquisa(strPesquisa: string);
var
  SQL: string;
begin
  inherited;

  SQL := 'Select * from NFE_Cidades';
  SQL := SQL + ' Where CODCidade like ' + QuotedStr(strPesquisa);
  SQL := SQL + ' or Cidade like ' + QuotedStr(UpperCase(strPesquisa) + '%');
  SQL := SQL + ' or Sigla like ' + QuotedStr(UpperCase(strPesquisa));
  SQL := SQL + ' Order by Cidade, Estado';

  DM.sqlCidades.Close;
  DM.sqlCidades.CommandText:= SQL;
  DM.sqlCidades.OPen;

  oCds.Close;
  oCds.Open;

end;

procedure TF_ConsultaCidades.FormCreate(Sender: TObject);
begin
  lbTitulo.caption := 'Consulta Cidades';

  EditPesquisa.Text :=  IDPesquisa;

  inherited;
end;

procedure TF_ConsultaCidades.FormShow(Sender: TObject);
begin

  EditPesquisa.Text :=  IDPesquisa;

end;

end.

