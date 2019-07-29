unit U_LogErro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Abstrato001, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TF_LogErro = class(TF_Abstrato001)
    Memo: TMemo;
    CheckBox1: TCheckBox;
    AdvGlassButton1: TAdvGlassButton;
    procedure ActSairExecute(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_LogErro: TF_LogErro;

implementation

{$R *.dfm}

procedure TF_LogErro.ActSairExecute(Sender: TObject);
begin
   if CheckBox1.Checked then
   begin
      Application.Terminate;
   end;
  inherited;

end;

procedure TF_LogErro.AdvGlassButton1Click(Sender: TObject);
begin
  inherited;
   Memo.SelectAll;
   Memo.CopyToClipboard;
end;

procedure TF_LogErro.FormShow(Sender: TObject);
begin
  inherited;
   Screen.Cursor := crDefault;
end;

end.
