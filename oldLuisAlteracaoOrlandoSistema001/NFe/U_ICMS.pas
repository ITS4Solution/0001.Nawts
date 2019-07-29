unit U_ICMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, Datasnap.Provider, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls,
  cxGroupBox;

type
  TF_ICMS = class(TF_AbstratoButtons)
    dspICMS: TDataSetProvider;
    oCdsCOD_ICMS: TIntegerField;
    oCdsICMS_UF: TStringField;
    oCdsICMS_ALIQUOTA: TFMTBCDField;
    oCdsICMS_INTERNO: TFMTBCDField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ICMS: TF_ICMS;

implementation

{$R *.dfm}

uses UDm;

end.
