inherited F_ProdutoAcabadoBt: TF_ProdutoAcabadoBt
  Caption = 'Estoque Qu'#237'mico - Observa'#231#227'o'
  ClientHeight = 381
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 544
    Height = 296
    Align = alClient
    ExplicitTop = 20
    ExplicitWidth = 544
    ExplicitHeight = 296
  end
  object Label1: TLabel [3]
    Left = 8
    Top = 129
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  object Label3: TLabel [4]
    Left = 189
    Top = 80
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel [5]
    Left = 322
    Top = 82
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit4
  end
  object Label6: TLabel [6]
    Left = 189
    Top = 4
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label2: TLabel [7]
    Left = 189
    Top = 42
    Width = 68
    Height = 13
    Caption = 'Nome Produto'
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    ExplicitTop = 362
  end
  inherited Panel1: TPanel
    Top = 296
    Height = 66
    ExplicitTop = 296
    ExplicitHeight = 66
    inherited btnNovo: TAdvGlassButton
      Left = 12
      Top = 17
      ExplicitLeft = 12
      ExplicitTop = 17
    end
    inherited btnEditar: TAdvGlassButton
      Left = 114
      Top = 17
      ExplicitLeft = 114
      ExplicitTop = 17
    end
    inherited btnDeletar: TAdvGlassButton
      Left = 217
      Top = 17
      ExplicitLeft = 217
      ExplicitTop = 17
    end
    inherited btnSalvar: TAdvGlassButton
      Left = 320
      Top = 17
      ExplicitLeft = 320
      ExplicitTop = 17
    end
    inherited btnsair: TAdvGlassButton
      Left = 433
      Top = 17
      ExplicitLeft = 433
      ExplicitTop = 17
    end
  end
  object cxDBMemo1: TcxDBMemo [10]
    Left = 8
    Top = 145
    DataBinding.DataField = 'obs'
    DataBinding.DataSource = oDS
    Properties.OnChange = cxDBMemo1PropertiesChange
    TabOrder = 2
    Height = 77
    Width = 528
  end
  object DBEdit4: TDBEdit [11]
    Left = 322
    Top = 97
    Width = 134
    Height = 21
    DataField = 'quantd'
    DataSource = oDS
    TabOrder = 3
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [12]
    Tag = 3
    Left = 189
    Top = 19
    DataBinding.DataField = 'idprodutos'
    DataBinding.DataSource = oDS
    Properties.GridMode = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'codproduto'
      end
      item
        FieldName = 'descricao'
      end>
    Properties.ListSource = dsProdutos
    Properties.OnCloseUp = cxDBLookupComboBox1PropertiesCloseUp
    TabOrder = 4
    Width = 347
  end
  object cxDBDateEdit1: TcxDBDateEdit [13]
    Tag = 1
    Left = 189
    Top = 97
    DataBinding.DataField = 'data'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 121
  end
  object edtProduto: TEdit [14]
    Left = 189
    Top = 58
    Width = 347
    Height = 21
    TabOrder = 6
  end
  object recSeq: TPanel [15]
    Left = 152
    Top = 129
    Width = 260
    Height = 103
    Enabled = False
    TabOrder = 7
    Visible = False
    object Label4: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 201
      Height = 14
      Align = alTop
      Caption = 'Digite o c'#243'digo sequ'#234'ncial do CI '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtSeq: TEdit
      AlignWithMargins = True
      Left = 25
      Top = 30
      Width = 200
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
      Top = 64
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
  end
  inherited ActionList: TActionList
    Left = 120
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspEstoqueQ'
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
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 56
    object cdsProdutosid: TIntegerField
      FieldName = 'id'
    end
    object cdsProdutoscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object cdsProdutoscodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object cdsProdutosprocedencia: TStringField
      FieldName = 'procedencia'
    end
    object cdsProdutosgrupo: TIntegerField
      FieldName = 'grupo'
    end
    object cdsProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsProdutosgrupopedido: TStringField
      FieldName = 'grupopedido'
      Size = 15
    end
    object cdsProdutosnumeropa: TIntegerField
      FieldName = 'numeropa'
    end
    object cdsProdutosnomeprodutopedido: TStringField
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
    object cdsProdutosncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 40
    Top = 56
  end
end
