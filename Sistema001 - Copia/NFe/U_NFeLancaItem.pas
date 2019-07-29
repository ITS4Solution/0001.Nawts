unit U_NFeLancaItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Abstrato001, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.StdCtrls, FnpNumericEdit, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ComCtrls, UKernel_Classe_Regras_NFE;

type
  TDetalhaItem = record
    dQtd,
    dValorUnit,
    dValorTotal,
    dValorDesconto,
    dValorLiquido,
    dICMSp, dICMSr, dReducao, dIPIp, dIPIr, dIVAp, dBCICMS, dBCICMSST,dICMSSTr: Double;
    dCST, dModBC, dModBCST, dCFOP: integer;
  end;

type
  TF_NFeLancaItem = class(TF_Abstrato001)
    btnSalvar: TAdvGlassButton;
    pnCentro: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditQuantidade: TFnpNumericEdit;
    EditValorUnit: TFnpNumericEdit;
    EditValorTotal: TFnpNumericEdit;
    EditDesconto: TFnpNumericEdit;
    EditTotalLiq: TFnpNumericEdit;
    EditICMSr: TFnpNumericEdit;
    EditICMSp: TFnpNumericEdit;
    EditCFOP: TFnpNumericEdit;
    EditCST: TFnpNumericEdit;
    EditIPIp: TFnpNumericEdit;
    EditIPIr: TFnpNumericEdit;
    EditIVAp: TFnpNumericEdit;
    EditModBC: TFnpNumericEdit;
    EditReducao: TFnpNumericEdit;
    Panel2: TPanel;
    lbCodProduto: TLabel;
    lbNomeProdutos: TLabel;
    EditModBCST: TFnpNumericEdit;
    EditBCICMS: TFnpNumericEdit;
    EditBCICMSST: TFnpNumericEdit;
    EditICMSSTr: TFnpNumericEdit;
    pnTitulo: TPanel;
    imgLogo: TImage;
    BalloonHint1: TBalloonHint;
    Image_Base: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorUnitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQuantidadeExit(Sender: TObject);
    procedure EditCSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditICMSpChange(Sender: TObject);
    procedure EditReducaoChange(Sender: TObject);
    procedure EditIPIpChange(Sender: TObject);
    procedure EditIVApChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalculaTotais;
    procedure CalculaImpostos;
  public
    { Public declarations }
    class function DetalhaItem(Qtd, ValorUnit, ValorTotal, ValorDesconto, ValorLiquido, ICMSp, ICMSr, Reducao, IPIp, IPIr, IVAp: Double;
      CST, CFOP, ModBC, ModBCST: integer): TDetalhaItem;
  end;

var
  F_NFeLancaItem: TF_NFeLancaItem;
  Regra: TRegrasNFE;

implementation

{$R *.dfm}

uses UDm;


procedure TF_NFeLancaItem.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TF_NFeLancaItem.CalculaImpostos;
begin
  try
    EditBCICMS.Value := 0;
    EditICMSr.Value := 0;
    EditBCICMSST.Value := 0;
    EditICMSSTr.Value := 0;

    Regra.ValorICMS(EditCST.AsInteger, EditQuantidade.Value, EditValorUnit.Value, EditDesconto.Value, EditICMSp.Value, EditReducao.Value, 0,
      EditIVAp.Value, EditIPIp.Value);

    EditBCICMS.Value := Regra.Valor_BCICMS;
    EditICMSr.Value := Regra.Valor_ICMS;

    EditBCICMSST.Value := Regra.Valor_BCICMSST;
    EditICMSSTr.Value := Regra.Valor_ICMSST;

    // EditBCICMS.Value := EditTotalLiq.Value - ((EditTotalLiq.Value * EditReducao.Value) / 100);

    // EditICMSr.Value := (EditBCICMS.Value * EditICMSp.Value) / 100;

    EditIPIr.Value := (EditTotalLiq.Value * EditIPIp.Value) / 100;

  except

  end;
end;

procedure TF_NFeLancaItem.CalculaTotais;
begin
  Regra.ValorICMS(EditCST.AsInteger, EditQuantidade.Value, EditValorUnit.Value, EditDesconto.Value, EditICMSp.Value, EditReducao.Value, 0,
    EditIVAp.Value, EditIPIp.Value);

  EditValorTotal.Value := EditQuantidade.Value * EditValorUnit.Value;

  EditTotalLiq.Value := EditValorTotal.Value - EditDesconto.Value;
