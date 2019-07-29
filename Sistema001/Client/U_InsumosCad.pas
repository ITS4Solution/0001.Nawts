unit U_InsumosCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxDropDownEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, Vcl.StdCtrls, dxBevel,
  dxGDIPlusClasses, Vcl.Mask, Vcl.DBCtrls, cxGroupBox, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue;

type
  TF_InsumosCad = class(TF_AbstratoButtons)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBComboBox1: TcxDBComboBox;
    Label4: TLabel;
    oCdsid: TIntegerField;
    oCdscodigo: TStringField;
    oCdsue: TStringField;
    oCdslitragem: TSingleField;
    oCdsdescricao: TStringField;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    oCdstipo: TStringField;
    cxDBComboBox2: TcxDBComboBox;
    Label5: TLabel;
    oCdsestoqueminimo: TSingleField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    oCdsestoquemaximo: TSingleField;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    oCdslote: TStringField;
    oCdscod_item: TStringField;
    oCdstipo_item: TStringField;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label9: TLabel;
    ComboBox1: TComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    var
      CodTipo : String;
    { Public declarations }
  end;

var
  F_InsumosCad: TF_InsumosCad;

implementation

{$R *.dfm}

uses UDM;

procedure TF_InsumosCad.ComboBox1CloseUp(Sender: TObject);
begin
  inherited;
  oCdstipo_item.AsString := CodTipo;
end;

procedure TF_InsumosCad.ComboBox1Select(Sender: TObject);
begin
  inherited;
  CodTipo := Copy(ComboBox1.Text, 1,2);
end;

procedure TF_InsumosCad.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
