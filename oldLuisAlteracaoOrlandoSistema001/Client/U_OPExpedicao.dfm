inherited F_OPExpedicao: TF_OPExpedicao
  Caption = 'Ordem de Produ'#231#227'o - Expedi'#231#227'o'
  ClientHeight = 416
  ClientWidth = 888
  ExplicitWidth = 906
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 397
    Width = 888
    ExplicitTop = 397
    ExplicitWidth = 888
  end
  inherited Panel1: TPanel
    Top = 342
    Width = 888
    ExplicitTop = 342
    ExplicitWidth = 888
    inherited btnsair: TAdvGlassButton
      Left = 780
      ExplicitLeft = 780
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 677
      Anchors = [akTop, akRight]
      ExplicitLeft = 677
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 888
    Height = 342
    ExplicitWidth = 888
    ExplicitHeight = 342
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codopenvase: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'codopenvase'
        Width = 70
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'descricao'
        Width = 240
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 65
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 76
      end
      object cxGrid1DBTableView1qtdreal: TcxGridDBColumn
        Caption = 'Qtd. Realizada'
        DataBinding.FieldName = 'qtdreal'
        Width = 178
      end
      object cxGrid1DBTableView1qtdinserida: TcxGridDBColumn
        Caption = 'Qtd. Inserida'
        DataBinding.FieldName = 'qtdinserida'
        Width = 119
      end
      object cxGrid1DBTableView1sQtdFalta: TcxGridDBColumn
        Caption = 'Qtd. Faltante'
        DataBinding.FieldName = 'sQtdFalta'
        Width = 107
      end
    end
  end
  inherited ActionList: TActionList
    Left = 424
    Top = 65528
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspExpFinalizado'
    RemoteServer = DM.ShCoGen
    OnCalcFields = oCdsCalcFields
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdscodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object oCdsidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object oCdsqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object oCdssQtdFalta: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'sQtdFalta'
    end
    object oCdsqtdinserida: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtdinserida'
      Calculated = True
    end
  end
  inherited oDS: TDataSource
    Left = 48
    Top = 65528
  end
  inherited SaveDialog: TSaveDialog
    Left = 296
    Top = 48
  end
end
