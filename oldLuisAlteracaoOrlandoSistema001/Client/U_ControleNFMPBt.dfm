inherited F_AbstratoButtons1: TF_AbstratoButtons1
  Caption = 'F_AbstratoButtons1'
  ClientHeight = 571
  ClientWidth = 1059
  ExplicitLeft = -324
  ExplicitWidth = 1075
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 1059
    Height = 129
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 1051
    ExplicitHeight = 137
  end
  object Label1: TLabel [3]
    Left = 189
    Top = 3
    Width = 43
    Height = 13
    Caption = 'Nro. NFe'
    FocusControl = cxDBSpinEdit1
  end
  object Label10: TLabel [4]
    Left = 189
    Top = 43
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label2: TLabel [5]
    Left = 347
    Top = 3
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
    FocusControl = cxDBSpinEdit2
  end
  object Label3: TLabel [6]
    Left = 487
    Top = 3
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = cxDBDateEdit1
  end
  object Label4: TLabel [7]
    Left = 639
    Top = 3
    Width = 52
    Height = 13
    Caption = 'C'#243'd. Fiscal'
    FocusControl = cxDBSpinEdit3
  end
  object Label5: TLabel [8]
    Left = 550
    Top = 43
    Width = 54
    Height = 13
    Caption = 'Cond. Pgto'
  end
  object Label6: TLabel [9]
    Left = 677
    Top = 43
    Width = 62
    Height = 13
    Caption = 'Detalhe Pgto'
    FocusControl = cxDBTextEdit2
  end
  object Label7: TLabel [10]
    Left = 844
    Top = 4
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = cxDBSpinEdit3
  end
  object Label8: TLabel [11]
    Left = 189
    Top = 83
    Width = 51
    Height = 13
    Caption = 'Valor Total'
    FocusControl = DBEdit2
  end
  inherited StatusBar1: TStatusBar
    Top = 552
    Width = 1059
    ExplicitTop = 552
    ExplicitWidth = 1059
  end
  inherited Panel1: TPanel
    Top = 497
    Width = 1059
    ExplicitTop = 497
    ExplicitWidth = 1059
    inherited btnNovo: TAdvGlassButton
      Left = 8
      Caption = 'Gerar Relat'#243'rio'
      Enabled = False
      Visible = False
      ExplicitLeft = 8
    end
    inherited btnEditar: TAdvGlassButton
      Left = 8
      Enabled = False
      Visible = False
      ExplicitLeft = 8
    end
    inherited btnDeletar: TAdvGlassButton
      Left = 9
      Enabled = False
      Visible = False
      ExplicitLeft = 9
    end
    inherited btnSalvar: TAdvGlassButton
      Left = 832
      Top = 14
      Width = 115
      Action = nil
      Caption = 'Gerar Comunicado'
      ExplicitLeft = 832
      ExplicitTop = 14
      ExplicitWidth = 115
    end
    inherited btnsair: TAdvGlassButton
      Left = 953
      ExplicitLeft = 953
    end
  end
  object Panel2: TPanel [14]
    Left = 0
    Top = 129
    Width = 1059
    Height = 368
    Align = alBottom
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1057
      Height = 366
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.Prior.Enabled = False
        Navigator.Buttons.Next.Enabled = False
        Navigator.Buttons.Last.Enabled = False
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Edit.Enabled = False
        Navigator.Buttons.Post.Enabled = False
        Navigator.Buttons.Refresh.Enabled = False
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.Filter.Enabled = False
        FilterBox.CustomizeButtonAlignment = fbaLeft
        FilterBox.CustomizeDialog = False
        FilterBox.Position = fpTop
        DataController.DataSource = dsItens
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'valortotal'
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        object cxGrid1DBTableView1item: TcxGridDBColumn
          Caption = 'Item'
          DataBinding.FieldName = 'item'
          Width = 33
        end
        object cxGrid1DBTableView1codigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'codigo'
          Width = 59
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'descricao'
          Width = 302
        end
        object cxGrid1DBTableView1ncm: TcxGridDBColumn
          Caption = 'NCM'
          DataBinding.FieldName = 'ncm'
          Width = 53
        end
        object cxGrid1DBTableView1UE: TcxGridDBColumn
          DataBinding.FieldName = 'UE'
          Width = 29
        end
        object cxGrid1DBTableView1qtde: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'qtde'
          Width = 77
        end
        object cxGrid1DBTableView1vlrunitario: TcxGridDBColumn
          Caption = 'Valor Un.'
          DataBinding.FieldName = 'vlrunitario'
          Width = 70
        end
        object cxGrid1DBTableView1percentagemicms: TcxGridDBColumn
          Caption = '%ICMS'
          DataBinding.FieldName = 'percentagemicms'
          Width = 42
        end
        object cxGrid1DBTableView1valoripi: TcxGridDBColumn
          Caption = '%IPI'
          DataBinding.FieldName = 'valoripi'
          Width = 31
        end
        object cxGrid1DBTableView1lote: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'lote'
          Width = 93
        end
        object cxGrid1DBTableView1validade: TcxGridDBColumn
          Caption = 'Data Validade'
          DataBinding.FieldName = 'validade'
          Width = 77
        end
        object cxGrid1DBTableView1sequencial: TcxGridDBColumn
          Caption = 'Seq.'
          DataBinding.FieldName = 'sequencial'
          Width = 41
        end
        object cxGrid1DBTableView1valortotal: TcxGridDBColumn
          Caption = 'Valor Total '
          DataBinding.FieldName = 'valortotal'
          Width = 148
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxDBDateEdit1: TcxDBDateEdit [15]
    Tag = 2
    Left = 487
    Top = 19
    DataBinding.DataField = 'data'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Width = 146
  end
  object cxDBMemo1: TcxDBMemo [16]
    Left = 844
    Top = 19
    DataBinding.DataField = 'obs'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Height = 99
    Width = 204
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [17]
    Left = 189
    Top = 19
    DataBinding.DataField = 'nronfe'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 151
  end
  object cxDBSpinEdit2: TcxDBSpinEdit [18]
    Tag = 1
    Left = 347
    Top = 19
    DataBinding.DataField = 'serienfe'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 134
  end
  object cxDBSpinEdit3: TcxDBSpinEdit [19]
    Left = 639
    Top = 19
    DataBinding.DataField = 'codfiscal'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 196
  end
  object cxDBTextEdit2: TcxDBTextEdit [20]
    Tag = 6
    Left = 677
    Top = 59
    DataBinding.DataField = 'detalhepagamento'
    DataBinding.DataSource = oDS
    TabOrder = 8
    Width = 158
  end
  object DBComboBox1: TDBComboBox [21]
    Left = 550
    Top = 59
    Width = 121
    Height = 21
    DataField = 'condpagamento'
    DataSource = oDS
    Items.Strings = (
      'PRAZO'
      #192' VISTA')
    TabOrder = 9
  end
  object DBEdit1: TDBEdit [22]
    Left = 189
    Top = 59
    Width = 355
    Height = 21
    DataField = 'nome_razaosocial'
    DataSource = oDS
    TabOrder = 10
  end
  object DBEdit2: TDBEdit [23]
    Left = 189
    Top = 99
    Width = 151
    Height = 21
    DataField = 'VALORTOTAL'
    DataSource = oDS
    TabOrder = 11
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 88
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspNFQuimico'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsnronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object oCdsserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdscodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object oCdsnome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object oCdscondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object oCdsdetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object oCdsobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object oCdsVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'nfe'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspNFQuimicoItens'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 120
    object cdsItensid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsItenscodnfeentrada: TIntegerField
      FieldName = 'codnfeentrada'
    end
    object cdsItenscodproduto: TStringField
      FieldName = 'codproduto'
      Size = 30
    end
    object cdsItensUE: TStringField
      FieldName = 'UE'
      Size = 10
    end
    object cdsItensqtde: TSingleField
      FieldName = 'qtde'
    end
    object cdsItensvlrunitario: TSingleField
      FieldName = 'vlrunitario'
    end
    object cdsItensvaloripi: TSingleField
      FieldName = 'valoripi'
    end
    object cdsItensvalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object cdsItenscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object cdsItenscodfiscal: TStringField
      FieldName = 'codfiscal'
      Size = 10
    end
    object cdsItenslote: TStringField
      FieldName = 'lote'
    end
    object cdsItensvalidade: TDateField
      FieldName = 'validade'
    end
    object cdsItensnroregistro: TIntegerField
      FieldName = 'nroregistro'
    end
    object cdsItenspercentagemicms: TSingleField
      FieldName = 'percentagemicms'
    end
    object cdsItensteveaumento: TSmallintField
      FieldName = 'teveaumento'
    end
    object cdsItensgeraetiqueta: TSmallintField
      FieldName = 'geraetiqueta'
    end
    object cdsItenscadastradf: TSmallintField
      FieldName = 'cadastradf'
    end
    object cdsItensncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object cdsItensitem: TIntegerField
      FieldName = 'item'
    end
    object cdsItenssequencial: TIntegerField
      FieldName = 'sequencial'
    end
    object cdsItensdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsItenscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 40
    Top = 120
  end
end
