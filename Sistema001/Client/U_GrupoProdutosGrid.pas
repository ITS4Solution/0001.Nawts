unit U_GrupoProdutosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls,
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
  TF_GrupoProdutosGrid = class(TF_AbstratoGrid)
    oCdsid: TIntegerField;
    oCdscodgrupo: TIntegerField;
    oCdsnomegrupo: TStringField;
    cxGrid1DBTableView1codgrupo: TcxGridDBColumn;
    cxGrid1DBTableView1nomegrupo: TcxGridDBColumn;
    AdvGlassButton1: TAdvGlassButton;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_GrupoProdutosGrid: TF_GrupoProdutosGrid;

implementation

{$R *.dfm}

uses UDM, U_GrupoProdutosButtons;

procedure TF_GrupoProdutosGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_GrupoProdutosButtons := TF_GrupoProdutosButtons.Create(nil);
   F_GrupoProdutosButtons.oCds.Insert;
   F_GrupoProdutosButtons.ShowModal;
   F_GrupoProdutosButtons.Free;
   oCds.Refresh;
end;

procedure TF_GrupoProdutosGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCds.RecordCount <> 0 then
   begin
      F_GrupoProdutosButtons := TF_GrupoProdutosButtons.Create(nil);
      F_GrupoProdutosButtons.oCds.Locate('id',oCdsid.AsInteger,[]);
      F_GrupoProdutosButtons.ShowModal;
      F_GrupoProdutosButtons.Free;
      oCds.Refresh;
   end;
end;

end.
