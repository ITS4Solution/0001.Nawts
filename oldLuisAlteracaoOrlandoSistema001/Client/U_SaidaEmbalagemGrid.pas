unit U_SaidaEmbalagemGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_SaidaEmbalagemGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdscodopenvase: TIntegerField;
    oCdsidprodutos: TIntegerField;
    oCdsqtdprevista: TSingleField;
    oCdsqtdreal: TSingleField;
    oCdsdata: TDateField;
    oCdsstatus: TStringField;
    oCdsdescricao: TStringField;
    cxGrid1DBTableView1codopenvase: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1qtdprevista: TcxGridDBColumn;
    btnNovo: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public

     { Public declarations }
  end;

var
  F_SaidaEmbalagemGrid: TF_SaidaEmbalagemGrid;

implementation

{$R *.dfm}

uses UDM, U_SaidaEmbalagemBt;

procedure TF_SaidaEmbalagemGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
//
end;

procedure TF_SaidaEmbalagemGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCds.RecordCount > 0 then
   begin
    F_SaidaEmbalagemBt := TF_SaidaEmbalagemBt.Create(nil);
    F_SaidaEmbalagemBt.oCds.Locate('id',oCdsid.AsInteger,[]);
    F_SaidaEmbalagemBt.sState := 'editar';
    F_SaidaEmbalagemBt.oCds.Insert;
    F_SaidaEmbalagemBt.oCdsdata.Value := date;

    F_SaidaEmbalagemBt.cxCodOP.Text := IntToStr(oCdscodopenvase.AsInteger);
    F_SaidaEmbalagemBt.cxCodOP.Enabled := False;

    F_SaidaEmbalagemBt.cxValor.Text := FloatToStr(oCdsqtdprevista.AsFloat);
    F_SaidaEmbalagemBt.cxValor.Enabled := False;

    F_SaidaEmbalagemBt.oCdsidproduto.AsInteger := oCdsidprodutos.AsInteger;

    F_SaidaEmbalagemBt.cxProduto.Text := oCdsdescricao.AsString;
    F_SaidaEmbalagemBt.cxProduto.Enabled := False;

    F_SaidaEmbalagemBt.cdsAcess.Close;
    F_SaidaEmbalagemBt.cdsAcess.Params[0].AsInteger := oCdscodopenvase.AsInteger;
    F_SaidaEmbalagemBt.cdsAcess.Open;

    F_SaidaEmbalagemBt.oCds.Close;
    F_SaidaEmbalagemBt.oCds.Open;

    F_SaidaEmbalagemBt.cdsSaidaDetalhe.Insert;
    F_SaidaEmbalagemBt.cxGrid1DBTableView1.Navigator.Visible := True;

    F_SaidaEmbalagemBt.ShowModal;
    F_SaidaEmbalagemBt.Free;
    oCds.Refresh;

   end;
end;

end.
