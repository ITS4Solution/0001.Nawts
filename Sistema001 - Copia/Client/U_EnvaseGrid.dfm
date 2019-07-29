inherited F_EnvaseGrid: TF_EnvaseGrid
  Caption = 'Ordem de Produ'#231#227'o - Envase'
  ClientWidth = 751
  ExplicitWidth = 767
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 751
    ExplicitWidth = 751
  end
  inherited Panel1: TPanel
    Width = 751
    ExplicitWidth = 751
    inherited btnsair: TAdvGlassButton
      Left = 638
      ExplicitLeft = 638
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 532
      ExplicitLeft = 532
    end
    object btnNovo: TAdvGlassButton
      Left = 15
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
      OnClick = btnNovoClick
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 751
    ExplicitWidth = 751
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codopenvase: TcxGridDBColumn
        Caption = 'C'#243'd. Envase'
        DataBinding.FieldName = 'codopenvase'
        Width = 47
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'descricao'
        Width = 178
      end
      object cxGrid1DBTableView1qtdprevista: TcxGridDBColumn
        Caption = 'Qtd. Prevista'
        DataBinding.FieldName = 'qtdprevista'
        Width = 87
      end
      object cxGrid1DBTableView1ue: TcxGridDBColumn
        Caption = 'UE'
        DataBinding.FieldName = 'ue'
        Width = 26
      end
      object cxGrid1DBTableView1qtdreal: TcxGridDBColumn
        Caption = 'Qtd. Real '
        DataBinding.FieldName = 'qtdreal'
        Width = 47
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 48
      end
      object cxGrid1DBTableView1hora: TcxGridDBColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'hora'
        Width = 46
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 39
      end
      object cxGrid1DBTableView1cpa: TcxGridDBColumn
        Caption = 'CPA'
        DataBinding.FieldName = 'cpa'
        Width = 31
      end
      object cxGrid1DBTableView1operador: TcxGridDBColumn
        Caption = 'Operador'
        DataBinding.FieldName = 'operador'
        Width = 131
      end
      object cxGrid1DBTableView1status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        Width = 69
      end
    end
  end
  inherited ActionList: TActionList
    Left = 496
    Top = 0
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblOrdemEnvase'
    RemoteServer = DM.ShCoGen
    Top = 0
    object oCdsid: TIntegerField
      FieldName = 'id'
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
    object oCdshora: TTimeField
      FieldName = 'hora'
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object oCdscpa: TStringField
      FieldName = 'cpa'
      Size = 5
    end
    object oCdsoperador: TStringField
      FieldName = 'operador'
      Size = 30
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
    Top = 0
  end
end
