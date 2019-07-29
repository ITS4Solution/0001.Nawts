unit U_MatPrimaButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, Vcl.StdCtrls,
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
  dxSkinXmas2008Blue;

type
  TF_MateriaPrimaButtons = class(TF_AbstratoButtons)
    dxBevel3: TdxBevel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    oCdsid: TIntegerField;
    oCdscodigo: TStringField;
    oCdsue: TStringField;
    oCdsdescricao: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MateriaPrimaButtons: TF_MateriaPrimaButtons;

implementation

{$R *.dfm}

uses UDM;

procedure TF_MateriaPrimaButtons.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if Key = #13 then
//  begin
//    Key := #0;
//    Perform(WM_NEXTDLGCTL,0,0);
//  end;

end;

procedure TF_MateriaPrimaButtons.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
