unit U_InsumosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls,
  frxClass, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TF_InsumosGrid = class(TF_AbstratoGrid)
    AdvGlassButton1: TAdvGlassButton;
    oCdsid: TIntegerField;
    oCdscodigo: TStringField;
    oCdsue: TStringField;
    oCdslitragem: TSingleField;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1ue: TcxGridDBColumn;
    cxGrid1DBTableView1litragem: TcxGridDBColumn;
    oCdsdescricao: TStringField;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    oCdstipo: TStringField;
    cxGrid1DBTableView1tipo: TcxGridDBColumn;
    oCdsestoqueminimo: TSingleField;
    cxGrid1DBTableView1estoqueminimo: TcxGridDBColumn;
    AdvGlassButton3: TAdvGlassButton;
    ReportCDS: TfrxReport;
    DBoCDS: TfrxDBDataset;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_InsumosGrid: TF_InsumosGrid;

implementation

{$R *.dfm}

uses UDM, U_InsumosCad;

procedure TF_InsumosGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_InsumosCad := TF_InsumosCad.Create(nil);
   F_InsumosCad.oCds.Insert;
   F_InsumosCad.ShowModal;
   F_InsumosCad.Free;
   oCds.Refresh;
end;

procedure TF_InsumosGrid.AdvGlassButton3Click(Sender: TObject);
begin
  inherited;
   ReportCds.PrepareReport();
   ReportCds.ShowReport();
end;

procedure TF_InsumosGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   F_InsumosCad := TF_InsumosCad.Create(nil);
   F_InsumosCad.oCds.Locate('id',oCdsid.AsInteger,[]);
   F_InsumosCad.ShowModal;
   F_InsumosCad.Free;
   oCds.Refresh;
end;

end.

