object F_Sequencial: TF_Sequencial
  Left = 0
  Top = 0
  Caption = 'Par'#226'metro do Sequ'#234'ncial'
  ClientHeight = 242
  ClientWidth = 298
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 298
    Height = 168
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 7
    ExplicitWidth = 281
    ExplicitHeight = 153
    object Label1: TLabel
      Left = 64
      Top = 61
      Width = 123
      Height = 13
      Caption = 'Valor atual do sequ'#234'ncial:'
      FocusControl = edtValor
    end
    object edtValor: TDBEdit
      Left = 64
      Top = 80
      Width = 161
      Height = 21
      DataField = 'GEN_ID'
      DataSource = oDs
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 168
    Width = 298
    Height = 55
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -100
    ExplicitTop = 187
    ExplicitWidth = 627
    object btnSalvar: TAdvGlassButton
      Left = 189
      Top = 11
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Salvar'
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
      TabOrder = 0
      Version = '1.3.0.2'
      OnClick = btnSalvarClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 223
    Width = 298
    Height = 19
    Panels = <>
    ExplicitLeft = -100
    ExplicitWidth = 627
  end
  object oCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSeq'
    RemoteServer = DM.ShCoGen
    Left = 16
    Top = 65528
    object oCdsGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      Required = True
    end
  end
  object oDs: TDataSource
    DataSet = oCds
    Left = 48
    Top = 65528
  end
end
