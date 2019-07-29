inherited F_MateriaPrimaGrid: TF_MateriaPrimaGrid
  Caption = 'Mat'#233'ria Prima'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited AdvGlassButton2: TAdvGlassButton
      Anchors = [akRight, akBottom]
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 9
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
      object cxGrid1DBTableView1codigo: TcxGridDBColumn
        DataBinding.FieldName = 'codigo'
      end
      object cxGrid1DBTableView1ue: TcxGridDBColumn
        DataBinding.FieldName = 'ue'
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
      end
    end
  end
  inherited ActionList: TActionList
    Left = 384
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblMatPrima'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Size = 30
    end
    object oCdsue: TStringField
      DisplayLabel = 'UE'
      FieldName = 'ue'
      Size = 10
    end
    object oCdsdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
  end
end
