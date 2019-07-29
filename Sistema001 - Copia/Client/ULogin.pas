unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Abstrato000, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, Menus, cxButtons, StdCtrls, Buttons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxTextEdit, AdvOfficeImage, ExtCtrls, dxScreenTip, dxCustomHint, cxHint,
  advlued, AdvEdit, AdvEdBtn, AeroButtons, rtflabel, AdvSmoothPanel,
  AdvGlassButton, cxCheckBox,inifiles, cxPC, dxDockControl, dxDockPanel,
  AdvPanel, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TF_Login = class(TF_Abstrato000)
    Panel1: TPanel;
    Timer1: TTimer;
    AdvSmoothPanel1: TAdvSmoothPanel;
    edtLogin: TAdvLUEdit;
    edtSenha: TAdvLUEdit;
    btnLogin: TAdvGlassButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure edtSenhaResetConfirmaChange(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation

uses UDM, U_FuncServer, U_Principal, U_Utils, U_SaidaProducao;

{$R *.dfm}

procedure TF_Login.edtLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_Login.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_Login.edtSenhaResetConfirmaChange(Sender: TObject);
begin
  inherited;
//   if edtSenhaReset.Text = edtSenhaResetConfirma.Text then
//   begin
//      edtSenhaResetConfirma.Color := $009BFF9B;
//   end
//   else
//   begin
//      edtSenhaResetConfirma.Color := clRed;
//   end;

end;

procedure TF_Login.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
//   if edtSenhaReset.Text = edtSenhaResetConfirma.Text then
//   begin
//      edtSenha.Text := edtSenhaResetConfirma.Text;
//      DM.SMGen.UpdateSenhaUsuario(edtLogin.Text,Cript(edtSenhaResetConfirma.Text));
//      Panel.Visible := False;
//   end;
end;

procedure TF_Login.btnLoginClick(Sender: TObject);
Var
   i : Integer;
   ArqIni: TIniFile;
begin
  inherited;
   i := 0;
   F_Principal.StatusBar.Panels[1].Text := '';
   if ((Trim(edtLogin.Text) = '') or (Trim(edtSenha.Text) = ''))  then
   begin
      DM.tmsMSG('Informação','Todos os campos devem estar preenchidos para o login');
      Exit;
   end;

   dm.opencnn;

   Try
   i := DM.SMGen.VerificaUsuario(edtLogin.Text,edtSenha.Text);
   Except on e : exception do
      ShowMessage(e.Message);
   End;

   DM.idUser := DM.SMGen.GetIDUsuario(edtLogin.Text,edtSenha.Text);
   dm.closecnn;
   case i of
      -1 : begin
         DM.tmsMSG('Informação','Sua senha foi resetada. Será necessário criar uma nova senha !');

      end;
       0 : begin
         DM.tmsMSG('Informação','Usuário ou senha inválido !');
       end;
       1,2,3,4 : begin
           F_Principal.StatusBar.Panels[1].Text := 'Usuário: ' + edtLogin.Text;
           DM.sUsuarioLogado := edtLogin.Text;
           Dm.iNivelUsuario := i;
           F_Principal.VerificaOPV;
           Close;
       end;
   end;
end;

procedure TF_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   if F_Principal.StatusBar.Panels[1].Text = '' then
   begin
      if DM.tmsMSGQ('Pergunta','Deseja realmente sair do sistema ?') = mrOk then
      begin
         Application.Terminate;
      end;
      Abort;
   end;
end;

procedure TF_Login.FormCreate(Sender: TObject);
var
   ArqIni: TIniFile;
begin
  inherited;
   ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\Conf.ini');
   //ArqIni.FileName;
   try
      if ArqIni.ReadString( 'PassWord' , 'SenhaLogin','') <> '' then
      begin
         edtSenha.Text           := Decript(ArqIni.ReadString( 'PassWord' , 'SenhaLogin',''));
         edtLogin.Text           := ArqIni.ReadString( 'PassWord' , 'UsuarioLogin','');

      end;
   finally
      ArqIni.Free;
   end;
end;

procedure TF_Login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if (Key = #13) then
   begin
     Key := #0;
     Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TF_Login.FormShow(Sender: TObject);
begin
  inherited;
   brush.Style := bsclear;
end;

procedure TF_Login.Timer1Timer(Sender: TObject);
begin
  inherited;
//   Self.AlphaBlendValue:= Self.AlphaBlendValue + 3;
//   if Self.AlphaBlendValue >= 255 then
//   begin
//      Timer1.Enabled:= false;
//      Self.AlphaBlendValue := 255;
//   end;
end;

end.
