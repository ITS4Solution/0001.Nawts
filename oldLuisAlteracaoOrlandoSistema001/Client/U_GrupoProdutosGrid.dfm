inherited F_GrupoProdutosGrid: TF_GrupoProdutosGrid
  Caption = 'Grupo de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object AdvGlassButton1: TAdvGlassButton
      Left = 10
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
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codgrupo: TcxGridDBColumn
        DataBinding.FieldName = 'codgrupo'
      end
      object cxGrid1DBTableView1nomegrupo: TcxGridDBColumn
        DataBinding.FieldName = 'nomegrupo'
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspGrupoProdutos'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodgrupo: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'codgrupo'
    end
    object oCdsnomegrupo: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nomegrupo'
      Size = 30
    end
  end
end
