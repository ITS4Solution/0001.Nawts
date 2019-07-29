inherited F_ProdutosGrid: TF_ProdutosGrid
  Caption = 'Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited AdvGlassButton2: TAdvGlassButton
      Anchors = [akRight, akBottom]
    end
    object btnNovo: TAdvGlassButton
      Left = 13
      Top = 14
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Novo'
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
      TabOrder = 2
      Version = '1.3.0.1'
      OnClick = btnNovoClick
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codproduto: TcxGridDBColumn
        DataBinding.FieldName = 'codproduto'
      end
      object cxGrid1DBTableView1grupo: TcxGridDBColumn
        DataBinding.FieldName = 'grupo'
      end
      object cxGrid1DBTableView1procedencia: TcxGridDBColumn
        DataBinding.FieldName = 'procedencia'
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
      end
      object cxGrid1DBTableView1numeropa: TcxGridDBColumn
        DataBinding.FieldName = 'numeropa'
      end
      object cxGrid1DBTableView1nomeprodutopedido: TcxGridDBColumn
        DataBinding.FieldName = 'nomeprodutopedido'
      end
    end
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
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'codfornecedor'
    end
    object oCdscodproduto: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'codproduto'
    end
    object oCdsprocedencia: TStringField
      DisplayLabel = 'Proced'#234'ncia'
      FieldName = 'procedencia'
    end
    object oCdsdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 50
    end
    object oCdsgrupopedido: TStringField
      DisplayLabel = 'Grupo Pedido'
      FieldName = 'grupopedido'
      Size = 15
    end
    object oCdsnumeropa: TIntegerField
      DisplayLabel = 'Nro. PA'
      FieldName = 'numeropa'
    end
    object oCdsnomeprodutopedido: TStringField
      DisplayLabel = 'Nome Produto no Pedido'
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
    object oCdsncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'ncm'
      Size = 15
    end
  end
end
