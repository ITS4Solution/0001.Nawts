inherited F_MateriaPrimaButtons: TF_MateriaPrimaButtons
  Caption = 'Mat'#233'ria prima'
  ClientWidth = 577
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  ExplicitWidth = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Left = 4
    Width = 574
    ExplicitLeft = 4
    ExplicitWidth = 574
  end
  object dxBevel3: TdxBevel [3]
    Left = -2
    Top = 2
    Width = 578
    Height = 304
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object Label1: TLabel [4]
    Left = 184
    Top = 5
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = cxDBTextEdit1
  end
  object Label4: TLabel [5]
    Left = 184
    Top = 43
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label2: TLabel [6]
    Left = 311
    Top = 3
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit2
  end
  inherited StatusBar1: TStatusBar
    Width = 577
    ExplicitWidth = 577
  end
  inherited Panel1: TPanel
    Width = 577
    ExplicitWidth = 577
    inherited btnsair: TAdvGlassButton
      Left = 471
      ExplicitLeft = 471
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [9]
    Left = 184
    Top = 19
    DataBinding.DataField = 'codigo'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 121
  end
  object cxDBComboBox1: TcxDBComboBox [10]
    Left = 184
    Top = 57
    DataBinding.DataField = 'ue'
    DataBinding.DataSource = oDS
    Properties.Items.Strings = (
      'ML'
      'Peso (gr)'
      'P'#199)
    TabOrder = 3
    Width = 121
  end
  object cxDBTextEdit2: TcxDBTextEdit [11]
    Left = 311
    Top = 19
    DataBinding.DataField = 'descricao'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 229
  end
  inherited ActionList: TActionList
    Left = 428
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblMatPrima'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object oCdsue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
end
