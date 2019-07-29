unit U_CILista;

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
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxDBSet;

type
  TF_CILista = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdsseqci: TIntegerField;
    oCdsdata: TDateField;
    oCdsidusuario: TIntegerField;
    oCdsobs: TStringField;
    oCdsusado: TIntegerField;
    oCdsnome: TStringField;
    cxGrid1DBTableView1seqci: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    oCdssUsado: TStringField;
    cxGrid1DBTableView1sUsado: TcxGridDBColumn;
    btnImprimir: TAdvGlassButton;
    reportListaCI: TfrxReport;
    dbCILista: TfrxDBDataset;
    procedure oCdsCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CILista: TF_CILista;

implementation

{$R *.dfm}

uses UDM, U_CIListaBtn;

procedure TF_CILista.btnImprimirClick(Sender: TObject);
begin
  inherited;
  reportListaCI.PrepareReport();
  reportListaCI.ShowReport();

end;

procedure TF_CILista.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if oCds.RecordCount > 0 then
   begin
    F_CIListaBtn := TF_CIListaBtn.Create(nil);
    F_CIListaBtn.oCds.Locate('id',oCdsid.AsInteger,[]);
    F_CIListaBtn.ShowModal;
    F_CIListaBtn.Free;
    oCds.Refresh;
   end;
end;

procedure TF_CILista.oCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if oCdsusado.AsInteger = 1 then
  begin
     oCdssUsado.AsString := 'Sim';
  end
  else
  begin
     oCdssUsado.AsString := 'Não';
  end;
end;

end.
