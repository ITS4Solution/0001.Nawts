unit U_AbstratoConsultaGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoConsulta, Data.DB,
  Datasnap.DBClient, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, AdvGlassButton,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TF_AbstratoConsultaGrid = class(TF_AbstratoConsulta)
    DBGridConsulta: TDBGrid;
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure DBGridConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure EditPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPesquisaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure AntesPesquisar; override;
    procedure ExecutaPesquisa; override;
    procedure EfetuarPesquisa(strPesquisa: string); override;
    procedure DepoisPesquisar; override;

  end;

var
  F_AbstratoConsultaGrid: TF_AbstratoConsultaGrid;

implementation

{$R *.dfm}

{ TF_AbstratoConsultaGrid }

procedure TF_AbstratoConsultaGrid.AntesPesquisar;
begin
  inherited;

end;

procedure TF_AbstratoConsultaGrid.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  btnSalvar .Click;
end;

procedure TF_AbstratoConsultaGrid.DBGridConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  { : Enter -> Confirmar }
  if Key = #13 then
    btnSalvar.Click;

end;

procedure TF_AbstratoConsultaGrid.DepoisPesquisar;
begin
  inherited;

end;

procedure TF_AbstratoConsultaGrid.EditPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

//  if Key = VK_DOWN then
//    DBGridConsulta.SetFocus;
end;

procedure TF_AbstratoConsultaGrid.EditPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

//  if Key = #13 then
//    DBGridConsulta.SetFocus;
end;


procedure TF_AbstratoConsultaGrid.EfetuarPesquisa(strPesquisa: string);
begin
  inherited;

end;

procedure TF_AbstratoConsultaGrid.ExecutaPesquisa;
begin
  inherited;

end;

end.
