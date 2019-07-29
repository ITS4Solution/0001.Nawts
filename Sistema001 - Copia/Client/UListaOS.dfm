inherited F_ListaOS: TF_ListaOS
  Caption = 'Lista de O.S.'
  ClientHeight = 400
  ClientWidth = 624
  ExplicitWidth = 640
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 381
    Width = 624
    ExplicitTop = 381
    ExplicitWidth = 624
  end
  inherited Panel1: TPanel
    Top = 326
    Width = 624
    ExplicitTop = 326
    ExplicitWidth = 624
    inherited btnsair: TAdvGlassButton
      Left = 516
      ExplicitLeft = 516
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 412
      Anchors = [akRight, akBottom]
      ExplicitLeft = 412
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 17
      Top = 14
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Nova O.S.'
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
    Width = 624
    Height = 326
    ExplicitWidth = 624
    ExplicitHeight = 326
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1numeroos: TcxGridDBColumn
        DataBinding.FieldName = 'numeroos'
      end
      object cxGrid1DBTableView1pedido: TcxGridDBColumn
        DataBinding.FieldName = 'pedido'
      end
      object cxGrid1DBTableView1cliente: TcxGridDBColumn
        DataBinding.FieldName = 'cliente'
      end
      object cxGrid1DBTableView1dataentrega: TcxGridDBColumn
        DataBinding.FieldName = 'dataentrega'
      end
      object cxGrid1DBTableView1tempoitem: TcxGridDBColumn
        DataBinding.FieldName = 'tempoitem'
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspOrdemServicoCad'
    RemoteServer = DM.ShCoGen
    object oCdsid: TLargeintField
      FieldName = 'id'
    end
    object oCdsnumeroos: TStringField
      DisplayLabel = 'O.S.'
      FieldName = 'numeroos'
      Size = 15
    end
    object oCdspedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object oCdscliente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Size = 45
    end
    object oCdsdataentrega: TDateField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'dataentrega'
    end
    object oCdstempoitem: TIntegerField
      DisplayLabel = 'Tempo'
      FieldName = 'tempoitem'
    end
  end
end
