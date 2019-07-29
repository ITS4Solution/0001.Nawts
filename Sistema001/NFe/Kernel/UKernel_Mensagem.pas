unit UKernel_Mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Vcl.Imaging.pngimage;

{ :: Constantes de Mensagens :::::::::::::::::::::::::::::::::::: }

const
  { : Mensagens }
  Kernel_Msg_Nenhum_Registro_Encontrado: string = 'Nenhum Registro encontrado.';
  Kernel_Msg_Nenhum_Registro_Selecionado: string = 'Nenhum Registro selecionado.';
  Kernel_Msg_Registro_salvo_com_sucesso: string = 'Registro salvo com sucesso.';
  Kernel_Msg_Salve_ou_cancele_seu_trabalho_antes_de_fechar: string = 'Salve ou cancele seu trabalho antes de fechar.';
  Kernel_Msg_Cancelado_pelo_usuario: string = 'Operação cancelada pelo usuario.';
  Kernel_Msg_Sucesso: string = 'Operação realizada com sucesso.';
  Kernel_Msg_Deseja_mesmo_cancelar_esta_operação: string = 'Deseja mesmo cancelar esta operação?';
  Kernel_Msg_Deseja_mesmo_estornar_este_haver: string = 'Deseja mesmo estornar este haver.';
  Kernel_Msg_Nao_e_Possivel_cancelar_novamente: string = 'Nao é possível cancelar novamente.';

  { :: Constantes de Mensagens :::::::::::::::::::::::::::::::::::: }

type
  TMyButtons = (mbSimNao, mbOk);

type
  TMyIconeMensagem = (icInformacao, icDeletar, icQuestao, icCuidado, icErro);

type
  TKernel_Mensagem = class(TForm)
    pnIcones: TPanel;
    imgDeletar: TImage;
    imgQuestao: TImage;
    imgCuidado: TImage;
    imgInformacao: TImage;
    imgErro: TImage;
    pnBotoes: TPanel;
    pnMensagem: TPanel;
    blMensagem: TLabel;
    pnBtSimNao: TPanel;
    BtnNao: TBitBtn;
    btnSim: TBitBtn;
    pnBtOK: TPanel;
    BtnOK: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    class function Mensagem(Texto: String; Tipo: TMyIconeMensagem; Botoes: array of TMyButtons): Boolean;

  end;

var
  Kernel_Mensagem: TKernel_Mensagem;

const
  LEFTBUTTONS: array [0 .. 2] of integer = (239, 158, 77);

implementation

{$R *.dfm}
{ TfrmMensagem }

procedure TKernel_Mensagem.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
end;

procedure TKernel_Mensagem.FormShow(Sender: TObject);
begin
  if pnBtSimNao.Visible then
    BtnNao.SetFocus;
  if pnBtOK.Visible then
    BtnOK.SetFocus;

end;

class function TKernel_Mensagem.Mensagem(Texto: String; Tipo: TMyIconeMensagem; Botoes: array of TMyButtons): Boolean;
var
  i: integer;
  frm: TKernel_Mensagem;
begin
  frm := TKernel_Mensagem.Create(nil);

  try
    frm.blMensagem.Caption := Texto;

    // Mostra os Controles e Botoes conforme parametro Botoes
    for i := 0 to Length(Botoes) - 1 do
    begin
      case (Botoes[i]) of
        mbOk:
          frm.pnBtOK.Visible := True;
        mbSimNao:
          frm.pnBtSimNao.Visible := True;
      else
        frm.BtnOK.Visible := True;
      end;
    end;

    // Parametro Tipo retorna a imagem adequada
    case (Tipo) of
      icInformacao:
        begin
          frm.imgInformacao.Visible := True; // Informação
          frm.Caption := 'Informação';
        end;
      icDeletar:
        begin
          frm.imgDeletar.Visible := True;
          frm.Caption := 'Exclusão';
        end;
      icQuestao:
        begin
          frm.imgQuestao.Visible := True;
          frm.Caption := 'Pergunta';
        end;
      icCuidado:
        begin
          frm.imgCuidado.Visible := True;
          frm.Caption := 'Atenção';
        end;
      icErro:
        begin
          frm.imgErro.Visible := True;
          frm.Caption := 'Erro';
        end
    else
      frm.imgInformacao.Visible := True;
    end;

    frm.ShowModal;

    // Caso Clicar em Ok ou Sim Retorna TRue
    case (frm.ModalResult) of
      mrOk, mrYes:
        result := True;
    else
      result := False;
    end;

  finally
    frm.Free;
  end;
end;

end.
