inherited F_SaidaEmbalagemGrid: TF_SaidaEmbalagemGrid
  Caption = 'Sa'#237'da de Embalagem '
  ClientHeight = 440
  ClientWidth = 829
  ExplicitWidth = 845
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 421
    Width = 829
    ExplicitTop = 421
    ExplicitWidth = 829
  end
  inherited Panel1: TPanel
    Top = 366
    Width = 829
    ExplicitTop = 360
    ExplicitWidth = 829
    inherited btnsair: TAdvGlassButton
      Left = 721
      ExplicitLeft = 721
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 616
      Width = 99
      Anchors = [akTop, akRight]
      ExplicitLeft = 616
      ExplicitWidth = 99
    end
    object btnNovo: TAdvGlassButton
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
      Version = '1.3.0.2'
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 829
    Height = 366
    ExplicitWidth = 829
    ExplicitHeight = 366
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codopenvase: TcxGridDBColumn
        Caption = 'C'#243'd. Ordem Produ'#231#227'o'
        DataBinding.FieldName = 'codopenvase'
        Width = 150
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 103
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'descricao'
        Width = 385
      end
      object cxGrid1DBTableView1qtdprevista: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'qtdprevista'
        Width = 76
      end
      object cxGrid1DBTableView1status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        Width = 119
      end
    end
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 65528
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspOrdemSaida'
    RemoteServer = DM.ShCoGen
    Left = 16
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdscodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object oCdsidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object oCdsqtdprevista: TSingleField
      FieldName = 'qtdprevista'
    end
    object oCdsqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsstatus: TStringField
      FieldName = 'status'
      Size = 15
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  inherited oDS: TDataSource
    Left = 56
    Top = 65528
  end
  inherited SaveDialog: TSaveDialog
    Left = 512
    Top = 65528
  end
end
