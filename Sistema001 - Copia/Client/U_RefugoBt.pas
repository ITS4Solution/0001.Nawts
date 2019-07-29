unit U_RefugoBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, cxMemo,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue;

type
  TF_RefugoBt = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdscodinsumo: TIntegerField;
    oCdsqtd: TSingleField;
    oCdsidordemproducao: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    oCdsobser: TMemoField;
    Label4: TLabel;
    cxDBMemo1: TcxDBMemo;
    cdsInsumo: TClientDataSet;
    dsInsumos: TDataSource;
    cdsInsumoid: TIntegerField;
    cdsInsumocodigo: TStringField;
    cdsInsumoue: TStringField;
    cdsInsumolitragem: TSingleField;
    cdsInsumodescricao: TStringField;
    cdsInsumotipo: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure ActSairExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RefugoBt: TF_RefugoBt;

implementation

{$R *.dfm}

uses UDM, U_RefugoGrid;

procedure TF_RefugoBt.ActSairExecute(Sender: TObject);
begin
    F_RefugoGrid.oCds.Close;
    F_RefugoGrid.oCds.Open;
  inherited;


end;

procedure TF_RefugoBt.ActSalvarExecute(Sender: TObject);
begin
  dm.opencnn;
  dm.SMGen.IBaixaEstoque(oCdscodinsumo.AsInteger,oCdsidordemproducao.AsInteger,0,oCdsqtd.AsFloat);
  dm.closecnn;
  inherited;
end;

procedure TF_RefugoBt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
