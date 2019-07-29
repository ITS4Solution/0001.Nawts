unit U_CadOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_AbstratoButtons, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit,
  cxSpinEdit, cxTextEdit, Vcl.StdCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTrackBar, cxDBTrackBar, cxCheckBox, Soap.SOAPDomConv,
  Soap.OPToSOAPDomConv,strUtils, dxGDIPlusClasses, dxBevel;

type
  TF_cadOS = class(TF_AbstratoButtons)
    oCdsid: TLargeintField;
    oCdsnumeroos: TStringField;
    oCdspedido: TIntegerField;
    oCdscliente: TStringField;
    oCdsemail: TStringField;
    oCdsdataentrega: TDateField;
    oCdstempoitem: TIntegerField;
    oCdstkprojeto: TIntegerField;
    oCdstkcompras: TIntegerField;
    oCdstkmp: TIntegerField;
    oCdsbtkprojeto: TSmallintField;
    oCdsbtkcompras: TSmallintField;
    oCdsbtkmp: TSmallintField;
    oCdstkserralheria: TIntegerField;
    oCdsbtkserralheria: TSmallintField;
    oCdstktornoc: TIntegerField;
    oCdsbtktornoc: TSmallintField;
    oCdstktornocnc: TIntegerField;
    oCdsbtktornocnc: TSmallintField;
    oCdstkfresa: TIntegerField;
    oCdsbtkfresa: TSmallintField;
    oCdstkcentrousinagem: TIntegerField;
    oCdsbtkcentrousinagem: TSmallintField;
    oCdstkbancada: TIntegerField;
    oCdsbtkbancada: TSmallintField;
    oCdstktt: TIntegerField;
    oCdsbtktt: TSmallintField;
    oCdstkretpla: TIntegerField;
    oCdsbtkretpla: TSmallintField;
    oCdstkretcil: TIntegerField;
    oCdsbtkretcil: TSmallintField;
    oCdstkerosaof: TIntegerField;
    oCdsbtkerosaof: TSmallintField;
    oCdstkerosaop: TIntegerField;
    oCdsbtkerosaop: TSmallintField;
    oCdstkhsm: TIntegerField;
    oCdsbtkhsm: TSmallintField;
    oCdstkmontagem: TIntegerField;
    oCdsbtkmontagem: TSmallintField;
    oCdstkinspecao: TIntegerField;
    oCdsbtkinspecao: TSmallintField;
    oCdstkrefugo: TIntegerField;
    Label1: TLabel;
    edtNroOS: TcxDBTextEdit;
    Label2: TLabel;
    edtPedido: TcxDBSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    edtDataEntrega: TcxDBDateEdit;
    Label6: TLabel;
    edtTempo: TcxDBSpinEdit;
    Bevel1: TBevel;
    cdsCliente: TClientDataSet;
    cdsClientenome: TStringField;
    cdsClientecnpj: TStringField;
    edtCliente: TcxDBLookupComboBox;
    dsCliente: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    cbProjeto: TcxDBCheckBox;
    tbProjeto: TcxDBTrackBar;
    edtProjeto: TcxDBSpinEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    cbCompra: TcxDBCheckBox;
    tbCompra: TcxDBTrackBar;
    edtCompra: TcxDBSpinEdit;
    cbMP: TcxDBCheckBox;
    tbMP: TcxDBTrackBar;
    edtMP: TcxDBSpinEdit;
    Panel6: TPanel;
    Panel8: TPanel;
    cbSerralheria: TcxDBCheckBox;
    tbSerralheria: TcxDBTrackBar;
    edtSerralheria: TcxDBSpinEdit;
    Panel9: TPanel;
    cbTornoC: TcxDBCheckBox;
    tbTornoC: TcxDBTrackBar;
    edtTornoC: TcxDBSpinEdit;
    Panel10: TPanel;
    cbTornoCNC: TcxDBCheckBox;
    tbTornoCNC: TcxDBTrackBar;
    edtTornoCNC: TcxDBSpinEdit;
    Panel11: TPanel;
    cbFresa: TcxDBCheckBox;
    tbFresa: TcxDBTrackBar;
    edtFresa: TcxDBSpinEdit;
    Panel7: TPanel;
    cbCentroUsinagem: TcxDBCheckBox;
    tbCentroUsinagem: TcxDBTrackBar;
    edtCentroUsinagem: TcxDBSpinEdit;
    Panel12: TPanel;
    cbBancada: TcxDBCheckBox;
    tbBancada: TcxDBTrackBar;
    edtBancada: TcxDBSpinEdit;
    Panel13: TPanel;
    cbTT: TcxDBCheckBox;
    tbTT: TcxDBTrackBar;
    edtTT: TcxDBSpinEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    cbRetPlan: TcxDBCheckBox;
    tbRetPlan: TcxDBTrackBar;
    edtRetPlan: TcxDBSpinEdit;
    Panel16: TPanel;
    cbRetCil: TcxDBCheckBox;
    tbRetCil: TcxDBTrackBar;
    edtRetCil: TcxDBSpinEdit;
    Panel17: TPanel;
    cbErosaoF: TcxDBCheckBox;
    tbErosaoF: TcxDBTrackBar;
    edtErosaoF: TcxDBSpinEdit;
    Panel18: TPanel;
    cbErosaoP: TcxDBCheckBox;
    tbErosaoP: TcxDBTrackBar;
    edtErosaoP: TcxDBSpinEdit;
    Panel19: TPanel;
    cbHSM: TcxDBCheckBox;
    tbHSM: TcxDBTrackBar;
    edtHSM: TcxDBSpinEdit;
    Panel20: TPanel;
    Panel21: TPanel;
    cbMontagem: TcxDBCheckBox;
    tbMontagem: TcxDBTrackBar;
    edtMontagem: TcxDBSpinEdit;
    Panel22: TPanel;
    cbInspecao: TcxDBCheckBox;
    tbInspecao: TcxDBTrackBar;
    edtInspecao: TcxDBSpinEdit;
    Panel23: TPanel;
    cxDBTrackBar18: TcxDBTrackBar;
    cxDBSpinEdit20: TcxDBSpinEdit;
    oCdsultimaalteracao: TDateField;
    oCdscnpj: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cbProjetoClick(Sender: TObject);
    procedure cbCompraClick(Sender: TObject);
    procedure cbMPClick(Sender: TObject);
    procedure cbSerralheriaClick(Sender: TObject);
    procedure cbTornoCClick(Sender: TObject);
    procedure cbTornoCNCClick(Sender: TObject);
    procedure cbFresaClick(Sender: TObject);
    procedure cbCentroUsinagemClick(Sender: TObject);
    procedure cbBancadaClick(Sender: TObject);
    procedure cbTTClick(Sender: TObject);
    procedure cbRetPlanClick(Sender: TObject);
    procedure cbRetCilClick(Sender: TObject);
    procedure cbErosaoFClick(Sender: TObject);
    procedure cbErosaoPClick(Sender: TObject);
    procedure cbHSMClick(Sender: TObject);
    procedure cbMontagemClick(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_cadOS: TF_cadOS;

implementation

{$R *.dfm}

uses UDM;

procedure TF_cadOS.ActNovoExecute(Sender: TObject);
begin
   dm.SMGen.FechaConexaoServer;
   dm.SMGen.AbreConexaoServer;
  inherited;

end;

procedure TF_cadOS.ActSalvarExecute(Sender: TObject);
Var
   sCnpj : String;
begin
   if (edtNroOS.Text = '') or (edtCliente.Text = '') or (edtPedido.Text = '')
   or (edtDataEntrega.Text = '') or (edtTempo.Text = '') then
   begin
      DM.tmsMSG('Informação','Todos os campos do cabeçalho devem estar preenchidos !');
   end
   else
   begin
      oCdsultimaalteracao.AsDateTime := now();
      sCnpj := AnsiReplaceStr(cdsClientecnpj.AsString,'.','');
      sCnpj := AnsiReplaceStr(sCnpj,'/','');
      sCnpj := AnsiReplaceStr(sCnpj,'-','');
      oCdscnpj.AsString := sCnpj;
      dm.SMGen.FechaConexaoServer;
      dm.SMGen.AbreConexaoServer;
      inherited;
   end;

end;

procedure TF_cadOS.cbBancadaClick(Sender: TObject);
begin
  inherited;
   if cbBancada.Checked then
   begin
      tbBancada.Enabled    := True;
      edtBancada.Enabled   := True;
   end
   else
   begin
      tbBancada.Enabled    := False;
      edtBancada.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbCentroUsinagemClick(Sender: TObject);
begin
  inherited;
   if cbCentroUsinagem.Checked then
   begin
      tbCentroUsinagem.Enabled    := True;
      edtCentroUsinagem.Enabled   := True;
   end
   else
   begin
      tbCentroUsinagem.Enabled    := False;
      edtCentroUsinagem.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbCompraClick(Sender: TObject);
begin
  inherited;
   if cbCompra.Checked then
   begin
      tbCompra.Enabled    := True;
      edtCompra.Enabled   := True;
   end
   else
   begin
      tbCompra.Enabled    := False;
      edtCompra.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbErosaoFClick(Sender: TObject);
begin
  inherited;
   if cbErosaoF.Checked then
   begin
      tbErosaoF.Enabled    := True;
      edtErosaoF.Enabled   := True;
   end
   else
   begin
      tbErosaoF.Enabled    := False;
      edtErosaoF.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbErosaoPClick(Sender: TObject);
begin
  inherited;
   if cbErosaoP.Checked then
   begin
      tbErosaoP.Enabled    := True;
      edtErosaoP.Enabled   := True;
   end
   else
   begin
      tbErosaoP.Enabled    := False;
      edtErosaoP.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbFresaClick(Sender: TObject);
begin
  inherited;
   if cbFresa.Checked then
   begin
      tbFresa.Enabled    := True;
      edtFresa.Enabled   := True;
   end
   else
   begin
      tbFresa.Enabled    := False;
      edtFresa.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbHSMClick(Sender: TObject);
begin
  inherited;
   if cbHSM.Checked then
   begin
      tbHSM.Enabled    := True;
      edtHSM.Enabled   := True;
   end
   else
   begin
      tbHSM.Enabled    := False;
      edtHSM.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbMontagemClick(Sender: TObject);
begin
  inherited;
   if cbMontagem.Checked then
   begin
      tbMontagem.Enabled    := True;
      edtMontagem.Enabled   := True;
   end
   else
   begin
      tbMontagem.Enabled    := False;
      edtMontagem.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbMPClick(Sender: TObject);
begin
  inherited;
   if cbMP.Checked then
   begin
      tbMP.Enabled    := True;
      edtMP.Enabled   := True;
   end
   else
   begin
      tbMP.Enabled    := False;
      edtMP.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbProjetoClick(Sender: TObject);
begin
  inherited;
   if cbProjeto.Checked then
   begin
      tbProjeto.Enabled    := True;
      edtProjeto.Enabled   := True;
   end
   else
   begin
      tbProjeto.Enabled    := False;
      edtProjeto.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbRetCilClick(Sender: TObject);
begin
  inherited;
   if cbRetCil.Checked then
   begin
      tbRetCil.Enabled    := True;
      edtRetCil.Enabled   := True;
   end
   else
   begin
      tbRetCil.Enabled    := False;
      edtRetCil.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbRetPlanClick(Sender: TObject);
begin
  inherited;
   if cbRetPlan.Checked then
   begin
      tbRetPlan.Enabled    := True;
      edtRetPlan.Enabled   := True;
   end
   else
   begin
      tbRetPlan.Enabled    := False;
      edtRetPlan.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbSerralheriaClick(Sender: TObject);
begin
  inherited;
   if cbSerralheria.Checked then
   begin
      tbSerralheria.Enabled    := True;
      edtSerralheria.Enabled   := True;
   end
   else
   begin
      tbSerralheria.Enabled    := False;
      edtSerralheria.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbTornoCClick(Sender: TObject);
begin
  inherited;
   if cbTornoC.Checked then
   begin
      tbTornoC.Enabled    := True;
      edtTornoC.Enabled   := True;
   end
   else
   begin
      tbTornoC.Enabled    := False;
      edtTornoC.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbTornoCNCClick(Sender: TObject);
begin
  inherited;
   if cbTornoCNC.Checked then
   begin
      tbTornoCNC.Enabled    := True;
      edtTornoCNC.Enabled   := True;
   end
   else
   begin
      tbTornoCNC.Enabled    := False;
      edtTornoCNC.Enabled   := False;
   end;
end;

procedure TF_cadOS.cbTTClick(Sender: TObject);
begin
  inherited;
   if cbTT.Checked then
   begin
      tbTT.Enabled    := True;
      edtTT.Enabled   := True;
   end
   else
   begin
      tbTT.Enabled    := False;
      edtTT.Enabled   := False;
   end;
end;

procedure TF_cadOS.FormCreate(Sender: TObject);
begin
  inherited;
   cdsCliente.Open;
   if cbProjeto.Checked          then tbProjeto.Enabled        := True else tbProjeto.Enabled         := False;
   if cbCompra.Checked           then tbCompra.Enabled         := True else tbCompra.Enabled          := False;
   if cbMP.Checked               then tbMP.Enabled             := True else tbMP.Enabled              := False;
   if cbSerralheria.Checked      then tbSerralheria.Enabled    := True else tbSerralheria.Enabled     := False;
   if cbTornoC.Checked           then tbTornoC.Enabled         := True else tbTornoC.Enabled          := False;
   if cbTornoCNC.Checked         then tbTornoCNC.Enabled       := True else tbTornoCNC.Enabled        := False;
   if cbFresa.Checked            then tbFresa.Enabled          := True else tbFresa.Enabled           := False;
   if cbCentroUsinagem.Checked   then tbCentroUsinagem.Enabled := True else tbCentroUsinagem.Enabled  := False;
   if cbBancada.Checked          then tbBancada.Enabled        := True else tbBancada.Enabled         := False;
   if cbTT.Checked               then tbTT.Enabled             := True else tbTT.Enabled              := False;
   if cbRetPlan.Checked          then tbRetPlan.Enabled        := True else tbRetPlan.Enabled         := False;
   if cbRetCil.Checked           then tbRetCil.Enabled         := True else tbRetCil.Enabled          := False;
   if cbErosaoF.Checked          then tbErosaoF.Enabled        := True else tbErosaoF.Enabled         := False;
   if cbErosaoP.Checked          then tbErosaoP.Enabled        := True else tbErosaoP.Enabled         := False;
   if cbHSM.Checked              then tbHSM.Enabled            := True else tbHSM.Enabled             := False;
   if cbMontagem.Checked         then tbMontagem.Enabled       := True else tbMontagem.Enabled        := False;
   if cbInspecao.Checked         then tbInspecao.Enabled       := True else tbInspecao.Enabled        := False;
end;

end.
