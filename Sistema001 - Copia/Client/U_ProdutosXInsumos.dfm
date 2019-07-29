inherited F_ProdutosXInsumos: TF_ProdutosXInsumos
  Caption = 'Produtos x Insumos'
  ClientHeight = 381
  ClientWidth = 706
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitWidth = 722
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 706
    Height = 307
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 706
    ExplicitHeight = 307
  end
  object Label1: TLabel [3]
    Left = 189
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = cxDBSpinEdit1
  end
  object Label2: TLabel [4]
    Left = 316
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit1
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 706
    ExplicitTop = 362
    ExplicitWidth = 706
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 706
    ExplicitTop = 307
    ExplicitWidth = 706
    inherited btnNovo: TAdvGlassButton
      Left = 215
      Top = 14
      Enabled = False
      Visible = False
      ExplicitLeft = 215
      ExplicitTop = 14
    end
    inherited btnEditar: TAdvGlassButton
      Left = 12
      Top = 14
      ExplicitLeft = 12
      ExplicitTop = 14
    end
    inherited btnDeletar: TAdvGlassButton
      Left = 317
      Top = 14
      Enabled = False
      Visible = False
      ExplicitLeft = 317
      ExplicitTop = 14
    end
    inherited btnSalvar: TAdvGlassButton
      Left = 113
      Top = 14
      Enabled = False
      ExplicitLeft = 113
      ExplicitTop = 14
    end
    inherited btnsair: TAdvGlassButton
      Left = 600
      ExplicitLeft = 600
    end
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [7]
    Left = 189
    Top = 24
    DataBinding.DataField = 'codproduto'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 121
  end
  object cxDBTextEdit1: TcxDBTextEdit [8]
    Left = 316
    Top = 24
    DataBinding.DataField = 'descricao'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Width = 382
  end
  object cxGrid1: TcxGrid [9]
    Left = 189
    Top = 51
    Width = 509
    Height = 250
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsInsumos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Check: TcxGridDBColumn
        DataBinding.FieldName = 'Check'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 110
      end
      object cxGrid1DBTableView1codigo: TcxGridDBColumn
        Caption = 'C'#243'digo]'
        DataBinding.FieldName = 'codigo'
        Width = 141
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'descricao'
        Width = 220
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ActionList: TActionList
    Left = 112
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspProdutos'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object oCdsInsumos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTblInsumos'
    RemoteServer = DM.ShCoGen
    OnCalcFields = oCdsInsumosCalcFields
    Left = 32
    Top = 128
    object oCdsInsumosid: TIntegerField
      FieldName = 'id'
    end
    object oCdsInsumoscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object oCdsInsumosue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object oCdsInsumoslitragem: TSingleField
      FieldName = 'litragem'
    end
    object oCdsInsumosdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object oCdsInsumosCheck: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Check'
    end
  end
  object dsInsumos: TDataSource
    DataSet = oCdsInsumos
    Left = 96
    Top = 128
  end
  object oCdsRelacionamento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'idprod'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspProdutosxInsumos'
    RemoteServer = DM.ShCoGen
    Left = 32
    Top = 192
    object oCdsRelacionamentoid: TIntegerField
      FieldName = 'id'
    end
    object oCdsRelacionamentoprodutoid: TIntegerField
      FieldName = 'produtoid'
    end
    object oCdsRelacionamentoinsumosid: TIntegerField
      FieldName = 'insumosid'
    end
  end
end
