inherited F_Usuarios: TF_Usuarios
  Caption = 'Manuten'#231#227'o de usu'#225'rios'
  ClientHeight = 483
  Constraints.MinHeight = 260
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitHeight = 522
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 193
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel [1]
    Left = 196
    Top = 33
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label3: TLabel [2]
    Left = 184
    Top = 58
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 544
    Height = 409
    Align = alClient
    ExplicitTop = -6
    ExplicitWidth = 544
    ExplicitHeight = 410
  end
  inherited Image1: TImage
    Left = 6
    Top = 2
    ExplicitLeft = 6
    ExplicitTop = 2
  end
  inherited dxBevel2: TdxBevel
    Left = 0
    Top = -5
    ExplicitLeft = 0
    ExplicitTop = -5
  end
  object Label8: TLabel [6]
    Left = 190
    Top = 82
    Width = 30
    Height = 13
    Caption = 'Senha'
    FocusControl = cxDBTextEdit4
  end
  object AdvGlassButton1: TAdvGlassButton [7]
    Left = 444
    Top = 57
    Width = 73
    Height = 32
    Anchors = [akLeft, akTop, akRight]
    BackColor = 6052956
    Caption = 'Resetar Senha'
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
    OnClick = AdvGlassButton1Click
  end
  inherited StatusBar1: TStatusBar
    Top = 464
    ExplicitTop = 464
  end
  inherited Panel1: TPanel
    Top = 409
    TabOrder = 2
    ExplicitTop = 409
    inherited btnNovo: TAdvGlassButton
      Left = 14
      ExplicitLeft = 14
    end
    inherited btnEditar: TAdvGlassButton
      Enabled = False
    end
    inherited btnSalvar: TAdvGlassButton
      Top = 13
      ExplicitTop = 13
    end
    inherited btnsair: TAdvGlassButton
      Top = 13
      ExplicitTop = 13
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [10]
    Left = 226
    Top = 5
    DataBinding.DataField = 'nome'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Width = 295
  end
  object cxDBTextEdit2: TcxDBTextEdit [11]
    Left = 226
    Top = 30
    DataBinding.DataField = 'email'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 295
  end
  object cxDBTextEdit3: TcxDBTextEdit [12]
    Left = 226
    Top = 55
    DataBinding.DataField = 'usuario'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 207
  end
  object cxDBTextEdit4: TcxDBTextEdit [13]
    Left = 226
    Top = 79
    DataBinding.DataField = 'senha'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 207
  end
  object GroupBox1: TGroupBox [14]
    Left = 8
    Top = 118
    Width = 169
    Height = 91
    Caption = 'Fornecedores'
    TabOrder = 7
    object btnFornVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnForIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnFornNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [15]
    Left = 183
    Top = 118
    Width = 169
    Height = 91
    Caption = 'Estoque'
    TabOrder = 8
    object btnEstVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnEstIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnEstNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [16]
    Left = 358
    Top = 118
    Width = 169
    Height = 91
    Caption = 'Qu'#237'mica'
    TabOrder = 9
    object btnQuimVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnQuimIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnQuimNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox [17]
    Left = 8
    Top = 215
    Width = 169
    Height = 91
    Hint = 'object GroupBox3: TGroupBox'
    Caption = 'Produ'#231#227'o'
    TabOrder = 10
    object btnProVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnProdIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnProdNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox [18]
    Left = 183
    Top = 215
    Width = 169
    Height = 91
    Caption = 'Manuten'#231#227'o'
    TabOrder = 11
    object btnManVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnManIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnManNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox6: TGroupBox [19]
    Left = 358
    Top = 215
    Width = 169
    Height = 91
    Caption = 'Par'#226'metros'
    TabOrder = 12
    object btnParVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnParIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnParNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox7: TGroupBox [20]
    Left = 8
    Top = 312
    Width = 169
    Height = 91
    Caption = 'Expedi'#231#227'o'
    TabOrder = 13
    object btnRelVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnRelIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnRelNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox8: TGroupBox [21]
    Left = 183
    Top = 312
    Width = 169
    Height = 91
    Caption = 'Pedidos'
    TabOrder = 14
    object btnPedVis: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnPedIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnPedNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  object GroupBox9: TGroupBox [22]
    Left = 358
    Top = 312
    Width = 169
    Height = 91
    Caption = 'Etiquetas'
    TabOrder = 15
    object btnEtiqVisu: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Visualiza'#231#227'o'
      TabOrder = 0
    end
    object btnEtiqIns: TRadioButton
      Left = 16
      Top = 41
      Width = 129
      Height = 17
      Caption = 'Inser'#231#227'o/Visualiza'#231#227'o'
      TabOrder = 1
    end
    object btnEtiqNeg: TRadioButton
      Left = 16
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Acesso negado'
      TabOrder = 2
    end
  end
  inherited ActionList: TActionList
    Left = 117
    Top = 20
  end
  inherited oCds: TClientDataSet
    Params = <
      item
        DataType = ftWideString
        Name = 'id'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspUsuariosUn'
    RemoteServer = DM.ShCoGen
    Left = 20
    Top = 20
    object oCdsid: TIntegerField
      FieldName = 'id'
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
    Left = 52
    Top = 20
  end
  object cdsPermissoes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'id'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPermissoes'
    RemoteServer = DM.ShCoGen
    Left = 492
    Top = 124
    object cdsPermissoesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsPermissoesidusuario: TIntegerField
      FieldName = 'idusuario'
      Required = True
    end
    object cdsPermissoesidtipo: TIntegerField
      FieldName = 'idtipo'
      Required = True
    end
    object cdsPermissoesnomeform: TStringField
      FieldName = 'nomeform'
      Size = 30
    end
  end
end
