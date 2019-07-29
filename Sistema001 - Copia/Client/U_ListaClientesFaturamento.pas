unit U_ListaClientesFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TF_ListaClientesFaturamento = class(TF_AbstratoGrid)
    AdvGlassButton1: TAdvGlassButton;
    cdsFaturamento: TClientDataSet;
    dsFaturamento: TDataSource;
    oCdsAverbacao: TBooleanField;
    cdsFaturamentoFat_Averbacao: TBooleanField;
    cdsFaturamentoFat_Empresarial: TBooleanField;
    cdsFaturamentoFat_EDI: TBooleanField;
    cxGrid1DBTableView1Averbacao: TcxGridDBColumn;
    oCdsEmpresarial: TBooleanField;
    oCdsEDI: TBooleanField;
    oCdsOutros: TBooleanField;
    cdsFaturamentoFat_Outros: TBooleanField;
    cxGrid1DBTableView1Empresarial: TcxGridDBColumn;
    cxGrid1DBTableView1EDI: TcxGridDBColumn;
    cxGrid1DBTableView1Outros: TcxGridDBColumn;
    oCdste_terminal: TWideStringField;
    oCdscl_cpfcgc: TWideStringField;
    oCdscl_fantasia: TWideStringField;
    cxGrid1DBTableView1te_terminal: TcxGridDBColumn;
    cxGrid1DBTableView1cl_cpfcgc: TcxGridDBColumn;
    cxGrid1DBTableView1cl_fantasia: TcxGridDBColumn;
    cdsFaturamentofat_terminal: TWideStringField;
    oCdscl_tipo_cliente: TWideStringField;
    oCdsTipoCliente: TStringField;
    cxGrid1DBTableView1TipoCliente: TcxGridDBColumn;
    cxGrid1DBTableView1cl_tipo_cliente: TcxGridDBColumn;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure oCdsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ListaClientesFaturamento: TF_ListaClientesFaturamento;

implementation

{$R *.dfm}

uses UDM, UFaturamento;

procedure TF_ListaClientesFaturamento.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_Faturamento              := TF_Faturamento.Create(nil);
   F_Faturamento.sTerminal    := '';
   F_Faturamento.sTerminal    := oCdste_terminal.AsString;
   F_Faturamento.sTpcliente   := oCdscl_tipo_cliente.AsString;
   F_Faturamento.sNomeCliente := 'Cliente: ' + oCdste_terminal.AsString + '-' + oCdscl_fantasia.AsString;
   F_Faturamento.ShowModal;
   oCds.Refresh;
end;

procedure TF_ListaClientesFaturamento.FormCreate(Sender: TObject);
begin
   cdsFaturamento.Open;
  inherited;

end;

procedure TF_ListaClientesFaturamento.oCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
   if cdsFaturamento.Locate('fat_terminal',oCdste_terminal.AsString,[]) then
   begin
      if cdsFaturamentoFat_Averbacao.AsBoolean = True then
      begin
         oCdsAverbacao.AsBoolean := True;
      end
      else
      begin
         oCdsAverbacao.AsBoolean    := False;
      end;
      if cdsFaturamentoFat_Empresarial.AsBoolean = True then
      begin
         oCdsEmpresarial.AsBoolean := True;
      end
      else
      begin
         oCdsEmpresarial.AsBoolean    := False;
      end;
      if cdsFaturamentoFat_EDI.AsBoolean = True then
      begin
         oCdsEDI.AsBoolean := True;
      end
      else
      begin
         oCdsEDI.AsBoolean    := False;
      end;
      if cdsFaturamentoFat_Outros.AsBoolean = True then
      begin
         oCdsOutros.AsBoolean := True;
      end
      else
      begin
         oCdsOutros.AsBoolean    := False;
      end;
   end
   else
   begin
      oCdsAverbacao.AsBoolean    := False;
      oCdsEmpresarial.AsBoolean  := False;
      oCdsEDI.AsBoolean          := False;
      oCdsOutros.AsBoolean       := False;
   end;
   if oCdscl_tipo_cliente.AsString = 'S' then
   begin
      oCdsTipoCliente.AsString := 'Seguradora';
   end
   else if oCdscl_tipo_cliente.AsString = 'C' then
   begin
      oCdsTipoCliente.AsString := 'Corretora';
   end
   else
   begin
      oCdsTipoCliente.AsString := oCdscl_tipo_cliente.AsString;
   end;
end;

end.
