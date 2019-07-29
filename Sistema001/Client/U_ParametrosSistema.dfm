inherited F_ParametrosSistema: TF_ParametrosSistema
  Caption = 'Par'#226'metros do Sistema'
  ClientHeight = 602
  ClientWidth = 627
  ExplicitTop = -72
  ExplicitWidth = 643
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox [3]
    Left = 4
    Top = 132
    Caption = ' Faturamento '
    TabOrder = 3
    Height = 109
    Width = 617
    object Label3: TLabel
      Left = 16
      Top = 29
      Width = 127
      Height = 13
      Caption = 'Dia padr'#227'o de fechamento'
      FocusControl = cxDBSpinEdit1
    end
    object Bevel1: TBevel
      Left = 224
      Top = 14
      Width = 18
      Height = 91
      Shape = bsLeftLine
    end
    object Label4: TLabel
      Left = 306
      Top = 29
      Width = 109
      Height = 13
      Caption = 'Rodar faturamento em'
      FocusControl = cxDBSpinEdit1
    end
    object Label5: TLabel
      Left = 480
      Top = 29
      Width = 114
      Height = 13
      Caption = 'dias ap'#243's o fechamento'
      FocusControl = cxDBSpinEdit1
    end
    object Label6: TLabel
      Left = 248
      Top = 53
      Width = 167
      Height = 13
      Caption = 'N'#227'o cobra caixa postal ativada at'#233
      FocusControl = cxDBSpinEdit1
    end
    object Label7: TLabel
      Left = 480
      Top = 53
      Width = 124
      Height = 13
      Caption = 'dias antes do fechamento'
      FocusControl = cxDBSpinEdit1
    end
    object Label8: TLabel
      Left = 233
      Top = 77
      Width = 184
      Height = 13
      Caption = 'N'#227'o cobra caixa postal desativada at'#233
      FocusControl = cxDBSpinEdit1
    end
    object Label9: TLabel
      Left = 480
      Top = 77
      Width = 114
      Height = 13
      Caption = 'dias ap'#243's o fechamento'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 149
      Top = 26
      DataBinding.DataField = 'DiaPadraoFechamento'
      DataBinding.DataSource = oDS
      Properties.MaxValue = 31.000000000000000000
      Properties.MinValue = 1.000000000000000000
      TabOrder = 0
      Width = 52
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 421
      Top = 26
      DataBinding.DataField = 'RodarFaturamento'
      DataBinding.DataSource = oDS
      Properties.Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      TabOrder = 1
      Width = 53
    end
    object cxDBComboBox2: TcxDBComboBox
      Left = 421
      Top = 50
      DataBinding.DataField = 'DiasCxPostalAntesFechamento'
      DataBinding.DataSource = oDS
      Properties.Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      TabOrder = 2
      Width = 53
    end
    object cxDBComboBox3: TcxDBComboBox
      Left = 421
      Top = 74
      DataBinding.DataField = 'DiasCxPostalAposFechamento'
      DataBinding.DataSource = oDS
      Properties.Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      TabOrder = 3
      Width = 53
    end
  end
  object cxGroupBox3: TcxGroupBox [4]
    Left = 4
    Top = 240
    Caption = ' Dados Banc'#225'rio '
    TabOrder = 4
    Height = 121
    Width = 617
    object Label10: TLabel
      Left = 28
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Banco'
      FocusControl = cxDBTextEdit1
    end
    object Label11: TLabel
      Left = 16
      Top = 46
      Width = 41
      Height = 13
      Caption = 'Cedente'
    end
    object Label12: TLabel
      Left = 18
      Top = 68
      Width = 39
      Height = 13
      Caption = 'Carteira'
      FocusControl = cxDBTextEdit3
    end
    object Label13: TLabel
      Left = 19
      Top = 90
      Width = 38
      Height = 13
      Caption = 'Agencia'
      FocusControl = cxDBTextEdit4
    end
    object Label14: TLabel
      Left = 209
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Conta'
      FocusControl = cxDBTextEdit5
    end
    object Label15: TLabel
      Left = 368
      Top = 24
      Width = 27
      Height = 13
      Caption = 'D'#237'gito'
      FocusControl = cxDBTextEdit6
    end
    object Label16: TLabel
      Left = 184
      Top = 46
      Width = 54
      Height = 13
      Caption = 'Modalidade'
      FocusControl = cxDBTextEdit8
    end
    object Label17: TLabel
      Left = 193
      Top = 68
      Width = 45
      Height = 13
      Caption = 'Convenio'
      FocusControl = cxDBTextEdit9
    end
    object Label18: TLabel
      Left = 197
      Top = 90
      Width = 41
      Height = 13
      Caption = 'Cedente'
      FocusControl = cxDBTextEdit10
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 60
      Top = 21
      DataBinding.DataField = 'bcoBanco'
      DataBinding.DataSource = oDS
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 60
      Top = 65
      DataBinding.DataField = 'bcoCarteira'
      DataBinding.DataSource = oDS
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 60
      Top = 87
      DataBinding.DataField = 'bcoAgencia'
      DataBinding.DataSource = oDS
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 241
      Top = 21
      DataBinding.DataField = 'bcoConta'
      DataBinding.DataSource = oDS
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 398
      Top = 21
      DataBinding.DataField = 'bcoDigito'
      DataBinding.DataSource = oDS
      TabOrder = 5
      Width = 30
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 60
      Top = 43
      DataBinding.DataField = 'bcoCodCedente'
      DataBinding.DataSource = oDS
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 241
      Top = 43
      DataBinding.DataField = 'bcoModalidade'
      DataBinding.DataSource = oDS
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 241
      Top = 65
      DataBinding.DataField = 'bcoConvenio'
      DataBinding.DataSource = oDS
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 241
      Top = 87
      DataBinding.DataField = 'bcoCedente'
      DataBinding.DataSource = oDS
      TabOrder = 8
      Width = 121
    end
  end
  object cxGroupBox4: TcxGroupBox [5]
    Left = 4
    Top = 362
    Caption = ' Dados Fiscais '
    TabOrder = 5
    Height = 148
    Width = 617
  end
  object cxGroupBox1: TcxGroupBox [6]
    Left = 4
    Top = 8
    Caption = ' Processamento '
    TabOrder = 2
    Height = 116
    Width = 617
    object Label1: TLabel
      Left = 78
      Top = 51
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object Label2: TLabel
      Left = 12
      Top = 75
      Width = 89
      Height = 13
      Caption = 'Local dos Arquivos'
      FocusControl = cxDBTextEdit2
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 105
      Top = 21
      Caption = 'Ativado ?'
      DataBinding.DataField = 'ProcessamentoAtivado'
      DataBinding.DataSource = oDS
      TabOrder = 0
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 105
      Top = 72
      DataBinding.DataField = 'LocalArquivos'
      DataBinding.DataSource = oDS
      TabOrder = 1
      Width = 432
    end
    object BitBtn1: TBitBtn
      Left = 543
      Top = 70
      Width = 29
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object edtTime: TcxDBTimeEdit
      Left = 105
      Top = 48
      DataBinding.DataField = 'HoraProcessamento'
      DataBinding.DataSource = oDS
      Properties.TimeFormat = tfHourMin
      TabOrder = 3
      Width = 57
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 583
    Width = 627
    ExplicitTop = 583
    ExplicitWidth = 627
  end
  inherited Panel1: TPanel
    Top = 528
    Width = 627
    ExplicitTop = 528
    ExplicitWidth = 627
    inherited btnNovo: TAdvGlassButton
      Left = 219
      Visible = False
      ExplicitLeft = 219
    end
    inherited btnEditar: TAdvGlassButton
      Left = 11
      ExplicitLeft = 11
    end
    inherited btnDeletar: TAdvGlassButton
      Left = 337
      Visible = False
      ExplicitLeft = 337
    end
    inherited btnSalvar: TAdvGlassButton
      Left = 113
      ExplicitLeft = 113
    end
    inherited btnsair: TAdvGlassButton
      Left = 521
      ExplicitLeft = 521
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspSysParametros'
    RemoteServer = DM.ShCoGen
    Left = 456
    Top = 65528
    object oCdsId: TIntegerField
      FieldName = 'Id'
    end
    object oCdsHoraProcessamento: TWideStringField
      FieldName = 'HoraProcessamento'
      Size = 10
    end
    object oCdsProcessamentoAtivado: TBooleanField
      FieldName = 'ProcessamentoAtivado'
    end
    object oCdsLocalArquivos: TWideStringField
      FieldName = 'LocalArquivos'
      Size = 2000
    end
    object oCdsDiaPadraoFechamento: TIntegerField
      FieldName = 'DiaPadraoFechamento'
    end
    object oCdsRodarFaturamento: TIntegerField
      FieldName = 'RodarFaturamento'
    end
    object oCdsDiasCxPostalAntesFechamento: TIntegerField
      FieldName = 'DiasCxPostalAntesFechamento'
    end
    object oCdsDiasCxPostalAposFechamento: TIntegerField
      FieldName = 'DiasCxPostalAposFechamento'
    end
    object oCdsbcoBanco: TWideStringField
      FieldName = 'bcoBanco'
      Size = 10
    end
    object oCdsbcoCodCedente: TIntegerField
      FieldName = 'bcoCodCedente'
    end
    object oCdsbcoCarteira: TWideStringField
      FieldName = 'bcoCarteira'
    end
    object oCdsbcoAgencia: TWideStringField
      FieldName = 'bcoAgencia'
    end
    object oCdsbcoConta: TWideStringField
      FieldName = 'bcoConta'
    end
    object oCdsbcoDigito: TWideStringField
      FieldName = 'bcoDigito'
      Size = 2
    end
    object oCdsbcoModalidade: TWideStringField
      FieldName = 'bcoModalidade'
    end
    object oCdsbcoConvenio: TWideStringField
      FieldName = 'bcoConvenio'
    end
    object oCdsbcoCedente: TWideStringField
      FieldName = 'bcoCedente'
      Size = 60
    end
    object oCdsDtInc: TDateField
      FieldName = 'DtInc'
    end
    object oCdsUsuInc: TWideStringField
      FieldName = 'UsuInc'
    end
    object oCdsDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object oCdsUsuAlt: TWideStringField
      FieldName = 'UsuAlt'
    end
  end
  inherited oDS: TDataSource
    Left = 488
    Top = 65528
  end
end
