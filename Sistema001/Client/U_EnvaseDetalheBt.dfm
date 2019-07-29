inherited F_EnvaseDetalheBt: TF_EnvaseDetalheBt
  Caption = 'Ordem de Produ'#231#227'o - Envase Detalhe'
  ClientHeight = 381
  ClientWidth = 580
  ExplicitWidth = 596
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 580
    Height = 307
    Align = alClient
    ExplicitLeft = -24
    ExplicitTop = 7
    ExplicitWidth = 580
    ExplicitHeight = 395
  end
  object Label1: TLabel [3]
    Left = 189
    Top = 4
    Width = 61
    Height = 13
    Caption = 'C'#243'd. Envase'
    FocusControl = cxDBSpinEdit1
  end
  object Label2: TLabel [4]
    Left = 189
    Top = 44
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label3: TLabel [5]
    Left = 189
    Top = 83
    Width = 64
    Height = 13
    Caption = 'Qtd. Prevista'
    FocusControl = DBEdit1
  end
  object Label4: TLabel [6]
    Left = 189
    Top = 124
    Width = 46
    Height = 13
    Caption = 'Qtd. Real'
    FocusControl = DBEdit2
  end
  object Label5: TLabel [7]
    Left = 451
    Top = 4
    Width = 23
    Height = 13
    Caption = 'Hora'
    FocusControl = cxDBTimeEdit1
  end
  object Label6: TLabel [8]
    Left = 329
    Top = 4
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = cxDBDateEdit1
  end
  object Label7: TLabel [9]
    Left = 298
    Top = 83
    Width = 13
    Height = 13
    Caption = 'UE'
  end
  object Label8: TLabel [10]
    Left = 467
    Top = 83
    Width = 21
    Height = 13
    Caption = 'Lote'
    FocusControl = cxDBTextEdit2
  end
  object Label9: TLabel [11]
    Left = 362
    Top = 83
    Width = 20
    Height = 13
    Caption = 'CPA'
    FocusControl = cxDBTextEdit3
  end
  object Label10: TLabel [12]
    Left = 298
    Top = 124
    Width = 46
    Height = 13
    Caption = 'Operador'
    FocusControl = cxDBTextEdit4
  end
  object Label11: TLabel [13]
    Left = 451
    Top = 122
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label12: TLabel [14]
    Left = 8
    Top = 124
    Width = 85
    Height = 13
    Caption = 'Ordem de Envase'
    FocusControl = cxDBSpinEdit3
  end
  inherited Panel1: TPanel [15]
    Top = 307
    Width = 580
    ExplicitLeft = 2
    ExplicitTop = 555
    ExplicitWidth = 580
    inherited btnsair: TAdvGlassButton
      Left = 474
      ExplicitLeft = 474
    end
  end
  inherited StatusBar1: TStatusBar [16]
    Top = 362
    Width = 580
    ExplicitTop = 362
    ExplicitWidth = 580
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [17]
    Left = 189
    Top = 19
    DataBinding.DataField = 'codenvase'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 129
  end
  object DBEdit1: TDBEdit [18]
    Left = 189
    Top = 97
    Width = 103
    Height = 21
    DataField = 'qtdprevista'
    DataSource = oDS
    TabOrder = 3
  end
  object DBEdit2: TDBEdit [19]
    Left = 189
    Top = 138
    Width = 103
    Height = 21
    DataField = 'qtdreal'
    DataSource = oDS
    TabOrder = 4
  end
  object cxDBTimeEdit1: TcxDBTimeEdit [20]
    Left = 451
    Top = 18
    DataBinding.DataField = 'hora'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 121
  end
  object cxDBDateEdit1: TcxDBDateEdit [21]
    Left = 324
    Top = 18
    DataBinding.DataField = 'data'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit [22]
    Left = 467
    Top = 97
    DataBinding.DataField = 'lote'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 105
  end
  object cxDBTextEdit3: TcxDBTextEdit [23]
    Left = 362
    Top = 97
    DataBinding.DataField = 'cpa'
    DataBinding.DataSource = oDS
    TabOrder = 8
    Width = 99
  end
  object cxDBTextEdit4: TcxDBTextEdit [24]
    Left = 298
    Top = 138
    DataBinding.DataField = 'operador'
    DataBinding.DataSource = oDS
    TabOrder = 9
    Width = 147
  end
  object cxDBSpinEdit3: TcxDBSpinEdit [25]
    Left = 8
    Top = 138
    DataBinding.DataField = 'idordemenvase'
    DataBinding.DataSource = oDS
    TabOrder = 10
    Width = 175
  end
  object cxDBComboBox1: TcxDBComboBox [26]
    Left = 298
    Top = 97
    DataBinding.DataField = 'ue'
    DataBinding.DataSource = oDS
    Properties.Items.Strings = (
      'UN'
      'Vidro'
      'Pote'
      'Outro')
    TabOrder = 11
    Width = 58
  end
  object cxDBComboBox2: TcxDBComboBox [27]
    Left = 451
    Top = 138
    DataBinding.DataField = 'status'
    DataBinding.DataSource = oDS
    Properties.Items.Strings = (
      'Aberto'
      'Produzindo'
      'Finalizada')
    TabOrder = 12
    Width = 121
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [28]
    Left = 189
    Top = 58
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'descricao'
      end>
    Properties.ListSource = dsProduto
    TabOrder = 13
    Width = 383
  end
  inherited ActionList: TActionList
    Left = 112
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblOrdemEnvaseDetalhe'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodenvase: TIntegerField
      FieldName = 'codenvase'
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
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
    object oCdsidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    RemoteServer = DM.ShCoGen
    Left = 256
    Top = 40
    object cdsProdutocodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object cdsProdutodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsProdutoid: TIntegerField
      FieldName = 'id'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 296
    Top = 40
  end
end
