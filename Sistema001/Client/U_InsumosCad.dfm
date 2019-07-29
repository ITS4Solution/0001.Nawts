inherited F_InsumosCad: TF_InsumosCad
  Caption = 'Cadastro de Insumos'
  ClientHeight = 381
  ClientWidth = 577
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitWidth = 593
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 577
    Height = 307
    Align = alClient
    ExplicitTop = -6
    ExplicitWidth = 577
    ExplicitHeight = 307
  end
  object Label1: TLabel [1]
    Left = 180
    Top = 5
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [2]
    Left = 180
    Top = 82
    Width = 47
    Height = 13
    Caption = 'Conte'#250'do'
    FocusControl = cxDBSpinEdit1
  end
  object Label4: TLabel [3]
    Left = 180
    Top = 43
    Width = 13
    Height = 13
    Caption = 'UE'
  end
  inherited Image1: TImage
    Left = 3
    Top = 6
    ExplicitLeft = 3
    ExplicitTop = 6
  end
  inherited dxBevel2: TdxBevel
    Width = 175
    Height = 116
    ExplicitWidth = 175
    ExplicitHeight = 116
  end
  object Label2: TLabel [6]
    Left = 307
    Top = 3
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit2
  end
  object Label5: TLabel [7]
    Left = 256
    Top = 43
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label8: TLabel [8]
    Left = 8
    Top = 124
    Width = 93
    Height = 13
    Caption = 'C'#243'digo Item (0200)'
    FocusControl = cxDBTextEdit3
  end
  object Label9: TLabel [9]
    Left = 135
    Top = 124
    Width = 80
    Height = 13
    Caption = 'Tipo Item (0200)'
  end
  object cxDBTextEdit1: TcxDBTextEdit [10]
    Left = 180
    Top = 19
    DataBinding.DataField = 'codigo'
    DataBinding.DataSource = oDS
    TabOrder = 0
    Width = 121
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [11]
    Left = 180
    Top = 96
    DataBinding.DataField = 'litragem'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 190
  end
  object cxDBComboBox1: TcxDBComboBox [12]
    Left = 180
    Top = 57
    DataBinding.DataField = 'ue'
    DataBinding.DataSource = oDS
    Properties.DropDownListStyle = lsEditFixedList
    Properties.Items.Strings = (
      'ML'
      'Peso (gr)'
      'P'#199)
    TabOrder = 2
    Width = 69
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 577
    ExplicitTop = 362
    ExplicitWidth = 577
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 577
    TabOrder = 6
    ExplicitTop = 307
    ExplicitWidth = 577
    inherited btnsair: TAdvGlassButton
      Left = 471
      ExplicitLeft = 471
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit [15]
    Left = 307
    Top = 19
    DataBinding.DataField = 'descricao'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 254
  end
  object cxDBComboBox2: TcxDBComboBox [16]
    Left = 256
    Top = 57
    DataBinding.DataField = 'tipo'
    DataBinding.DataSource = oDS
    Properties.DropDownListStyle = lsEditFixedList
    Properties.Items.Strings = (
      'Embalagem'
      'Mat. Prima'
      'Uso Interno'
      'Inativo')
    TabOrder = 3
    Width = 114
  end
  object cxGroupBox1: TcxGroupBox [17]
    Left = 376
    Top = 43
    Caption = 'Estoque'
    TabOrder = 7
    Height = 108
    Width = 185
    object Label6: TLabel
      Left = 17
      Top = 15
      Width = 32
      Height = 13
      Caption = 'M'#237'nimo'
      FocusControl = DBEdit1
    end
    object Label7: TLabel
      Left = 17
      Top = 55
      Width = 36
      Height = 13
      Caption = 'M'#225'ximo'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 17
      Top = 29
      Width = 152
      Height = 21
      DataField = 'estoqueminimo'
      DataSource = oDS
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 17
      Top = 70
      Width = 152
      Height = 21
      DataField = 'estoquemaximo'
      DataSource = oDS
      TabOrder = 1
    end
  end
  object cxDBTextEdit3: TcxDBTextEdit [18]
    Left = 8
    Top = 139
    DataBinding.DataField = 'cod_item'
    DataBinding.DataSource = oDS
    TabOrder = 8
    Width = 121
  end
  object ComboBox1: TComboBox [19]
    Left = 135
    Top = 139
    Width = 235
    Height = 21
    TabOrder = 9
    OnCloseUp = ComboBox1CloseUp
    OnSelect = ComboBox1Select
    Items.Strings = (
      '00 - Mercadoria para Revenda;'
      '01 - Mat'#233'ria-Prima;'
      '02 - Embalagem;'
      '03 - Produto em Processo;'
      '04 - Produto Acabado;'
      '05 - Subproduto;'
      '06 - Produto Intermedi'#225'rio;'
      '07 - Material de Uso e Consumo;'
      '08 - Ativo Imobilizado;'
      '09 - Servi'#231'os;'
      '10 - Outros insumos;'
      '99 - Outras.')
  end
  inherited ActionList: TActionList
    Left = 456
    Top = 65512
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblInsumos'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object oCdsue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object oCdslitragem: TSingleField
      FieldName = 'litragem'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object oCdstipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
    object oCdsestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object oCdsestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 50
    end
    object oCdscod_item: TStringField
      FieldName = 'cod_item'
      Size = 60
    end
    object oCdstipo_item: TStringField
      FieldName = 'tipo_item'
      Size = 2
    end
  end
end
