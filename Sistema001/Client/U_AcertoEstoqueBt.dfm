inherited F_AcertoEstoqueBt: TF_AcertoEstoqueBt
  Caption = 'Acerto de Estoque'
  ClientHeight = 381
  ClientWidth = 721
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitWidth = 737
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 721
    Height = 307
    Align = alClient
    ExplicitLeft = 1
    ExplicitTop = 0
    ExplicitWidth = 721
    ExplicitHeight = 307
  end
  object Label3: TLabel [3]
    Left = 192
    Top = 8
    Width = 109
    Height = 13
    Caption = 'Embalagens/Mat.Prima'
  end
  object Label1: TLabel [4]
    Left = 192
    Top = 45
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label5: TLabel [5]
    Left = 574
    Top = 45
    Width = 66
    Height = 13
    Caption = 'Data Validade'
    FocusControl = cxDBDateEdit1
  end
  object Label6: TLabel [6]
    Left = 192
    Top = 82
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = cxDBTextEdit2
  end
  object Label7: TLabel [7]
    Left = 323
    Top = 45
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [8]
    Left = 446
    Top = 45
    Width = 21
    Height = 13
    Caption = 'Lote'
    FocusControl = DBEdit2
  end
  object Label8: TLabel [9]
    Left = 459
    Top = 7
    Width = 115
    Height = 13
    Caption = 'Quantidade em estoque'
    FocusControl = DBEdit1
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 721
    ExplicitTop = 362
    ExplicitWidth = 721
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 721
    TabOrder = 8
    ExplicitTop = 307
    ExplicitWidth = 721
    inherited btnSalvar: TAdvGlassButton
      Left = 325
      Top = 13
      ExplicitLeft = 325
      ExplicitTop = 13
    end
    inherited btnsair: TAdvGlassButton
      Left = 609
      Top = 13
      ExplicitLeft = 609
      ExplicitTop = 13
    end
  end
  object cxDBDateEdit1: TcxDBDateEdit [12]
    Left = 574
    Top = 59
    DataBinding.DataField = 'dataval'
    DataBinding.DataSource = oDS
    TabOrder = 6
    OnExit = cxDBDateEdit1Exit
    Width = 139
  end
  object cxDBTextEdit2: TcxDBTextEdit [13]
    Left = 192
    Top = 97
    DataBinding.DataField = 'obs'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 388
  end
  object DBEdit1: TDBEdit [14]
    Left = 323
    Top = 59
    Width = 117
    Height = 21
    DataField = 'quantd'
    DataSource = oDS
    TabOrder = 4
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [15]
    Left = 192
    Top = 22
    DataBinding.DataField = 'idinsumo'
    DataBinding.DataSource = oDS
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'descricao'
      end
      item
        FieldName = 'codigo'
      end>
    Properties.ListSource = dsInsumos
    Properties.OnCloseUp = cxDBLookupComboBox1PropertiesCloseUp
    TabOrder = 0
    OnExit = cxDBLookupComboBox1Exit
    Width = 261
  end
  object cxDBComboBox1: TcxDBComboBox [16]
    Left = 192
    Top = 59
    DataBinding.DataField = 'tipo'
    DataBinding.DataSource = oDS
    Properties.Items.Strings = (
      'Embalagem'
      'Mat. Prima'
      'Uso Interno')
    Properties.OnCloseUp = cxDBComboBox1PropertiesCloseUp
    TabOrder = 3
    Width = 125
  end
  object DBEdit2: TDBEdit [17]
    Left = 447
    Top = 59
    Width = 121
    Height = 21
    DataField = 'lote'
    DataSource = oDS
    TabOrder = 5
    OnExit = DBEdit2Exit
  end
  object recSeq: TPanel [18]
    Left = 192
    Top = 153
    Width = 344
    Height = 103
    Enabled = False
    TabOrder = 9
    Visible = False
    object Label4: TLabel
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
      OnClick = AdvGlassButton1Click
    end
  end
  object edtQtdEstoque: TEdit [19]
    Left = 459
    Top = 22
    Width = 121
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 8
  end
  inherited oCds: TClientDataSet
    Params = <
      item
        DataType = ftWideString
        Name = 'idnfe'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'ininsumo'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dsptblestoqueinsumos'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
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
      Size = 15
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
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 40
    end
    object dtfldCdsdataval: TDateField
      FieldName = 'dataval'
    end
  end
  object cdsInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTblInsumos'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 64
    object cdsInsumoid: TIntegerField
      FieldName = 'id'
    end
    object cdsInsumocodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object cdsInsumoue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object cdsInsumolitragem: TSingleField
      FieldName = 'litragem'
    end
    object cdsInsumodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsInsumotipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
  end
  object dsInsumos: TDataSource
    DataSet = cdsInsumo
    Left = 40
    Top = 64
  end
end
