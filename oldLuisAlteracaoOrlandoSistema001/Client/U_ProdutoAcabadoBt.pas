unit U_ProdutoAcabadoBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxDBEdit, Vcl.StdCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.DBCtrls, Vcl.Mask, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar;

type
  TF_ProdutoAcabadoBt = class(TF_AbstratoButtons)
    Label1: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    cdsProdutos: TClientDataSet;
    cdsProdutosid: TIntegerField;
    cdsProdutoscodfornecedor: TIntegerField;
    cdsProdutoscodproduto: TIntegerField;
    cdsProdutosprocedencia: TStringField;
    cdsProdutosgrupo: TIntegerField;
    cdsProdutosdescricao: TStringField;
    cdsProdutosgrupopedido: TStringField;
    cdsProdutosnumeropa: TIntegerField;
    cdsProdutosnomeprodutopedido: TStringField;
    cdsProdutosncm: TStringField;
    dsProdutos: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    oCdsid: TIntegerField;
    oCdsidnfeentrada: TIntegerField;
    oCdsidinsumo: TIntegerField;
    oCdstipo: TStringField;
    oCdsdata: TDateField;
    oCdsobs: TStringField;
    oCdsquantd: TSingleField;
    oCdsidordemenvase: TIntegerField;
    oCdsidordemquimico: TIntegerField;
    oCdsidproduto: TIntegerField;
    oCdslote: TStringField;
    edtProduto: TEdit;
    Label2: TLabel;
    recSeq: TPanel;
    Label4: TLabel;
    edtSeq: TEdit;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    btnCI: TAdvGlassButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBMemo1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure btnCIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProdutoAcabadoBt: TF_ProdutoAcabadoBt;

implementation

{$R *.dfm}

uses UDM, U_ComunicadoInterno;

procedure TF_ProdutoAcabadoBt.ActSalvarExecute(Sender: TObject);
begin
//  if cxDBMemo1.Text = '' then
//  begin
//    ShowMessage('Digite a razão do acerto de estoque!');
//  end
//  else
//  begin
//    oCdsidnfeentrada.AsInteger := -1;
//    oCdsidinsumo.AsInteger     := -1;
//    oCdstipo.AsString          := 'Mat. Prima Acabada';
//    oCdsidproduto.AsInteger    := cdsProdutosid.AsInteger;
//    inherited;
//   // dm.SMGen.IEstoqueProdutoAcabado(oCdsidproduto.AsInteger, oCdsquantd.AsFloat, oCdsobs.AsString);
//  end;
  recSeq.Enabled := True;
  recSeq.Visible := True;

end;

procedure TF_ProdutoAcabadoBt.AdvGlassButton2Click(Sender: TObject);
begin
  //inherited;
  recSeq.Enabled := False;
  recSeq.Visible := False;
end;

procedure TF_ProdutoAcabadoBt.AdvGlassButton3Click(Sender: TObject);
begin
  inherited;
 ///enviar
 ///
 dm.opencnn;
  if DM.SMGen.UsoCI(strtoint(edtSeq.Text)) = True then
  begin
    dm.closecnn;
      if cxDBMemo1.Text = '' then
      begin
        ShowMessage('Digite a razão do acerto de estoque!');
      end
      else
      begin
        oCdsidnfeentrada.AsInteger := -1;
        oCdsidinsumo.AsInteger     := -1;
        oCdstipo.AsString          := 'Mat. Prima Acabada';
        oCdsidproduto.AsInteger    := cdsProdutosid.AsInteger;

        oCds.Post;
        oCds.ApplyUpdates(-1);
       // dm.SMGen.IEstoqueProdutoAcabado(oCdsidproduto.AsInteger, oCdsquantd.AsFloat, oCdsobs.AsString);
        recSeq.Enabled := False;
        recSeq.Visible := False;
      end;
  end
  else
  begin
     ShowMessage('Código já utilizado ou inexistente!');
     edtSeq.Text := '';
  end;

end;

procedure TF_ProdutoAcabadoBt.btnCIClick(Sender: TObject);
begin
  inherited;
  //Tela CI
  F_ComunicadoInterno := TF_ComunicadoInterno.Create(nil);
  F_ComunicadoInterno.ShowModal;
  F_ComunicadoInterno.Free;
end;

procedure TF_ProdutoAcabadoBt.cxDBLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  oCdsidproduto.AsInteger := cdsProdutosid.AsInteger;
  edtProduto.Text := cdsProdutosdescricao.AsString;
end;

procedure TF_ProdutoAcabadoBt.cxDBMemo1PropertiesChange(Sender: TObject);
begin
  inherited;
  //
end;

procedure TF_ProdutoAcabadoBt.FormCreate(Sender: TObject);
begin
  inherited;
  CdsProdutos.Close;
  CdsProdutos.Open;
end;

procedure TF_ProdutoAcabadoBt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
