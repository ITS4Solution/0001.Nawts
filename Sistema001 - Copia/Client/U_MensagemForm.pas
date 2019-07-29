unit U_MensagemForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Abstrato000, AdvMemo, W7Classes, W7Panels, ExtCtrls, AdvPanel, CurvyControls, StdCtrls, AeroButtons;

type
  TF_MensagemForm = class(TF_Abstrato000)
    TMSCaption: TAdvPanel;
    Image1: TImage;
    TMSMemo: TCurvyMemo;
    AdvPanel1: TAdvPanel;
    AeroButton2: TAeroButton;
    procedure AeroButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MensagemForm: TF_MensagemForm;

implementation

{$R *.dfm}

procedure TF_MensagemForm.AeroButton2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

end.
