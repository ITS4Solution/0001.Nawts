inherited F_NCMBt: TF_NCMBt
  Caption = 'NCM'
  ClientHeight = 381
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 544
    Height = 307
    Align = alClient
    ExplicitTop = 7
    ExplicitWidth = 544
    ExplicitHeight = 453
  end
  inherited Image1: TImage
    Left = 0
    Top = 428
    Visible = False
    ExplicitLeft = 0
    ExplicitTop = 428
  end
  inherited dxBevel2: TdxBevel
    Left = 33
    Top = 264
    Width = 0
    Height = 3
    Visible = False
    ExplicitLeft = 33
    ExplicitTop = 264
    ExplicitWidth = 0
    ExplicitHeight = 3
  end
  object Label1: TLabel [3]
    Left = 279
    Top = 24
    Width = 15
    Height = 13
    Caption = 'Ex'
    FocusControl = cxDBTextEdit1
  end
  object Label2: TLabel [4]
    Left = 17
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit2
  end
  object Label3: TLabel [5]
    Left = 15
    Top = 107
    Width = 67
    Height = 13
    Caption = 'Aliq. Nacional '
    FocusControl = cxDBTextEdit3
  end
  object Label4: TLabel [6]
    Left = 15
    Top = 24
    Width = 48
    Height = 13
    Caption = 'C'#243'd. NCM'
    FocusControl = cxDBTextEdit4
  end
  object Label5: TLabel [7]
    Left = 231
    Top = 107
    Width = 79
    Height = 13
    Caption = 'Aliq. Importa'#231#227'o'
    FocusControl = cxDBTextEdit5
  end
  object Label6: TLabel [8]
    Left = 17
    Top = 139
    Width = 65
    Height = 13
    Caption = 'Aliq. Estadual'
    FocusControl = cxDBTextEdit6
  end
  object Label7: TLabel [9]
    Left = 243
    Top = 139
    Width = 67
    Height = 13
    Caption = 'Aliq. Municipal'
    FocusControl = cxDBTextEdit7
  end
  object Label8: TLabel [10]
    Left = 60
    Top = 168
    Width = 22
    Height = 13
    Caption = 'Cest'
    FocusControl = cxDBTextEdit8
  end
  object Label9: TLabel [11]
    Left = 231
    Top = 168
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = cxDBTextEdit9
  end
  inherited StatusBar1: TStatusBar
    Top = 362
  end
  inherited Panel1: TPanel
    Top = 307
  end
  object cxDBTextEdit1: TcxDBTextEdit [14]
    Left = 300
    Top = 21
    DataBinding.DataField = 'NCM_EX'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 53
  end
  object cxDBTextEdit2: TcxDBTextEdit [15]
    Left = 17
    Top = 67
    DataBinding.DataField = 'NCM_DESCRICAO'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Width = 505
  end
  object cxDBTextEdit3: TcxDBTextEdit [16]
    Left = 88
    Top = 104
    DataBinding.DataField = 'NCM_ALIQNAC'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit4: TcxDBTextEdit [17]
    Left = 69
    Top = 21
    DataBinding.DataField = 'NCM_CODIGO'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 194
  end
  object cxDBTextEdit5: TcxDBTextEdit [18]
    Left = 321
    Top = 104
    DataBinding.DataField = 'NCM_ALIQIMP'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 121
  end
  object cxDBTextEdit6: TcxDBTextEdit [19]
    Left = 88
    Top = 136
    DataBinding.DataField = 'NCM_ALIQESTADUAL'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 121
  end
  object cxDBTextEdit7: TcxDBTextEdit [20]
    Left = 321
    Top = 136
    DataBinding.DataField = 'NCM_ALIQMUNICIPAL'
    DataBinding.DataSource = oDS
    TabOrder = 8
    Width = 121
  end
  object cxDBTextEdit8: TcxDBTextEdit [21]
    Left = 88
    Top = 165
    DataBinding.DataField = 'NCM_CEST'
    DataBinding.DataSource = oDS
    TabOrder = 9
    Width = 121
  end
  object cxDBTextEdit9: TcxDBTextEdit [22]
    Left = 250
    Top = 165
    DataBinding.DataField = 'NCM_UF'
    DataBinding.DataSource = oDS
    TabOrder = 10
    Width = 31
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 16
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspNCM'
    Left = 24
    Top = 224
    object oCdsCOD_NCM: TIntegerField
      FieldName = 'COD_NCM'
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
    object oCdsNCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
      Required = True
      Size = 10
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
    Left = 56
    Top = 224
  end
  object dspNCM: TDataSetProvider
    DataSet = DM.sqlNCM
    Left = 88
    Top = 224
  end
end
