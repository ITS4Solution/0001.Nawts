inherited F_ProdutosButtons: TF_ProdutosButtons
  Caption = 'Produtos'
  ClientHeight = 381
  ClientWidth = 546
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitWidth = 562
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 546
    Height = 307
    Align = alClient
    ExplicitLeft = -8
    ExplicitTop = -6
    ExplicitWidth = 546
    ExplicitHeight = 307
  end
  object Label1: TLabel [3]
    Left = 188
    Top = 7
    Width = 60
    Height = 13
    Caption = 'C'#243'd Produto'
    FocusControl = cxDBSpinEdit1
  end
  object Label2: TLabel [4]
    Left = 189
    Top = 47
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label3: TLabel [5]
    Left = 189
    Top = 86
    Width = 58
    Height = 13
    Caption = 'Proced'#234'ncia'
  end
  object Label4: TLabel [6]
    Left = 8
    Top = 126
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit3
  end
  object Label6: TLabel [7]
    Left = 8
    Top = 165
    Width = 37
    Height = 13
    Caption = 'Nro. PA'
    FocusControl = cxDBSpinEdit2
  end
  object Label7: TLabel [8]
    Left = 135
    Top = 165
    Width = 118
    Height = 13
    Caption = 'Nome produto no pedido'
    FocusControl = cxDBTextEdit5
  end
  object Label8: TLabel [9]
    Left = 315
    Top = 7
    Width = 22
    Height = 13
    Caption = 'NCM'
    FocusControl = cxDBTextEdit6
  end
  object Label5: TLabel [10]
    Left = 383
    Top = 47
    Width = 61
    Height = 13
    Caption = 'C'#243'd.F'#243'rmula'
    FocusControl = cxDBTextEdit1
  end
  object Label9: TLabel [11]
    Left = 383
    Top = 86
    Width = 38
    Height = 13
    Caption = 'Revis'#227'o'
    FocusControl = DBEdit1
  end
  object Label10: TLabel [12]
    Left = 8
    Top = 208
    Width = 93
    Height = 13
    Caption = 'C'#243'digo Item (0200)'
    FocusControl = cxDBTextEdit2
  end
  object Label11: TLabel [13]
    Left = 135
    Top = 208
    Width = 80
    Height = 13
    Caption = 'Tipo Item (0200)'
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 546
    ExplicitTop = 362
    ExplicitWidth = 546
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 546
    TabOrder = 8
    ExplicitTop = 307
    ExplicitWidth = 546
    inherited btnNovo: TAdvGlassButton
      Left = 11
      ExplicitLeft = 11
    end
    inherited btnsair: TAdvGlassButton
      Left = 440
      Top = 13
      ExplicitLeft = 440
      ExplicitTop = 13
    end
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [16]
    Left = 188
    Top = 23
    DataBinding.DataField = 'codproduto'
    DataBinding.DataSource = oDS
    TabOrder = 0
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit [17]
    Left = 8
    Top = 142
    DataBinding.DataField = 'descricao'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 528
  end
  object cxDBSpinEdit2: TcxDBSpinEdit [18]
    Left = 8
    Top = 181
    DataBinding.DataField = 'numeropa'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 121
  end
  object cxDBTextEdit5: TcxDBTextEdit [19]
    Left = 135
    Top = 181
    DataBinding.DataField = 'nomeprodutopedido'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 401
  end
  object cxDBTextEdit6: TcxDBTextEdit [20]
    Left = 315
    Top = 23
    DataBinding.DataField = 'ncm'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 221
  end
  object DBComboBox1: TDBComboBox [21]
    Left = 189
    Top = 102
    Width = 188
    Height = 21
    DataField = 'procedencia'
    DataSource = oDS
    Items.Strings = (
      'Fabricado'
      'Revenda'
      'Outros')
    TabOrder = 3
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [22]
    Left = 189
    Top = 63
    DataBinding.DataField = 'grupo'
    DataBinding.DataSource = oDS
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'nomegrupo'
      end
      item
        FieldName = 'codgrupo'
      end>
    Properties.ListSource = dsGrupoProdutos
    TabOrder = 2
    Width = 188
  end
  object cxDBTextEdit1: TcxDBTextEdit [23]
    Left = 383
    Top = 63
    DataBinding.DataField = 'codformula'
    DataBinding.DataSource = oDS
    TabOrder = 9
    Width = 153
  end
  object btnCopiarProd: TAdvGlassButton [24]
    Left = 385
    Top = 268
    Width = 153
    Height = 33
    Action = ActSair
    Anchors = [akRight, akBottom]
    BackColor = 6052956
    Caption = 'C'#243'piar produto               '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ForeColor = clWhite
    GlowColor = 16760205
    InnerBorderColor = clBlack
    OuterBorderColor = clWhite
    ParentFont = False
    ShineColor = clWhite
    TabOrder = 10
    Version = '1.3.0.2'
    OnClick = btnCopiarProdClick
  end
  object DBEdit1: TDBEdit [25]
    Left = 383
    Top = 102
    Width = 153
    Height = 21
    DataField = 'revisao'
    DataSource = oDS
    Enabled = False
    TabOrder = 11
  end
  object cxDBTextEdit2: TcxDBTextEdit [26]
    Left = 8
    Top = 224
    DataBinding.DataField = 'cod_item'
    DataBinding.DataSource = oDS
    TabOrder = 12
    Width = 121
  end
  object ComboBox1: TComboBox [27]
    Left = 135
    Top = 224
    Width = 235
    Height = 21
    TabOrder = 13
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
    Left = 488
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspProdutos'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsgrupo: TIntegerField
      FieldName = 'grupo'
    end
    object oCdscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object oCdscodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object oCdsprocedencia: TStringField
      FieldName = 'procedencia'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object oCdsgrupopedido: TStringField
      FieldName = 'grupopedido'
      Size = 15
    end
    object oCdsnumeropa: TIntegerField
      FieldName = 'numeropa'
    end
    object oCdsnomeprodutopedido: TStringField
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
    object oCdsncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object oCdscodformula: TStringField
      FieldName = 'codformula'
      Size = 4
    end
    object oCdsidprodprincipal: TIntegerField
      FieldName = 'idprodprincipal'
    end
    object oCdsrevisao: TIntegerField
      FieldName = 'revisao'
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
  object oCdsGrupoProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupoProdutos'
    RemoteServer = DM.ShCoGen
    Left = 88
    Top = 232
    object oCdsGrupoProdutosid: TIntegerField
      FieldName = 'id'
    end
    object oCdsGrupoProdutoscodgrupo: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'codgrupo'
    end
    object oCdsGrupoProdutosnomegrupo: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nomegrupo'
      Size = 30
    end
  end
  object dsGrupoProdutos: TDataSource
    DataSet = oCdsGrupoProdutos
    Left = 48
    Top = 224
  end
end
