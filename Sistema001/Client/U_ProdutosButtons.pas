unit U_ProdutosButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Vcl.DBCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Mask, cxCheckBox;

type
  TF_ProdutosButtons = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdscodfornecedor: TIntegerField;
    oCdscodproduto: TIntegerField;
    oCdsprocedencia: TStringField;
    oCdsdescricao: TStringField;
    oCdsgrupopedido: TStringField;
    oCdsnumeropa: TIntegerField;
    oCdsnomeprodutopedido: TStringField;
    oCdsncm: TStringField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    DBComboBox1: TDBComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    oCdsGrupoProdutos: TClientDataSet;
    dsGrupoProdutos: TDataSource;
    oCdsgrupo: TIntegerField;
    oCdsGrupoProdutosid: TIntegerField;
    oCdsGrupoProdutoscodgrupo: TIntegerField;
    oCdsGrupoProdutosnomegrupo: TStringField;
    oCdscodformula: TStringField;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    btnCopiarProd: TAdvGlassButton;
    oCdsidprodprincipal: TIntegerField;
    oCdsrevisao: TIntegerField;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    oCdscod_item: TStringField;
    oCdstipo_item: TStringField;
    Label10: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label11: TLabel;
    ComboBox1: TComboBox;
    oCdsativo: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCopiarProdClick(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    var
      idProdPrincipal : Integer;
      CodTipo : String;
      Revisao : Integer;
    { Public declarations }
  end;

var
  F_ProdutosButtons: TF_ProdutosButtons;

implementation

{$R *.dfm}

uses UDM;


procedure TF_ProdutosButtons.ActEditarExecute(Sender: TObject);
begin
  inherited;

  dm.opencnn;
  Revisao := dm.SMGen.GetRevisao(oCdsid.AsInteger);
  dm.closecnn;

  if Revisao = 0 then
  begin
     oCdsrevisao.AsInteger := 1;
  end
  else
  begin
    oCdsrevisao.AsInteger := Revisao + 1;
  end;
end;

procedure TF_ProdutosButtons.ActSalvarExecute(Sender: TObject);
begin
  if Revisao = 0 then
  begin
     oCdsrevisao.AsInteger := 1;
  end
  else
  begin
    oCdsrevisao.AsInteger := Revisao + 1;
  end;

  inherited;
end;

procedure TF_ProdutosButtons.btnCopiarProdClick(Sender: TObject);
var
  Desc : String;
  NroPa : Integer;
  NomeProd : String;
  Grupo : Integer;
  ProInt : Integer;
  Proce : String;
  NCM : String;

begin

  inherited;
  if oCdsidprodprincipal.AsString <> null then
  begin
    idProdPrincipal := oCdsidprodprincipal.AsInteger;
  end
  else
  begin
    idProdPrincipal := oCdsid.AsInteger;
  end;


  Desc     := '(REV)' + oCdsdescricao.AsString;
  NomeProd := '(REV)' + oCdsnomeprodutopedido.AsString;
  NroPa    := oCdsnumeropa.AsInteger;
  NCM      := oCdsncm.AsString;
  Proce    := oCdsprocedencia.AsString;
  ProInt   := DBComboBox1.ItemIndex;
  Grupo    := (oCdsgrupo.AsInteger - 1);

  dm.opencnn;
  Revisao := dm.SMGen.GetRevisao(oCdsid.AsInteger);
  dm.closecnn;

  oCds.Close;
  oCds.Open;
  oCds.Insert;

  oCdsrevisao.AsInteger          := oCdsrevisao.AsInteger + 1;
  oCdsnomeprodutopedido.AsString := NomeProd;
  oCdsdescricao.AsString         := Desc;
  oCdsprocedencia.AsString       := Proce;
  cxDBLookupComboBox1.ItemIndex  := Grupo;
  oCdsnumeropa.AsInteger         := NroPa;
  oCdsidprodprincipal.AsInteger  := idProdPrincipal;
  oCdsncm.AsString               := NCM;
end;

procedure TF_ProdutosButtons.ComboBox1CloseUp(Sender: TObject);
begin
  inherited;
  oCdstipo_item.AsString := CodTipo;
end;

procedure TF_ProdutosButtons.ComboBox1Select(Sender: TObject);
begin
  inherited;
  CodTipo := Copy(ComboBox1.Text, 1,2);
end;

procedure TF_ProdutosButtons.FormCreate(Sender: TObject);
begin
   Revisao := 0;
   oCdsGrupoProdutos.Close;
   oCdsGrupoProdutos.Open;
  inherited;
end;

procedure TF_ProdutosButtons.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
