unit U_NFeSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.Provider,
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
  TF_NFeSaida = class(TF_AbstratoGrid)
    AdvGlassButton1: TAdvGlassButton;
    dspCabecalho: TDataSetProvider;
    oCdsCFOP: TIntegerField;
    oCdsCFOPDesc: TStringField;
    oCdsNNota: TIntegerField;
    oCdsDataEmissao: TSQLTimeStampField;
    oCdsDestinatario: TStringField;
    oCdsCNPJDestinatario: TStringField;
    oCdsT_ValorNotaFiscal: TFloatField;
    cxGrid1DBTableView1NNota: TcxGridDBColumn;
    cxGrid1DBTableView1DataEmissao: TcxGridDBColumn;
    cxGrid1DBTableView1Destinatario: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJDestinatario: TcxGridDBColumn;
    cxGrid1DBTableView1T_ValorNotaFiscal: TcxGridDBColumn;
    oCdsID: TIntegerField;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_NFeSaida: TF_NFeSaida;

implementation

{$R *.dfm}

uses U_NFeSaidaBt, UDm;

procedure TF_NFeSaida.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  F_NFeSaidaBt := TF_NFeSaidaBt.Create(nil);
  F_NFeSaidaBt.oCds.Insert;
  F_NFeSaidaBt.ShowModal;
  F_NFeSaidaBt.Free;
  oCds.Refresh;
end;

procedure TF_NFeSaida.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  F_NFeSaidaBt := TF_NFeSaidaBt.Create(nil);
  F_NFeSaidaBt.oCds.Locate('id', oCdsID.AsInteger, []);
  F_NFeSaidaBt.ShowModal;
  F_NFeSaidaBt.Free;
  oCds.Refresh;
end;

procedure TF_NFeSaida.FormCreate(Sender: TObject);
begin

   oCds.Close;
   Dm.sqlNFeCabecalho.Close;
   Dm.sqlNFeCabecalho.CommandText:='';
   Dm.sqlNFeCabecalho.CommandText:=('Select * from NFE_CABECALHO');
   Dm.sqlNFeCabecalho.Open;
   oCds.Open;

  inherited;

end;

end.
