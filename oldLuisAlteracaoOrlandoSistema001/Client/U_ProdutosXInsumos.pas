unit U_ProdutosXInsumos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxGroupBox,
  cxCheckGroup, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_ProdutosXInsumos = class(TF_AbstratoButtons)
    oCdscodproduto: TIntegerField;
    oCdsdescricao: TStringField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    oCdsInsumos: TClientDataSet;
    oCdsInsumosid: TIntegerField;
    oCdsInsumoscodigo: TStringField;
    oCdsInsumosue: TStringField;
    oCdsInsumoslitragem: TSingleField;
    oCdsInsumosdescricao: TStringField;
    oCdsid: TIntegerField;
    oCdsInsumosCheck: TBooleanField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsInsumos: TDataSource;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Check: TcxGridDBColumn;
    oCdsRelacionamento: TClientDataSet;
    oCdsRelacionamentoid: TIntegerField;
    oCdsRelacionamentoprodutoid: TIntegerField;
    oCdsRelacionamentoinsumosid: TIntegerField;
    procedure ActEditarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure oCdsInsumosCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProdutosXInsumos: TF_ProdutosXInsumos;

implementation

{$R *.dfm}

uses UDM;

procedure TF_ProdutosXInsumos.ActEditarExecute(Sender: TObject);
begin
//  inherited;
   btnEditar.Enabled := False;
   btnSalvar.Enabled := True;
end;

procedure TF_ProdutosXInsumos.ActSalvarExecute(Sender: TObject);
var
  I: Integer;
begin
//  inherited;
   if DM.tmsMSGQ('Pergunta','Deseja salvar as alterações ?') = mrOk then
   begin
      oCdsRelacionamento.Refresh;
      oCdsRelacionamento.First;
      for I := 0 to oCdsRelacionamento.RecordCount -1 do
      begin
         oCdsRelacionamento.Delete;
         //oCdsRelacionamento.Post;
         oCdsRelacionamento.ApplyUpdates(-1);
      end;
      oCdsInsumos.First;
      while not oCdsInsumos.Eof do
      begin
         if oCdsInsumosCheck.AsBoolean = True then
         begin
            oCdsRelacionamento.Insert;
            oCdsRelacionamentoprodutoid.AsInteger := oCdsid.AsInteger;
            oCdsRelacionamentoinsumosid.AsInteger := oCdsInsumosid.AsInteger;
            oCdsRelacionamento.Post;
         end;
         oCdsInsumos.Next;
      end;
      oCdsRelacionamento.ApplyUpdates(-1);
      //Deletar todos os registro deste relacionamento
      //Inserir novamente o relacionamento
   end;
   oCdsInsumos.First;
   btnSalvar.Enabled := False;
   btnEditar.Enabled := True;
end;

procedure TF_ProdutosXInsumos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCdsInsumosCheck.AsBoolean = True then
   begin
      oCdsInsumos.Edit;
      oCdsInsumosCheck.AsBoolean := False;
      oCdsInsumos.Post;
   end
   else
   begin
      oCdsInsumos.Edit;
      oCdsInsumosCheck.AsBoolean := True;
      oCdsInsumos.Post;
   end;
end;

procedure TF_ProdutosXInsumos.FormCreate(Sender: TObject);
begin
  inherited;
//   oCdsInsumos.Close;
//   oCdsInsumos.Open;
end;

procedure TF_ProdutosXInsumos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

procedure TF_ProdutosXInsumos.oCdsInsumosCalcFields(DataSet: TDataSet);
begin
  inherited;
   if btnEditar.Enabled then
   begin
      if oCdsRelacionamento.Locate('insumosid',oCdsInsumosid.AsInteger,[]) then
      begin
         oCdsInsumosCheck.AsBoolean := True;
      end
      else
      begin
         oCdsInsumosCheck.AsBoolean := False;
      end;
   end;
end;

end.
