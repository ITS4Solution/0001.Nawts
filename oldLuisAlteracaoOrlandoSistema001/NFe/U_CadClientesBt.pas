unit U_CadClientesBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.StdCtrls, dxGDIPlusClasses,
  dxBevel, Datasnap.Provider, cxMaskEdit, cxDropDownEdit,
  System.MaskUtils, cxCheckBox, Vcl.Buttons, Vcl.DBCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, Vcl.Mask, cxGroupBox;

type
  TF_CadClientesBt = class(TF_AbstratoButtons)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    dspCliFor: TDataSetProvider;
    lbCGC: TLabel;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    lbRG: TLabel;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label12: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxDBTextEdit12: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label14: TLabel;
    cxDBComboBox2: TcxDBComboBox;
    Label7: TLabel;
    btDest: TSpeedButton;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    edtDataCadastro: TAdvDBDateTimePicker;
    edtCnpj: TDBEdit;
    cxDBTextEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    oCdsID: TIntegerField;
    oCdsNOMERAZAO: TStringField;
    oCdsNOMEFANTASIA: TStringField;
    oCdsENDERECO: TStringField;
    oCdsNUMERO: TStringField;
    oCdsBAIRRO: TStringField;
    oCdsCIDADE: TStringField;
    oCdsCODCIDADE: TIntegerField;
    oCdsUF: TStringField;
    oCdsCODUF: TIntegerField;
    oCdsCEP: TStringField;
    oCdsCGC: TStringField;
    oCdsIERG: TStringField;
    oCdsFJ: TStringField;
    oCdsTELEFONE: TStringField;
    oCdsDATACADASTRO: TSQLTimeStampField;
    oCdsEMAI: TStringField;
    oCdsCLIFORTRANSP: TStringField;
    cxGroupBox1: TcxGroupBox;
    oCdsCONSUMIDOR: TStringField;
    oCdsESTRANGEIRO: TStringField;
    oCdsDOCESTRAN: TStringField;
    cxGroupBox2: TcxGroupBox;
    Label5: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxDBComboBox3: TcxDBComboBox;
    cxDBComboBox4: TcxDBComboBox;
    cxDBComboBox5: TcxDBComboBox;
    procedure edtCnpjExit(Sender: TObject);
    procedure edtCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure ActSairExecute(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure edtCnpjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function cnpj(num: string): boolean;
    procedure SomenteNumeros(Sender: TObject; var Key: Char);

  public
    { Public declarations }
  end;

var
  F_CadClientesBt: TF_CadClientesBt;

implementation

{$R *.dfm}

uses U_CadClientes, UDm;

{ TF_CadClientesBt }

procedure TF_CadClientesBt.ActNovoExecute(Sender: TObject);
begin
  inherited;
  edtDataCadastro.Date := Date;
end;

procedure TF_CadClientesBt.ActSairExecute(Sender: TObject);
begin
  inherited;
  F_CadClientes.oCds.Refresh;
end;

function TF_CadClientesBt.cnpj(num: string): boolean;
var

  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: integer;

  d1, d2: integer;

  digitado, calculado: string;

begin

  n1 := StrToInt(num[1]);

  n2 := StrToInt(num[2]);

  n3 := StrToInt(num[3]);

  n4 := StrToInt(num[4]);

  n5 := StrToInt(num[5]);

  n6 := StrToInt(num[6]);

  n7 := StrToInt(num[7]);

  n8 := StrToInt(num[8]);

  n9 := StrToInt(num[9]);

  n10 := StrToInt(num[10]);

  n11 := StrToInt(num[11]);

  n12 := StrToInt(num[12]);

  d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9
    + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;

  d1 := 11 - (d1 mod 11);

  if d1 >= 10 then
    d1 := 0;

  d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9
    + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;

  d2 := 11 - (d2 mod 11);

  if d2 >= 10 then
    d2 := 0;

  calculado := inttostr(d1) + inttostr(d2);

  digitado := num[13] + num[14];

  if calculado = digitado then

    cnpj := true

  else

    cnpj := false;

end;

procedure TF_CadClientesBt.edtCnpjExit(Sender: TObject);
Var
  FormatarCNPJ: String;
begin
  inherited;

  { // Arrumar essa rotina de validação

    if (TEdit(Sender).Text <> '') then
    begin
    if cnpj(TEdit(Sender).Text) Then
    begin

    FormatarCNPJ:= Copy(TEdit(Sender).Text, 1,2)

    + '.' + Copy(TEdit(Sender).Text, 3,3)

    +'.' + Copy(TEdit(Sender).Text, 6,3)

    + '/' +Copy(TEdit(Sender).Text, 9,4)

    + '-' + Copy(TEdit(Sender).Text, 13,2);

    TEdit(Sender).Text:= FormatarCNPJ;

    End

    Else

    begin

    ShowMessage('CNPJ com erro. favor verificar');

    TEdit(Sender).SetFocus;

    end;
    end;
  }
end;

procedure TF_CadClientesBt.edtCnpjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  str: string;
begin
  inherited;

  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if oCds.State = dsInsert then
      if Length(ConsultaRegistroSimples(edtCnpj.Text, 'CGC', 'NomeRazao', 'NFe_CliFor')) > 0 then
      begin

      { // Verificar rotina -->
        str := ConsultaRegistroSimples(edtCnpj.Text, 'CGC', 'ID', 'NFe_CliFor');

        oCds.Cancel;

        DM.QryCadClientes.Close;
        DM.QryCadClientes.Parameters[0].Value := isInteger(str);
        DM.QryCadClientes.Open;

      } // <-- até aqui
      end;
  end;


end;

procedure TF_CadClientesBt.edtCnpjKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  SomenteNumeros(Sender, Key);
end;

procedure TF_CadClientesBt.FormShow(Sender: TObject);
begin
  inherited;

  DBCheckBox1Exit(sender);

end;

procedure TF_CadClientesBt.cxDBTextEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SomenteNumeros(Sender, Key);
end;

procedure TF_CadClientesBt.cxDBTextEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SomenteNumeros(Sender, Key);
end;

procedure TF_CadClientesBt.cxDBTextEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SomenteNumeros(Sender, Key);
end;

procedure TF_CadClientesBt.cxDBTextEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SomenteNumeros(Sender, Key);
end;

procedure TF_CadClientesBt.cxDBTextEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SomenteNumeros(Sender, Key);
end;

procedure TF_CadClientesBt.DBCheckBox1Click(Sender: TObject);
begin
  inherited;
  // Fisica
  if DBCheckBox1.Checked then
  begin
    lbCGC.Caption := 'CPF:';
    lbRG.Caption := 'RG:';
  end;

  // Juridica
  if NOT DBCheckBox1.Checked then
  begin
    lbCGC.Caption := 'CNPJ:';
    lbRG.Caption := 'Insc. Estadual:';
  end;
end;

procedure TF_CadClientesBt.DBCheckBox1Exit(Sender: TObject);
begin
  inherited;

  // Muda mascara
  if DBCheckBox1.Checked then
    oCdsCGC.EditMask := '999\.999\.999\-99;0;_';

  if not DBCheckBox1.Checked then
    oCdsCGC.EditMask := '99\.999\.999\/9999\-99;0;_';

end;

procedure TF_CadClientesBt.SomenteNumeros(Sender: TObject; var Key: Char);
begin
  If not(Key in ['0' .. '9', #08]) then
    Key := #0;
end;

end.
