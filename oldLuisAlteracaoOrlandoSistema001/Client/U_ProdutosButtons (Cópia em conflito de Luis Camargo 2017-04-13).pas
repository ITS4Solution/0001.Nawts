unit U_ProdutosButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Vcl.DBCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TF_ProdutosButtons = class(TF_AbstratoButtons)
    oCdsid: TIntegerField;
    oCdscodfornecedor: TIntegerField;
    oCdscodproduto: TIntegerField;
    oCdsprocedencia: TStringField;
    oCdsdescricao: TStringField;
    oCdsgrupopedido: TStringField;
    oCdsnumeropa: TIntegerField;
    oCdsnomeprodutopedido: TStringField;
    oCdsncm: TStringField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    DBComboBox1: TDBComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    oCdsGrupoProdutos: TClientDataSet;
    dsGrupoProdutos: TDataSource;
    oCdsgrupo: TIntegerField;
    oCdsGrupoProdutosid: TIntegerField;
    oCdsGrupoProdutoscodgrupo: TIntegerField;
    oCdsGrupoProdutosnomegrupo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ProdutosButtons: TF_ProdutosButtons;

implementation

{$R *.dfm}

uses UDM;


procedure TF_ProdutosButtons.FormCreate(Sender: TObject);
begin
   oCdsGrupoProdutos.Close;
   oCdsGrupoProdutos.Open;
  inherited;

end;

procedure TF_ProdutosButtons.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
