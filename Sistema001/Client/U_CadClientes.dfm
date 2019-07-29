inherited F_CadClientes: TF_CadClientes
  Caption = 'Clientes'
  ExplicitHeight = 414
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object AdvGlassButton1: TAdvGlassButton
      Left = 8
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
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1nome: TcxGridDBColumn
        DataBinding.FieldName = 'nome'
      end
      object cxGrid1DBTableView1cnpj: TcxGridDBColumn
        DataBinding.FieldName = 'cnpj'
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspClientes'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsnome: TStringField
      FieldName = 'nome'
      Size = 45
    end
    object oCdscnpj: TStringField
      FieldName = 'cnpj'
      Size = 18
    end
  end
end
