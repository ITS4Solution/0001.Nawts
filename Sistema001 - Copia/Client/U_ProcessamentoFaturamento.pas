unit U_ProcessamentoFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, Datasnap.DBClient, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls,
  cxNavigator, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxTextEdit, cxImageComboBox,
  Vcl.ImgList, cxCheckBox;

type
  TF_ProcessamentoFaturamento = class(TF_AbstratoGrid)
    AdvGlassButton1: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1PeriodoInicial: TcxGridDBColumn;
    cxGrid1DBTableView1PeriodoFinal: TcxGridDBColumn;
    cxGrid1DBTableView1ValorTotal: TcxGridDBColumn;
    oCdsId: TIntegerField;
    oCdsFantasia: TWideStringField;
    oCdsCpfCgc: TWideStringField;
    oCdsPeriodoInicial: TDateField;
    oCdsPeriodoFinal: TDateField;
    oCdsValorTotal: TFloatField;
    oCdsterminal: TWideStringField;
    cxGrid1DBTableView1terminal: TcxGridDBColumn;
    oCdsDetalhe: TClientDataSet;
    dsDetalhe: TDataSource;
    oCdsDetalheid: TIntegerField;
    oCdsDetalheid_processamento: TIntegerField;
    oCdsDetalhetipo: TWideStringField;
    oCdsDetalhecorretora: TWideStringField;
    oCdsDetalhesegurado: TWideStringField;
    oCdsDetalheterminal: TWideStringField;
    oCdsDetalhevalor: TFloatField;
    oCdsDetalhetipofaturamento: TWideStringField;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2id: TcxGridDBColumn;
    cxGrid1DBTableView2id_processamento: TcxGridDBColumn;
    cxGrid1DBTableView2tipo: TcxGridDBColumn;
    cxGrid1DBTableView2corretora: TcxGridDBColumn;
    cxGrid1DBTableView2segurado: TcxGridDBColumn;
    cxGrid1DBTableView2terminal: TcxGridDBColumn;
    cxGrid1DBTableView2valor: TcxGridDBColumn;
    cxGrid1DBTableView2tipofaturamento: TcxGridDBColumn;
    Panel2: TPanel;
    edtCxPostal: TcxTextEdit;
    Label1: TLabel;
    dtInicial: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    dtFinal: TcxDateEdit;
    AdvGlassButton4: TAdvGlassButton;
    cxImageList1: TcxImageList;
    oCdsliberado: TWideStringField;
    cxGrid1DBTableView1liberado: TcxGridDBColumn;
    cxGrid1DBTableView1CpfCgc: TcxGridDBColumn;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProcessamentoFaturamento: TF_ProcessamentoFaturamento;

implementation

{$R *.dfm}

uses UDM;

procedure TF_ProcessamentoFaturamento.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   if DM.iNivelUsuario < 4 then
   begin
      DM.tmsMSG('Informação','Seu usuário não dá permissão de processar o faturamento !');
   end
   else
   begin
   end;
end;

procedure TF_ProcessamentoFaturamento.AdvGlassButton3Click(Sender: TObject);
begin
  inherited;
 if DM.iNivelUsuario < 4 then
   begin
      DM.tmsMSG('Informação','Seu usuário não dá permissão de liberar o faturamento !');
   end
   else
   begin
      if DM.tmsMSGQ('Informação','Este comando irá liberar todos os faturamentos selecionados. O processo pode ser demorado. Deseja continuar ?') = mrOk then
      begin
         Screen.Cursor := crSQLWait;
         DM.SMGen.ProcessaLiberados;
         Screen.Cursor := crDefault;
      end;
   end;
end;

procedure TF_ProcessamentoFaturamento.AdvGlassButton4Click(Sender: TObject);
begin
  inherited;
   if DM.iNivelUsuario < 4 then
   begin
      DM.tmsMSG('Informação','Seu usuário não dá permissão de processar o faturamento !');
   end
   else
   begin
      if edtCxPostal.Text = '' then
      begin
         if DM.tmsMSGQ('Informação','Este comando irá processar novamente todo o faturamento. Este processo é demorado e poderá deixar seu computador indisponível. Deseja continuar ?') = mrOk then
         begin
            //Chama a rotina de processamento
            Screen.Cursor := crSQLWait;
            DM.SMGen.ProcessamentoFaturamento(-1,'',formatDateTime('yyyy-mm-dd',dtInicial.Date),formatDateTime('yyyy-mm-dd',dtFinal.Date));
            oCds.Refresh;
            oCdsDetalhe.Refresh;
            Screen.Cursor := crDefault;
         end;
      end
      else
      begin
         if DM.tmsMSGQ('Informação','Este comando irá processar o faturamento da caixa postal: ' + edtCxPostal.Text + '. Este processo é demorado e poderá deixar seu computador indisponível. Deseja continuar ?') = mrOk then
         begin
            //Chama a rotina de processamento
            Screen.Cursor := crSQLWait;
            DM.SMGen.ProcessamentoFaturamento(0,edtCxPostal.Text,formatDateTime('yyyy-mm-dd',dtInicial.Date),formatDateTime('yyyy-mm-dd',dtFinal.Date));
            oCds.Refresh;
            oCdsDetalhe.Refresh;
            Screen.Cursor := crDefault;
         end;
      end;
   end;
end;

procedure TF_ProcessamentoFaturamento.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
   oCds.Edit;
   if oCdsLiberado.AsString = 'Sim' then
   begin
      oCdsLiberado.AsString := 'Não';
   end
   else
   begin
      oCdsLiberado.AsString := 'Sim';
   end;
   oCds.Post;
   oCds.ApplyUpdates(-1);
end;

procedure TF_ProcessamentoFaturamento.FormCreate(Sender: TObject);
begin
  inherited;
   oCdsDetalhe.Open;
end;

end.
