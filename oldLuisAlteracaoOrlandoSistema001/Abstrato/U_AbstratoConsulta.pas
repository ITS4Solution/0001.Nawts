unit U_AbstratoConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnList, System.Actions, Vcl.ExtCtrls, AdvGlassButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Datasnap.DBClient, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids;

type
  TF_AbstratoConsulta = class(TForm)
    StatusBar1: TStatusBar;
    ActionList: TActionList;
    Panel1: TPanel;
    btnsair: TAdvGlassButton;
    ActSair: TAction;
    btnSalvar: TAdvGlassButton;
    BarraStatus: TStatusBar;
    Image_Base: TImageList;
    pnCentro: TPanel;
    pnPesquisa: TPanel;
    lbEdit: TLabel;
    btTodos: TSpeedButton;
    EditPesquisa: TEdit;
    pnCriterio: TPanel;
    pnTitulo: TPanel;
    imgLogo: TImage;
    lbTitulo: TLabel;
    lbSubtitulo: TLabel;
    oCds: TClientDataSet;
    oDS: TDataSource;
    DBGridConsulta: TDBGrid;
    procedure ActSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditPesquisaChange(Sender: TObject);
    procedure btTodosClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBGridConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure EditPesquisaKeyPress(Sender: TObject; var Key: Char);
  private
    FstrRetorno: string;
    FbAbreTela: Boolean;
    FstrFieldRetorno: string;
    { Private declarations }
  public
    { Public declarations }
    IDPesquisa: string;
    class function Pesquisar(strPesquisa: String; bAbreTela: Boolean; strCampoWhere, strFieldRetorno, strTabela, strPsqPadrao: string)
      : String; virtual;
    { Pesquisa registros conforme os parametros informados }
    procedure AntesPesquisar; virtual;
    procedure ExecutaPesquisa; virtual;
    procedure EfetuarPesquisa(strPesquisa: string); virtual;
    procedure DepoisPesquisar; virtual;

    { Seleciona o registro selecionado no grid e joga na tabela informada no filho }
    // procedure SelecionaRegistro; virtual;

  end;

var
  F_AbstratoConsulta: TF_AbstratoConsulta;

implementation

{$R *.dfm}

uses UDm, UKernel_VariaveisPublic;

{ TF_AbstratoConsulta }

procedure TF_AbstratoConsulta.ActSairExecute(Sender: TObject);
begin
   Close;
end;

procedure TF_AbstratoConsulta.AntesPesquisar;
begin
  if Length(EditPesquisa.Text) = 0 then
    Abort;
end;

procedure TF_AbstratoConsulta.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if oCds.Active then
    if oCds.RecordCount > 0 then
    begin
        btnsair.Click;
        Pesquisa.sResult := oCds.FieldByName('ID').Value;
    end
    else
    begin
//    Colocar Id da consulta
      Pesquisa.sResult  := EmptyStr;
      if DM.tmsMSGQ('Informação','Nenhum Registro selecionado.') = mrOk then
      btnsair.Click;
    end;
end;

procedure TF_AbstratoConsulta.btTodosClick(Sender: TObject);
begin
  EditPesquisa.Text := '';
  EditPesquisa.Text := '%';
end;

procedure TF_AbstratoConsulta.DBGridConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  { : Enter -> Confirmar }
  if Key = #13 then
    btnSalvar.Click;
end;

procedure TF_AbstratoConsulta.DepoisPesquisar;
begin
  if oCds.Active then
    BarraStatus.Panels[0].Text := 'Itens Encontrados -> ' + IntToStr(oCds.RecordCount);
end;

procedure TF_AbstratoConsulta.EditPesquisaChange(Sender: TObject);
begin
  ExecutaPesquisa;
end;

procedure TF_AbstratoConsulta.EditPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  { : Enter -> Confirmar }
  if Key = #13 then
    btnSalvar.Click;
end;

procedure TF_AbstratoConsulta.EfetuarPesquisa(strPesquisa: string);
begin
  //
end;

procedure TF_AbstratoConsulta.ExecutaPesquisa;
begin
  AntesPesquisar;
  EfetuarPesquisa(EditPesquisa.Text);
  DepoisPesquisar;
end;

procedure TF_AbstratoConsulta.FormCreate(Sender: TObject);
begin
  oCds.close;

  Screen.Cursor := crSQLWait;
  oCds.Open;
  Screen.Cursor := crDefault;

end;

procedure TF_AbstratoConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin

  { : ao Digitar algum caracter }
  if (Key <> #32) and (EditPesquisa.Focused = False) then
  begin
    Key := AnsiUpperCase(Key)[1];
    if (Key in ['0' .. '9', ' ' .. 'Z']) then
    begin
      EditPesquisa.SelectAll;
      EditPesquisa.Text := Key;
      EditPesquisa.SetFocus;
      EditPesquisa.SelStart := Length(EditPesquisa.Text) + 1;
    end;
  end;

end;

class function TF_AbstratoConsulta.Pesquisar(strPesquisa: String; bAbreTela: Boolean;
  strCampoWhere, strFieldRetorno, strTabela, strPsqPadrao: string): String;
var
  _form: TF_AbstratoConsulta;
begin
  try
    _form := Self.Create(nil);

    Pesquisa.strFieldRetorno := strFieldRetorno;
    Pesquisa.bAbreTela := bAbreTela;
    Pesquisa.sResult := EmptyStr;

    if Length(strPsqPadrao) > 0 then
      _form.EditPesquisa.Text := strPsqPadrao;

    if bAbreTela then
      if _form.ShowModal = mrOk then
        Result := Pesquisa.sResult
      else
        Result := EmptyStr;

    if not bAbreTela then
    begin
      Pesquisa.sResult := ConsultaRegistroSimples(strPesquisa, strCampoWhere, strFieldRetorno, strTabela);
      Result := Pesquisa.sResult;
    end;

  finally

    _form.Free;
  end;


end;

end.