end;

class function TF_NFeLancaItem.DetalhaItem(Qtd, ValorUnit, ValorTotal, ValorDesconto, ValorLiquido, ICMSp, ICMSr, Reducao, IPIp, IPIr,
  IVAp: Double; CST, CFOP, ModBC, ModBCST: integer): TDetalhaItem;
var
  _form: TF_NFeLancaItem;
begin
  try
    _form := Self.Create(nil);

    _form.EditQuantidade.Value := Qtd;
    _form.EditValorUnit.Value := ValorUnit;
    _form.EditValorTotal.Value := ValorTotal;
    _form.EditDesconto.Value := ValorDesconto;
    _form.EditTotalLiq.Value := ValorLiquido;
    _form.EditICMSr.Value := ICMSr;
    _form.EditICMSp.Value := ICMSp;
    _form.EditCFOP.Value := CFOP;
    _form.EditCST.Value := CST;
    _form.EditIPIp.Value := IPIp;
    _form.EditIPIr.Value := IPIr;
    _form.EditIVAp.Value := IVAp;
    _form.EditModBC.Value := ModBC;
    _form.EditReducao.Value := Reducao;
    _form.EditModBCST.Value := ModBCST;

    if _form.ShowModal = mrOk then
    begin
      Result.dQtd := _form.EditQuantidade.Value;
      Result.dValorUnit := _form.EditValorUnit.Value;
      Result.dValorTotal := _form.EditValorTotal.Value;
      Result.dValorDesconto := _form.EditDesconto.Value;
      Result.dValorLiquido := _form.EditTotalLiq.Value;
      Result.dCST := _form.EditCST.AsInteger;
      Result.dCFOP := _form.EditCFOP.AsInteger;
      Result.dICMSp := _form.EditICMSp.Value;
      Result.dICMSr := _form.EditICMSr.Value;
      Result.dReducao := _form.EditReducao.Value;
      Result.dIPIp := _form.EditIPIp.Value;
      Result.dIPIr := _form.EditIPIr.Value;
      Result.dIVAp := _form.EditIVAp.Value;
      Result.dModBC := _form.EditModBC.AsInteger;
      Result.dModBCST := _form.EditModBCST.AsInteger;
      Result.dBCICMS := _form.EditBCICMS.Value;
      Result.dBCICMSST := _form.EditBCICMSST.Value;
      Result.dICMSSTr := _form.EditICMSSTr.Value;
    end
    else
    begin
      ShowMessage('Operação cancelada pelo usuário.');
      abort;
      Dm.sqlNFeItens.Cancel;
    end;

  finally

    _form.Free;
  end;

end;

procedure TF_NFeLancaItem.EditCSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  try
    if (Key = VK_RETURN) or (Key = VK_TAB) then

      CalculaImpostos;

  except
    EditBCICMS.Value := 0;
    EditICMSr.Value := 0;
    EditBCICMSST.Value := 0;
    EditICMSSTr.Value := 0;
  end;

end;

procedure TF_NFeLancaItem.EditICMSpChange(Sender: TObject);
begin
  inherited;
  // CalculaImpostos;
end;

procedure TF_NFeLancaItem.EditIPIpChange(Sender: TObject);
begin
  inherited;
  // CalculaImpostos;
end;

procedure TF_NFeLancaItem.EditIVApChange(Sender: TObject);
begin
  inherited;
  // CalculaImpostos;
end;

procedure TF_NFeLancaItem.EditQuantidadeExit(Sender: TObject);
begin
  inherited;

  CalculaTotais;
end;

procedure TF_NFeLancaItem.EditReducaoChange(Sender: TObject);
begin
  inherited;
  // CalculaImpostos;
end;

procedure TF_NFeLancaItem.EditValorUnitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    CalculaTotais;
    CalculaImpostos;
  end;

end;

procedure TF_NFeLancaItem.FormCreate(Sender: TObject);
begin

  pnTitulo.caption := 'Detalhamento do item.';
  Regra := TRegrasNFE.Create;

  inherited;

end;

procedure TF_NFeLancaItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if Key = #13 then
  begin
    CalculaImpostos;
    Key := #0;
  end;

end;

end.
