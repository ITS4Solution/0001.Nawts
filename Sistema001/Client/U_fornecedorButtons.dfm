inherited F_FornecedorButtons: TF_FornecedorButtons
  Left = -14
  Top = -15
  Caption = 'Fornecedor'
  ClientHeight = 526
  ClientWidth = 621
  KeyPreview = True
  Position = poDesigned
  OnKeyPress = FormKeyPress
  ExplicitWidth = 637
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 621
    Height = 452
    Align = alClient
    ExplicitLeft = 8
    ExplicitTop = -6
    ExplicitWidth = 639
    ExplicitHeight = 473
  end
  object Label1: TLabel [3]
    Left = 189
    Top = 8
    Width = 54
    Height = 13
    Caption = 'CNPJ / CPF'
    FocusControl = cxDBTextEdit1
  end
  object Label2: TLabel [4]
    Left = 189
    Top = 47
    Width = 97
    Height = 13
    Caption = 'Raz'#227'o Social / Nome'
    FocusControl = cxDBTextEdit2
  end
  object Label3: TLabel [5]
    Left = 486
    Top = 47
    Width = 57
    Height = 13
    Caption = 'Tipo Pessoa'
  end
  object Label4: TLabel [6]
    Left = 8
    Top = 324
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = cxDBMemo1
  end
  object Label5: TLabel [7]
    Left = 320
    Top = 8
    Width = 81
    Height = 13
    Caption = 'C'#243'd. Fornecedor'
    FocusControl = cxDBSpinEdit1
  end
  object Label6: TLabel [8]
    Left = 486
    Top = 8
    Width = 100
    Height = 13
    Caption = 'Data Cadastramento'
    FocusControl = cxDBDateEdit1
  end
  object Label7: TLabel [9]
    Left = 10
    Top = 127
    Width = 29
    Height = 13
    Caption = 'Cargo'
    FocusControl = cxDBTextEdit3
  end
  object Label15: TLabel [10]
    Left = 189
    Top = 86
    Width = 39
    Height = 13
    Caption = 'Contato'
    FocusControl = cxDBTextEdit11
  end
  object Label20: TLabel [11]
    Left = 208
    Top = 127
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  inherited StatusBar1: TStatusBar
    Top = 507
    Width = 621
    ExplicitTop = 507
    ExplicitWidth = 621
  end
  inherited Panel1: TPanel
    Top = 452
    Width = 621
    TabOrder = 5
    ExplicitTop = 452
    ExplicitWidth = 621
    inherited btnSalvar: TAdvGlassButton
      Left = 320
      ExplicitLeft = 320
    end
    inherited btnsair: TAdvGlassButton
      Left = 508
      Top = 13
      ExplicitLeft = 508
      ExplicitTop = 13
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [14]
    Left = 189
    Top = 23
    DataBinding.DataField = 'cpf_cnpj'
    DataBinding.DataSource = oDS
    TabOrder = 0
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit [15]
    Left = 189
    Top = 62
    DataBinding.DataField = 'nome_razaosocial'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 288
  end
  object cxDBMemo1: TcxDBMemo [16]
    Left = 8
    Top = 343
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataBinding.DataField = 'obs'
    DataBinding.DataSource = oDS
    Properties.ScrollBars = ssVertical
    TabOrder = 3
    Height = 103
    Width = 605
  end
  object cxDBComboBox1: TcxDBComboBox [17]
    Left = 486
    Top = 62
    DataBinding.DataField = 'tppessoa'
    DataBinding.DataSource = oDS
    Properties.Items.Strings = (
      'JURIDICA'
      'FISICA')
    TabOrder = 2
    Width = 121
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [18]
    Left = 318
    Top = 23
    DataBinding.DataField = 'codfornecedor'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 159
  end
  object cxDBDateEdit1: TcxDBDateEdit [19]
    Left = 486
    Top = 23
    DataBinding.DataField = 'datacad'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit [20]
    Left = 10
    Top = 143
    DataBinding.DataField = 'cargo'
    DataBinding.DataSource = oDS
    TabOrder = 8
    Width = 189
  end
  object cxDBTextEdit11: TcxDBTextEdit [21]
    Left = 189
    Top = 102
    DataBinding.DataField = 'contato'
    DataBinding.DataSource = oDS
    TabOrder = 9
    Width = 246
  end
  object cxDBTextEdit15: TcxDBTextEdit [22]
    Left = 208
    Top = 143
    DataBinding.DataField = 'email'
    DataBinding.DataSource = oDS
    TabOrder = 10
    Width = 227
  end
  object cxContatos: TcxGroupBox [23]
    Left = 441
    Top = 89
    Caption = 'Contatos'
    TabOrder = 11
    Height = 229
    Width = 166
    object Label8: TLabel
      Left = 15
      Top = 18
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = cxDBTextEdit4
    end
    object Label9: TLabel
      Left = 15
      Top = 59
      Width = 51
      Height = 13
      Caption = 'Telefone 2'
      FocusControl = cxDBTextEdit5
    end
    object Label10: TLabel
      Left = 15
      Top = 99
      Width = 51
      Height = 13
      Caption = 'Telefone 3'
      FocusControl = cxDBTextEdit6
    end
    object Label11: TLabel
      Left = 15
      Top = 138
      Width = 51
      Height = 13
      Caption = 'Telefone 4'
      FocusControl = cxDBTextEdit7
    end
    object Label17: TLabel
      Left = 15
      Top = 178
      Width = 19
      Height = 13
      Caption = 'FAX'
      FocusControl = cxDBTextEdit13
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 15
      Top = 34
      DataBinding.DataField = 'fone1'
      DataBinding.DataSource = oDS
      TabOrder = 0
      Width = 135
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 15
      Top = 75
      DataBinding.DataField = 'fone2'
      DataBinding.DataSource = oDS
      TabOrder = 1
      Width = 135
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 15
      Top = 114
      DataBinding.DataField = 'fone3'
      DataBinding.DataSource = oDS
      TabOrder = 2
      Width = 135
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 15
      Top = 154
      DataBinding.DataField = 'fone4'
      DataBinding.DataSource = oDS
      TabOrder = 3
      Width = 135
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 15
      Top = 192
      DataBinding.DataField = 'fax'
      DataBinding.DataSource = oDS
      TabOrder = 4
      Width = 135
    end
  end
  object Local: TcxGroupBox [24]
    Left = 8
    Top = 170
    Caption = 'Local'
    TabOrder = 12
    Height = 148
    Width = 427
    object Label18: TLabel
      Left = 19
      Top = 98
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = cxDBTextEdit14
    end
    object Label16: TLabel
      Left = 19
      Top = 58
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = cxDBTextEdit12
    end
    object Label12: TLabel
      Left = 19
      Top = 18
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object Label13: TLabel
      Left = 92
      Top = 18
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = cxDBTextEdit9
    end
    object Label14: TLabel
      Left = 199
      Top = 98
      Width = 10
      Height = 13
      Caption = 'IE'
      FocusControl = cxDBTextEdit10
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 19
      Top = 113
      DataBinding.DataField = 'cep'
      DataBinding.DataSource = oDS
      TabOrder = 0
      Width = 173
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 19
      Top = 74
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = oDS
      TabOrder = 1
      Width = 354
    end
    object DBComboBox1: TDBComboBox
      Left = 19
      Top = 34
      Width = 63
      Height = 21
      DataField = 'uf'
      DataSource = oDS
      Items.Strings = (
        'AC'#9' '
        'AL'#9' '
        'AP'#9' '
        'AM'#9' '
        'BA'#9' '
        'CE'#9' '
        'DF'#9' '
        'ES'#9' '
        'GO'#9' '
        'MA'#9' '
        'MT'#9' '
        'MS'#9' '
        'MG'#9' '
        'PA'#9' '
        'PB'#9' '
        'PR'#9' '
        'PE'#9' '
        'PI'#9' '
        'RJ'#9' '
        'RN'#9' '
        'RS'#9' '
        'RO'#9' '
        'RR'#9' '
        'SC'#9' '
        'SP'#9' '
        'SE'#9' '
        'TO')
      TabOrder = 2
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 92
      Top = 34
      DataBinding.DataField = 'cidade'
      DataBinding.DataSource = oDS
      TabOrder = 3
      Width = 196
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 200
      Top = 113
      DataBinding.DataField = 'ie'
      DataBinding.DataSource = oDS
      TabOrder = 4
      Width = 173
    end
  end
  inherited ActionList: TActionList
    Left = 88
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspFornecedor'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 18
    end
    object oCdsnome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object oCdstppessoa: TStringField
      FieldName = 'tppessoa'
      Size = 10
    end
    object oCdsobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object oCdscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object oCdsdatacad: TDateField
      FieldName = 'datacad'
    end
    object oCdscargo: TStringField
      FieldName = 'cargo'
      Size = 30
    end
    object oCdsfone1: TStringField
      FieldName = 'fone1'
      Size = 15
    end
    object oCdsfone2: TStringField
      FieldName = 'fone2'
      Size = 15
    end
    object oCdsfone3: TStringField
      FieldName = 'fone3'
      Size = 15
    end
    object oCdsfone4: TStringField
      FieldName = 'fone4'
      Size = 15
    end
    object oCdsuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object oCdscidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object oCdsie: TStringField
      FieldName = 'ie'
      Size = 14
    end
    object oCdscontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object oCdsendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object oCdsfax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object oCdscep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object oCdsemail: TStringField
      FieldName = 'email'
      Size = 30
    end
  end
end
