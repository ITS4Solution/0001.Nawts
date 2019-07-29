object Form1: TForm1
  Left = 189
  Top = 63
  Caption = 
    'Demo Assinatura de NF-e por Victory Fernandes :: TKS Software ::' +
    ' www.igara.com.br'
  ClientHeight = 617
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo2: TMemo
    Left = 504
    Top = 72
    Width = 489
    Height = 505
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WantReturns = False
    WordWrap = False
  end
  object Button12: TButton
    Left = 8
    Top = 8
    Width = 489
    Height = 25
    Caption = '1. Selecione arquivo XML da NFe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button12Click
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 40
    Width = 489
    Height = 537
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Memo'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 481
        Height = 509
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        WantReturns = False
        WordWrap = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Browser'
      ImageIndex = 1
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 481
        Height = 509
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C000000B63100009B3400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object Button1: TButton
    Left = 504
    Top = 8
    Width = 305
    Height = 25
    Caption = '2. Assinar NFe Selecionada Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 824
    Top = 8
    Width = 169
    Height = 25
    Caption = '3. Salvar NFe Assinada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 584
    Width = 489
    Height = 25
    Caption = 
      'Voltar a solicitar que o usu'#225'rio selecione o certificado desejad' +
      'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 504
    Top = 40
    Width = 305
    Height = 25
    Caption = '2. Assinar NFe Selecionada Outras Linguagens'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 920
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = Button5Click
  end
  object CheckBox1: TCheckBox
    Left = 144
    Top = 41
    Width = 349
    Height = 17
    Caption = 
      'Remover caracteres inv'#225'lidos ao carregar arquivo (acentua'#231#227'o e e' +
      'tc)'
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.XML'
    Filter = 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe que deseja Assinar...'
    Left = 592
    Top = 88
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.XML'
    Filter = 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*'
    Title = 'Selecione o local onde deseja salvar a NFe assinada'
    Left = 632
    Top = 88
  end
end
