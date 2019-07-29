inherited F_CadOrdemProducaoBt: TF_CadOrdemProducaoBt
  Caption = 'Ordem de Produ'#231#227'o '
  ClientHeight = 422
  ClientWidth = 632
  ExplicitWidth = 648
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Left = 2
    Top = 0
    Width = 629
    Height = 314
    Anchors = [akLeft, akTop, akRight]
    ExplicitLeft = 2
    ExplicitTop = 0
    ExplicitWidth = 629
    ExplicitHeight = 314
  end
  object Label2: TLabel [3]
    Left = 189
    Top = 8
    Width = 25
    Height = 13
    Caption = 'Ficha'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [4]
    Left = 290
    Top = 8
    Width = 21
    Height = 13
    Caption = 'Lote'
    FocusControl = cxDBTextEdit2
  end
  object Label4: TLabel [5]
    Left = 392
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Emiss'#227'o'
    FocusControl = cxDBDateEdit1
  end
  object Label5: TLabel [6]
    Left = 189
    Top = 79
    Width = 38
    Height = 13
    Caption = 'F'#243'rmula'
  end
  object Label6: TLabel [7]
    Left = 189
    Top = 44
    Width = 47
    Height = 13
    Caption = 'Produzido'
    FocusControl = edtProduzido
  end
  object Label7: TLabel [8]
    Left = 329
    Top = 44
    Width = 26
    Height = 13
    Caption = 'Fator'
    FocusControl = DBEdit2
  end
  object Label1: TLabel [9]
    Left = 418
    Top = 44
    Width = 62
    Height = 13
    Caption = 'Em produ'#231#227'o'
    FocusControl = cxDBSpinEdit1
  end
  inherited StatusBar1: TStatusBar
    Top = 403
    Width = 632
    ExplicitTop = 403
    ExplicitWidth = 632
  end
  inherited Panel1: TPanel
    Top = 348
    Width = 632
    TabOrder = 8
    ExplicitTop = 348
    ExplicitWidth = 632
    inherited btnsair: TAdvGlassButton
      Left = 526
      ExplicitLeft = 526
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [12]
    Left = 189
    Top = 21
    DataBinding.DataField = 'ficha'
    DataBinding.DataSource = oDS
    TabOrder = 0
    Width = 92
  end
  object cxDBTextEdit2: TcxDBTextEdit [13]
    Left = 287
    Top = 21
    DataBinding.DataField = 'lote'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 99
  end
  object cxDBDateEdit1: TcxDBDateEdit [14]
    Left = 392
    Top = 21
    DataBinding.DataField = 'emissao'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 144
  end
  object edtProduzido: TDBEdit [15]
    Left = 189
    Top = 57
    Width = 134
    Height = 21
    DataField = 'produzido'
    DataSource = oDS
    TabOrder = 3
    OnExit = edtProduzidoExit
  end
  object DBEdit2: TDBEdit [16]
    Left = 329
    Top = 57
    Width = 82
    Height = 21
    DataField = 'fator'
    DataSource = oDS
    TabOrder = 4
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [17]
    Left = 417
    Top = 57
    DataBinding.DataField = 'emproducao'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 119
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [18]
    Left = 189
    Top = 93
    DataBinding.DataField = 'idformula'
    DataBinding.DataSource = oDS
    Enabled = False
    Properties.GridMode = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'descricaoformula'
      end>
    Properties.ListSource = DSFormula
    Properties.OnChange = cxDBLookupComboBox1PropertiesChange
    TabOrder = 6
    Width = 347
  end
  object Panel2: TPanel [19]
    Left = 0
    Top = 129
    Width = 632
    Height = 213
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel2'
    TabOrder = 9
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 630
      Height = 211
      Align = alClient
      Anchors = [akRight, akBottom]
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
        DataController.DataSource = odsProducaoDetalhe
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        object cxGrid1DBTableView1idtblordemdeproducao: TcxGridDBColumn
          Caption = 'Ordem de Produ'#231#227'o'
          DataBinding.FieldName = 'idtblordemdeproducao'
          Width = 38
        end
        object cxGrid1DBTableView1percentual: TcxGridDBColumn
          Caption = 'Percentual '
          DataBinding.FieldName = 'percentual'
          Width = 26
        end
        object cxGrid1DBTableView1quantidade: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'quantidade'
          Width = 26
        end
        object cxGrid1DBTableView1lote1: TcxGridDBColumn
          Caption = 'Lote 1'
          DataBinding.FieldName = 'lote1'
          Width = 39
        end
        object cxGrid1DBTableView1lote2: TcxGridDBColumn
          Caption = 'Lote 2'
          DataBinding.FieldName = 'lote2'
          Width = 73
        end
        object cxGrid1DBTableView1lote3: TcxGridDBColumn
          Caption = 'Lote 3'
          DataBinding.FieldName = 'lote3'
          Width = 75
        end
        object cxGrid1DBTableView1preco_aquisicao: TcxGridDBColumn
          Caption = 'Pre'#231'o de Aquisi'#231#227'o '
          DataBinding.FieldName = 'preco_aquisicao'
          Width = 93
        end
        object cxGrid1DBTableView1valortotal: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'valortotal'
          Width = 90
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o '
          DataBinding.FieldName = 'descricao'
          Width = 47
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited ActionList: TActionList
    Left = 472
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblOrdemdeProducao'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsficha: TStringField
      DisplayLabel = 'Ficha'
      FieldName = 'ficha'
      Size = 5
    end
    object oCdslote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'lote'
      Size = 8
    end
    object oCdsemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
    end
    object oCdsidformula: TIntegerField
      DisplayLabel = 'F'#243'rmula'
      FieldName = 'idformula'
    end
    object oCdsproduzido: TSingleField
      DisplayLabel = 'Produzido'
      FieldName = 'produzido'
    end
    object oCdsfator: TSingleField
      DisplayLabel = 'Fator'
      FieldName = 'fator'
    end
    object oCdsemproducao: TIntegerField
      FieldName = 'emproducao'
    end
  end
  object CdsFormula: TClientDataSet
    Aggregates = <>
    ObjectView = False
    Params = <>
    ProviderName = 'dspTblFormula'
    RemoteServer = DM.ShCoGen
    Left = 560
    Top = 48
    object CdsFormulaid: TIntegerField
      FieldName = 'id'
    end
    object CdsFormulacodigo: TStringField
      FieldName = 'codigo'
      Size = 4
    end
    object CdsFormuladescricaoformula: TStringField
      DisplayLabel = 'Escolha a f'#243'rmula correta'
      FieldName = 'descricaoformula'
      Size = 50
    end
  end
  object DSFormula: TDataSource
    DataSet = CdsFormula
    Left = 584
    Top = 64
  end
  object oCdsProducaoDetalhe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'idordem'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspOrdemProducaoDetalhe'
    RemoteServer = DM.ShCoGen
    Left = 32
    Top = 193
    object oCdsProducaoDetalheid: TIntegerField
      FieldName = 'id'
      KeyFields = 'id'
    end
    object oCdsProducaoDetalheidtblordemdeproducao: TIntegerField
      FieldName = 'idtblordemdeproducao'
      ProviderFlags = [pfInUpdate]
    end
    object oCdsProducaoDetalheidmateriaprima: TIntegerField
      FieldName = 'idmateriaprima'
      ProviderFlags = [pfInUpdate]
    end
    object oCdsProducaoDetalhepercentual: TSingleField
      FieldName = 'percentual'
      ProviderFlags = [pfInUpdate]
    end
    object oCdsProducaoDetalhelote1: TStringField
      FieldName = 'lote1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object oCdsProducaoDetalhelote2: TStringField
      FieldName = 'lote2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object oCdsProducaoDetalhequantidade: TSingleField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
    end
    object oCdsProducaoDetalhelote3: TStringField
      FieldName = 'lote3'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object oCdsProducaoDetalhepreco_aquisicao: TSingleField
      FieldName = 'preco_aquisicao'
      ProviderFlags = [pfInUpdate]
    end
    object oCdsProducaoDetalhevalortotal: TSingleField
      FieldName = 'valortotal'
      ProviderFlags = [pfInUpdate]
    end
    object oCdsProducaoDetalhedescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = []
      Size = 100
    end
  end
  object odsProducaoDetalhe: TDataSource
    AutoEdit = False
    DataSet = oCdsProducaoDetalhe
    Left = 144
    Top = 192
  end
  object cdsFormulaDetalhe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'formula'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspTblFormuladetalhe'
    RemoteServer = DM.ShCoGen
    Left = 312
    Top = 113
    object cdsFormulaDetalheid: TIntegerField
      FieldName = 'id'
    end
    object cdsFormulaDetalheidtblformula: TIntegerField
      FieldName = 'idtblformula'
    end
    object cdsFormulaDetalheidmateriaprima: TIntegerField
      FieldName = 'idmateriaprima'
    end
    object cdsFormulaDetalhepercentual: TSingleField
      FieldName = 'percentual'
    end
  end
end
