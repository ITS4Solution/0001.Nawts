inherited F_UsuariosGrid: TF_UsuariosGrid
  Caption = 'Lista de usu'#225'rios'
  ClientWidth = 680
  ExplicitWidth = 696
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 680
    ExplicitWidth = 680
  end
  inherited Panel1: TPanel
    Width = 680
    ExplicitWidth = 680
    inherited btnsair: TAdvGlassButton
      Left = 572
      ExplicitLeft = 572
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 466
      ExplicitLeft = 466
    end
    object btnNovo: TAdvGlassButton
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
      Version = '1.3.0.2'
      OnClick = btnNovoClick
    end
    object btnAlterar: TAdvGlassButton
      Left = 115
      Top = 14
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Alterar'
      Enabled = False
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
      TabOrder = 3
      Version = '1.3.0.2'
      Visible = False
      OnClick = btnAlterarClick
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 680
    ExplicitWidth = 680
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1nome: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'nome'
      end
      object cxGrid1DBTableView1email: TcxGridDBColumn
        Caption = 'E-mail'
        DataBinding.FieldName = 'email'
      end
      object cxGrid1DBTableView1usuario: TcxGridDBColumn
        Caption = 'Usu'#225'rio'
        DataBinding.FieldName = 'usuario'
      end
    end
  end
  inherited ActionList: TActionList
    Left = 472
    Top = 65520
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspUsuariosLista'
    RemoteServer = DM.ShCoGen
    Left = 32
    Top = 65520
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object oCdsemail: TStringField
      FieldName = 'email'
      Required = True
      Size = 45
    end
    object oCdsusuario: TStringField
      FieldName = 'usuario'
      Required = True
      Size = 45
    end
    object oCdssenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 45
    end
  end
  inherited oDS: TDataSource
    Left = 64
    Top = 65520
  end
end
