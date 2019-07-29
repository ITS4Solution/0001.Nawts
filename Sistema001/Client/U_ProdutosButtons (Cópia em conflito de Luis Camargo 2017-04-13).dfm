inherited F_ProdutosButtons: TF_ProdutosButtons
  Caption = 'Produtos'
  KeyPreview = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Left = 2
    Top = 1
    Height = 306
    ExplicitLeft = 2
    ExplicitTop = 1
    ExplicitHeight = 306
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
    Top = 45
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
  inherited Panel1: TPanel
    TabOrder = 8
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [12]
    Left = 188
    Top = 23
    DataBinding.DataField = 'codproduto'
    DataBinding.DataSource = oDS
    TabOrder = 0
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit [13]
    Left = 8
    Top = 142
    DataBinding.DataField = 'descricao'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 528
  end
  object cxDBSpinEdit2: TcxDBSpinEdit [14]
    Left = 8
    Top = 181
    DataBinding.DataField = 'numeropa'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 121
  end
  object cxDBTextEdit5: TcxDBTextEdit [15]
    Left = 135
    Top = 181
    DataBinding.DataField = 'nomeprodutopedido'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 401
  end
  object cxDBTextEdit6: TcxDBTextEdit [16]
    Left = 315
    Top = 23
    DataBinding.DataField = 'ncm'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 121
  end
  object DBComboBox1: TDBComboBox [17]
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
  object cxDBLookupComboBox1: TcxDBLookupComboBox [18]
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
    Left = 176
    Top = 240
  end
end
