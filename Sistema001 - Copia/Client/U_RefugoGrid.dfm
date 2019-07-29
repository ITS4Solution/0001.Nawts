inherited F_RefugoGrid: TF_RefugoGrid
  Caption = 'Refugo'
  ClientWidth = 632
  ExplicitWidth = 648
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 632
    ExplicitWidth = 632
  end
  inherited Panel1: TPanel
    Width = 632
    ExplicitWidth = 632
    inherited btnsair: TAdvGlassButton
      Left = 524
      ExplicitLeft = 524
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 419
      Anchors = [akLeft, akTop, akRight]
      ExplicitLeft = 419
    end
    object btnNovo: TAdvGlassButton
      Left = 11
      Top = 14
      Width = 100
      Height = 32
      Anchors = [akLeft, akTop, akRight]
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
    Width = 632
    ExplicitWidth = 632
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Insumo'
        DataBinding.FieldName = 'descricao'
        Width = 201
      end
      object cxGrid1DBTableView1qtd: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'qtd'
        Width = 93
      end
      object cxGrid1DBTableView1idordemproducao: TcxGridDBColumn
        Caption = 'Ordem de Produ'#231#227'o'
        DataBinding.FieldName = 'idordemproducao'
        Width = 150
      end
      object cxGrid1DBTableView1obs: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'obser'
        Width = 186
      end
    end
  end
  inherited ActionList: TActionList
    Left = 80
    Top = 65528
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspRefugoNome'
    RemoteServer = DM.ShCoGen
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodinsumo: TIntegerField
      FieldName = 'codinsumo'
    end
    object oCdsqtd: TSingleField
      FieldName = 'qtd'
    end
    object oCdsidordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object oCdsobser: TMemoField
      FieldName = 'obser'
      BlobType = ftMemo
      Size = 1
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  inherited oDS: TDataSource
    Top = 65528
  end
end
