inherited F_PedidoGrid: TF_PedidoGrid
  Caption = 'Pedidos'
  ClientWidth = 818
  ExplicitWidth = 834
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 818
    ExplicitWidth = 818
  end
  inherited Panel1: TPanel
    Width = 818
    ExplicitWidth = 818
    inherited btnsair: TAdvGlassButton
      Left = 710
      ExplicitLeft = 710
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 604
      ExplicitLeft = 604
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 12
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
    Width = 818
    ExplicitWidth = 818
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1datapedido: TcxGridDBColumn
        Caption = 'Pedido'
        DataBinding.FieldName = 'datapedido'
        Width = 41
      end
      object cxGrid1DBTableView1dataentrega: TcxGridDBColumn
        Caption = 'Entrega'
        DataBinding.FieldName = 'dataentrega'
        Width = 47
      end
      object cxGrid1DBTableView1nome: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'nome'
        Width = 103
      end
      object cxGrid1DBTableView1telefone: TcxGridDBColumn
        Caption = 'Telefone'
        DataBinding.FieldName = 'telefone'
        Width = 35
      end
      object cxGrid1DBTableView1celular: TcxGridDBColumn
        Caption = 'Celular'
        DataBinding.FieldName = 'celular'
        Width = 39
      end
      object cxGrid1DBTableView1liquido: TcxGridDBColumn
        Caption = 'L'#237'quido'
        DataBinding.FieldName = 'liquido'
        Width = 23
      end
    end
  end
  inherited ActionList: TActionList
    Top = 65520
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspPedidos'
    RemoteServer = DM.ShCoGen
    Top = 65520
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsdatapedido: TDateField
      FieldName = 'datapedido'
    end
    object oCdsdataentrega: TDateField
      FieldName = 'dataentrega'
    end
    object oCdsnome: TStringField
      FieldName = 'nome'
      Size = 45
    end
    object oCdsendereco: TStringField
      FieldName = 'endereco'
      Size = 45
    end
    object oCdsbairro: TStringField
      FieldName = 'bairro'
      Size = 25
    end
    object oCdscidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object oCdsuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object oCdscep: TStringField
      FieldName = 'cep'
      Size = 12
    end
    object oCdstelefone: TStringField
      FieldName = 'telefone'
      Size = 15
    end
    object oCdscelular: TStringField
      FieldName = 'celular'
      Size = 17
    end
    object oCdsrv: TStringField
      FieldName = 'rv'
      Size = 30
    end
    object oCdsrv2: TStringField
      FieldName = 'rv2'
      Size = 30
    end
    object oCdsrv3: TStringField
      FieldName = 'rv3'
      Size = 30
    end
    object oCdspvbruto: TSingleField
      FieldName = 'pvbruto'
    end
    object oCdsdesconto: TSingleField
      FieldName = 'desconto'
    end
    object oCdsliquido: TSingleField
      FieldName = 'liquido'
    end
  end
  inherited oDS: TDataSource
    Top = 65528
  end
end
