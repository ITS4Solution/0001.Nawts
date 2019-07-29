inherited F_ProdutoAcabadoGrid: TF_ProdutoAcabadoGrid
  Caption = 'Estoque Qu'#237'mico'
  ClientWidth = 788
  ExplicitWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 788
    ExplicitWidth = 788
  end
  inherited Panel1: TPanel
    Width = 788
    ExplicitWidth = 788
    inherited btnsair: TAdvGlassButton
      Left = 680
      ExplicitLeft = 680
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 14
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
      OnClick = AdvGlassButton1Click
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 788
    ExplicitWidth = 788
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 76
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'descricao'
        Width = 257
      end
      object cxGrid1DBTableView1quantd: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'quantd'
        Width = 83
      end
      object cxGrid1DBTableView1tipo: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tipo'
        Width = 98
      end
      object cxGrid1DBTableView1obs: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'obs'
        Width = 272
      end
    end
  end
  inherited ActionList: TActionList
    Left = 616
    Top = 65528
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspEstoqueQuimico'
    RemoteServer = DM.ShCoGen
    Left = 24
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object oCdsidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object oCdstipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object oCdsquantd: TSingleField
      FieldName = 'quantd'
    end
    object oCdsobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
  end
  inherited oDS: TDataSource
    Left = 64
    Top = 65528
  end
end
