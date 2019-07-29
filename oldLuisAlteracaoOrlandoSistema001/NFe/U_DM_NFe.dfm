object DM_NFe: TDM_NFe
  OldCreateOrder = False
  Height = 462
  Width = 796
  object Emitente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 32
    Top = 24
  end
  object Ds_Emitente: TDataSource
    DataSet = Emitente
    Left = 32
    Top = 80
  end
  object Destinatario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 126
    Top = 24
  end
  object Ds_Destinatario: TDataSource
    DataSet = Destinatario
    Left = 126
    Top = 80
  end
  object Transportadora: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 235
    Top = 24
  end
  object Ds_Transportadora: TDataSource
    DataSet = Transportadora
    Left = 235
    Top = 80
  end
  object NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DM.Conexao
    Left = 325
    Top = 24
  end
  object Ds_NFe: TDataSource
    DataSet = NFe
    Left = 325
    Top = 80
  end
  object Itens_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from NFE_EMITENTE')
    SQLConnection = DM.Conexao
    Left = 397
    Top = 24
    object IntegerField28: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField73: TStringField
      FieldName = 'NOMERAZAOSOCIAL'
      Size = 60
    end
    object StringField74: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 60
    end
    object StringField75: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object StringField76: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField77: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object StringField78: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField79: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object IntegerField29: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object StringField80: TStringField
      FieldName = 'CEP'
      Size = 12
    end
    object StringField81: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object IntegerField30: TIntegerField
      FieldName = 'CODUF'
    end
    object StringField82: TStringField
      FieldName = 'PAIS'
    end
    object IntegerField31: TIntegerField
      FieldName = 'CODPAIS'
    end
    object StringField83: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object StringField84: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object StringField85: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object StringField86: TStringField
      FieldName = 'SUFRAMA'
    end
    object StringField87: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object IntegerField32: TIntegerField
      FieldName = 'CNAE'
    end
    object StringField88: TStringField
      FieldName = 'LOGO'
      Size = 249
    end
    object IntegerField33: TIntegerField
      FieldName = 'CODTIPOREGIME'
    end
    object FloatField4: TFloatField
      FieldName = 'PSIMPLES'
    end
    object StringField89: TStringField
      FieldName = 'CERTIFICADO'
      Size = 249
    end
    object StringField90: TStringField
      FieldName = 'TITULOCERTIFICADO'
      Size = 249
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'VALIDADECERT'
    end
    object StringField91: TStringField
      FieldName = 'SENHACERT'
    end
    object StringField92: TStringField
      FieldName = 'AMBIENTE'
      Size = 1
    end
    object StringField93: TStringField
      FieldName = 'EMAIL1'
      Size = 60
    end
    object StringField94: TStringField
      FieldName = 'EMAIL2'
      Size = 60
    end
    object StringField95: TStringField
      FieldName = 'EMAIL3'
      Size = 60
    end
    object IntegerField34: TIntegerField
      FieldName = 'MODELODANFE'
    end
    object IntegerField35: TIntegerField
      FieldName = 'FORMAEMISSAO'
    end
    object IntegerField36: TIntegerField
      FieldName = 'CFOPPADRAO'
    end
    object StringField96: TStringField
      FieldName = 'MUDACFOPINTE'
      Size = 1
    end
  end
  object Ds_Itens_NFe: TDataSource
    DataSet = Itens_NFe
    Left = 397
    Top = 80
  end
end
