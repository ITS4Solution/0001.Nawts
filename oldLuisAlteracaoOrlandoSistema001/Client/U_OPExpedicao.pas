unit U_OPExpedicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TF_OPExpedicao = class(TF_AbstratoGrid)
    cxGrid1DBTableView1codopenvase: TcxGridDBColumn;
    cxGrid1DBTableView1qtdreal: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1lote: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    oCdsid: TIntegerField;
    oCdscodopenvase: TIntegerField;
    oCdsidprodutos: TIntegerField;
    oCdsqtdreal: TSingleField;
    oCdsdata: TDateField;
    oCdslote: TStringField;
    oCdsdescricao: TStringField;
    oCdssQtdFalta: TFloatField;
    cxGrid1DBTableView1sQtdFalta: TcxGridDBColumn;
    cxGrid1DBTableView1qtdinserida: TcxGridDBColumn;
    oCdsqtdinserida: TFloatField;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure oCdsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_OPExpedicao: TF_OPExpedicao;

implementation

{$R *.dfm}

uses UDM, U_OPExpedicaoBtn;

procedure TF_OPExpedicao.cxGrid1DBTableView1DblClick(Sender: TObject);
Var
   iId : Integer;
begin
  if oCds.RecordCount > 0 then
  begin
      iId := oCdsid.AsInteger;
      F_OPExpedicaoBtn := TF_OPExpedicaoBtn.Create(nil);
      F_OPExpedicaoBtn.lblCod.Caption := INTTOSTR(oCdscodopenvase.AsInteger);
      F_OPExpedicaoBtn.lblProd.Caption := oCdsdescricao.AsString;
      F_OPExpedicaoBtn.lblLote.Caption := oCdslote.AsString;
      F_OPExpedicaoBtn.ShowModal;
      F_OPExpedicaoBtn.Free;
      dm.opencnn;
      oCds.Close;
      oCds.Open;
      oCds.Locate('id',iId,[]);
  end;

end;

procedure TF_OPExpedicao.oCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
//    dm.opencnn;
    oCdsqtdinserida.AsFloat := Dm.SMGen.OPExpedicao(oCdsidprodutos.AsInteger, oCdsid.AsInteger);
    oCdssQtdFalta.AsFloat   := trunc((oCdsqtdreal.AsFloat - oCdsqtdinserida.AsFloat));
//    dm.closecnn;
end;

end.

