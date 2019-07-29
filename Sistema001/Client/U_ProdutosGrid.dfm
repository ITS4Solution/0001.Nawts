inherited F_ProdutosGrid: TF_ProdutosGrid
  Caption = 'Produtos'
  ClientWidth = 617
  ExplicitWidth = 633
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 617
    ExplicitWidth = 617
  end
  inherited Panel1: TPanel
    Width = 617
    ExplicitWidth = 617
    inherited btnsair: TAdvGlassButton
      Left = 509
      ExplicitLeft = 509
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 403
      Anchors = [akRight, akBottom]
      ExplicitLeft = 403
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
      Version = '1.3.0.2'
      OnClick = btnNovoClick
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 617
    ExplicitWidth = 617
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codproduto: TcxGridDBColumn
        DataBinding.FieldName = 'codproduto'
        Width = 41
      end
      object cxGrid1DBTableView1grupo: TcxGridDBColumn
        DataBinding.FieldName = 'grupo'
        Width = 41
      end
      object cxGrid1DBTableView1procedencia: TcxGridDBColumn
        DataBinding.FieldName = 'procedencia'
        Width = 80
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
        Width = 196
      end
      object cxGrid1DBTableView1numeropa: TcxGridDBColumn
        DataBinding.FieldName = 'numeropa'
        Width = 41
      end
      object cxGrid1DBTableView1nomeprodutopedido: TcxGridDBColumn
        DataBinding.FieldName = 'nomeprodutopedido'
        Width = 134
      end
      object cxGrid1DBTableView1codformula: TcxGridDBColumn
        Caption = 'C'#243'd. F'#243'rmula'
        DataBinding.FieldName = 'codformula'
        Width = 82
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
    object oCdscodformula: TStringField
      FieldName = 'codformula'
      Size = 4
    end
  end
end
