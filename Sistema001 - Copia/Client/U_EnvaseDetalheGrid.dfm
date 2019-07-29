inherited F_EnvaseDetalheGrid: TF_EnvaseDetalheGrid
  Caption = 'Orden de Produ'#231#227'o - Envase Detalhe'
  ClientHeight = 376
  ClientWidth = 568
  ExplicitWidth = 584
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 357
    Width = 568
  end
  inherited Panel1: TPanel
    Top = 302
    Width = 568
    inherited btnsair: TAdvGlassButton
      Left = 460
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 354
      Anchors = [akTop, akRight, akBottom]
      ExplicitLeft = 319
    end
    object BtNovo: TAdvGlassButton
      Left = 16
      Top = 14
      Width = 100
      Height = 32
      Anchors = [akLeft, akTop, akBottom]
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
      OnClick = BtNovoClick
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 568
    Height = 302
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codenvase: TcxGridDBColumn
        Caption = 'C'#243'd.Envase'
        DataBinding.FieldName = 'codenvase'
        Width = 59
      end
      object cxGrid1DBTableView1idproduto: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'idproduto'
        Width = 60
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 59
      end
      object cxGrid1DBTableView1hora: TcxGridDBColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'hora'
        Width = 60
      end
      object cxGrid1DBTableView1qtdprevista: TcxGridDBColumn
        Caption = 'Qtd.Prevista'
        DataBinding.FieldName = 'qtdprevista'
        Width = 59
      end
      object cxGrid1DBTableView1ue: TcxGridDBColumn
        Caption = 'UE'
        DataBinding.FieldName = 'ue'
        Width = 32
      end
      object cxGrid1DBTableView1qtdreal: TcxGridDBColumn
        Caption = 'Qtd.Real'
        DataBinding.FieldName = 'qtdreal'
        Width = 59
      end
      object cxGrid1DBTableView1cpa: TcxGridDBColumn
        Caption = 'CPA'
        DataBinding.FieldName = 'cpa'
        Width = 32
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 48
      end
      object cxGrid1DBTableView1operador: TcxGridDBColumn
        Caption = 'Operador'
        DataBinding.FieldName = 'operador'
        Width = 98
      end
      object cxGrid1DBTableView1status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        Width = 70
      end
      object cxGrid1DBTableView1idordemenvase: TcxGridDBColumn
        Caption = 'Ordem de Envase'
        DataBinding.FieldName = 'idordemenvase'
        Width = 150
      end
    end
  end
  inherited ActionList: TActionList
    Left = 152
    Top = 65512
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblOrdemEnvaseDetalhe'
    RemoteServer = DM.ShCoGen
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodenvase: TIntegerField
      FieldName = 'codenvase'
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
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
    object oCdsidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
  end
  inherited oDS: TDataSource
    Top = 65528
  end
end
