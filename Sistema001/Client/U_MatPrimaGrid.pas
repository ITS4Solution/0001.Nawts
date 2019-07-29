unit U_MatPrimaGrid;

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
  TF_MateriaPrimaGrid = class(TF_AbstratoGrid)
    oCdscodigo: TStringField;
    AdvGlassButton1: TAdvGlassButton;
    oCdsid: TIntegerField;
    oCdsue: TStringField;
    oCdsdescricao: TStringField;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MateriaPrimaGrid: TF_MateriaPrimaGrid;

implementation

{$R *.dfm}

uses UDM, U_MatPrimaButtons;

procedure TF_MateriaPrimaGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_MateriaPrimaButtons := TF_MateriaPrimaButtons.Create(nil);
   F_MateriaPrimaButtons.oCds.Insert;
   F_MateriaPrimaButtons.ShowModal;
   F_MateriaPrimaButtons.Free;
end;

procedure TF_MateriaPrimaGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   F_MateriaPrimaButtons := TF_MateriaPrimaButtons.Create(nil);
   if oCds.RecordCount >= 0 then
   begin
      F_MateriaPrimaButtons.oCds.Locate('id',ocdsId.Asinteger,[]);
      F_MateriaPrimaButtons.ShowModal;
      F_MateriaPrimaButtons.Free;
   end;
end;

end.
