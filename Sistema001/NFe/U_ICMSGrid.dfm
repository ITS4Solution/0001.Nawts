inherited F_ICMSGrid: TF_ICMSGrid
  Caption = 'ICMS'
  ClientWidth = 722
  ExplicitWidth = 738
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 722
    ExplicitWidth = 722
  end
  inherited Panel1: TPanel
    Width = 722
    ExplicitWidth = 722
    inherited btnsair: TAdvGlassButton
      Left = 614
      ExplicitLeft = 614
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 507
      Width = 105
      Anchors = [akTop, akRight]
      ExplicitLeft = 507
      ExplicitWidth = 105
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
    Width = 722
    ExplicitWidth = 722
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1COD_ICMS: TcxGridDBColumn
        Caption = 'C'#243'd. ICMS'
        DataBinding.FieldName = 'COD_ICMS'
        Width = 195
      end
      object cxGrid1DBTableView1ICMS_UF: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'ICMS_UF'
        Width = 65
      end
      object cxGrid1DBTableView1ICMS_ALIQUOTA: TcxGridDBColumn
        Caption = 'Aliquota'
        DataBinding.FieldName = 'ICMS_ALIQUOTA'
        Width = 226
      end
      object cxGrid1DBTableView1ICMS_INTERNO: TcxGridDBColumn
        Caption = 'Interno'
        DataBinding.FieldName = 'ICMS_INTERNO'
        Width = 223
      end
    end
  end
  inherited ActionList: TActionList
    Left = 632
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspICMSGrid'
    Left = 16
    Top = 224
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
    Left = 48
    Top = 224
  end
  object dspICMSGrid: TDataSetProvider
    DataSet = DM.sqlICMS
    Left = 80
    Top = 224
  end
end
