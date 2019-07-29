inherited F_EstoqueAdmar: TF_EstoqueAdmar
  Caption = 'Estoque - Envio Expedi'#231#227'o'
  ClientHeight = 445
  ClientWidth = 897
  ExplicitWidth = 913
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 426
    Width = 897
    ExplicitTop = 426
    ExplicitWidth = 897
  end
  inherited Panel1: TPanel
    Top = 371
    Width = 897
    ExplicitTop = 371
    ExplicitWidth = 897
    inherited btnsair: TAdvGlassButton
      Left = 786
      ExplicitLeft = 786
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 680
      Anchors = [akTop, akRight]
      ExplicitLeft = 680
    end
    object btnNovo: TAdvGlassButton
      Left = 10
      Top = 14
      Width = 100
      Height = 32
      Anchors = [akTop, akRight]
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
    Width = 897
    Height = 371
    ExplicitTop = -6
    ExplicitWidth = 897
    ExplicitHeight = 371
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = oDS
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 85
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'descricao'
        Width = 366
      end
      object cxGrid1DBTableView1qtdreal: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'qtdreal'
        Width = 110
      end
      object cxGrid1DBTableView1ue: TcxGridDBColumn
        Caption = 'UE'
        DataBinding.FieldName = 'ue'
        Width = 48
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 79
      end
      object cxGrid1DBTableView1operador: TcxGridDBColumn
        Caption = 'Operador'
        DataBinding.FieldName = 'operador'
        Width = 127
      end
    end
  end
  inherited ActionList: TActionList
    Left = 80
    Top = 65520
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblOrdemEnvase'
    RemoteServer = DM.ShCoGen
    Top = 65520
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
    Top = 65528
  end
end
