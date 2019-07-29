inherited F_SaidaProducao: TF_SaidaProducao
  Caption = 'Sa'#237'da de Estoque'
  ClientWidth = 1190
  OnClose = FormClose
  ExplicitWidth = 1206
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 1190
    ExplicitWidth = 1190
  end
  inherited Panel1: TPanel
    Width = 1190
    ExplicitWidth = 1190
    inherited btnsair: TAdvGlassButton
      Left = 1082
      ExplicitLeft = 1082
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 976
      Anchors = [akTop, akRight, akBottom]
      ExplicitLeft = 976
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 1190
    ExplicitWidth = 1190
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codopenvase: TcxGridDBColumn
        Caption = 'C'#243'd.Envase'
        DataBinding.FieldName = 'codopenvase'
        Width = 75
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Descricao'
        DataBinding.FieldName = 'descricao'
        Width = 331
      end
      object cxGrid1DBTableView1qtdprevista: TcxGridDBColumn
        Caption = 'Qtd. Total'
        DataBinding.FieldName = 'qtdprevista'
        Width = 78
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 62
      end
      object cxGrid1DBTableView1hora: TcxGridDBColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'hora'
        Width = 56
      end
      object cxGrid1DBTableView1operador: TcxGridDBColumn
        Caption = 'Operador'
        DataBinding.FieldName = 'operador'
        Width = 196
      end
      object cxGrid1DBTableView1status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        Width = 112
      end
      object cxGrid1DBTableView1qtd: TcxGridDBColumn
        Caption = 'Qtd. Requerida'
        DataBinding.FieldName = 'qtd'
        Width = 94
      end
      object cxGrid1DBTableView1datains: TcxGridDBColumn
        Caption = 'Data Inser'#231#227'o'
        DataBinding.FieldName = 'datains'
        Width = 87
      end
      object cxGrid1DBTableView1horains: TcxGridDBColumn
        Caption = 'Hora Inser'#231#227'o'
        DataBinding.FieldName = 'horains'
        Width = 97
      end
    end
  end
  inherited ActionList: TActionList
    Left = 88
    Top = 65520
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspSaidaProducao'
    RemoteServer = DM.ShCoGen
    Left = 24
    Top = 65520
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
    object oCdsqtd: TSingleField
      FieldName = 'qtd'
    end
    object oCdsdatains: TDateField
      FieldName = 'datains'
    end
    object oCdsIDCONTROLE: TIntegerField
      FieldName = 'IDCONTROLE'
      Required = True
    end
    object oCdshorains: TTimeField
      FieldName = 'horains'
    end
  end
  inherited oDS: TDataSource
    Left = 56
    Top = 65520
  end
  inherited SaveDialog: TSaveDialog
    Left = 152
    Top = 65520
  end
  object dboCds: TfrxDBDataset
    UserName = 'dboCds'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'codopenvase=codopenvase'
      'idprodutos=idprodutos'
      'qtdprevista=qtdprevista'
      'qtdreal=qtdreal'
      'hora=hora'
      'data=data'
      'ue=ue'
      'lote=lote'
      'cpa=cpa'
      'operador=operador'
      'status=status'
      'descricao=descricao')
    DataSet = oCds
    BCDToCurrency = False
    Left = 120
    Top = 65520
  end
end
