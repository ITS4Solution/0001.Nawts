unit U_AbstratoButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Abstrato001, ExtCtrls, ActnList, ComCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, StdCtrls, cxButtons, AdvGlassButton,
  System.Actions, Data.DB, Datasnap.DBClient,midaslib, dxBevel, dxGDIPlusClasses;

type
  TF_AbstratoButtons = class(TF_Abstrato001)
    ActSalvar: TAction;
    ActDeletar: TAction;
    ActNovo: TAction;
    ActEditar: TAction;
    btnNovo: TAdvGlassButton;
    btnEditar: TAdvGlassButton;
    btnDeletar: TAdvGlassButton;
    btnSalvar: TAdvGlassButton;
    oCds: TClientDataSet;
    oDS: TDataSource;
    dxBevel1: TdxBevel;
    Image1: TImage;
    dxBevel2: TdxBevel;
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActDeletarExecute(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure oDSStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AbstratoButtons: TF_AbstratoButtons;

implementation

{$R *.dfm}

uses UDM;

procedure TF_AbstratoButtons.ActDeletarExecute(Sender: TObject);
begin
  inherited;
   if DM.iNivelUsuario = 1 then
   begin
      DM.tmsMSG('Informação','Seu usuário não dá permissão de deleção de dados !');
      Abort;
   end
   else
   begin
      if DM.tmsMSGQ('Informação','Deseja realmente deletar o registro ?') = mrOk then
      begin
         oCds.Delete;
         oCds.ApplyUpdates(-1);
      end;
   end;
end;

procedure TF_AbstratoButtons.ActEditarExecute(Sender: TObject);
begin
  inherited;
   if DM.iNivelUsuario = 1 then
   begin
      DM.tmsMSG('Informação','Seu usuário não dá permissão de edição de dados !');
      Abort;
   end
   else
   begin
      oCds.Edit;
   end;

end;

procedure TF_AbstratoButtons.ActNovoExecute(Sender: TObject);
begin
  inherited;
   if DM.iNivelUsuario = 1 then
   begin
      DM.tmsMSG('Informação','Seu usuário não dá permissão de inserção de dados !');
      Abort;
   end
   else
   begin
      oCds.Insert;
   end;
end;

procedure TF_AbstratoButtons.ActSalvarExecute(Sender: TObject);
begin
  inherited;
//   Try
//      Try
//         if oCds.State in [dsInsert] then
//         begin
//            oCds.FieldByName('DtInc').AsDateTime := now();
//            oCds.FieldByName('UsuInc').AsString  := dm.sUsuarioLogado;
//         end
//         else if oCds.State in [dsEdit] then
//         begin
//            oCds.FieldByName('DtAlt').AsDateTime := now();
//            oCds.FieldByName('UsuAlt').AsString  := dm.sUsuarioLogado;
//         end;
//      Except
//         DM.tmsMSG('Informação','Falta de campos de controle de alteração !')
//      End;
//   Finally
      oCds.Post;
      oCds.ApplyUpdates(-1);
//   End;

end;

procedure TF_AbstratoButtons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   if ocds.State in [dsEdit,dsInsert] then
   begin
      if not(DM.tmsMSGQ('Informação','Os registros não forma salvos. Deseja sair assim mesmo ?') = mrOk) then
      begin
         Abort;
      end
   end;
end;

procedure TF_AbstratoButtons.FormCreate(Sender: TObject);
begin
  inherited;
   Screen.Cursor := crSQLWait;
   oCds.Open;
   Screen.Cursor := crDefault;
end;

procedure TF_AbstratoButtons.oDSStateChange(Sender: TObject);
begin
  inherited;
   if oDS.State in [dsInsert,dsEdit,dsInsert] then
   begin
      btnDeletar.Enabled   := False;
      btnNovo.Enabled      := False;
      btnEditar.Enabled    := False;
      btnSalvar.Enabled    := True;
   end
   else
   begin
      btnDeletar.Enabled   := True;
      btnNovo.Enabled      := True;
      btnEditar.Enabled    := True;
      btnSalvar.Enabled    := False;
   end
end;

end.
