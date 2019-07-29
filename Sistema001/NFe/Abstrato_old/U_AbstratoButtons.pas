unit U_AbstratoButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Abstrato001, ExtCtrls, ActnList, ComCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, StdCtrls, cxButtons, AdvGlassButton,
  System.Actions, Data.DB, Datasnap.DBClient, midaslib, dxBevel,
  dxGDIPlusClasses, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, Vcl.DBCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

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
    procedure FormShow(Sender: TObject);
    procedure oDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    // Variaveis Usadas para controle de permissao
    bNovo, bAlterar, bGravou, bExcluir, bLocalizar: Boolean;
    str: string;
  public
   Procedure KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    { Public declarations }
    { : Habilita Desabilita controles }
    procedure HabilitaDesabilitaControlesDB(Value: Boolean); virtual;
    procedure HabilitaDesabilitaControles(Dts: TDataSource); virtual;
    { : verifica quais os campos que estão em branco no cadastro }
    function ValidaCampos(DtSrc: TDataSource): Boolean; virtual;
  end;

var
  F_AbstratoButtons: TF_AbstratoButtons;

implementation

{$R *.dfm}

uses UDM, U_Utils;

procedure TF_AbstratoButtons.ActDeletarExecute(Sender: TObject);
begin
  inherited;
  if DM.iNivelUsuario = 1 then
  begin
    DM.tmsMSG('Informação',
      'Seu usuário não dá permissão de deleção de dados !');
    Abort;
  end
  else
  begin
    if DM.tmsMSGQ('Informação', 'Deseja realmente deletar o registro ?') = mrOk
    then
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
    DM.tmsMSG('Informação',
      'Seu usuário não dá permissão de edição de dados !');
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
    DM.tmsMSG('Informação',
      'Seu usuário não dá permissão de inserção de dados !');
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
  // Try
  // Try
  // if oCds.State in [dsInsert] then
  // begin
  // oCds.FieldByName('DtInc').AsDateTime := now();
  // oCds.FieldByName('UsuInc').AsString  := dm.sUsuarioLogado;
  // end
  // else if oCds.State in [dsEdit] then
  // begin
  // oCds.FieldByName('DtAlt').AsDateTime := now();
  // oCds.FieldByName('UsuAlt').AsString  := dm.sUsuarioLogado;
  // end;
  // Except
  // DM.tmsMSG('Informação','Falta de campos de controle de alteração !')
  // End;
  // Finally
  oCds.Post;
  oCds.ApplyUpdates(-1);
  // End;

end;

procedure TF_AbstratoButtons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if oCds.State in [dsEdit, dsInsert] then
  begin
    if not(DM.tmsMSGQ('Informação',
      'Os registros não forma salvos. Deseja sair assim mesmo ?') = mrOk) then
    begin
      Abort;
    end
  end;
  tbSaveFormStatus(Self, Self.Name);
end;

procedure TF_AbstratoButtons.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  {
   for I := 0 to ComponentCount - 1 do
   begin
      if Components[i] is TcxDBTextEdit then
      begin
         TcxDBTextEdit(Components[i]).OnKeyDown := KeyDown;
         TcxDBTextEdit(Components[i]).Properties.CharCase := ecUpperCase;
      end;
      if Components[i] is TcxDBSpinEdit then
      begin
         TcxDBSpinEdit(Components[i]).OnKeyDown := KeyDown;
         TcxDBSpinEdit(Components[i]).Properties.CharCase := ecUpperCase;
      end;
      if Components[i] is TcxDBLookupComboBox then
      begin
         TcxDBLookupComboBox(Components[i]).OnKeyDown := KeyDown;
         TcxDBLookupComboBox(Components[i]).Properties.CharCase := ecUpperCase;
      end;
      if Components[i] is TDBComboBox then
      begin
         TDBComboBox(Components[i]).OnKeyDown := KeyDown;
         TDBComboBox(Components[i]).CharCase := ecUpperCase;
      end;
      if Components[i] is TCXDBComboBox then
      begin
         TCXDBComboBox(Components[i]).OnKeyDown := KeyDown;
         TCXDBComboBox(Components[i]).Properties.CharCase := ecUpperCase;
      end;
      if Components[i] is TCXDBMemo then
      begin
         TCXDBMemo(Components[i]).OnKeyDown := KeyDown;
         TCXDBMemo(Components[i]).Properties.CharCase := ecUpperCase;

      end;
   end;
   Screen.Cursor := crSQLWait;
   oCds.Open;
   Screen.Cursor := crDefault;
   }

