inherited F_ListaLote: TF_ListaLote
  Caption = 'Controle de Lote'
  ClientHeight = 479
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 460
    Width = 784
  end
  inherited Panel1: TPanel
    Top = 405
    Width = 784
    inherited btnsair: TAdvGlassButton
      Left = 676
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 572
      Anchors = [akTop, akRight]
      ExplicitLeft = 566
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 784
    Height = 405
    ExplicitTop = 8
    ExplicitWidth = 854
    ExplicitHeight = 405
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
        Width = 82
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data Inclus'#227'o'
        DataBinding.FieldName = 'data'
        Width = 90
      end
      object cxGrid1DBTableView1quantd: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'quantd'
        Width = 118
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 224
      end
      object cxGrid1DBTableView1dataval: TcxGridDBColumn
        Caption = 'Data Validade'
        DataBinding.FieldName = 'dataval'
        Width = 179
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'descricao'
        Visible = False
        GroupIndex = 0
      end
      object cxGrid1DBTableView1tipo_1: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tipo_1'
        Width = 144
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspListaLote'
    RemoteServer = DM.ShCoGen
    Left = 152
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object oCdsidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object oCdstipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdsobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object oCdsquantd: TSingleField
      FieldName = 'quantd'
    end
    object oCdsidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
    object oCdsidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 40
    end
    object oCdsdataval: TDateField
      FieldName = 'dataval'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object oCdscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object oCdstipo_1: TStringField
      FieldName = 'tipo_1'
      Size = 15
    end
  end
  inherited oDS: TDataSource
    Left = 120
    Top = 65528
  end
end
