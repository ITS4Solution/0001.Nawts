unit U_SaidaProducao;

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
  TF_SaidaProducao = class(TF_AbstratoGrid)
    cxGrid1DBTableView1codopenvase: TcxGridDBColumn;
    cxGrid1DBTableView1qtdprevista: TcxGridDBColumn;
    cxGrid1DBTableView1hora: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1operador: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    oCdsid: TIntegerField;
    oCdscodopenvase: TIntegerField;
    oCdsidprodutos: TIntegerField;
    oCdsqtdprevista: TSingleField;
    oCdsqtdreal: TSingleField;
    oCdshora: TTimeField;
    oCdsdata: TDateField;
    oCdsue: TStringField;
    oCdslote: TStringField;
    oCdscpa: TStringField;
    oCdsoperador: TStringField;
    oCdsstatus: TStringField;
    oCdsdescricao: TStringField;
    dboCds: TfrxDBDataset;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    oCdsqtd: TSingleField;
    oCdsdatains: TDateField;
    cxGrid1DBTableView1qtd: TcxGridDBColumn;
    cxGrid1DBTableView1datains: TcxGridDBColumn;
    oCdsIDCONTROLE: TIntegerField;
    oCdshorains: TTimeField;
    cxGrid1DBTableView1horains: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_SaidaProducao: TF_SaidaProducao;

implementation

{$R *.dfm}

uses UDM, U_SaidaProducaoBt, U_Principal;

procedure TF_SaidaProducao.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
//if oCds.RecordCount > 0 then
  // begin
    F_SaidaProducaoBt := TF_SaidaProducaoBt.Create(nil);
    F_SaidaProducaoBt.oCds.Locate('id',oCdsid.AsInteger,[]);
    //F_SaidaProducaoBt.sState := 'editar';

    F_SaidaProducaoBt.lbCodEnvase.Text       := oCdscodopenvase.AsString;
    F_SaidaProducaoBt.lbQtdPrevista.Text     := oCdsqtdprevista.AsString;
    F_SaidaProducaoBt.lbData.Text            := oCdsdata.AsString;
    F_SaidaProducaoBt.lbHora.Text            := oCdshora.AsString;
    F_SaidaProducaoBt.lbOperador.Text        := oCdsoperador.AsString;
    F_SaidaProducaoBt.lbStatus.Text          := oCdsstatus.AsString;
    F_SaidaProducaoBt.lbProduto.Text         := oCdsdescricao.AsString;

    F_SaidaProducaoBt.cdsDetalheEnvase.Close;
    F_SaidaProducaoBt.cdsDetalheEnvase.Params[0].AsInteger := oCdsIDCONTROLE.AsInteger;
    F_SaidaProducaoBt.cdsDetalheEnvase.Open;

    F_SaidaProducaoBt.cdsSaidaProd.Close;
    F_SaidaProducaoBt.cdsSaidaProd.Params[0].Value := oCdsid.AsInteger;
    F_SaidaProducaoBt.cdsSaidaProd.Params[1].Value := oCdsIDCONTROLE.AsInteger;
    F_SaidaProducaoBt.cdsSaidaProd.Open;


    F_SaidaProducaoBt.cdsTotal.Close;
    F_SaidaProducaoBt.cdsTotal.Params[0].Value := F_SaidaProducaobt.cdsSaidaProdidordemenvase.AsInteger;
    F_SaidaProducaoBt.cdsTotal.Open;

    F_SaidaProducaoBt.edtRequisitada.Text := formatfloat('#,##0.00', oCdsqtd.AsFloat);
    F_SaidaProducaoBt.idControle := oCdsIDCONTROLE.AsInteger;

//    F_SaidaProducaoBt.edtTotal.Text := F_SaidaProducaoBt.cdsTotalTOTAL.AsString;

    F_SaidaProducaoBt.ShowModal;
    F_SaidaProducaoBt.Free;
    oCds.Refresh;
   //end;
end;

procedure TF_SaidaProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   F_Principal.TimerVerificaOPV.Enabled := True;
  inherited;

end;

procedure TF_SaidaProducao.FormCreate(Sender: TObject);
begin
  inherited;
  ocds.Close;
  ocds.Open;


end;

end.
