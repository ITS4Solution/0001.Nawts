inherited F_ParametrosFaturamento: TF_ParametrosFaturamento
  Caption = 'Par'#226'metros de faturamento'
  ClientHeight = 499
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 480
    ExplicitTop = 480
  end
  inherited Panel1: TPanel
    Top = 425
    ExplicitTop = 425
    inherited btnNovo: TAdvGlassButton
      Left = 443
      Top = 41
      Visible = False
      ExplicitLeft = 443
      ExplicitTop = 41
    end
    inherited btnEditar: TAdvGlassButton
      Left = 15
      Top = 14
      ExplicitLeft = 15
      ExplicitTop = 14
    end
    inherited btnDeletar: TAdvGlassButton
      Left = 387
      Top = 33
      Visible = False
      ExplicitLeft = 387
      ExplicitTop = 33
    end
    inherited btnSalvar: TAdvGlassButton
      Left = 119
      Top = 14
      ExplicitLeft = 119
      ExplicitTop = 14
    end
  end
  object TabbedNotebook1: TTabbedNotebook [2]
    Left = 0
    Top = 0
    Width = 544
    Height = 425
    Align = alClient
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    TabOrder = 2
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Averba'#231#227'o'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 397
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 80
          Top = 16
          Width = 24
          Height = 13
          Caption = 'Paga'
        end
        object Label2: TLabel
          Left = 61
          Top = 41
          Width = 43
          Height = 13
          Caption = 'Paga por'
        end
        object Label4: TLabel
          Left = 20
          Top = 172
          Width = 84
          Height = 13
          Caption = 'Emitir boleto para'
          FocusControl = cxDBSpinEdit2
        end
        object Label5: TLabel
          Left = 166
          Top = 172
          Width = 122
          Height = 13
          Caption = 'dia(s) ap'#243's o fechamento'
          FocusControl = cxDBSpinEdit2
        end
        object Label6: TLabel
          Left = 5
          Top = 227
          Width = 124
          Height = 13
          Caption = 'Valor por documento total'
          FocusControl = cxDBCalcEdit1
        end
        object Bevel1: TBevel
          Left = 5
          Top = 155
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object Bevel2: TBevel
          Left = 5
          Top = 208
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object Bevel3: TBevel
          Left = 5
          Top = 75
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object Label15: TLabel
          Left = 260
          Top = 227
          Width = 133
          Height = 13
          Caption = 'Valor por documento parcial'
          FocusControl = cxDBCalcEdit7
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 110
          Top = 13
          DataBinding.DataField = 'Averba_Paga'
          DataBinding.DataSource = oDS
          Properties.Items.Strings = (
            'Parcial'
            'Integral')
          TabOrder = 0
          Width = 121
        end
        object cxDBComboBox2: TcxDBComboBox
          Left = 110
          Top = 40
          DataBinding.DataField = 'Averba_PagaPor'
          DataBinding.DataSource = oDS
          Properties.Items.Strings = (
            'Documentos'
            'O que for menor')
          TabOrder = 1
          Width = 121
        end
        object cxGroupBox1: TcxGroupBox
          Left = 104
          Top = 88
          Caption = ' Dia do Fechamento '
          TabOrder = 2
          Height = 52
          Width = 127
          object Label3: TLabel
            Left = 7
            Top = 23
            Width = 41
            Height = 13
            Caption = 'Todo dia'
            FocusControl = cxDBSpinEdit1
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 54
            Top = 20
            DataBinding.DataField = 'Averba_DiaFechamento'
            DataBinding.DataSource = oDS
            Properties.MaxValue = 31.000000000000000000
            Properties.MinValue = 1.000000000000000000
            TabOrder = 0
            Width = 57
          end
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 110
          Top = 169
          DataBinding.DataField = 'Averba_EmiteBoletoDias'
          DataBinding.DataSource = oDS
          Properties.MaxValue = 5.000000000000000000
          Properties.MinValue = 1.000000000000000000
          TabOrder = 3
          Width = 50
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 135
          Top = 222
          DataBinding.DataField = 'Averba_VlrPorDocumentoTotal'
          DataBinding.DataSource = oDS
          TabOrder = 4
          Width = 121
        end
        object cxDBCalcEdit7: TcxDBCalcEdit
          Left = 397
          Top = 224
          DataBinding.DataField = 'Averba_VlrPorDocumentoParcial'
          DataBinding.DataSource = oDS
          TabOrder = 5
          Width = 121
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Empresarial'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 397
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label8: TLabel
          Left = 177
          Top = 90
          Width = 122
          Height = 13
          Caption = 'dia(s) ap'#243's o fechamento'
          FocusControl = cxDBSpinEdit4
        end
        object Label9: TLabel
          Left = 31
          Top = 90
          Width = 84
          Height = 13
          Caption = 'Emitir boleto para'
          FocusControl = cxDBSpinEdit4
        end
        object Label10: TLabel
          Left = 6
          Top = 141
          Width = 109
          Height = 13
          Caption = 'Valor da caixa principal'
          FocusControl = cxDBCalcEdit2
        end
        object Label11: TLabel
          Left = 256
          Top = 141
          Width = 111
          Height = 13
          Caption = 'Valor da caixa adicional'
          FocusControl = cxDBCalcEdit3
        end
        object Bevel4: TBevel
          Left = 8
          Top = 75
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object Bevel5: TBevel
          Left = 8
          Top = 121
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object cxGroupBox2: TcxGroupBox
          Left = 8
          Top = 7
          Caption = ' Dia do Fechamento '
          TabOrder = 0
          Height = 52
          Width = 127
          object Label7: TLabel
            Left = 7
            Top = 23
            Width = 41
            Height = 13
            Caption = 'Todo dia'
            FocusControl = cxDBSpinEdit3
          end
          object cxDBSpinEdit3: TcxDBSpinEdit
            Left = 54
            Top = 20
            DataBinding.DataField = 'Empresarial_DiaFechamento'
            DataBinding.DataSource = oDS
            Properties.MaxValue = 31.000000000000000000
            Properties.MinValue = 1.000000000000000000
            TabOrder = 0
            Width = 57
          end
        end
        object cxDBSpinEdit4: TcxDBSpinEdit
          Left = 121
          Top = 87
          DataBinding.DataField = 'Empresarial_EmiteBoletoDias'
          DataBinding.DataSource = oDS
          Properties.MaxValue = 5.000000000000000000
          Properties.MinValue = 1.000000000000000000
          TabOrder = 2
          Width = 50
        end
        object cxDBCalcEdit2: TcxDBCalcEdit
          Left = 121
          Top = 138
          DataBinding.DataField = 'Empresarial_VlrCxPostalPrincipal'
          DataBinding.DataSource = oDS
          TabOrder = 3
          Width = 121
        end
        object cxDBCalcEdit3: TcxDBCalcEdit
          Left = 373
          Top = 138
          DataBinding.DataField = 'Empresarial_VlrCxPostalAdicional'
          DataBinding.DataSource = oDS
          TabOrder = 4
          Width = 121
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 157
          Top = 7
          Caption = ' Tipo de cobran'#231'a '
          DataBinding.DataField = 'Empresarial_CobraPor'
          DataBinding.DataSource = oDS
          Properties.Items = <
            item
              Caption = 'Cobra por Caixa'
              Value = 'Caixa'
            end
            item
              Caption = 'Cobra por Faixa'
              Value = 'Faixa'
            end>
          TabOrder = 1
          Height = 52
          Width = 185
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 169
          Width = 521
          Height = 210
          Caption = ' Faixa de Valores '
          TabOrder = 5
          object cxGrid1: TcxGrid
            Left = 12
            Top = 16
            Width = 333
            Height = 188
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Enabled = False
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Enabled = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Enabled = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Hint = 'Novo'
              Navigator.Buttons.Append.Visible = True
              Navigator.Buttons.Delete.Hint = 'Deletar'
              Navigator.Buttons.Edit.Hint = 'Editar'
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Enabled = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Hint = 'Cancelar'
              Navigator.Buttons.Refresh.Enabled = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Enabled = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Enabled = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Enabled = False
              Navigator.Buttons.Filter.Visible = False
              Navigator.Visible = True
              DataController.DataSource = dsFaixa
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.Appending = True
              OptionsData.DeletingConfirmation = False
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1InicioFaixa: TcxGridDBColumn
                DataBinding.FieldName = 'InicioFaixa'
              end
              object cxGrid1DBTableView1FimFaixa: TcxGridDBColumn
                DataBinding.FieldName = 'FimFaixa'
              end
              object cxGrid1DBTableView1Valor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'EDI'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 397
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label12: TLabel
          Left = 15
          Top = 30
          Width = 99
          Height = 13
          Caption = 'Valor da caixa postal'
          FocusControl = cxDBCalcEdit4
        end
        object Label13: TLabel
          Left = 72
          Top = 62
          Width = 42
          Height = 13
          Caption = 'Franquia'
          FocusControl = cxDBCalcEdit5
        end
        object Label14: TLabel
          Left = 12
          Top = 93
          Width = 102
          Height = 13
          Caption = 'Valor por Kb adicional'
          FocusControl = cxDBCalcEdit6
        end
        object cxDBCalcEdit4: TcxDBCalcEdit
          Left = 118
          Top = 27
          DataBinding.DataField = 'EDI_VlrCxPostal'
          DataBinding.DataSource = oDS
          TabOrder = 0
          Width = 121
        end
        object cxDBCalcEdit5: TcxDBCalcEdit
          Left = 118
          Top = 59
          DataBinding.DataField = 'EDI_Franquia'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 121
        end
        object cxDBCalcEdit6: TcxDBCalcEdit
          Left = 118
          Top = 90
          DataBinding.DataField = 'EDI_VlrKbAdicional'
          DataBinding.DataSource = oDS
          TabOrder = 2
          Width = 121
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Outros Produtos'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 397
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 6
          Top = 8
          Width = 525
          Height = 385
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Enabled = False
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Enabled = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Enabled = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Enabled = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Hint = 'Novo'
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Delete.Hint = 'Deletar'
            Navigator.Buttons.Edit.Hint = 'Editar'
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Enabled = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Hint = 'Cancelar'
            Navigator.Buttons.Refresh.Enabled = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsOutros
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Appending = True
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1Descricao: TcxGridDBColumn
              DataBinding.FieldName = 'Descricao'
              Width = 200
            end
            object cxGridDBTableView1Valor: TcxGridDBColumn
              DataBinding.FieldName = 'Valor'
              Width = 80
            end
            object cxGridDBTableView1TipoCobranca: TcxGridDBColumn
              DataBinding.FieldName = 'TipoCobranca'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                'Hora'
                'Unidade')
              Width = 120
            end
            object cxGridDBTableView1PeriodoCobranca: TcxGridDBColumn
              DataBinding.FieldName = 'PeriodoCobranca'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                'Mensal'
                'Pontual')
              Width = 120
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 65528
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspFatParametros'
    RemoteServer = DM.ShCoGen
    Left = 128
    Top = 328
    object oCdsId: TIntegerField
      FieldName = 'Id'
    end
    object oCdsAverba_Paga: TWideStringField
      FieldName = 'Averba_Paga'
      Size = 10
    end
    object oCdsAverba_PagaPor: TWideStringField
      FieldName = 'Averba_PagaPor'
    end
    object oCdsAverba_DiaFechamento: TIntegerField
      FieldName = 'Averba_DiaFechamento'
    end
    object oCdsAverba_EmiteBoletoDias: TIntegerField
      FieldName = 'Averba_EmiteBoletoDias'
    end
    object oCdsEmpresarial_DiaFechamento: TIntegerField
      FieldName = 'Empresarial_DiaFechamento'
    end
    object oCdsEmpresarial_EmiteBoletoDias: TIntegerField
      FieldName = 'Empresarial_EmiteBoletoDias'
    end
    object oCdsEmpresarial_VlrCxPostalPrincipal: TFloatField
      FieldName = 'Empresarial_VlrCxPostalPrincipal'
      DisplayFormat = '#,##0.0000'
    end
    object oCdsEmpresarial_VlrCxPostalAdicional: TFloatField
      FieldName = 'Empresarial_VlrCxPostalAdicional'
      DisplayFormat = '#,##0.0000'
    end
    object oCdsEmpresarial_CobraPor: TWideStringField
      FieldName = 'Empresarial_CobraPor'
      Size = 5
    end
    object oCdsEDI_VlrCxPostal: TFloatField
      FieldName = 'EDI_VlrCxPostal'
      DisplayFormat = '#,##0.0000'
    end
    object oCdsEDI_Franquia: TFloatField
      FieldName = 'EDI_Franquia'
    end
    object oCdsEDI_VlrKbAdicional: TFloatField
      FieldName = 'EDI_VlrKbAdicional'
      DisplayFormat = '#,##0.0000'
    end
    object oCdsDtInc: TDateField
      FieldName = 'DtInc'
    end
    object oCdsUsuInc: TWideStringField
      FieldName = 'UsuInc'
      Size = 10
    end
    object oCdsDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object oCdsUsuAlt: TWideStringField
      FieldName = 'UsuAlt'
      Size = 10
    end
    object oCdsAverba_VlrPorDocumentoParcial: TFloatField
      FieldName = 'Averba_VlrPorDocumentoParcial'
    end
    object oCdsAverba_VlrPorDocumentoTotal: TFloatField
      FieldName = 'Averba_VlrPorDocumentoTotal'
    end
  end
  inherited oDS: TDataSource
    Left = 160
    Top = 328
  end
  object oCdsFaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspfat_parempfaixa'
    RemoteServer = DM.ShCoGen
    Left = 208
    Top = 328
    object oCdsFaixaId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Id'
    end
    object oCdsFaixaInicioFaixa: TIntegerField
      DisplayLabel = 'Inicio'
      FieldName = 'InicioFaixa'
    end
    object oCdsFaixaFimFaixa: TIntegerField
      DisplayLabel = 'Fim'
      FieldName = 'FimFaixa'
    end
    object oCdsFaixaValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.0000'
    end
    object oCdsFaixaDtInc: TDateField
      FieldName = 'DtInc'
    end
    object oCdsFaixaUsuInc: TWideStringField
      FieldName = 'UsuInc'
    end
    object oCdsFaixaDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object oCdsFaixaUsuAlt: TWideStringField
      FieldName = 'UsuAlt'
      Size = 126
    end
  end
  object dsFaixa: TDataSource
    AutoEdit = False
    DataSet = oCdsFaixa
    OnStateChange = oDSStateChange
    Left = 255
    Top = 328
  end
  object oCdsOutros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFatOutros'
    RemoteServer = DM.ShCoGen
    Left = 306
    Top = 328
    object oCdsOutrosId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Id'
    end
    object oCdsOutrosDescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 100
    end
    object oCdsOutrosValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.0000'
    end
    object oCdsOutrosTipoCobranca: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TipoCobranca'
      Size = 40
    end
    object oCdsOutrosPeriodoCobranca: TWideStringField
      DisplayLabel = 'Per'#237'odo'
      FieldName = 'PeriodoCobranca'
    end
    object oCdsOutrosDtInc: TDateField
      FieldName = 'DtInc'
    end
    object oCdsOutrosUsuInc: TWideStringField
      FieldName = 'UsuInc'
    end
    object oCdsOutrosDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object oCdsOutrosUsuAlt: TWideStringField
      FieldName = 'UsuAlt'
    end
  end
  object dsOutros: TDataSource
    AutoEdit = False
    DataSet = oCdsOutros
    OnStateChange = oDSStateChange
    Left = 360
    Top = 328
  end
end
