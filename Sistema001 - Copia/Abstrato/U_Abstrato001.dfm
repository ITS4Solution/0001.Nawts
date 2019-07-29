object F_Abstrato001: TF_Abstrato001
  Left = 0
  Top = 0
  Caption = 'F_Abstrato001'
  ClientHeight = 375
  ClientWidth = 546
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 356
    Width = 546
    Height = 19
    Panels = <>
    ExplicitWidth = 599
  end
  object Panel1: TPanel
    Left = 0
    Top = 301
    Width = 546
    Height = 55
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 300
    ExplicitWidth = 599
    DesignSize = (
      546
      55)
    object btnsair: TAdvGlassButton
      Left = 438
      Top = 14
      Width = 100
      Height = 32
      Action = ActSair
      Anchors = [akRight, akBottom]
      BackColor = 6052956
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
      Version = '1.3.0.0'
    end
  end
  object ActionList: TActionList
    Left = 408
    Top = 8
    object ActSair: TAction
      Caption = 'Sair'
      OnExecute = ActSairExecute
    end
  end
end
