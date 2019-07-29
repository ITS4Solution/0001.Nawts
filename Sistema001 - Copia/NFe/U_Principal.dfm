object F_Principal: TF_Principal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 544
  ClientWidth = 883
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    883
    544)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 685
    Top = 383
    Width = 190
    Height = 136
    Anchors = [akRight, akBottom]
    AutoSize = True
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 525
    Width = 883
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 184
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 192
    object Cadastros: TMenuItem
      Caption = 'Cadastros'
      object Emitente: TMenuItem
        Caption = 'Emitente'
        OnClick = EmitenteClick
      end
      object Clientes: TMenuItem
        Caption = 'Clientes'
        OnClick = ClientesClick
      end
      object Produtos: TMenuItem
        Caption = 'Produtos'
        OnClick = ProdutosClick
      end
    end
    object Lanamentos1: TMenuItem
      Caption = 'Lan'#231'amentos'
      object NFSaida1: TMenuItem
        Caption = 'Emiss'#227'o de Notas (NFe)'
        OnClick = NFSaida1Click
      end
    end
    object Manuteno1: TMenuItem
      Caption = 'Manuten'#231#227'o'
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
      end
    end
    object Configurao1: TMenuItem
      Caption = 'Configura'#231#227'o '
      OnClick = Configurao1Click
    end
    object ICMSNCM1: TMenuItem
      Caption = 'ICMS'
      OnClick = ICMSNCM1Click
    end
    object NCM1: TMenuItem
      Caption = 'NCM'
      OnClick = NCM1Click
    end
  end
  object Timer1: TTimer
    Left = 392
    Top = 288
  end
end
