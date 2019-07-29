inherited F_ICMS: TF_ICMS
  Caption = 'ICMS'
  ClientHeight = 381
  ClientWidth = 587
  ExplicitWidth = 603
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage [0]
    Left = -9
    Top = 336
    Visible = False
    ExplicitLeft = -9
    ExplicitTop = 336
  end
  inherited dxBevel1: TdxBevel [1]
    Top = 0
    Width = 587
    Height = 307
    Align = alClient
    ExplicitTop = -6
    ExplicitWidth = 587
    ExplicitHeight = 307
  end
  inherited dxBevel2: TdxBevel
    Left = -5
    Top = 320
    Width = 5
    Height = 10
    Visible = False
    ExplicitLeft = -5
    ExplicitTop = 320
    ExplicitWidth = 5
    ExplicitHeight = 10
  end
  object Label1: TLabel [3]
    Left = 21
    Top = 24
    Width = 51
    Height = 13
    Caption = 'C'#243'd. ICMS'
    FocusControl = cxDBSpinEdit1
  end
  object Label2: TLabel [4]
    Left = 219
    Top = 24
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [5]
    Left = 21
    Top = 64
    Width = 67
    Height = 13
    Caption = 'Aliquota ICMS'
    FocusControl = cxDBTextEdit2
  end
  object Label4: TLabel [6]
    Left = 24
    Top = 97
    Width = 64
    Height = 13
    Caption = 'Interno ICMS'
    FocusControl = cxDBTextEdit3
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 587
    ExplicitTop = 362
    ExplicitWidth = 587
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 587
    ExplicitTop = 307
    ExplicitWidth = 587
    inherited btnsair: TAdvGlassButton
      Left = 481
      ExplicitLeft = 481
    end
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [9]
    Left = 78
    Top = 21
    DataBinding.DataField = 'COD_ICMS'
    DataBinding.DataSource = oDS
    Enabled = False
    TabOrder = 2
    Width = 97
  end
  object cxDBTextEdit1: TcxDBTextEdit [10]
    Left = 238
    Top = 21
    DataBinding.DataField = 'ICMS_UF'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Width = 43
  end
  object cxDBTextEdit2: TcxDBTextEdit [11]
    Left = 101
    Top = 61
    DataBinding.DataField = 'ICMS_ALIQUOTA'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 179
  end
  object cxDBTextEdit3: TcxDBTextEdit [12]
    Left = 101
    Top = 94
    DataBinding.DataField = 'ICMS_INTERNO'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 179
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspICMS'
    Left = 464
    Top = 256
    object oCdsCOD_ICMS: TIntegerField
      FieldName = 'COD_ICMS'
    end
    object oCdsICMS_UF: TStringField
      FieldName = 'ICMS_UF'
      FixedChar = True
      Size = 2
    end
    object oCdsICMS_ALIQUOTA: TFMTBCDField
      FieldName = 'ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object oCdsICMS_INTERNO: TFMTBCDField
      FieldName = 'ICMS_INTERNO'
      Precision = 18
      Size = 2
    end
  end
  inherited oDS: TDataSource
    Left = 496
    Top = 256
  end
  object dspICMS: TDataSetProvider
    DataSet = DM.sqlICMS
    Left = 528
    Top = 256
  end
end
