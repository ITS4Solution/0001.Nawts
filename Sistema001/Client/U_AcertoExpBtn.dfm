inherited F_AcertoExpBtn: TF_AcertoExpBtn
  Caption = 'Acerto de estoque - Expedi'#231#227'o '
  ClientHeight = 381
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 544
    Height = 307
    Align = alClient
    ExplicitTop = -6
    ExplicitWidth = 544
    ExplicitHeight = 307
  end
  object Label1: TLabel [3]
    Left = 190
    Top = 8
    Width = 86
    Height = 13
    Caption = 'Escolha o produto'
  end
  object Label2: TLabel [4]
    Left = 190
    Top = 49
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit1
  end
  object Label3: TLabel [5]
    Left = 8
    Top = 189
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  object Label4: TLabel [6]
    Left = 330
    Top = 51
    Width = 53
    Height = 13
    Caption = 'N'#250'mero NF'
    FocusControl = DBEdit2
  end
  object Label5: TLabel [7]
    Left = 190
    Top = 89
    Width = 76
    Height = 13
    Caption = 'Nome do cliente'
    FocusControl = DBEdit3
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    ExplicitTop = 362
  end
  inherited Panel1: TPanel
    Top = 307
    ExplicitTop = 307
  end
  object DBLookupComboBox1: TDBLookupComboBox [10]
    Left = 190
    Top = 24
    Width = 340
    Height = 21
    DataField = 'idprod'
    DataSource = oDS
    KeyField = 'id'
    ListField = 'descricao;codproduto'
    ListSource = dsProduto
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [11]
    Left = 190
    Top = 65
    Width = 134
    Height = 21
    DataField = 'qtd'
    DataSource = oDS
    TabOrder = 3
  end
  object DBMemo1: TDBMemo [12]
    Left = 8
    Top = 208
    Width = 522
    Height = 85
    DataField = 'obs'
    DataSource = oDS
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [13]
    Left = 330
    Top = 65
    Width = 91
    Height = 21
    DataField = 'numnf'
    DataSource = oDS
    TabOrder = 5
  end
  object DBEdit3: TDBEdit [14]
    Left = 190
    Top = 104
    Width = 340
    Height = 21
    DataField = 'nomecliente'
    DataSource = oDS
    TabOrder = 6
  end
  object recSeq: TPanel [15]
    Left = 93
    Top = 131
    Width = 344
    Height = 103
    Enabled = False
    TabOrder = 7
    Visible = False
    object Label11: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 336
      Height = 14
      Align = alTop
      Caption = 'Digite o c'#243'digo sequ'#234'ncial do CI '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 201
    end
    object edtSeq: TEdit
      AlignWithMargins = True
      Left = 25
      Top = 30
      Width = 288
      Height = 21
      TabOrder = 0
    end
    object AdvGlassButton2: TAdvGlassButton
      Left = 7
      Top = 64
      Width = 80
      Height = 32
      BackColor = 6052956
      Caption = 'Cancelar'
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
      TabOrder = 1
      Version = '1.3.0.2'
      OnClick = AdvGlassButton2Click
    end
    object AdvGlassButton3: TAdvGlassButton
      Left = 174
      Top = 64
      Width = 80
      Height = 32
      BackColor = 6052956
      Caption = 'Enviar'
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
      OnClick = AdvGlassButton3Click
    end
    object btnCI: TAdvGlassButton
      Left = 91
      Top = 65
      Width = 80
      Height = 32
      BackColor = 6052956
      Caption = 'Gerar CI'
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
      OnClick = btnCIClick
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 257
      Top = 64
      Width = 80
      Height = 32
      BackColor = 6052956
      Caption = 'Enviar sem CI'
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
      TabOrder = 4
      Version = '1.3.0.2'
      Visible = False
    end
  end
  inherited ActionList: TActionList
    Left = 80
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspBaixa'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsidop: TIntegerField
      FieldName = 'idop'
    end
    object oCdsidprod: TIntegerField
      FieldName = 'idprod'
    end
    object oCdsqtd: TSingleField
      FieldName = 'qtd'
    end
    object oCdsdataexp: TDateField
      FieldName = 'dataexp'
    end
    object oCdshoraexp: TTimeField
      FieldName = 'horaexp'
    end
    object oCdsnumnf: TStringField
      FieldName = 'numnf'
      Size = 15
    end
    object oCdsnomecliente: TStringField
      FieldName = 'nomecliente'
      Size = 150
    end
    object oCdsobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 64
    object cdsProdutoid: TIntegerField
      FieldName = 'id'
    end
    object cdsProdutocodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object cdsProdutodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 40
    Top = 64
  end
end
