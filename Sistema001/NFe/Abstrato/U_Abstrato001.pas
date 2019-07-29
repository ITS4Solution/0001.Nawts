unit U_Abstrato001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnList, System.Actions, Vcl.ExtCtrls, AdvGlassButton, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TF_Abstrato001 = class(TForm)
    StatusBar1: TStatusBar;
    ActionList: TActionList;
    Panel1: TPanel;
    btnsair: TAdvGlassButton;
    ActSair: TAction;
    procedure ActSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Abstrato001: TF_Abstrato001;

implementation

{$R *.dfm}

procedure TF_Abstrato001.ActSairExecute(Sender: TObject);
begin
   Close;
end;

end.
