inherited F_ListaClientesFaturamento: TF_ListaClientesFaturamento
  Caption = 'Lista de Clientes'
  ClientHeight = 560
  ClientWidth = 1067
  WindowState = wsMaximized
  ExplicitLeft = -294
  ExplicitWidth = 1083
  ExplicitHeight = 598
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 541
    Width = 1067
    ExplicitTop = 541
    ExplicitWidth = 1067
  end
  inherited Panel1: TPanel
    Top = 486
    Width = 1067
    ExplicitTop = 486
    ExplicitWidth = 1067
    inherited btnsair: TAdvGlassButton
      Left = 959
      ExplicitLeft = 959
    end
    inherited AdvGlassButton2: TAdvGlassButton
      TabOrder = 2
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 13
      Top = 14
      Width = 179
      Height = 32
      BackColor = 6052956
      Caption = 'Inserir / Editar Faturamento'
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
      TabOrder = 1
      Version = '1.3.0.0'
      OnClick = AdvGlassButton1Click
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 1067
    Height = 486
    Font.Height = -20
    ParentFont = False
    ExplicitWidth = 1067
    ExplicitHeight = 486
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = oDS
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1TipoCliente: TcxGridDBColumn
        DataBinding.FieldName = 'TipoCliente'
        Visible = False
        GroupIndex = 0
      end
      object cxGrid1DBTableView1te_terminal: TcxGridDBColumn
        DataBinding.FieldName = 'te_terminal'
      end
      object cxGrid1DBTableView1cl_cpfcgc: TcxGridDBColumn
        DataBinding.FieldName = 'cl_cpfcgc'
      end
      object cxGrid1DBTableView1cl_fantasia: TcxGridDBColumn
        DataBinding.FieldName = 'cl_fantasia'
      end
      object cxGrid1DBTableView1cl_tipo_cliente: TcxGridDBColumn
        DataBinding.FieldName = 'cl_tipo_cliente'
      end
      object cxGrid1DBTableView1Averbacao: TcxGridDBColumn
        DataBinding.FieldName = 'Averbacao'
      end
      object cxGrid1DBTableView1Empresarial: TcxGridDBColumn
        DataBinding.FieldName = 'Empresarial'
      end
      object cxGrid1DBTableView1EDI: TcxGridDBColumn
        DataBinding.FieldName = 'EDI'
      end
      object cxGrid1DBTableView1Outros: TcxGridDBColumn
        DataBinding.FieldName = 'Outros'
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspListaClientesFat'
    RemoteServer = DM.ShCoGen
    OnCalcFields = oCdsCalcFields
    Top = 32
    object oCdste_terminal: TWideStringField
      DisplayLabel = 'Terminal'
      FieldName = 'te_terminal'
      Required = True
      Size = 8
    end
    object oCdscl_cpfcgc: TWideStringField
      DisplayLabel = 'cnpj'
      FieldName = 'cl_cpfcgc'
      Size = 15
    end
    object oCdscl_fantasia: TWideStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'cl_fantasia'
      Size = 15
    end
    object oCdscl_tipo_cliente: TWideStringField
      FieldName = 'cl_tipo_cliente'
      Size = 1
    end
    object oCdsAverbacao: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Averbacao'
    end
    object oCdsEmpresarial: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Empresarial'
    end
    object oCdsEDI: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'EDI'
    end
    object oCdsOutros: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Outros'
    end
    object oCdsTipoCliente: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkInternalCalc
      FieldName = 'TipoCliente'
      Size = 25
    end
  end
  inherited oDS: TDataSource
    Top = 32
  end
  object cdsFaturamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaturamento'
    RemoteServer = DM.ShCoGen
    Left = 136
    Top = 96
    object cdsFaturamentofat_terminal: TWideStringField
      FieldName = 'fat_terminal'
      Size = 16
    end
    object cdsFaturamentoFat_Averbacao: TBooleanField
      FieldName = 'Fat_Averbacao'
    end
    object cdsFaturamentoFat_Empresarial: TBooleanField
      FieldName = 'Fat_Empresarial'
    end
    object cdsFaturamentoFat_EDI: TBooleanField
      FieldName = 'Fat_EDI'
    end
    object cdsFaturamentoFat_Outros: TBooleanField
      FieldName = 'Fat_Outros'
    end
  end
  object dsFaturamento: TDataSource
    DataSet = cdsFaturamento
    Left = 232
    Top = 104
  end
end
