unit U_TransportadorasBt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxGDIPlusClasses, dxBevel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, Datasnap.Provider;

type
  TF_TransportadorasBt = class(TF_AbstratoButtons)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label3: TLabel;
    edtCnpj: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    Label12: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label9: TLabel;
    dspTransportadoras: TDataSetProvider;
    oCdsID: TIntegerField;
    oCdsNOME: TStringField;
    oCdsRAZAO_SOCIAL: TStringField;
    oCdsCONTATO: TStringField;
    oCdsCNPJ: TStringField;
    oCdsINSCRICAO_ESTADUAL: TStringField;
    oCdsENDERECO: TStringField;
    oCdsUF: TStringField;
    oCdsMUNICIPIO: TStringField;
    oCdsTELEFONE1: TStringField;
    oCdsTELEFONE2: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_TransportadorasBt: TF_TransportadorasBt;

implementation

{$R *.dfm}

end.
