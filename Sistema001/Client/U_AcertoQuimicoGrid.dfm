inherited F_AcertoQuimicoGrid: TF_AcertoQuimicoGrid
  Caption = 'Acerto de Estoque - Qu'#237'mico'
  ClientHeight = 503
  ClientWidth = 945
  ExplicitWidth = 961
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 484
    Width = 945
    ExplicitTop = 484
    ExplicitWidth = 945
  end
  inherited Panel1: TPanel
    Top = 429
    Width = 945
    ExplicitTop = 429
    ExplicitWidth = 945
    inherited btnsair: TAdvGlassButton
      Left = 837
      ExplicitLeft = 837
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 733
      Anchors = [akTop, akRight]
      ExplicitLeft = 733
    end
    object btnNovo: TAdvGlassButton
      Left = 18
      Top = 17
      Width = 100
      Height = 32
      Anchors = [akLeft, akBottom]
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
    Width = 945
    Height = 429
    ExplicitWidth = 945
    ExplicitHeight = 429
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = oDS
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Mat'#233'ria-prima'
        DataBinding.FieldName = 'descricao'
        Width = 353
      end
      object cxGrid1DBTableView1tipo: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tipo'
        Width = 79
      end
      object cxGrid1DBTableView1quantd: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'quantd'
        Width = 108
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 78
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 114
      end
      object cxGrid1DBTableView1obs: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'obs'
        Width = 169
      end
    end
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 65520
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspEstQuimico'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object oCdsidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object oCdstipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object oCdsquantd: TSingleField
      FieldName = 'quantd'
    end
    object oCdsidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
    object oCdsidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 40
    end
    object oCdsdataval: TDateField
      FieldName = 'dataval'
    end
    object oCdslocal: TStringField
      FieldName = 'local'
      Size = 10
    end
    object oCdshora: TTimeField
      FieldName = 'hora'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  inherited SaveDialog: TSaveDialog
    Left = 416
    Top = 65528
  end
end
