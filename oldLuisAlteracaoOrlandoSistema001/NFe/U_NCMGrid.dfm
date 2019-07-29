inherited F_NCMGrid: TF_NCMGrid
  Caption = 'NCM'
  ClientWidth = 798
  ExplicitWidth = 814
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 798
  end
  inherited Panel1: TPanel
    Width = 798
    inherited btnsair: TAdvGlassButton
      Left = 690
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 585
      Anchors = [akTop, akRight]
      ExplicitLeft = 585
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 12
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
    Width = 798
    ExplicitTop = 8
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1COD_NCM: TcxGridDBColumn
        Caption = 'NCM'
        DataBinding.FieldName = 'COD_NCM'
        Width = 95
      end
      object cxGrid1DBTableView1NCM_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'd. NCM'
        DataBinding.FieldName = 'NCM_CODIGO'
        Width = 82
      end
      object cxGrid1DBTableView1NCM_EX: TcxGridDBColumn
        Caption = 'EX'
        DataBinding.FieldName = 'NCM_EX'
        Width = 43
      end
      object cxGrid1DBTableView1NCM_DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'NCM_DESCRICAO'
        Width = 226
      end
      object cxGrid1DBTableView1NCM_ALIQNAC: TcxGridDBColumn
        Caption = 'Aliq. Nac.'
        DataBinding.FieldName = 'NCM_ALIQNAC'
        Width = 58
      end
      object cxGrid1DBTableView1NCM_ALIQIMP: TcxGridDBColumn
        Caption = 'Aliq. Import.'
        DataBinding.FieldName = 'NCM_ALIQIMP'
        Width = 59
      end
      object cxGrid1DBTableView1NCM_ALIQESTADUAL: TcxGridDBColumn
        Caption = 'Aliq. Estad.'
        DataBinding.FieldName = 'NCM_ALIQESTADUAL'
        Width = 58
      end
      object cxGrid1DBTableView1NCM_ALIQMUNICIPAL: TcxGridDBColumn
        Caption = 'Aliq. Munic.'
        DataBinding.FieldName = 'NCM_ALIQMUNICIPAL'
        Width = 58
      end
      object cxGrid1DBTableView1NCM_CEST: TcxGridDBColumn
        Caption = 'Cest'
        DataBinding.FieldName = 'NCM_CEST'
        Width = 59
      end
      object cxGrid1DBTableView1NCM_UF: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'NCM_UF'
        Width = 58
      end
    end
  end
  inherited ActionList: TActionList
    Left = 144
    Top = 65520
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspNCMGrid'
    Left = 16
    Top = 65520
    object oCdsCOD_NCM: TIntegerField
      FieldName = 'COD_NCM'
    end
    object oCdsNCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
      Required = True
      Size = 10
    end
    object oCdsNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object oCdsNCM_DESCRICAO: TStringField
      FieldName = 'NCM_DESCRICAO'
      Size = 2000
    end
    object oCdsNCM_ALIQNAC: TFMTBCDField
      FieldName = 'NCM_ALIQNAC'
      Precision = 18
      Size = 2
    end
    object oCdsNCM_ALIQIMP: TFMTBCDField
      FieldName = 'NCM_ALIQIMP'
      Precision = 18
      Size = 2
    end
    object oCdsNCM_ALIQESTADUAL: TFMTBCDField
      FieldName = 'NCM_ALIQESTADUAL'
      Precision = 18
      Size = 2
    end
    object oCdsNCM_ALIQMUNICIPAL: TFMTBCDField
      FieldName = 'NCM_ALIQMUNICIPAL'
      Precision = 18
      Size = 2
    end
    object oCdsNCM_CEST: TStringField
      FieldName = 'NCM_CEST'
      Size = 10
    end
    object oCdsNCM_UF: TStringField
      FieldName = 'NCM_UF'
      FixedChar = True
      Size = 2
    end
  end
  inherited oDS: TDataSource
    Left = 48
    Top = 65520
  end
  object dspNCMGrid: TDataSetProvider
    DataSet = DM.sqlNCM
    Left = 88
    Top = 65520
  end
end
