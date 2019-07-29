unit U_ComunicadoInterno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls, dxBevel,
  Data.DB, Datasnap.DBClient, Vcl.ComCtrls, AdvGlassButton, Vcl.StdCtrls,
  Vcl.DBCtrls, System.Actions, Vcl.ActnList, frxClass, frxDBSet;

type
  TF_ComunicadoInterno = class(TForm)
    dxBevel1: TdxBevel;
    dxBevel2: TdxBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnNovo: TAdvGlassButton;
    StatusBar1: TStatusBar;
    cdsComunicado: TClientDataSet;
    dsComunicado: TDataSource;
    cdsComunicadoseqci: TIntegerField;
    cdsComunicadodata: TDateField;
    cdsComunicadoidusuario: TIntegerField;
    cdsComunicadoobs: TStringField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    ActionList: TActionList;
    ActSair: TAction;
    reportComunicado: TfrxReport;
    frxComunicado: TfrxDBDataset;
    cdsComunicadosNome: TStringField;
    cdsComunicadoid: TIntegerField;
    cdsComunicadousado: TIntegerField;
    lblMen: TLabel;
    lblCod2: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ComunicadoInterno: TF_ComunicadoInterno;

implementation

{$R *.dfm}

uses UDM;

procedure TF_ComunicadoInterno.btnNovoClick(Sender: TObject);
begin
   if (DbMemo1.Text = '') = true then
   begin
      showmessage ('Digite no campo seu comunicado');
      exit;
   end;

  dm.opencnn;
  cdsComunicadoid.AsInteger := dm.SMGen.GetNextCDSCI;
  cdsComunicadoseqci.AsInteger := dm.SMGen.GetNextIdCI;
  cdsComunicadodata.AsDateTime := StrtoDate(Formatdatetime('dd/mm/yyyy', Now()));
  cdsComunicadoidusuario.AsInteger := DM.idUser;
  cdsComunicadosNome.AsString := DM.SMGen.GetNome(dm.idUser);
  cdsComunicadousado.AsInteger := 0;
  dm.closecnn;

  lblCod2.Caption := inttostr(cdsComunicadoseqci.AsInteger);

  lblMen.Visible := True;
  lblCod2.Visible := True;

  cdsComunicado.Post;
  cdsComunicado.ApplyUpdates(-1);

  reportComunicado.PrepareReport();
  reportComunicado.ShowReport();
end;

procedure TF_ComunicadoInterno.FormCreate(Sender: TObject);
begin
  cdsComunicado.Close;
  cdsComunicado.Open;
  cdsComunicado.Insert;
end;

end.
