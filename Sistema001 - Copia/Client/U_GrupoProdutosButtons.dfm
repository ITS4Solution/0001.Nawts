inherited F_GrupoProdutosButtons: TF_GrupoProdutosButtons
  Caption = 'Grupo de Produtos'
  KeyPreview = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Left = -5
    Top = -3
    ExplicitLeft = -5
    ExplicitTop = -3
  end
  object Label1: TLabel [3]
    Left = 189
    Top = 8
    Width = 64
    Height = 13
    Caption = 'C'#243'd. Produto'
    FocusControl = cxDBSpinEdit1
  end
  object Label2: TLabel [4]
    Left = 189
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit1
  end
  inherited Panel1: TPanel
    TabOrder = 3
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [7]
    Left = 189
    Top = 24
    DataBinding.DataField = 'codgrupo'
    DataBinding.DataSource = oDS
    TabOrder = 0
    Width = 121
  end
  object cxDBTextEdit1: TcxDBTextEdit [8]
    Left = 189
    Top = 64
    DataBinding.DataField = 'nomegrupo'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 340
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspGrupoProdutos'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodgrupo: TIntegerField
      FieldName = 'codgrupo'
    end
    object oCdsnomegrupo: TStringField
      FieldName = 'nomegrupo'
      Size = 30
    end
  end
end
