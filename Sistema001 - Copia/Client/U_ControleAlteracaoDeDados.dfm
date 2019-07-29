inherited F_ControleDados: TF_ControleDados
  Caption = 'Controle de altera'#231#227'o dos dados'
  ClientWidth = 550
  ExplicitWidth = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 550
  end
  inherited Panel1: TPanel
    Width = 550
    inherited btnsair: TAdvGlassButton
      Left = 442
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 550
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = oDS
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Width = 20
      end
      object cxGrid1DBTableView1Data: TcxGridDBColumn
        DataBinding.FieldName = 'Data'
        Width = 20
      end
      object cxGrid1DBTableView1Tabela: TcxGridDBColumn
        DataBinding.FieldName = 'Tabela'
        Width = 37
      end
      object cxGrid1DBTableView1Campo: TcxGridDBColumn
        DataBinding.FieldName = 'Campo'
        Width = 90
      end
      object cxGrid1DBTableView1Usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Width = 171
      end
      object cxGrid1DBTableView1ValorAntigo: TcxGridDBColumn
        DataBinding.FieldName = 'ValorAntigo'
        Width = 210
      end
    end
  end
  inherited ActionList: TActionList
    Top = 0
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspAlteracaoDados'
    RemoteServer = DM.ShCoGen
    Left = 0
    Top = 0
    object oCdsId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object oCdsData: TDateField
      FieldName = 'Data'
    end
    object oCdsTabela: TWideStringField
      FieldName = 'Tabela'
      Size = 40
    end
    object oCdsCampo: TWideStringField
      DisplayWidth = 100
      FieldName = 'Campo'
      Size = 100
    end
    object oCdsValorAntigo: TWideStringField
      FieldName = 'ValorAntigo'
      Size = 400
    end
    object oCdsUsuario: TWideStringField
      FieldName = 'Usuario'
    end
  end
  inherited oDS: TDataSource
    Left = 32
    Top = 0
  end
end
