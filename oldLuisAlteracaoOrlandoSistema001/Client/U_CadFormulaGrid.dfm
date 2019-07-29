inherited F_CadFormulaGrid: TF_CadFormulaGrid
  Cursor = crArrow
  Caption = 'F'#243'rmulas'
  ClientWidth = 695
  ExplicitWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 307
    Width = 695
    ExplicitTop = 307
    ExplicitWidth = 695
  end
  inherited Panel1: TPanel
    Top = 326
    Width = 695
    Height = 49
    ExplicitTop = 326
    ExplicitWidth = 695
    ExplicitHeight = 49
    inherited btnsair: TAdvGlassButton
      Left = 584
      Top = 9
      ExplicitLeft = 584
      ExplicitTop = 9
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 478
      Top = 9
      ExplicitLeft = 478
      ExplicitTop = 9
    end
    object btnNovo: TAdvGlassButton
      Left = 15
      Top = 9
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
      OnClick = btnNovoClick
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 695
    Height = 307
    ExplicitWidth = 695
    ExplicitHeight = 307
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
        Width = 76
      end
      object cxGrid1DBTableView1descricaoformula: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descricaoformula'
        Width = 276
      end
      object cxGrid1DBTableView1percentual: TcxGridDBColumn
        Caption = 'Percentual'
        DataBinding.FieldName = 'percentual'
        Width = 86
      end
      object cxGrid1DBTableView1idcodprocesso: TcxGridDBColumn
        Caption = 'C'#243'd. Processo'
        DataBinding.FieldName = 'idcodprocesso'
        Width = 87
      end
    end
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 80
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblFormula'
    RemoteServer = DM.ShCoGen
    Left = 16
    Top = 80
    object oCdsvalido: TIntegerField
      FieldName = 'valido'
    end
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodigo: TStringField
      FieldName = 'codigo'
      Size = 4
    end
    object oCdsdescricaoformula: TStringField
      FieldName = 'descricaoformula'
      Size = 50
    end
    object oCdsobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
      Size = 1
    end
    object oCdspercentual: TSingleField
      FieldName = 'percentual'
    end
    object oCdsidcodprocesso: TStringField
      FieldName = 'idcodprocesso'
      Size = 10
    end
  end
  inherited oDS: TDataSource
    Left = 48
    Top = 80
  end
end
