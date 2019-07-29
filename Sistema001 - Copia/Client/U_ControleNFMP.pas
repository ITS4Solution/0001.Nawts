unit U_ControleNFMP;

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
  TF_ControleNFMP = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsnronfe: TIntegerField;
    oCdsserienfe: TIntegerField;
    oCdsdata: TDateField;
    oCdscodfiscal: TIntegerField;
    oCdsnome_razaosocial: TStringField;
    oCdscondpagamento: TStringField;
    oCdsdetalhepagamento: TStringField;
    oCdsobs: TMemoField;
    oCdsVALORTOTAL: TFloatField;
    cxGrid1DBTableView1nronfe: TcxGridDBColumn;
    cxGrid1DBTableView1serienfe: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1codfiscal: TcxGridDBColumn;
    cxGrid1DBTableView1nome_razaosocial: TcxGridDBColumn;
    cxGrid1DBTableView1condpagamento: TcxGridDBColumn;
    cxGrid1DBTableView1detalhepagamento: TcxGridDBColumn;
    cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ControleNFMP: TF_ControleNFMP;

implementation

{$R *.dfm}

uses UDM, U_ControleNFMPBt;

procedure TF_ControleNFMP.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if oCds.RecordCount > 0 then
  begin
    F_AbstratoButtons1 := TF_AbstratoButtons1.Create(nil);
    F_AbstratoButtons1.oCds.Locate('id',oCdsid.AsInteger,[]);

    F_AbstratoButtons1.cdsItens.Close;
    F_AbstratoButtons1.cdsItens.Params[0].Value := F_ControleNFMP.oCdsid.AsInteger;
    F_AbstratoButtons1.cdsItens.Open;

    F_AbstratoButtons1.ShowModal;
    F_AbstratoButtons1.Free;
    oCds.Refresh;
  end
end;

end.
