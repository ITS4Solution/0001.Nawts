object Form1: TForm1
  Left = 130
  Top = 77
  Caption = 
    'Demo Transmiss'#227'o de NFC-e por Victory Fernandes :: TKS Software ' +
    ':: www.igara.com.br'
  ClientHeight = 633
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 400
    Top = 353
    Width = 250
    Height = 13
    Caption = '4. Selecione UF de Destino conforme IBGE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
  end
  object Label2: TLabel
    Left = 400
    Top = 399
    Width = 208
    Height = 13
    Caption = '5. Selecione o Ambiente de Destino:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 680
    Top = 48
    Width = 157
    Height = 13
    Caption = '7. Retorno da Transmiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 396
    Top = 562
    Width = 172
    Height = 13
    Caption = 'Arquivo transmitido em XX segundos'
  end
  object Label4: TLabel
    Left = 416
    Top = 322
    Width = 3
    Height = 13
  end
  object Label7: TLabel
    Left = 504
    Top = 328
    Width = 32
    Height = 13
    Caption = 'Label7'
  end
  object Label8: TLabel
    Left = 400
    Top = 302
    Width = 139
    Height = 13
    Caption = '3. Modo de Transmiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo2: TMemo
    Left = 680
    Top = 64
    Width = 361
    Height = 528
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    WordWrap = False
  end
  object Button12: TButton
    Left = 8
    Top = 8
    Width = 377
    Height = 25
    Caption = '1. Selecione arquivo XML a ser transmitido'
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
    Width = 377
    Height = 552
    ActivePage = TabSheet3
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Memo'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 369
        Height = 524
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Browser'
      ImageIndex = 1
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 369
        Height = 524
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 545
        ExplicitHeight = 509
        ControlData = {
          4C00000023260000283600000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Informa'#231#245'es sobre Servi'#231'os'
      ImageIndex = 2
      object Memo3: TMemo
        Left = 0
        Top = 0
        Width = 369
        Height = 524
        Align = alClient
        Lines.Strings = (
          'NfeRecepcao'
          
            'Fun'#231#227'o: Servi'#231'o destinado '#224' recep'#231#227'o de mensagens de lote de NF-' +
            'e.'
          'Processo: ass'#237'ncrono'
          ''
          'CadConsultaCadastro'
          
            'Fun'#231#227'o: Servi'#231'o para consultar o cadastro de contribuintes do IC' +
            'MS da '
          'unidade federada.'
          'Processo: S'#237'ncrono'
          ''
          'NfeCancelamento'
          'Fun'#231#227'o: Servi'#231'o destinado ao atendimento de solicita'#231#245'es de '
          'cancelamento '
          'de Notas Fiscais Eletr'#244'nicas.'
          'Processo: S'#237'ncrono'
          ''
          'NfeConsulta'
          
            'Fun'#231#227'o: Servi'#231'o destinado ao atendimento de solicita'#231#245'es de cons' +
            'ulta '
          'da '
          
            'situa'#231#227'o atual da NF-e na Base de Dados do Portal da Secretaria ' +
            'de '
          'Fazenda Estadual.'
          'Processo: S'#237'ncrono'
          ''
          'NfeInutilizacao'
          
            'Fun'#231#227'o: Servi'#231'o destinado ao atendimento de solicita'#231#245'es de inut' +
            'iliza'#231#227'o '
          'de '
          'numera'#231#227'o.'
          'Processo: S'#237'ncrono'
          ''
          'NfeRetRecepcao'
          
            'Fun'#231#227'o: Servi'#231'o destinado a retornar o resultado do processament' +
            'o do '
          'lote '
          'de NF-e.'
          'Processo: Ass'#237'ncrono'
          ''
          'NfeStatusServico'
          
            'Fun'#231#227'o: Servi'#231'o destinado '#224' consulta do status do servi'#231'o presta' +
            'do pelo '
          'Portal da Secretaria de Fazenda Estadual.'
          'Processo: S'#237'ncrono'
          ''
          'SCERecepcaoRFB'
          
            'Fun'#231#227'o: servi'#231'o destinado '#224' recep'#231#227'o de mensagens de envio de DP' +
            'EC. '
          
            'O Servi'#231'o de Recep'#231#227'o de DPEC '#233' o servi'#231'o oferecido pelo WS do S' +
            'istema '
          
            'de Conting'#234'ncia Eletr'#244'nica para atualiza'#231#227'o do reposit'#243'rio de De' +
            'clara'#231#227'o '
          
            'Pr'#233'via de Emiss'#227'o em Contig'#234'ncia - DPEC emitidos por emissores d' +
            'e NF-e '
          'que emitam NF-e pelo Sistema de Conting'#234'ncia Eletr'#244'nica'
          'Processo: s'#237'ncrono.'
          ''
          'SCEConsultaRFB'
          
            'Fun'#231#227'o: servi'#231'o destinado '#224' consulta de DPEC. O Servi'#231'o de Consu' +
            'lta de '
          
            'DPEC '#233' o servi'#231'o oferecido pelo Sistema de Conting'#234'ncia Eletr'#244'ni' +
            'ca que'
          
            'permite a consulta dos DPEC existentes no Sistema de Conting'#234'nci' +
            'a Eletr'#244'nica.'
          'A DPEC poder'#225' ser consultada pelo um n'#250'mero de Registro de DPEC '
          '(nRegDPEC) ou pela chave de Acesso da NF-e.'
          'Processo: s'#237'ncrono.')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
  end
  object ComboBox1: TComboBox
    Left = 400
    Top = 369
    Width = 265
    Height = 24
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object Button2: TButton
    Left = 680
    Top = 8
    Width = 361
    Height = 25
    Caption = '8. Salvar XML de Retorno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object ComboBox2: TComboBox
    Left = 400
    Top = 415
    Width = 265
    Height = 24
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 1
    ParentFont = False
    TabOrder = 5
    Text = '2. Homologa'#231#227'o'
    Items.Strings = (
      '1. Produ'#231#227'o'
      '2. Homologa'#231#227'o')
  end
  object RadioGroup1: TRadioGroup
    Left = 400
    Top = 8
    Width = 265
    Height = 281
    Caption = '2. Selecione o tipo de transa'#231#227'o: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'fncNFCeAutorizacao'
      'fncNFCeRetAutorizacao'
      'fncNFCeConsulta'
      'fncNFCeInutilizacao'
      'fncNFCeStatusServico'
      'fncNFCeRecepcaoEvento')
    ParentFont = False
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
  object Button3: TButton
    Left = 8
    Top = 598
    Width = 377
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
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 966
    Top = 598
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 680
    Top = 598
    Width = 177
    Height = 25
    Caption = 'Testa se Conectado a Internet'
    TabOrder = 9
    OnClick = Button5Click
  end
  object CheckBox1: TCheckBox
    Left = 869
    Top = 41
    Width = 174
    Height = 17
    Caption = 'Remover acentua'#231#227'o ao salvar'
    TabOrder = 10
  end
  object PageControl2: TPageControl
    Left = 396
    Top = 449
    Width = 265
    Height = 107
    ActivePage = TabSheet4
    TabOrder = 11
    object TabSheet4: TTabSheet
      Caption = '6. Transmitir XML'
      object Button1: TButton
        Left = 3
        Top = 27
        Width = 252
        Height = 25
        Caption = '6. Transmitir XML via par'#226'metro PChar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = '6. Transmitir XML'
      ImageIndex = 1
      object Label6: TLabel
        Left = 3
        Top = 3
        Width = 246
        Height = 13
        Caption = '6. Indique o caminho do arquivo de retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 3
        Top = 21
        Width = 251
        Height = 21
        TabOrder = 0
        Text = 'C:\teste_nfe\retorno.xml'
      end
      object Button6: TButton
        Left = 3
        Top = 48
        Width = 251
        Height = 25
        Caption = '6. Transmitir XML direto do arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button6Click
      end
    end
  end
  object CheckBox3: TCheckBox
    Left = 396
    Top = 582
    Width = 265
    Height = 17
    Hint = 
      'Quando a mensagem de retorno da SEFAZ vier truncada ou com erro ' +
      'ou caso n'#227'o retorno mensagem alguma habilite esta fun'#231#227'o para ve' +
      'rificar o retorno completo que est'#225' sendo trazido, incluindo cab' +
      'e'#231'alhos que s'#227'o removidos pela dll caso a op'#231#227'o esteja habilitad' +
      'a.'
    Caption = 'Retorno Detalhado? (habilitar somente para debug)'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
  end
  object CheckBox4: TCheckBox
    Left = 396
    Top = 605
    Width = 265
    Height = 17
    Hint = 
      'Caso haja algum problema com certificados na m'#225'quina do cliente ' +
      'tipicamente por problemas na cadeia de certificados '#233' poss'#237'vel i' +
      'gnorar o erro e tentar transmitir mesmo assim para verificar se ' +
      'o SEFAZ informa o retorno e permite trabalhar temporariamente en' +
      'quanto o problema '#233' resolvido.'
    Caption = 'Ignorar certificados inv'#225'lidos?'
    TabOrder = 13
  end
  object ComboBox3: TComboBox
    Left = 399
    Top = 319
    Width = 266
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    TabOrder = 14
    Text = 'Transmiss'#227'o Normal (N'#227'o Conting'#234'ncia)'
    Items.Strings = (
      'Transmiss'#227'o Normal (N'#227'o Conting'#234'ncia)'
      'SCAN - Sistema de Conting'#234'ncia do Ambiente Nacional'
      'SVC-AN - Sefaz Virtual de Conting'#234'ncia Ambiente Nacional'
      'SVC-RS - Sefaz Virtual de Conting'#234'ncia Rio Grande do Sul')
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.XML'
    Filter = 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe que deseja Transmitir...'
    Left = 584
    Top = 88
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.XML'
    Filter = 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*'
    Title = 'Selecione o local onde deseja salvar o retorno da transmiss'#227'o...'
    Left = 632
    Top = 88
  end
end
