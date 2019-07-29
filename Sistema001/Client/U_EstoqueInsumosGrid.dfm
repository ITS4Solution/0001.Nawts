inherited F_EstoqueInsumosGrid: TF_EstoqueInsumosGrid
  Caption = 'Movimenta'#231#227'o do Estoque'
  ClientHeight = 393
  ClientWidth = 731
  ExplicitWidth = 747
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 374
    Width = 731
    ExplicitWidth = 731
  end
  inherited Panel1: TPanel
    Top = 319
    Width = 731
    ExplicitWidth = 731
    inherited btnsair: TAdvGlassButton
      Left = 623
      ExplicitLeft = 623
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 517
      Anchors = [akTop, akRight]
      ExplicitLeft = 517
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 14
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
    Width = 731
    Height = 319
    ExplicitWidth = 731
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = oDS
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Insumo'
        DataBinding.FieldName = 'descricao'
        Width = 202
      end
      object cxGrid1DBTableView1tipo: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tipo'
        Width = 91
      end
      object cxGrid1DBTableView1quantd: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'quantd'
        Width = 113
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 98
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 123
      end
      object cxGrid1DBTableView1obs: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'obs'
        Width = 102
      end
    end
  end
  inherited ActionList: TActionList
    Left = 152
    Top = 65528
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspAcertoInsumo'
    RemoteServer = DM.ShCoGen
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object oCdsidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object oCdstipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object oCdsquantd: TSingleField
      FieldName = 'quantd'
      DisplayFormat = '#,##0.00'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 40
    end
  end
  inherited oDS: TDataSource
    Left = 64
    Top = 65520
  end
end
