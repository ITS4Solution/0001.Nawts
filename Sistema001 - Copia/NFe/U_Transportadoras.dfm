inherited F_Transportadoras: TF_Transportadoras
  Caption = 'F_Transportadoras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object AdvGlassButton1: TAdvGlassButton
      Left = 8
      Top = 17
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
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
      end
      object cxGrid1DBTableView1RAZAO_SOCIAL: TcxGridDBColumn
        DataBinding.FieldName = 'RAZAO_SOCIAL'
      end
      object cxGrid1DBTableView1CONTATO: TcxGridDBColumn
        DataBinding.FieldName = 'CONTATO'
      end
      object cxGrid1DBTableView1TELEFONE1: TcxGridDBColumn
        DataBinding.FieldName = 'TELEFONE1'
      end
      object cxGrid1DBTableView1CNPJ: TcxGridDBColumn
        DataBinding.FieldName = 'CNPJ'
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTransportadoras'
    Left = 24
    Top = 120
    object oCdsID: TIntegerField
      FieldName = 'ID'
    end
    object oCdsNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object oCdsRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 60
    end
    object oCdsCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object oCdsCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99;0'
    end
    object oCdsINSCRICAO_ESTADUAL: TStringField
      FieldName = 'INSCRICAO_ESTADUAL'
    end
    object oCdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object oCdsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object oCdsMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object oCdsTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      EditMask = '\(00\) 000000009;0;'
    end
    object oCdsTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      EditMask = '\(00\) 000000009;0;'
    end
  end
  inherited oDS: TDataSource
    Left = 56
    Top = 120
  end
  object dspTransportadoras: TDataSetProvider
    DataSet = DM.sqlTransportadoras
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 42
    Top = 72
  end
end
