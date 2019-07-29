inherited F_EspMPGrid: TF_EspMPGrid
  Caption = 'Listagem de Especifica'#231#227'o de Mat'#233'ria Prima'
  ClientHeight = 600
  ClientWidth = 637
  ExplicitWidth = 653
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 581
    Width = 637
    ExplicitTop = 581
    ExplicitWidth = 637
  end
  inherited Panel1: TPanel
    Top = 526
    Width = 637
    ExplicitTop = 526
    ExplicitWidth = 637
    inherited btnsair: TAdvGlassButton
      Left = 529
      ExplicitLeft = 529
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 427
      Anchors = [akTop, akRight]
      ExplicitLeft = 427
    end
    object btnNovo: TAdvGlassButton
      Left = 9
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
    Width = 637
    Height = 526
    ExplicitWidth = 637
    ExplicitHeight = 526
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
        Width = 100
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descricao'
        Width = 532
      end
      object cxGrid1DBTableView1pl: TcxGridDBColumn
        Caption = 'PL'
        DataBinding.FieldName = 'pl'
        Width = 89
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspMPEspList'
    RemoteServer = DM.ShCoGen
    Top = 0
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsidmp: TIntegerField
      FieldName = 'idmp'
    end
    object oCdsmaterial: TStringField
      FieldName = 'material'
      Size = 80
    end
    object oCdscor: TStringField
      FieldName = 'cor'
      Size = 50
    end
    object oCdscrtcor: TStringField
      FieldName = 'crtcor'
      Size = 50
    end
    object oCdsodor: TStringField
      FieldName = 'odor'
      Size = 50
    end
    object oCdstoxidade: TStringField
      FieldName = 'toxidade'
      Size = 50
    end
    object oCdsdensidade: TStringField
      FieldName = 'densidade'
      Size = 50
    end
    object oCdsismg: TStringField
      FieldName = 'ismg'
      Size = 50
    end
    object oCdsiiodo: TStringField
      FieldName = 'iiodo'
      Size = 50
    end
    object oCdsipero: TStringField
      FieldName = 'ipero'
      Size = 50
    end
    object oCdsumidade: TStringField
      FieldName = 'umidade'
      Size = 50
    end
    object oCdsconservacao: TStringField
      FieldName = 'conservacao'
      Size = 50
    end
    object oCdsfinalidade: TStringField
      FieldName = 'finalidade'
      Size = 50
    end
    object oCdspl: TStringField
      FieldName = 'pl'
      Size = 10
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object oCdscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  inherited oDS: TDataSource
    Top = 0
  end
end
