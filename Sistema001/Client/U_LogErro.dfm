inherited F_LogErro: TF_LogErro
  Caption = 'Log de erro'
  Position = poDesktopCenter
  OnShow = FormShow
  ExplicitWidth = 562
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    ExplicitWidth = 546
  end
  inherited Panel1: TPanel
    inherited btnsair: TAdvGlassButton
      Top = 13
      ExplicitTop = 13
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 21
      Width = 97
      Height = 17
      Caption = 'Fechar Aplica'#231#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 320
      Top = 13
      Width = 112
      Height = 32
      Anchors = [akRight, akBottom]
      BackColor = 6052956
      Caption = 'Copia para '#225'rea de transfer'#234'ncia'
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
      Version = '1.3.0.0'
      OnClick = AdvGlassButton1Click
    end
  end
  object Memo: TMemo [2]
    Left = 0
    Top = 0
    Width = 546
    Height = 301
    Align = alClient
    TabOrder = 2
  end
end
