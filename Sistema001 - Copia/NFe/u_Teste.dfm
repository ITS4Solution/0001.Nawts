object FrmTeste: TFrmTeste
  Left = 0
  Top = 0
  Caption = 'FrmTeste'
  ClientHeight = 372
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 741
    Height = 372
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = DM.sqlCidades
    Exported = False
    Left = 88
    Top = 280
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 176
    Top = 280
    object ClientDataSet1ID: TIntegerField
      FieldName = 'ID'
    end
    object ClientDataSet1CODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object ClientDataSet1ESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
    object ClientDataSet1SIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object ClientDataSet1CODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object ClientDataSet1CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 256
    Top = 280
  end
end
