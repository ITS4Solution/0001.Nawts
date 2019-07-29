inherited F_RelatEstoqueInsumos: TF_RelatEstoqueInsumos
  Caption = 'Relat'#243'rio de Estoque'
  ClientWidth = 608
  ExplicitWidth = 624
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 608
    ExplicitWidth = 608
  end
  inherited Panel1: TPanel
    Width = 608
    ExplicitWidth = 608
    inherited btnsair: TAdvGlassButton
      Left = 500
      ExplicitLeft = 500
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 394
      Anchors = [akTop, akRight]
      ExplicitLeft = 394
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 608
    ExplicitWidth = 608
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = oDS
      object cxGrid1DBTableView1codigo: TcxGridDBColumn
        DataBinding.FieldName = 'codigo'
        Width = 94
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
        Width = 398
      end
      object cxGrid1DBTableView1QUANTD: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'QUANTD'
        Width = 157
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspListaEstoqueInsumos'
    RemoteServer = DM.ShCoGen
    object oCdscodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Size = 30
    end
    object oCdsdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object oCdsQUANTD: TFloatField
      FieldName = 'QUANTD'
      DisplayFormat = '#,##0.00'
    end
  end
  inherited oDS: TDataSource
    Top = 0
  end
end
