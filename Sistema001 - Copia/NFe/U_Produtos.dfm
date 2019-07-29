inherited F_Produtos: TF_Produtos
  Caption = 'F_Produtos'
  ClientWidth = 549
  ExplicitWidth = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 549
    ExplicitWidth = 549
  end
  inherited Panel1: TPanel
    Width = 549
    ExplicitWidth = 549
    inherited btnsair: TAdvGlassButton
      Left = 441
      ExplicitLeft = 441
    end
    object AdvGlassButton1: TAdvGlassButton
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
      OnClick = AdvGlassButton1Click
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 549
    ExplicitWidth = 549
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1CodBarras: TcxGridDBColumn
        DataBinding.FieldName = 'CodBarras'
        Width = 83
      end
      object cxGrid1DBTableView1NomeProduto: TcxGridDBColumn
        DataBinding.FieldName = 'NomeProduto'
        Width = 336
      end
      object cxGrid1DBTableView1PrecoVenda: TcxGridDBColumn
        DataBinding.FieldName = 'PrecoVenda'
        Width = 98
      end
      object cxGrid1DBTableView1UF: TcxGridDBColumn
        DataBinding.FieldName = 'UF'
        Width = 30
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspProdutos'
    Left = 64
    Top = 72
    object oCdsID: TIntegerField
      FieldName = 'ID'
    end
    object oCdsCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
    end
    object oCdsNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object oCdsUN: TStringField
      FieldName = 'UN'
      Size = 2
    end
    object oCdsMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object oCdsIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
    end
    object oCdsPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object oCdsMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object oCdsPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object oCdsCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object oCdsCODCST: TIntegerField
      FieldName = 'CODCST'
    end
    object oCdsALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object oCdsNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object oCdsCODCSTIPI: TIntegerField
      FieldName = 'CODCSTIPI'
    end
    object oCdsCODCSTPIS: TIntegerField
      FieldName = 'CODCSTPIS'
    end
    object oCdsCODCSTCOFINS: TIntegerField
      FieldName = 'CODCSTCOFINS'
    end
    object oCdsALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object oCdsALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
    end
    object oCdsALIQCOFINS: TFloatField
      FieldName = 'ALIQCOFINS'
    end
    object oCdsREDICMS: TFloatField
      FieldName = 'REDICMS'
    end
    object oCdsALIQMVA: TFloatField
      FieldName = 'ALIQMVA'
    end
    object oCdsALIQIVA: TFloatField
      FieldName = 'ALIQIVA'
    end
    object oCdsMODBCICMS: TIntegerField
      FieldName = 'MODBCICMS'
    end
    object oCdsMODBCICMSST: TIntegerField
      FieldName = 'MODBCICMSST'
    end
    object oCdsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  inherited oDS: TDataSource
    Left = 96
    Top = 72
  end
  object dspProdutos: TDataSetProvider
    DataSet = DM.sqlProdutos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 18
    Top = 72
  end
end
