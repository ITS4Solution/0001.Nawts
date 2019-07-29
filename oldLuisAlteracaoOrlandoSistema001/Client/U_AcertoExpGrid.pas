unit U_AcertoExpGrid;

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
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, frxClass, frxExportPDF, frxDBSet;

type
  TF_AcertoExpGrid = class(TF_AbstratoGrid)
    oCdsdescricao: TStringField;
    oCdsidprod: TIntegerField;
    oCdscodproduto: TIntegerField;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1codproduto: TcxGridDBColumn;
    btnNovo: TAdvGlassButton;
    oCdsqtd: TSingleField;
    cxGrid1DBTableView1qtd: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    RelatEstoque: TfrxReport;
    PDFExportEstoque: TfrxPDFExport;
    DBEstoque: TfrxDBDataset;
    oCdsdataexp: TDateField;
    cdsEstoque: TClientDataSet;
    dsEstoque: TDataSource;
    cdsEstoquedescricao: TStringField;
    cdsEstoquecodproduto: TIntegerField;
    cdsEstoqueSUM: TFloatField;
    cdsEstoquesData: TDateField;
    procedure btnNovoClick(Sender: TObject);
    procedure cdsEstoqueCalcFields(DataSet: TDataSet);
    procedure AdvGlassButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AcertoExpGrid: TF_AcertoExpGrid;

implementation

{$R *.dfm}

uses UDM, U_AcertoExpBtn;


procedure TF_AcertoExpGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
  //
  cdsEstoque.Close;
  cdsEstoque.Open;

  RelatEstoque.PrepareReport();
  RelatEstoque.ShowReport();
end;

procedure TF_AcertoExpGrid.btnNovoClick(Sender: TObject);
begin
  inherited;
   F_AcertoExpBtn := TF_AcertoExpBtn.Create(nil);
   F_AcertoExpBtn.oCds.Insert;

   F_AcertoExpBtn.CdsProduto.Close;
   F_AcertoExpBtn.CdsProduto.Open;

   dm.opencnn;
   F_AcertoExpBtn.oCdsid.AsInteger := DM.SMGen.GetNextIDEstoqueExp;
   dm.closecnn;

   F_AcertoExpBtn.ShowModal;
   F_AcertoExpBtn.Free;
   oCds.Refresh;
end;

procedure TF_AcertoExpGrid.cdsEstoqueCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsEstoquesData.Value := Date;
end;

end.
