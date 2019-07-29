inherited F_NFeEntrada: TF_NFeEntrada
  Caption = 'Lista NFe Entrada'
  ClientWidth = 796
  ExplicitWidth = 812
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 796
    ExplicitWidth = 796
  end
  inherited Panel1: TPanel
    Width = 796
    ExplicitWidth = 796
    DesignSize = (
      796
      55)
    inherited btnsair: TAdvGlassButton
      Left = 688
      Top = 16
      ExplicitLeft = 688
      ExplicitTop = 16
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 582
      Anchors = [akRight, akBottom]
      ExplicitLeft = 582
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 7
      Top = 14
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Novo'
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
      Version = '1.3.0.2'
      OnClick = AdvGlassButton1Click
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 35
    Width = 796
    Height = 266
    ExplicitWidth = 796
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.CustomizeDialog = False
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = oDS
      Filtering.ColumnFilteredItemsList = True
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Filtro aqui clique'
      object cxGrid1DBTableView1nronfe: TcxGridDBColumn
        Caption = 'N'#176' Nfe'
        DataBinding.FieldName = 'nronfe'
        SortIndex = 0
        SortOrder = soAscending
        Width = 103
      end
      object cxGrid1DBTableView1serienfe: TcxGridDBColumn
        Caption = 'S'#233'rie'
        DataBinding.FieldName = 'serienfe'
        Width = 85
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 71
      end
      object cxGrid1DBTableView1codfiscal: TcxGridDBColumn
        Caption = 'C'#243'd. Fiscal'
        DataBinding.FieldName = 'codfiscal'
        Width = 74
      end
      object cxGrid1DBTableView1calcFornecedor: TcxGridDBColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'nome_razaosocial'
        Width = 223
      end
      object cxGrid1DBTableView1condpagamento: TcxGridDBColumn
        Caption = 'Cond. Pagto.'
        DataBinding.FieldName = 'condpagamento'
        Width = 136
      end
      object cxGrid1DBTableView1detalhepagamento: TcxGridDBColumn
        Caption = 'Detalhe Pagto.'
        DataBinding.FieldName = 'detalhepagamento'
        Width = 108
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Valor Total'
        DataBinding.FieldName = 'VALORTOTAL'
      end
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 0
    Width = 796
    Height = 35
    Align = alTop
    TabOrder = 3
    object btnFiltrar: TAdvGlassButton
      Left = 134
      Top = 6
      Width = 50
      Height = 25
      BackColor = 6052956
      Caption = 'Filtrar'
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
      TabOrder = 0
      Version = '1.3.0.2'
      OnClick = btnFiltrarClick
    end
    object edtSearch: TEdit
      Left = 7
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 1
      TextHint = 'Digite o n'#250'mero da NF'
    end
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 65520
  end
  inherited oCds: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'search'
        ParamType = ptInput
        Value = ''
      end>
    ProviderName = 'dspSearchNFe'
    RemoteServer = DM.ShCoGen
    OnCalcFields = oCdsCalcFields
    Left = 304
    Top = 65528
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
    object oCdsVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object oCdsobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object oCdscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object oCdsid_1: TIntegerField
      FieldName = 'id_1'
      Required = True
    end
    object oCdscalcFornecedor: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'calcFornecedor'
      Size = 100
    end
  end
  inherited oDS: TDataSource
    Left = 336
    Top = 65528
  end
  object ocdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    RemoteServer = DM.ShCoGen
    Left = 16
    Top = 104
    object ocdsFornecedorid: TIntegerField
      FieldName = 'id'
    end
    object ocdsFornecedornome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
  end
  object dsFornecedor: TDataSource
    DataSet = ocdsFornecedor
    Left = 56
    Top = 104
  end
end
