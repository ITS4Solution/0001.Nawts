unit U_BaixaProdEnv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlassButton, Vcl.ExtCtrls,
  dxGDIPlusClasses, dxBevel, FileCtrl, Vcl.StdCtrls, cxGraphics, cxControls,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Datasnap.DBClient, XMLIntf, XMLDoc, Xml.xmldom,
  Vcl.ActnMan;

type
  TF_BaixaProdEnv = class(TForm)
    dxBevel2: TdxBevel;
    dxBevel1: TdxBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnXML: TAdvGlassButton;
    edtDir: TEdit;
    Label1: TLabel;
    btnLista: TAdvGlassButton;
    ListBox1: TListBox;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsBaixa: TClientDataSet;
    dsBaixa: TDataSource;
    cdsBaixasNOMEP: TStringField;
    cxGrid1DBTableView1sNOMEP: TcxGridDBColumn;
    cxGrid1DBTableView1sCOD: TcxGridDBColumn;
    btnBaixa: TAdvGlassButton;
    XMLDocument1: TXMLDocument;
    OpenDialog1: TOpenDialog;
    cdsBaixasITEM: TStringField;
    cdsBaixaid: TIntegerField;
    cdsBaixaidop: TIntegerField;
    cdsBaixaidprod: TIntegerField;
    cdsBaixaqtd: TSingleField;
    cdsBaixadataexp: TDateField;
    cdsBaixahoraexp: TTimeField;
    cdsBaixasCOD: TStringField;
    cdsBaixanumnf: TStringField;
    cxGrid1DBTableView1qtd: TcxGridDBColumn;
    cxGrid1DBTableView1sITEM: TcxGridDBColumn;
    cdsBaixanomecliente: TStringField;
    procedure btnXMLClick(Sender: TObject);
    procedure btnListaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
   var
      Dir: string;
      NumNF : String;
      control : Integer;
    const
  SELDIRHELP = 1000;
    { Public declarations }
  end;

var
  F_BaixaProdEnv: TF_BaixaProdEnv;

implementation

{$R *.dfm}

uses UDM;

procedure TF_BaixaProdEnv.btnBaixaClick(Sender: TObject);
var
  I: Integer;
begin
  dm.opencnn;
  if dm.SMGen.VerificaNF(NumNF) = True then
  begin
    ShowMessage('Nota Fiscal já foi inserida!');
  end
  else
  begin
    cdsBaixa.ApplyUpdates(-1);
    cdsBaixa.Close;
    cdsBaixa.Open;
    edtDir.Text := '';
  end;
  dm.closecnn;
end;

procedure TF_BaixaProdEnv.btnListaClick(Sender: TObject);
var
  i : integer;
  EntryNode:IXmlNode;
  Node  : IXmlNode;
  Cod   : String;
  valor : String;
  valor1: Double;
  CNPJ  : String;
  Nome  : String;
  InfoClient : String;
begin
  if edtDir.Text = '' then
  begin
     ShowMessage('Escolha um documente XML.');
  end
  else
  begin
     XMLDocument1.LoadFromFile(edtDir.Text);
     XMLDocument1.Active := True;
     EntryNode  := XMLDocument1.ChildNodes.FindNode('nfeProc').ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe');
     NumNF      := EntryNode.ChildNodes.FindNode('ide').ChildValues['cNF'];
     CNPJ       := EntryNode.ChildNodes.FindNode('dest').ChildValues['CNPJ'];
     Nome       := EntryNode.ChildNodes.FindNode('dest').ChildValues['xNome'];
     InfoClient := CNPJ + ' - ' + Nome;

     for i := 0 to EntryNode.ChildNodes.Count -1 do
     begin
        if EntryNode.ChildNodes[i].NodeName = 'det' then
        begin
           cdsBaixa.Insert;
           Node := EntryNode.ChildNodes[i];
           cdsBaixaid.AsInteger         := dm.SMGen.GetNextIDExp;
           cdsBaixasITEM.AsString       := Node.Attributes['nItem'];
           cdsBaixasNOMEP.AsString      := Node.ChildNodes.FindNode('prod').ChildValues['xProd'];
           cdsBaixasCOD.AsString        := Node.ChildNodes.FindNode('prod').ChildValues['cProd'];
           dm.opencnn;
           cdsBaixaidprod.AsInteger     := dm.SMGen.GetIdProduto(cdsBaixasCOD.AsString);
           dm.closecnn;
           cdsBaixaqtd.AsFloat          := (StrToFloat(StringReplace(Node.ChildNodes.FindNode('prod').ChildValues['qCom'], '.', ',', []))*(-1));
           cdsBaixanumnf.AsString       := NumNF;
           cdsBaixanomecliente.AsString := InfoClient;
           cdsBaixahoraexp.AsDateTime   := now;
           cdsBaixadataexp.AsDateTime   := now;
           cdsBaixa.Post;
           control := control + 1;
        end;
     end;
  end;
end;

procedure TF_BaixaProdEnv.btnXMLClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    XMLDocument1.FileName := OpenDialog1.FileName;
    XMLDocument1.Active := True;
    edtDir.Text := OpenDialog1.FileName;

    with cxGrid1DBTableView1.DataController do
    begin
      BeginUpdate;
      try
        while RecordCount > 0 do
          DeleteRecord(0);
      finally
        EndUpdate;
      end;
    end;
  end;
end;

procedure TF_BaixaProdEnv.FormCreate(Sender: TObject);
begin
  cdsBaixa.Close;
  cdsBaixa.Open;

  with cxGrid1DBTableView1.DataController do
  begin
      BeginUpdate;
      try
        while RecordCount > 0 do
          DeleteRecord(0);
      finally
        EndUpdate;
      end;
  end;
end;

end.
