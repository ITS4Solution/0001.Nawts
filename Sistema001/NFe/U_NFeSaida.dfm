inherited F_NFeSaida: TF_NFeSaida
  Caption = 'Lista NFe Emitidas'
  ClientHeight = 400
  ClientWidth = 617
  ExplicitWidth = 635
  ExplicitHeight = 447
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 381
    Width = 617
    ExplicitTop = 381
    ExplicitWidth = 617
  end
  inherited Panel1: TPanel
    Top = 326
    Width = 617
    ExplicitTop = 326
    ExplicitWidth = 617
    inherited btnsair: TAdvGlassButton
      Left = 509
      ExplicitLeft = 509
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 18
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
    Width = 617
    Height = 326
    ExplicitWidth = 617
    ExplicitHeight = 326
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1NNota: TcxGridDBColumn
        DataBinding.FieldName = 'NNota'
        Width = 61
      end
      object cxGrid1DBTableView1DataEmissao: TcxGridDBColumn
        DataBinding.FieldName = 'DataEmissao'
        Width = 66
      end
      object cxGrid1DBTableView1Destinatario: TcxGridDBColumn
        DataBinding.FieldName = 'Destinatario'
        Width = 299
      end
      object cxGrid1DBTableView1CNPJDestinatario: TcxGridDBColumn
        DataBinding.FieldName = 'CNPJDestinatario'
        Width = 93
      end
      object cxGrid1DBTableView1T_ValorNotaFiscal: TcxGridDBColumn
        DataBinding.FieldName = 'T_ValorNotaFiscal'
        Width = 96
      end
    end
  end
  inherited ActionList: TActionList
    Left = 392
    Top = 120
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspCabecalho'
    Left = 102
    Top = 144
    object oCdsNNota: TIntegerField
      FieldName = 'NNota'
    end
    object oCdsCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object oCdsCFOPDesc: TStringField
      FieldName = 'CFOPDesc'
      Size = 249
    end
    object oCdsDataEmissao: TSQLTimeStampField
      FieldName = 'DataEmissao'
    end
    object oCdsDestinatario: TStringField
      FieldName = 'Destinatario'
      Size = 50
    end
    object oCdsCNPJDestinatario: TStringField
      FieldName = 'CNPJDestinatario'
      Size = 18
    end
    object oCdsT_ValorNotaFiscal: TFloatField
      FieldName = 'T_ValorNotaFiscal'
    end
    object oCdsID: TIntegerField
      FieldName = 'ID'
    end
  end
  inherited oDS: TDataSource
    Left = 200
    Top = 88
  end
  object dspCabecalho: TDataSetProvider
    DataSet = DM.sqlNFeCabecalho
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 34
    Top = 105
  end
end
