inherited F_ProcessamentoFaturamento: TF_ProcessamentoFaturamento
  Caption = 'Processamento / Libera'#231#227'o Faturamento'
  ClientHeight = 534
  ClientWidth = 940
  ExplicitTop = -114
  ExplicitWidth = 956
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 515
    Width = 940
    ExplicitTop = 515
    ExplicitWidth = 940
  end
  inherited Panel1: TPanel
    Top = 460
    Width = 940
    ExplicitTop = 460
    ExplicitWidth = 940
    inherited btnsair: TAdvGlassButton
      Left = 832
      ExplicitLeft = 832
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 118
      ExplicitLeft = 118
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 438
      Top = 17
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Processar Faturamento'
      Enabled = False
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
      Visible = False
      OnClick = AdvGlassButton1Click
    end
    object AdvGlassButton3: TAdvGlassButton
      Left = 12
      Top = 14
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Liberar selecionados'
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
      Version = '1.3.0.0'
      OnClick = AdvGlassButton3Click
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 57
    Width = 940
    Height = 403
    ExplicitTop = 57
    ExplicitWidth = 940
    ExplicitHeight = 403
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1ValorTotal
        end
        item
          Position = spFooter
          FieldName = 'Codigo'
          Column = cxGrid1DBTableView1Id
          DisplayText = 'teste'
        end>
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
        Width = 33
      end
      object cxGrid1DBTableView1terminal: TcxGridDBColumn
        DataBinding.FieldName = 'terminal'
        Width = 90
      end
      object cxGrid1DBTableView1CpfCgc: TcxGridDBColumn
        DataBinding.FieldName = 'CpfCgc'
      end
      object cxGrid1DBTableView1PeriodoInicial: TcxGridDBColumn
        DataBinding.FieldName = 'PeriodoInicial'
        Width = 266
      end
      object cxGrid1DBTableView1PeriodoFinal: TcxGridDBColumn
        DataBinding.FieldName = 'PeriodoFinal'
        Width = 266
      end
      object cxGrid1DBTableView1ValorTotal: TcxGridDBColumn
        DataBinding.FieldName = 'ValorTotal'
        Width = 266
      end
      object cxGrid1DBTableView1liberado: TcxGridDBColumn
        DataBinding.FieldName = 'liberado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'Sim'
        Properties.DisplayUnchecked = 'N'#227'o'
        Properties.ValueChecked = 'Sim'
        Properties.ValueUnchecked = 'N'#227'o'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDetalhe
      DataController.DetailKeyFieldNames = 'id_processamento'
      DataController.KeyFieldNames = 'id_processamento'
      DataController.MasterKeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView2valor
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView2valor
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView2valor
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object cxGrid1DBTableView2id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGrid1DBTableView2id_processamento: TcxGridDBColumn
        DataBinding.FieldName = 'id_processamento'
        Visible = False
      end
      object cxGrid1DBTableView2tipo: TcxGridDBColumn
        DataBinding.FieldName = 'tipo'
      end
      object cxGrid1DBTableView2corretora: TcxGridDBColumn
        DataBinding.FieldName = 'corretora'
        Width = 183
      end
      object cxGrid1DBTableView2segurado: TcxGridDBColumn
        DataBinding.FieldName = 'segurado'
        Width = 151
      end
      object cxGrid1DBTableView2terminal: TcxGridDBColumn
        DataBinding.FieldName = 'terminal'
      end
      object cxGrid1DBTableView2valor: TcxGridDBColumn
        DataBinding.FieldName = 'valor'
        Width = 117
      end
      object cxGrid1DBTableView2tipofaturamento: TcxGridDBColumn
        DataBinding.FieldName = 'tipofaturamento'
        Visible = False
        GroupIndex = 0
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    inherited cxGrid1Level1: TcxGridLevel
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
      end
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 0
    Width = 940
    Height = 57
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 24
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Terminal'
    end
    object Label2: TLabel
      Left = 216
      Top = 22
      Width = 45
      Height = 13
      Caption = 'Dt. Inicial'
    end
    object Label3: TLabel
      Left = 394
      Top = 22
      Width = 40
      Height = 13
      Caption = 'Dt. Final'
    end
    object edtCxPostal: TcxTextEdit
      Left = 89
      Top = 19
      TabOrder = 0
      Width = 121
    end
    object dtInicial: TcxDateEdit
      Left = 267
      Top = 19
      TabOrder = 1
      Width = 121
    end
    object dtFinal: TcxDateEdit
      Left = 440
      Top = 19
      TabOrder = 2
      Width = 121
    end
    object AdvGlassButton4: TAdvGlassButton
      Left = 570
      Top = 14
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Processar'
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
      Version = '1.3.0.0'
      OnClick = AdvGlassButton4Click
    end
  end
  inherited ActionList: TActionList
    Left = 600
    Top = 104
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspProcessamento'
    RemoteServer = DM.ShCoGen
    Left = 664
    Top = 104
    object oCdsId: TIntegerField
      FieldName = 'Id'
    end
    object oCdsterminal: TWideStringField
      FieldName = 'terminal'
      Size = 16
    end
    object oCdsFantasia: TWideStringField
      FieldName = 'Fantasia'
      Size = 30
    end
    object oCdsCpfCgc: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CpfCgc'
      Size = 30
    end
    object oCdsPeriodoInicial: TDateField
      DisplayLabel = 'Per'#237'odo Inicial'
      FieldName = 'PeriodoInicial'
    end
    object oCdsPeriodoFinal: TDateField
      DisplayLabel = 'Per'#237'odo Final'
      FieldName = 'PeriodoFinal'
    end
    object oCdsValorTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
    end
    object oCdsliberado: TWideStringField
      DisplayLabel = 'Liberado'
      FieldName = 'liberado'
      Size = 6
    end
  end
  inherited oDS: TDataSource
    Left = 712
    Top = 104
  end
  object oCdsDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcessamentoDetalhe'
    RemoteServer = DM.ShCoGen
    Left = 120
    Top = 48
    object oCdsDetalheid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsDetalheid_processamento: TIntegerField
      FieldName = 'id_processamento'
    end
    object oCdsDetalhetipo: TWideStringField
      FieldName = 'tipo'
      Size = 2
    end
    object oCdsDetalhecorretora: TWideStringField
      FieldName = 'corretora'
      Size = 90
    end
    object oCdsDetalhesegurado: TWideStringField
      FieldName = 'segurado'
      Size = 90
    end
    object oCdsDetalheterminal: TWideStringField
      FieldName = 'terminal'
      Size = 16
    end
    object oCdsDetalhevalor: TFloatField
      FieldName = 'valor'
    end
    object oCdsDetalhetipofaturamento: TWideStringField
      FieldName = 'tipofaturamento'
      Size = 2
    end
  end
  object dsDetalhe: TDataSource
    AutoEdit = False
    DataSet = oCdsDetalhe
    Left = 168
    Top = 48
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 15729008
  end
end