end;

procedure TF_AbstratoButtons.KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   If (Key = VK_RETURN) then
   begin
      Key := VK_TAB;
   end;
end;

procedure TF_AbstratoButtons.FormShow(Sender: TObject);
begin
  inherited;
  tbLoadFormStatus(Self, Self.Name);
end;

procedure TF_AbstratoButtons.HabilitaDesabilitaControles(Dts: TDataSource);
begin
  case oDS.State of
    dsInactive:
      begin
        btnNovo.Enabled := True;
        btnEditar.Enabled := True;
        btnSalvar.Enabled := False;
        btnDeletar.Enabled := False;
        //btnCancelar.Enabled := False;
        //btnLocalizar.Enabled := True;
        HabilitaDesabilitaControlesDB(False);
      end;
    dsBrowse:
      begin
        btnNovo.Enabled := True;
        btnEditar.Enabled := True;
        btnSalvar.Enabled := False;
        btnDeletar.Enabled := True;
        //btnCancelar.Enabled := False;
        //btnLocalizar.Enabled := True;

        if Dts.DataSet.IsEmpty then
        begin
          btnEditar.Enabled := False;
          btnDeletar.Enabled := False;
        end;

        HabilitaDesabilitaControlesDB(False);
      end;
    dsEdit:
      begin
        btnNovo.Enabled := False;
        btnEditar.Enabled := False;
        btnSalvar.Enabled := True;
        btnDeletar.Enabled := True;
        //btCancelar.Enabled := True;
        //btLocalizar.Enabled := False;
        HabilitaDesabilitaControlesDB(True);
      end;
    dsInsert:
      begin
        btnNovo.Enabled := False;
        btnEditar.Enabled := False;
        btnSalvar.Enabled := True;
        btnDeletar.Enabled := False;
        //btnCancelar.Enabled := True;
        //btnLocalizar.Enabled := False;
        HabilitaDesabilitaControlesDB(True);
      end;
    dsOpening:
      begin
        btnNovo.Enabled := False;
        btnEditar.Enabled := False;
        btnSalvar.Enabled := False;
        btnDeletar.Enabled := False;
        //btnCancelar.Enabled := False;
        //btnLocalizar.Enabled := True;
        HabilitaDesabilitaControlesDB(False);
      end;
  end;
end;

procedure TF_AbstratoButtons.HabilitaDesabilitaControlesDB(Value: Boolean);
var
  i: Integer;
begin
  { : faz um laço em todos os componentes }
  for i := 0 to componentcount - 1 do
  begin
    if (components[i] is TCustomEdit) then
      (components[i] as TCustomEdit).ReadOnly := not Value;
    if (components[i] is TDBRadioGroup) then
      (components[i] as TDBRadioGroup).ReadOnly := not Value;
    if (components[i] is TDBLookupComboBox) then
      (components[i] as TDBLookupComboBox).ReadOnly := not Value;
    // if (components[i] is TDBGrid) then
    // (components[i] as TDBGrid).ReadOnly := Value;
    if (components[i] is TComboBox) then
      (components[i] as TComboBox).Enabled := Value;
    if (components[i] is TDBComboBox) then
      (components[i] as TDBComboBox).ReadOnly := not Value;
    if (components[i] is TDBMemo) then
      (components[i] as TDBMemo).ReadOnly := not Value;
  end;

//  if Value then
//    pnCentro.color := pnBotoes.color
//  else
//    pnCentro.color := $00DADADA;
end;

procedure TF_AbstratoButtons.oDSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  HabilitaDesabilitaControles(oDS);
end;

procedure TF_AbstratoButtons.oDSStateChange(Sender: TObject);
begin
  inherited;
  if oDS.State in [dsInsert, dsEdit, dsInsert] then
  begin
    btnDeletar.Enabled := False;
    btnNovo.Enabled := False;
    btnEditar.Enabled := False;
    btnSalvar.Enabled := True;
  end
  else
  begin
    btnDeletar.Enabled := True;
    btnNovo.Enabled := True;
    btnEditar.Enabled := True;
    btnSalvar.Enabled := False;
  end
