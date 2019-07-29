unit U_SobreSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Abstrato000, jpeg, dxGDIPlusClasses, ExtCtrls, CurvyControls;

type
  TF_Sobre = class(TF_Abstrato000)
    CurvyMemo1: TCurvyMemo;
    Image1: TImage;
    Image2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Sobre: TF_Sobre;

implementation

{$R *.dfm}

end.
