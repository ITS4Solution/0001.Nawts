inherited F_CadClientes: TF_CadClientes
  Caption = 'Clientes'
  ClientHeight = 340
  ClientWidth = 541
  ExplicitWidth = 557
  ExplicitHeight = 379
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 321
    Width = 541
    ExplicitTop = 321
    ExplicitWidth = 541
  end
  inherited Panel1: TPanel
    Top = 266
    Width = 541
    ExplicitTop = 266
    ExplicitWidth = 541
    inherited btnsair: TAdvGlassButton
      Left = 433
      ExplicitLeft = 433
    end
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
    Width = 541
    Height = 266
    ExplicitWidth = 541
    ExplicitHeight = 266
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1NomeRazao: TcxGridDBColumn
        DataBinding.FieldName = 'NomeRazao'
      end
      object cxGrid1DBTableView1NomeFantasia: TcxGridDBColumn
        DataBinding.FieldName = 'NomeFantasia'
      end
      object cxGrid1DBTableView1CGC: TcxGridDBColumn
        DataBinding.FieldName = 'CGC'
      end
      object cxGrid1DBTableView1Telefone: TcxGridDBColumn
        DataBinding.FieldName = 'Telefone'
      end
    end
  end
  inherited ActionList: TActionList
    Left = 464
    Top = 128
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspCliFor'
    Left = 80
    Top = 72
    object oCdsID: TIntegerField
      FieldName = 'ID'
    end
    object oCdsNOMERAZAO: TStringField
      FieldName = 'NOMERAZAO'
      Size = 60
    end
    object oCdsNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 60
    end
    object oCdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object oCdsNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object oCdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object oCdsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object oCdsCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object oCdsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object oCdsCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object oCdsCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object oCdsCGC: TStringField
      FieldName = 'CGC'
    end
    object oCdsIERG: TStringField
      FieldName = 'IERG'
      Size = 15
    end
    object oCdsFJ: TStringField
      FieldName = 'FJ'
      Size = 1
    end
    object oCdsTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object oCdsDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object oCdsEMAI: TStringField
      FieldName = 'EMAI'
      Size = 80
    end
    object oCdsCLIFORTRANSP: TStringField
      FieldName = 'CLIFORTRANSP'
      Size = 1
    end
  end
  inherited oDS: TDataSource
    Left = 120
    Top = 72
  end
  inherited SaveDialog: TSaveDialog
    Left = 408
  end
  object dspCliFor: TDataSetProvider
    DataSet = DM.sqlCliFor
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 34
    Top = 72
  end
end
