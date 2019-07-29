object F_Principal: TF_Principal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 323
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblQtdFor: TLabel
    Left = 32
    Top = 160
    Width = 217
    Height = 23
    Caption = 'Resultados F'#243'rmulas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultF: TLabel
    Left = 280
    Top = 152
    Width = 135
    Height = 33
    Caption = 'lblResultF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 414
    Height = 29
    Caption = 'Importa'#231#227'o Banco Access/Firebird'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIniciar: TButton
    Left = 176
    Top = 248
    Width = 105
    Height = 33
    Caption = 'Iniciar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object cnnAccess: TFDConnection
    Params.Strings = (
      'Database=C:\NAWTSSERVER\DB.old\BD_ESTOQUE.MDB'
      'User_Name=Admin'
      'Password=AM315074'
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 80
    Top = 24
  end
  object cnnFirebird: TFDConnection
    Params.Strings = (
      'Database=C:\NAWTSSERVER\DB\dbNAWTS.FDB'
      'Password=masterkey'
      'User_Name=SYSDBA'
      'DriverID=FB')
    LoginPrompt = False
    Left = 352
    Top = 24
  end
  object fdqFormAccess: TFDQuery
    Connection = cnnAccess
    SQL.Strings = (
      'select * from Formulas')
    Left = 32
    Top = 232
    object fdqFormAccessCodigo_formula: TWideStringField
      FieldName = 'Codigo_formula'
      Origin = 'Codigo_formula'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object fdqFormAccessDescr_formula: TWideStringField
      FieldName = 'Descr_formula'
      Origin = 'Descr_formula'
      Size = 42
    end
    object fdqFormAccessCodigo_mp: TWideStringField
      FieldName = 'Codigo_mp'
      Origin = 'Codigo_mp'
      Size = 4
    end
    object fdqFormAccessCodigo_prod_acab: TWideStringField
      FieldName = 'Codigo_prod_acab'
      Origin = 'Codigo_prod_acab'
      Size = 4
    end
    object fdqFormAccessPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'Percentual'
    end
    object fdqFormAccessObs_formula: TWideMemoField
      FieldName = 'Obs_formula'
      Origin = 'Obs_formula'
      BlobType = ftWideMemo
    end
  end
  object fdqItensAccess: TFDQuery
    Connection = cnnAccess
    SQL.Strings = (
      'select * from Formula_itens where Codigo_formula = :id')
    Left = 80
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
        Value = Null
      end>
    object fdqItensAccessCodigo_formula: TWideStringField
      FieldName = 'Codigo_formula'
      Origin = 'Codigo_formula'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object fdqItensAccessCodigo_mp: TWideStringField
      FieldName = 'Codigo_mp'
      Origin = 'Codigo_mp'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object fdqItensAccessCodigo_prod_acab: TWideStringField
      FieldName = 'Codigo_prod_acab'
      Origin = 'Codigo_prod_acab'
      Size = 4
    end
    object fdqItensAccessPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'Percentual'
    end
  end
  object qryAuxForm: TFDQuery
    Connection = cnnFirebird
    Left = 320
    Top = 120
  end
  object qryAuxItens: TFDQuery
    Connection = cnnFirebird
    Left = 384
    Top = 120
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 24
  end
  object qryInsumos: TFDQuery
    Connection = cnnFirebird
    SQL.Strings = (
      'select "id", "codigo" from "tblinsumos" ')
    Left = 352
    Top = 192
    object qryInsumosid: TIntegerField
      FieldName = 'id'
      Origin = '"id"'
      Required = True
    end
    object qryInsumoscodigo: TStringField
      FieldName = 'codigo'
      Origin = '"codigo"'
      Size = 30
    end
  end
end
