unit U_ParametrosFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.TabNotBk, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxSpinEdit, cxDBEdit, cxGroupBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxCalc, cxRadioGroup, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TF_ParametrosFaturamento = class(TF_AbstratoButtons)
    TabbedNotebook1: TTabbedNotebook;
    oCdsId: TIntegerField;
    oCdsAverba_Paga: TWideStringField;
    oCdsAverba_PagaPor: TWideStringField;
    oCdsAverba_DiaFechamento: TIntegerField;
    oCdsEmpresarial_DiaFechamento: TIntegerField;
    oCdsEmpresarial_VlrCxPostalPrincipal: TFloatField;
    oCdsEmpresarial_VlrCxPostalAdicional: TFloatField;
    oCdsEmpresarial_CobraPor: TWideStringField;
    oCdsEDI_VlrCxPostal: TFloatField;
    oCdsEDI_Franquia: TFloatField;
    oCdsEDI_VlrKbAdicional: TFloatField;
    Panel2: TPanel;
    Label1: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxDBComboBox2: TcxDBComboBox;
    Label2: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label7: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label8: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label11: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    GroupBox1: TGroupBox;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label12: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    Label13: TLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    Label14: TLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    oCdsDtInc: TDateField;
    oCdsUsuInc: TWideStringField;
    oCdsDtAlt: TDateField;
    oCdsUsuAlt: TWideStringField;
    oCdsFaixa: TClientDataSet;
    dsFaixa: TDataSource;
    oCdsFaixaId: TIntegerField;
    oCdsFaixaInicioFaixa: TIntegerField;
    oCdsFaixaFimFaixa: TIntegerField;
    oCdsFaixaValor: TFloatField;
    oCdsFaixaDtInc: TDateField;
    oCdsFaixaUsuInc: TWideStringField;
    oCdsFaixaDtAlt: TDateField;
    oCdsFaixaUsuAlt: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1InicioFaixa: TcxGridDBColumn;
    cxGrid1DBTableView1FimFaixa: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    oCdsOutros: TClientDataSet;
    dsOutros: TDataSource;
    oCdsOutrosId: TIntegerField;
    oCdsOutrosDescricao: TWideStringField;
    oCdsOutrosValor: TFloatField;
    oCdsOutrosTipoCobranca: TWideStringField;
    oCdsOutrosPeriodoCobranca: TWideStringField;
    cxGridDBTableView1Descricao: TcxGridDBColumn;
    cxGridDBTableView1Valor: TcxGridDBColumn;
    cxGridDBTableView1TipoCobranca: TcxGridDBColumn;
    cxGridDBTableView1PeriodoCobranca: TcxGridDBColumn;
    oCdsOutrosDtInc: TDateField;
    oCdsOutrosUsuInc: TWideStringField;
    oCdsOutrosDtAlt: TDateField;
    oCdsOutrosUsuAlt: TWideStringField;
    oCdsAverba_EmiteBoletoDias: TIntegerField;
    oCdsEmpresarial_EmiteBoletoDias: TIntegerField;
    oCdsAverba_VlrPorDocumentoParcial: TFloatField;
    oCdsAverba_VlrPorDocumentoTotal: TFloatField;
    cxDBCalcEdit7: TcxDBCalcEdit;
    Label15: TLabel;
    procedure ActSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
  private
   ifimFaixa : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ParametrosFaturamento: TF_ParametrosFaturamento;

implementation

{$R *.dfm}

uses UDM;

procedure TF_ParametrosFaturamento.ActEditarExecute(Sender: TObject);
begin
  inherited;
   dsFaixa.AutoEdit  := True;
   dsOutros.AutoEdit := True;
   oCdsFaixa.Edit;
   oCdsOutros.Edit;
   cxGridDBTableView1.Navigator.Visible  := True;
   cxGrid1DBTableView1.Navigator.Visible := True;
end;

procedure TF_ParametrosFaturamento.ActSalvarExecute(Sender: TObject);
Var
   fLastValue,fFirstValue  : Integer;
   iLinhas                 : integer;
   iRecNo                  : Integer;
begin
   //Verifica os valore da faixa
   oCdsFaixa.DisableControls;
   oCdsFaixa.First;
   fLastValue  := 0;
   fFirstValue := 0;
   iLinhas     := 0;
   iRecNo      := 0;
   iLinhas     := oCdsFaixa.RecordCount;
   while not oCdsFaixa.Eof do
   begin
      fLastValue  := oCdsFaixaFimFaixa.AsInteger;
      oCdsFaixa.Next;
      fFirstValue := oCdsFaixaInicioFaixa.AsInteger;
      inc(iRecNo);
      if not(fLastValue + 1 = fFirstValue) and not (iRecNo >= iLinhas) then
      begin
         DM.tmsMSG('Informação','Os valores da faixa estão inconsistentes. Favor verificar !');
         oCdsFaixa.EnableControls;
         Abort;
      end;
   end;
   oCdsFaixa.EnableControls;
   oCdsFaixa.ApplyUpdates(-1);
   oCdsOutros.ApplyUpdates(-1);
      inherited;
   dsFaixa.AutoEdit  := False;
   dsOutros.AutoEdit := False;
   cxGridDBTableView1.Navigator.Visible  := False;
   cxGrid1DBTableView1.Navigator.Visible := False;

end;

procedure TF_ParametrosFaturamento.FormCreate(Sender: TObject);
begin
  inherited;
   oCdsFaixa.Open;
   oCdsOutros.Open;
   cxGridDBTableView1.Navigator.Visible  := False;
   cxGrid1DBTableView1.Navigator.Visible := False;
end;

end.
