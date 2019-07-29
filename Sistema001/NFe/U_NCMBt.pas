unit U_NCMBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Datasnap.Provider, Data.DB, Datasnap.DBClient,
  System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.StdCtrls;

type
  TF_NCMBt = class(TF_AbstratoButtons)
    dspNCM: TDataSetProvider;
    oCdsCOD_NCM: TIntegerField;
    oCdsNCM_CODIGO: TStringField;
    oCdsNCM_EX: TStringField;
    oCdsNCM_DESCRICAO: TStringField;
    oCdsNCM_ALIQNAC: TFMTBCDField;
    oCdsNCM_ALIQIMP: TFMTBCDField;
    oCdsNCM_ALIQESTADUAL: TFMTBCDField;
    oCdsNCM_ALIQMUNICIPAL: TFMTBCDField;
    oCdsNCM_CEST: TStringField;
    oCdsNCM_UF: TStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_NCMBt: TF_NCMBt;

implementation

{$R *.dfm}

uses UDm;

end.
