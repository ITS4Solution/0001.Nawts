inherited F_EstoqueAdmarBtn: TF_EstoqueAdmarBtn
  Caption = 'Estoque - Envio Expedi'#231#227'o'
  ClientHeight = 381
  ClientWidth = 682
  ExplicitWidth = 698
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 682
    Height = 307
    Align = alClient
    ExplicitLeft = -1
    ExplicitTop = 0
    ExplicitWidth = 704
    ExplicitHeight = 314
  end
  inherited dxBevel2: TdxBevel
    Left = 3
    Top = 3
    ExplicitLeft = 3
    ExplicitTop = 3
  end
  object Label1: TLabel [3]
    Left = 190
    Top = 5
    Width = 61
    Height = 13
    Caption = 'C'#243'd. Envase'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [4]
    Left = 541
    Top = 42
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit2
  end
  object Label4: TLabel [5]
    Left = 330
    Top = 5
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel [6]
    Left = 190
    Top = 83
    Width = 13
    Height = 13
    Caption = 'UE'
  end
  object Label6: TLabel [7]
    Left = 287
    Top = 83
    Width = 21
    Height = 13
    Caption = 'Lote'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [8]
    Left = 401
    Top = 83
    Width = 46
    Height = 13
    Caption = 'Operador'
    FocusControl = DBEdit7
  end
  object Label3: TLabel [9]
    Left = 190
    Top = 43
    Width = 38
    Height = 13
    Caption = 'Produto'
    FocusControl = DBEdit1
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 682
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 682
    inherited btnNovo: TAdvGlassButton
      Left = 11
      ExplicitLeft = 11
    end
    inherited btnEditar: TAdvGlassButton
      Left = 114
      ExplicitLeft = 114
    end
    inherited btnDeletar: TAdvGlassButton
      Left = 217
      ExplicitLeft = 217
    end
    inherited btnSalvar: TAdvGlassButton
      Top = 13
      ExplicitTop = 13
    end
    inherited btnsair: TAdvGlassButton
      Left = 576
    end
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [12]
    Tag = 3
    Left = 190
    Top = 58
    DataBinding.DataField = 'idprodutos'
    DataBinding.DataSource = oDS
    Properties.GridMode = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'descricao'
      end>
    Properties.ListSource = DSProdutos
    TabOrder = 2
    Width = 345
  end
  object DBEdit1: TDBEdit [13]
    Left = 190
    Top = 20
    Width = 134
    Height = 21
    DataField = 'codopenvase'
    DataSource = oDS
    TabOrder = 3
  end
  object DBEdit2: TDBEdit [14]
    Left = 541
    Top = 58
    Width = 134
    Height = 21
    DataField = 'qtdreal'
    DataSource = oDS
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [15]
    Left = 287
    Top = 99
    Width = 108
    Height = 21
    DataField = 'lote'
    DataSource = oDS
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [16]
    Left = 401
    Top = 99
    Width = 274
    Height = 21
    DataField = 'operador'
    DataSource = oDS
    TabOrder = 6
  end
  object cxDBDateEdit1: TcxDBDateEdit [17]
    Left = 330
    Top = 20
    DataBinding.DataField = 'data'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 127
  end
  object cxDBComboBox2: TcxDBComboBox [18]
    Tag = 5
    Left = 190
    Top = 99
    DataBinding.DataField = 'ue'
    DataBinding.DataSource = oDS
    Properties.Items.Strings = (
      'UN'
      'Vidro'
      'Pote'
      'Outro')
    TabOrder = 8
    Width = 92
  end
  inherited ActionList: TActionList
    Left = 8
    Top = 56
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspOrdemEnvaseBt'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object oCdsidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object oCdsqtdprevista: TSingleField
      FieldName = 'qtdprevista'
    end
    object oCdsqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object oCdshora: TTimeField
      FieldName = 'hora'
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object oCdscpa: TStringField
      FieldName = 'cpa'
      Size = 5
    end
    object oCdsoperador: TStringField
      FieldName = 'operador'
      Size = 30
    end
    object oCdsstatus: TStringField
      FieldName = 'status'
      Size = 15
    end
  end
  object CdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    RemoteServer = DM.ShCoGen
    Left = 88
    Top = 8
    object CdsProdutosid: TIntegerField
      FieldName = 'id'
    end
    object CdsProdutosdescricao: TStringField
      DisplayLabel = 'Selecione o produto...'
      FieldName = 'descricao'
      Size = 50
    end
  end
  object DSProdutos: TDataSource
    DataSet = CdsProdutos
    Left = 120
    Top = 8
  end
end
