unit U_FornecedorGrid;

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
  TF_FornecedorGrid = class(TF_AbstratoGrid)
    oCdscpf_cnpj: TStringField;
    oCdsnome_razaosocial: TStringField;
    oCdstppessoa: TStringField;
    oCdsobs: TMemoField;
    AdvGlassButton1: TAdvGlassButton;
    oCdsid: TIntegerField;
    oCdscodfornecedor: TIntegerField;
    oCdsdatacad: TDateField;
    oCdscargo: TStringField;
    oCdsfone1: TStringField;
    oCdsfone2: TStringField;
    oCdsfone3: TStringField;
    oCdsfone4: TStringField;
    oCdsuf: TStringField;
    oCdscidade: TStringField;
    oCdsie: TStringField;
    oCdscontato: TStringField;
    oCdsendereco: TStringField;
    oCdsfax: TStringField;
    oCdscep: TStringField;
    oCdsemail: TStringField;
    cxGrid1DBTableView1cpf_cnpj: TcxGridDBColumn;
    cxGrid1DBTableView1nome_razaosocial: TcxGridDBColumn;
    cxGrid1DBTableView1tppessoa: TcxGridDBColumn;
    cxGrid1DBTableView1obs: TcxGridDBColumn;
    cxGrid1DBTableView1codfornecedor: TcxGridDBColumn;
    cxGrid1DBTableView1datacad: TcxGridDBColumn;
    cxGrid1DBTableView1cargo: TcxGridDBColumn;
    cxGrid1DBTableView1fone1: TcxGridDBColumn;
    cxGrid1DBTableView1fone2: TcxGridDBColumn;
    cxGrid1DBTableView1fone3: TcxGridDBColumn;
    cxGrid1DBTableView1fone4: TcxGridDBColumn;
    cxGrid1DBTableView1uf: TcxGridDBColumn;
    cxGrid1DBTableView1cidade: TcxGridDBColumn;
    cxGrid1DBTableView1ie: TcxGridDBColumn;
    cxGrid1DBTableView1contato: TcxGridDBColumn;
    cxGrid1DBTableView1endereco: TcxGridDBColumn;
    cxGrid1DBTableView1fax: TcxGridDBColumn;
    cxGrid1DBTableView1cep: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_FornecedorGrid: TF_FornecedorGrid;

implementation

{$R *.dfm}

uses UDM, U_fornecedorButtons;

procedure TF_FornecedorGrid.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   F_FornecedorButtons := TF_FornecedorButtons.Create(nil);
   F_FornecedorButtons.oCds.Insert;
   F_FornecedorButtons.ShowModal;
   F_FornecedorButtons.Free;
   oCds.Refresh;
end;

procedure TF_FornecedorGrid.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   if oCds.RecordCount > 0 then
   begin
      F_FornecedorButtons := TF_FornecedorButtons.Create(nil);
      F_FornecedorButtons.oCds.Locate('id',oCdsid.AsInteger,[]);
      F_FornecedorButtons.ShowModal;
      F_FornecedorButtons.Free;
      oCds.Refresh;
   end;
end;

end.
