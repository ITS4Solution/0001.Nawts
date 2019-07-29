inherited F_cadOS: TF_cadOS
  Caption = 'Cadastro de O.S.'
  ClientHeight = 741
  ClientWidth = 800
  ExplicitWidth = 816
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 8
    Top = 8
    Width = 785
    Height = 169
  end
  object Label1: TLabel [1]
    Left = 15
    Top = 12
    Width = 62
    Height = 13
    Caption = 'N'#250'mero O.S.'
    FocusControl = edtNroOS
  end
  object Label2: TLabel [2]
    Left = 15
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Pedido'
    FocusControl = edtPedido
  end
  object Label3: TLabel [3]
    Left = 169
    Top = 12
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label4: TLabel [4]
    Left = 15
    Top = 116
    Width = 24
    Height = 13
    Caption = 'email'
    FocusControl = cxDBTextEdit3
  end
  object Label5: TLabel [5]
    Left = 142
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Data Entrega'
    FocusControl = edtDataEntrega
  end
  object Label6: TLabel [6]
    Left = 279
    Top = 66
    Width = 32
    Height = 13
    Caption = 'Tempo'
    FocusControl = edtTempo
  end
  object edtPedido: TcxDBSpinEdit [10]
    Left = 15
    Top = 80
    DataBinding.DataField = 'pedido'
    DataBinding.DataSource = oDS
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit [11]
    Left = 15
    Top = 132
    DataBinding.DataField = 'email'
    DataBinding.DataSource = oDS
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 770
  end
  object edtDataEntrega: TcxDBDateEdit [12]
    Left = 142
    Top = 80
    DataBinding.DataField = 'dataentrega'
    DataBinding.DataSource = oDS
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 131
  end
  object edtTempo: TcxDBSpinEdit [13]
    Left = 278
    Top = 80
    DataBinding.DataField = 'tempoitem'
    DataBinding.DataSource = oDS
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 121
  end
  object edtCliente: TcxDBLookupComboBox [14]
    Left = 167
    Top = 28
    DataBinding.DataField = 'cliente'
    DataBinding.DataSource = oDS
    ParentFont = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'nome'
    Properties.ListColumns = <
      item
        FieldName = 'nome'
      end
      item
        FieldName = 'cnpj'
      end>
    Properties.ListSource = dsCliente
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 506
  end
  object Panel2: TPanel [15]
    Left = 8
    Top = 183
    Width = 390
    Height = 26
    Caption = '1'#176' Fase'
    TabOrder = 8
  end
  object Panel3: TPanel [16]
    Left = 8
    Top = 209
    Width = 390
    Height = 43
    TabOrder = 9
    object cbProjeto: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'Projeto'
      DataBinding.DataField = 'btkprojeto'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbProjetoClick
      Width = 63
    end
    object tbProjeto: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkprojeto'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtProjeto: TcxDBSpinEdit
      Left = 333
      Top = 16
      DataBinding.DataField = 'tkprojeto'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel4: TPanel [17]
    Left = 8
    Top = 252
    Width = 390
    Height = 43
    TabOrder = 10
    object cbCompra: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'Compra'
      DataBinding.DataField = 'btkcompras'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbCompraClick
      Width = 63
    end
    object tbCompra: TcxDBTrackBar
      Left = 56
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'tkcompras'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtCompra: TcxDBSpinEdit
      Left = 332
      Top = 12
      DataBinding.DataField = 'tkcompras'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel5: TPanel [18]
    Left = 8
    Top = 295
    Width = 390
    Height = 43
    TabOrder = 11
    object cbMP: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'M.P.'
      DataBinding.DataField = 'btkmp'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbMPClick
      Width = 63
    end
    object tbMP: TcxDBTrackBar
      Left = 55
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkmp'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtMP: TcxDBSpinEdit
      Left = 332
      Top = 13
      DataBinding.DataField = 'tkmp'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel6: TPanel [19]
    Left = 8
    Top = 338
    Width = 390
    Height = 27
    Caption = '2'#176' Fase'
    TabOrder = 12
  end
  object Panel8: TPanel [20]
    Left = 8
    Top = 365
    Width = 390
    Height = 43
    TabOrder = 13
    object cbSerralheria: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'Serralh.'
      DataBinding.DataField = 'btkserralheria'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbSerralheriaClick
      Width = 63
    end
    object tbSerralheria: TcxDBTrackBar
      Left = 56
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'tkserralheria'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtSerralheria: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkserralheria'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel9: TPanel [21]
    Left = 8
    Top = 408
    Width = 390
    Height = 43
    TabOrder = 14
    object cbTornoC: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'Torno C'
      DataBinding.DataField = 'btktornoc'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbTornoCClick
      Width = 63
    end
    object tbTornoC: TcxDBTrackBar
      Left = 56
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'tktornoc'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtTornoC: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tktornoc'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel10: TPanel [22]
    Left = 8
    Top = 451
    Width = 390
    Height = 43
    TabOrder = 15
    object cbTornoCNC: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'T. CNC'
      DataBinding.DataField = 'btktornocnc'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbTornoCNCClick
      Width = 63
    end
    object tbTornoCNC: TcxDBTrackBar
      Left = 56
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'tktornocnc'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtTornoCNC: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tktornocnc'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel11: TPanel [23]
    Left = 8
    Top = 494
    Width = 390
    Height = 43
    TabOrder = 16
    object cbFresa: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'Fresa'
      DataBinding.DataField = 'btkfresa'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbFresaClick
      Width = 63
    end
    object tbFresa: TcxDBTrackBar
      Left = 56
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'tkfresa'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtFresa: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkfresa'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel7: TPanel [24]
    Left = 8
    Top = 537
    Width = 390
    Height = 43
    TabOrder = 17
    object cbCentroUsinagem: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'C.Usin.'
      DataBinding.DataField = 'btkcentrousinagem'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbCentroUsinagemClick
      Width = 63
    end
    object tbCentroUsinagem: TcxDBTrackBar
      Left = 56
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'tkcentrousinagem'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtCentroUsinagem: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkcentrousinagem'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel12: TPanel [25]
    Left = 8
    Top = 580
    Width = 390
    Height = 43
    TabOrder = 18
    object cbBancada: TcxDBCheckBox
      Left = 0
      Top = 16
      Caption = 'Bancad'
      DataBinding.DataField = 'btkbancada'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbBancadaClick
      Width = 63
    end
    object tbBancada: TcxDBTrackBar
      Left = 56
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'tkbancada'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtBancada: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkbancada'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel13: TPanel [26]
    Left = 8
    Top = 623
    Width = 390
    Height = 43
    TabOrder = 19
    object cbTT: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'TT'
      DataBinding.DataField = 'btktt'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbTTClick
      Width = 63
    end
    object tbTT: TcxDBTrackBar
      Left = 55
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tktt'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtTT: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tktt'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel14: TPanel [27]
    Left = 404
    Top = 183
    Width = 390
    Height = 26
    Caption = '3'#176' Fase'
    TabOrder = 20
  end
  object Panel15: TPanel [28]
    Left = 404
    Top = 209
    Width = 390
    Height = 43
    TabOrder = 21
    object cbRetPlan: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'Ret. Plan'
      DataBinding.DataField = 'btkretpla'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbRetPlanClick
      Width = 63
    end
    object tbRetPlan: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkretpla'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtRetPlan: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkretpla'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel16: TPanel [29]
    Left = 404
    Top = 252
    Width = 390
    Height = 43
    TabOrder = 22
    object cbRetCil: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'Ret. Cil'
      DataBinding.DataField = 'btkretcil'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbRetCilClick
      Width = 63
    end
    object tbRetCil: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkretcil'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtRetCil: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkretcil'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel17: TPanel [30]
    Left = 404
    Top = 295
    Width = 390
    Height = 43
    TabOrder = 23
    object cbErosaoF: TcxDBCheckBox
      Left = 0
      Top = 11
      Caption = 'Eros. F'
      DataBinding.DataField = 'btkerosaof'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbErosaoFClick
      Width = 63
    end
    object tbErosaoF: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkerosaof'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtErosaoF: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkerosaof'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel18: TPanel [31]
    Left = 404
    Top = 338
    Width = 390
    Height = 43
    TabOrder = 24
    object cbErosaoP: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'Eros. P'
      DataBinding.DataField = 'btkerosaop'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbErosaoPClick
      Width = 63
    end
    object tbErosaoP: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkerosaop'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtErosaoP: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkerosaop'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel19: TPanel [32]
    Left = 404
    Top = 381
    Width = 390
    Height = 43
    TabOrder = 25
    object cbHSM: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'HSM'
      DataBinding.DataField = 'btkhsm'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbHSMClick
      Width = 63
    end
    object tbHSM: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkhsm'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtHSM: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkhsm'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel20: TPanel [33]
    Left = 404
    Top = 424
    Width = 390
    Height = 26
    Caption = '4'#176' Fase'
    TabOrder = 26
  end
  object Panel21: TPanel [34]
    Left = 404
    Top = 450
    Width = 390
    Height = 43
    TabOrder = 27
    object cbMontagem: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'Mont.'
      DataBinding.DataField = 'btkmontagem'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      OnClick = cbMontagemClick
      Width = 63
    end
    object tbMontagem: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkmontagem'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtMontagem: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkmontagem'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel22: TPanel [35]
    Left = 404
    Top = 493
    Width = 390
    Height = 43
    TabOrder = 28
    object cbInspecao: TcxDBCheckBox
      Left = 0
      Top = 10
      Caption = 'Inspe'#231'.'
      DataBinding.DataField = 'btkinspecao'
      DataBinding.DataSource = oDS
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      Width = 63
    end
    object tbInspecao: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkinspecao'
      DataBinding.DataSource = oDS
      Enabled = False
      Properties.Max = 100
      TabOrder = 1
      Height = 29
      Width = 271
    end
    object edtInspecao: TcxDBSpinEdit
      Left = 332
      Top = 11
      DataBinding.DataField = 'tkinspecao'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 2
      Width = 50
    end
  end
  object Panel23: TPanel [36]
    Left = 404
    Top = 536
    Width = 390
    Height = 43
    TabOrder = 29
    object cxDBTrackBar18: TcxDBTrackBar
      Left = 56
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'tkrefugo'
      DataBinding.DataSource = oDS
      Properties.Max = 100
      TabOrder = 0
      Height = 29
      Width = 271
    end
    object cxDBSpinEdit20: TcxDBSpinEdit
      Left = 332
      Top = 12
      DataBinding.DataField = 'tkrefugo'
      DataBinding.DataSource = oDS
      Enabled = False
      TabOrder = 1
      Width = 50
    end
  end
  object edtNroOS: TcxDBTextEdit [37]
    Left = 15
    Top = 28
    DataBinding.DataField = 'numeroos'
    DataBinding.DataSource = oDS
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 146
  end
  inherited StatusBar1: TStatusBar
    Top = 722
    Width = 800
    ExplicitTop = 722
    ExplicitWidth = 800
  end
  inherited Panel1: TPanel
    Top = 667
    Width = 800
    TabOrder = 7
    ExplicitTop = 667
    ExplicitWidth = 800
    inherited btnsair: TAdvGlassButton
      Left = 694
      ExplicitLeft = 694
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspOrdemServicoCad'
    RemoteServer = DM.ShCoGen
    Left = 560
    Top = 80
    object oCdsid: TLargeintField
      FieldName = 'id'
    end
    object oCdsnumeroos: TStringField
      FieldName = 'numeroos'
      Size = 15
    end
    object oCdspedido: TIntegerField
      FieldName = 'pedido'
    end
    object oCdscliente: TStringField
      FieldName = 'cliente'
      Size = 45
    end
    object oCdsemail: TStringField
      FieldName = 'email'
      Size = 1000
    end
    object oCdsdataentrega: TDateField
      FieldName = 'dataentrega'
    end
    object oCdstempoitem: TIntegerField
      FieldName = 'tempoitem'
    end
    object oCdstkprojeto: TIntegerField
      FieldName = 'tkprojeto'
    end
    object oCdstkcompras: TIntegerField
      FieldName = 'tkcompras'
    end
    object oCdstkmp: TIntegerField
      FieldName = 'tkmp'
    end
    object oCdsbtkprojeto: TSmallintField
      FieldName = 'btkprojeto'
    end
    object oCdsbtkcompras: TSmallintField
      FieldName = 'btkcompras'
    end
    object oCdsbtkmp: TSmallintField
      FieldName = 'btkmp'
    end
    object oCdstkserralheria: TIntegerField
      FieldName = 'tkserralheria'
    end
    object oCdsbtkserralheria: TSmallintField
      FieldName = 'btkserralheria'
    end
    object oCdstktornoc: TIntegerField
      FieldName = 'tktornoc'
    end
    object oCdsbtktornoc: TSmallintField
      FieldName = 'btktornoc'
    end
    object oCdstktornocnc: TIntegerField
      FieldName = 'tktornocnc'
    end
    object oCdsbtktornocnc: TSmallintField
      FieldName = 'btktornocnc'
    end
    object oCdstkfresa: TIntegerField
      FieldName = 'tkfresa'
    end
    object oCdsbtkfresa: TSmallintField
      FieldName = 'btkfresa'
    end
    object oCdstkcentrousinagem: TIntegerField
      FieldName = 'tkcentrousinagem'
    end
    object oCdsbtkcentrousinagem: TSmallintField
      FieldName = 'btkcentrousinagem'
    end
    object oCdstkbancada: TIntegerField
      FieldName = 'tkbancada'
    end
    object oCdsbtkbancada: TSmallintField
      FieldName = 'btkbancada'
    end
    object oCdstktt: TIntegerField
      FieldName = 'tktt'
    end
    object oCdsbtktt: TSmallintField
      FieldName = 'btktt'
    end
    object oCdstkretpla: TIntegerField
      FieldName = 'tkretpla'
    end
    object oCdsbtkretpla: TSmallintField
      FieldName = 'btkretpla'
    end
    object oCdstkretcil: TIntegerField
      FieldName = 'tkretcil'
    end
    object oCdsbtkretcil: TSmallintField
      FieldName = 'btkretcil'
    end
    object oCdstkerosaof: TIntegerField
      FieldName = 'tkerosaof'
    end
    object oCdsbtkerosaof: TSmallintField
      FieldName = 'btkerosaof'
    end
    object oCdstkerosaop: TIntegerField
      FieldName = 'tkerosaop'
    end
    object oCdsbtkerosaop: TSmallintField
      FieldName = 'btkerosaop'
    end
    object oCdstkhsm: TIntegerField
      FieldName = 'tkhsm'
    end
    object oCdsbtkhsm: TSmallintField
      FieldName = 'btkhsm'
    end
    object oCdstkmontagem: TIntegerField
      FieldName = 'tkmontagem'
    end
    object oCdsbtkmontagem: TSmallintField
      FieldName = 'btkmontagem'
    end
    object oCdstkinspecao: TIntegerField
      FieldName = 'tkinspecao'
    end
    object oCdsbtkinspecao: TSmallintField
      FieldName = 'btkinspecao'
    end
    object oCdstkrefugo: TIntegerField
      FieldName = 'tkrefugo'
    end
    object oCdsultimaalteracao: TDateField
      FieldName = 'ultimaalteracao'
    end
    object oCdscnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
  end
  inherited oDS: TDataSource
    Left = 592
    Top = 80
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    RemoteServer = DM.ShCoGen
    Left = 648
    Top = 80
    object cdsClientenome: TStringField
      FieldName = 'nome'
      Size = 45
    end
    object cdsClientecnpj: TStringField
      FieldName = 'cnpj'
      Size = 18
    end
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = cdsCliente
    Left = 712
    Top = 80
  end
end