end;

function TF_AbstratoButtons.ValidaCampos(DtSrc: TDataSource): Boolean;
// Tranforma object em FieldName
  function FieldDbControle(obj: TObject; DtSrc: TDataSource): string;
  begin
    try
      if obj is TDBEdit then
        Result := DtSrc.DataSet.FindField((obj as TDBEdit).DataField).FieldName;
      if obj is TDBComboBox then
        Result := DtSrc.DataSet.FindField((obj as TDBComboBox).DataField).FieldName;
      if obj is TDBLookupComboBox then
        Result := DtSrc.DataSet.FindField((obj as TDBLookupComboBox).DataField).FieldName;
      if obj is TDBText then
        Result := DtSrc.DataSet.FindField((obj as TDBText).DataField).FieldName;
      if obj is TDBRadioGroup then
        Result := DtSrc.DataSet.FindField((obj as TDBRadioGroup).DataField).FieldName;

      if Length(Result) = 0 then
        Result := 'ID';

    Except

    end;
  end;
// Destaca labels
  procedure DestacaLabel(iComponent: Integer);
  var
    lab: TLabel;
    dblab: TDBText;
    dbRadio: TDBRadioGroup;
    c: TObject;
  begin
    TRY
      { : Label }
      if (components[iComponent] is TLabel) then
      begin
        // Seta o Label no Objeto C
        lab := Self.components[iComponent] as TLabel;
        lab.font.color := clwindowtext;
        lab.font.style := [fsBold];

        if (lab.focuscontrol <> nil) then
        begin
          c := lab.focuscontrol;

          if DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).required then
            if (DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).isnull) or
              (DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).AsString = '') then
            begin
              lab.font.style := [fsBold, fsItalic]; // Negrito
              lab.font.color := clred; // Definimos a cor
              str := str + #13 + #10 + lab.Caption;
              // lab.Caption := lab.Caption + '*';
            end;

        end;

      end;
      { : DBTExt }
      if (components[iComponent] is TDBText) then
      begin
        // Seta o Label no Objeto C
        dblab := Self.components[iComponent] as TDBText;
        c := dblab;
        if DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).required then
          if (DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).isnull) or
            (DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).AsString = '') then
            str := str + #13 + #10 + DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).DisplayLabel;

      end;

      { : DBRadioGroup }
      if (components[iComponent] is TDBRadioGroup) then
      begin
        // Seta o Label no Objeto C
        dbRadio := Self.components[iComponent] as TDBRadioGroup;
        c := dbRadio;

        if DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).required then
          if (DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).isnull) or
            (DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).AsString = '') then
            str := str + #13 + #10 + DtSrc.DataSet.fieldbyname(FieldDbControle(c, DtSrc)).DisplayLabel;

      end;

    EXCEPT
      // ON E: EXCEPTION DO
      // ShowMessage('ERRO: ' + E.Message + ' - ' + lab.Caption);

    END;
  end;

var
  i: Integer;
begin
  str := '';

  Result := True; { : Assume que estão todos preenchidos }

  for i := 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[i].required then
      if (DtSrc.DataSet.Fields[i].isnull) or (Trim(DtSrc.DataSet.Fields[i].AsString) = '') then
      begin
        Result := False;
        DtSrc.DataSet.Fields[i].focuscontrol; { : coloca o foco no controle }
        Break;
      end;

  // Destaca Label
  // if Result = False then
  for i := 0 to Self.componentcount - 1 do
    DestacaLabel(i);

  if Length(str) > 0 then
    if not(DM.tmsMSGQ('Informação',
      'Os registros não forma salvos. Deseja sair assim mesmo ?') = mrOk) then
//    TKernel_MensagemMemo.Mensagem('Aviso!', 'Favor preencha o(s) campo(s):' + str, icCuidadomm, [mbOkmm]);

  // if Length(sCampos.Text) > 0 then
  // TKernel_Mensagem.Mensagem('Favor preencha o(s) campo(s):' + sCampos.Text, icErro, [mbOk]);

end;

end.
