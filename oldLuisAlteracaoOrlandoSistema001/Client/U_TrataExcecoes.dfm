inherited F_TrataExcecoes: TF_TrataExcecoes
  Caption = 'Exce'#231#245'es'
  ClientHeight = 475
  ClientWidth = 734
  ExplicitWidth = 750
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 11
    Top = 7
    Width = 90
    Height = 13
    Caption = 'Lista de corretores'
  end
  object Label2: TLabel [1]
    Left = 399
    Top = 8
    Width = 150
    Height = 13
    Caption = 'Lista de corretores em exce'#231#227'o'
  end
  inherited StatusBar1: TStatusBar
    Top = 456
    Width = 734
    ExplicitTop = 456
    ExplicitWidth = 734
  end
  inherited Panel1: TPanel
    Top = 401
    Width = 734
    ExplicitTop = 401
    ExplicitWidth = 734
    inherited btnsair: TAdvGlassButton
      Left = 626
      ExplicitLeft = 626
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 521
      Top = 14
      Width = 100
      Height = 32
      Anchors = [akRight, akBottom]
      BackColor = 6052956
      Caption = 'Gravar no banco'
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
      Version = '1.3.0.0'
      OnClick = AdvGlassButton1Click
    end
  end
  object ListBox1: TListBox [4]
    Left = 8
    Top = 24
    Width = 329
    Height = 371
    ItemHeight = 13
    TabOrder = 2
  end
  object BitBtn1: TBitBtn [5]
    Left = 343
    Top = 144
    Width = 49
    Height = 25
    Caption = '>'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [6]
    Left = 343
    Top = 175
    Width = 49
    Height = 25
    Caption = '<'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn [7]
    Left = 343
    Top = 206
    Width = 49
    Height = 25
    Caption = '<<'
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object ListBox2: TListBox [8]
    Left = 397
    Top = 24
    Width = 329
    Height = 371
    ItemHeight = 13
    TabOrder = 6
  end
  inherited ActionList: TActionList
    Left = 424
    Top = 40
  end
  object oCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaExcecoes'
    RemoteServer = DM.ShCoGen
    Left = 424
    Top = 120
  end
  object oDs: TDataSource
    DataSet = oCds
    Left = 464
    Top = 120
  end
end
