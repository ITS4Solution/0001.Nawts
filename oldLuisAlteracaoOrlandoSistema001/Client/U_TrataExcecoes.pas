unit U_TrataExcecoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Abstrato001, System.Actions,
  Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons;

type
  TF_TrataExcecoes = class(TF_Abstrato001)
    oCds: TClientDataSet;
    oDs: TDataSource;
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ListBox2: TListBox;
    AdvGlassButton1: TAdvGlassButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_TrataExcecoes: TF_TrataExcecoes;

implementation

{$R *.dfm}

uses UDM, UFaturamento;

procedure TF_TrataExcecoes.AdvGlassButton1Click(Sender: TObject);
var
  I: Integer;
begin
  inherited;
   //todo: colocar aqui na tabela de atualizações a deleção destes registros
   While not F_Faturamento.oCdsRelations_ex.Eof do
   begin
      F_Faturamento.oCdsRelations_ex.Delete;
      F_Faturamento.oCdsRelations_ex.Next;
   end;
   F_Faturamento.oCdsRelations_ex.ApplyUpdates(-1);

   F_Faturamento.oCdsRelationsInsert.Open;
   for I := 0 to ListBox2.Count -1 do
   begin
      F_Faturamento.oCdsRelationsInsert.Insert;
      F_Faturamento.oCdsRelationsInsert.FieldByName('rex_terminalp').AsString    := F_Faturamento.sTerminal;
      F_Faturamento.oCdsRelationsInsert.FieldByName('rex_terminals').AsString    := copy(ListBox2.Items[(I)],1,8);
      F_Faturamento.oCdsRelationsInsert.FieldByName('rex_usu_inc').AsString      := dm.sUsuarioLogado;
      F_Faturamento.oCdsRelationsInsert.FieldByName('rex_data_inc').AsDateTime   := now();
      F_Faturamento.oCdsRelationsInsert.Post;
   end;
   F_Faturamento.oCdsRelationsInsert.ApplyUpdates(-1);
   F_Faturamento.oCdsRelations_ex.Close;
   F_Faturamento.oCdsRelations_ex.Open;
   Close;
   //F_Faturamento.oCdsRelations_ex.Refresh;
end;

procedure TF_TrataExcecoes.BitBtn1Click(Sender: TObject);
begin
  inherited;
   if ListBox2.Items.IndexOf(ListBox1.Items[(Listbox1.itemindex)]) <> 0 then
   begin
      ListBox2.Items.Add(ListBox1.Items[(Listbox1.itemindex)]);
   end
   else
   begin
      DM.tmsMSG('Informação','Corretor já existe na listagem !');
   end;
end;

procedure TF_TrataExcecoes.BitBtn2Click(Sender: TObject);
begin
  inherited;
   Listbox2.DeleteSelected;
end;

procedure TF_TrataExcecoes.BitBtn3Click(Sender: TObject);
begin
  inherited;
   ListBox2.Clear;
end;

end.
