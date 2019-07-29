inherited F_SaidaEmbalagemBt: TF_SaidaEmbalagemBt
  Caption = 'Sa'#237'da de Embalagem - Controle'
  ClientHeight = 561
  ClientWidth = 978
  ExplicitWidth = 994
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 978
    Height = 487
    Align = alClient
    ExplicitTop = -6
    ExplicitWidth = 974
    ExplicitHeight = 475
  end
  object Label1: TLabel [3]
    Left = 189
    Top = 8
    Width = 109
    Height = 13
    Caption = 'C'#243'd. Ordem Produ'#231#227'o '
    FocusControl = cxCodOP
  end
  object Label2: TLabel [4]
    Left = 335
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = cxDBDateEdit1
  end
  object Label3: TLabel [5]
    Left = 467
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Destino'
    FocusControl = cxDBTextEdit1
  end
  object Label4: TLabel [6]
    Left = 189
    Top = 51
    Width = 64
    Height = 13
    Caption = 'Respons'#225'vel '
    FocusControl = cxDBTextEdit2
  end
  object Label5: TLabel [7]
    Left = 413
    Top = 51
    Width = 60
    Height = 13
    Caption = 'Requisitante'
    FocusControl = cxDBTextEdit3
  end
  object Label6: TLabel [8]
    Left = 189
    Top = 94
    Width = 41
    Height = 13
    Caption = 'Produto '
  end
  object Label8: TLabel [9]
    Left = 479
    Top = 94
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = cxValor
  end
  inherited StatusBar1: TStatusBar
    Top = 542
    Width = 978
    ExplicitTop = 542
    ExplicitWidth = 978
  end
  inherited Panel1: TPanel
    Top = 487
    Width = 978
    ExplicitTop = 487
    ExplicitWidth = 978
    inherited btnsair: TAdvGlassButton
      Left = 870
      Top = 13
      ExplicitLeft = 870
      ExplicitTop = 13
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 423
      Top = 13
      Width = 100
      Height = 32
      Action = ActSalvar
      BackColor = 6052956
      Caption = 'Imprimir'
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
      TabOrder = 5
      Version = '1.3.0.1'
      OnClick = AdvGlassButton1Click
    end
  end
  object Panel2: TPanel [12]
    Left = 2
    Top = 176
    Width = 976
    Height = 310
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 974
      Height = 308
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.Next.Enabled = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.Last.Enabled = False
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Edit.Enabled = False
        Navigator.Buttons.Refresh.Enabled = False
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.Filter.Enabled = False
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsSaidaDetalhe
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        object cxGrid1DBTableView1item: TcxGridDBColumn
          Caption = 'Item'
          DataBinding.FieldName = 'item'
          Width = 46
        end
        object cxGrid1DBTableView1qtd: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'qtd'
          Width = 136
        end
        object cxGrid1DBTableView1qtdcaixa: TcxGridDBColumn
          Caption = 'Quantidade por caixa'
          DataBinding.FieldName = 'qtdcaixa'
          Width = 137
        end
        object cxGrid1DBTableView1total: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'total'
          Width = 137
        end
        object cxGrid1DBTableView1data: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'data'
          Width = 137
        end
        object cxGrid1DBTableView1hora: TcxGridDBColumn
          Caption = 'Hora'
          DataBinding.FieldName = 'hora'
          Width = 136
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxCodOP: TcxDBSpinEdit [13]
    Left = 189
    Top = 24
    DataBinding.DataField = 'idordemproducao'
    DataBinding.DataSource = oDS
    Properties.CanEdit = False
    Properties.ReadOnly = True
    TabOrder = 3
    Width = 140
  end
  object cxDBDateEdit1: TcxDBDateEdit [14]
    Left = 335
    Top = 24
    DataBinding.DataField = 'data'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 126
  end
  object cxDBTextEdit1: TcxDBTextEdit [15]
    Left = 467
    Top = 24
    DataBinding.DataField = 'destino'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 175
  end
  object cxDBTextEdit2: TcxDBTextEdit [16]
    Left = 189
    Top = 67
    DataBinding.DataField = 'responsavel'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 218
  end
  object cxDBTextEdit3: TcxDBTextEdit [17]
    Left = 413
    Top = 67
    DataBinding.DataField = 'requisitante'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 229
  end
  object cxValor: TDBEdit [18]
    Left = 479
    Top = 108
    Width = 163
    Height = 21
    Color = clInfoBk
    DataField = 'valor'
    DataSource = oDS
    TabOrder = 8
  end
  object cxGrid2: TcxGrid [19]
    Left = 648
    Top = 8
    Width = 322
    Height = 162
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 9
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAcess
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1codproduto: TcxGridDBColumn
        DataBinding.FieldName = 'codproduto'
        Width = 316
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object cxProduto: TEdit [20]
    Left = 189
    Top = 108
    Width = 284
    Height = 21
    TabOrder = 10
    Text = 'cxProduto'
  end
  inherited ActionList: TActionList
    Left = 88
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblSaidaEmabalagem'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsidordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsdestino: TStringField
      FieldName = 'destino'
      Size = 50
    end
    object oCdsresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 30
    end
    object oCdsrequisitante: TStringField
      FieldName = 'requisitante'
      Size = 30
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object oCdsvalor: TSingleField
      FieldName = 'valor'
    end
  end
  object cdsSaidaDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaidaDetalhe'
    RemoteServer = DM.ShCoGen
    AfterInsert = cdsSaidaDetalheAfterInsert
    Left = 24
    Top = 207
    object cdsSaidaDetalheid: TIntegerField
      FieldName = 'id'
    end
    object cdsSaidaDetalheitem: TIntegerField
      FieldName = 'item'
    end
    object cdsSaidaDetalheqtd: TSingleField
      FieldName = 'qtd'
    end
    object cdsSaidaDetalheqtdcaixa: TSingleField
      FieldName = 'qtdcaixa'
      OnChange = cdsSaidaDetalheqtdcaixaChange
    end
    object cdsSaidaDetalhetotal: TSingleField
      FieldName = 'total'
      OnChange = cdsSaidaDetalhetotalChange
    end
    object cdsSaidaDetalhedata: TDateField
      FieldName = 'data'
    end
    object cdsSaidaDetalhehora: TTimeField
      FieldName = 'hora'
    end
  end
  object dsSaidaDetalhe: TDataSource
    DataSet = cdsSaidaDetalhe
    Left = 66
    Top = 207
  end
  object cdsAcess: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftWideString
        Name = 'codOP'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspAcessSaida'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 56
    object cdsAcesscodproduto: TStringField
      DisplayLabel = 'Acess'#243'rios'
      FieldName = 'codproduto'
      Size = 50
    end
    object cdsAcessdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsAcesscodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
  end
  object dsAcess: TDataSource
    DataSet = cdsAcess
    Left = 40
    Top = 56
  end
end
