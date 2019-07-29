inherited F_CadClientesBt: TF_CadClientesBt
  Caption = 'Cadastro de Clientes'
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 15
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = cxDBTextEdit1
  end
  object Label2: TLabel [1]
    Left = 22
    Top = 83
    Width = 20
    Height = 13
    Caption = 'cnpj'
    FocusControl = cxDBTextEdit2
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 48
    Top = 53
    DataBinding.DataField = 'nome'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 345
  end
  object cxDBTextEdit2: TcxDBTextEdit [5]
    Left = 48
    Top = 80
    DataBinding.DataField = 'cnpj'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Width = 121
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspClientes'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsnome: TStringField
      FieldName = 'nome'
      Size = 45
    end
    object oCdscnpj: TStringField
      FieldName = 'cnpj'
      Size = 18
    end
  end
end
