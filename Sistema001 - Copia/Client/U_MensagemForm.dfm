inherited F_MensagemForm: TF_MensagemForm
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = '::.. Informa'#231#227'o ..::'
  ClientHeight = 212
  ClientWidth = 423
  Position = poDesktopCenter
  ExplicitWidth = 429
  PixelsPerInch = 96
  TextHeight = 13
  object TMSCaption: TAdvPanel
    Left = 0
    Top = 0
    Width = 423
    Height = 50
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.1.0.4'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    ExplicitTop = -6
    ExplicitWidth = 447
    FullHeight = 200
    object Image1: TImage
      Left = 371
      Top = 1
      Width = 50
      Height = 48
    end
  end
  object TMSMemo: TCurvyMemo
    Left = 0
    Top = 50
    Width = 423
    Height = 130
    Align = alClient
    TabOrder = 1
    ExplicitTop = 48
    ExplicitWidth = 429
    ExplicitHeight = 158
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 180
    Width = 423
    Height = 32
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.1.0.4'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    ExplicitTop = 208
    ExplicitWidth = 429
    FullHeight = 200
    object AeroButton2: TAeroButton
      Left = 351
      Top = 4
      Width = 70
      Height = 25
      Version = '1.0.0.0'
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = AeroButton2Click
    end
  end
end
