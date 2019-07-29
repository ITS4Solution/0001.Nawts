inherited F_CadOrdemProducaoGrid: TF_CadOrdemProducaoGrid
  Caption = 'Ordem de Produ'#231#227'o - Qu'#237'mico'
  ClientWidth = 788
  OnActivate = FormActivate
  ExplicitWidth = 806
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 788
    ExplicitWidth = 788
  end
  inherited Panel1: TPanel
    Width = 788
    ExplicitWidth = 788
    inherited btnsair: TAdvGlassButton
      Left = 678
      ExplicitLeft = 678
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 572
      ExplicitLeft = 572
    end
    object btnNovo: TAdvGlassButton
      Left = 15
      Top = 13
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 2
      Version = '1.3.0.2'
      OnClick = btnNovoClick
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 788
    ExplicitWidth = 788
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1ficha: TcxGridDBColumn
        Caption = 'Ficha'
        DataBinding.FieldName = 'ficha'
        Width = 38
      end
      object cxGrid1DBTableView1lote: TcxGridDBColumn
        Caption = 'Lote'
        DataBinding.FieldName = 'lote'
        Width = 57
      end
      object cxGrid1DBTableView1emissao: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'emissao'
        Width = 64
      end
      object cxGrid1DBTableView1descricaoformula: TcxGridDBColumn
        Caption = 'F'#243'rmula'
        DataBinding.FieldName = 'descricaoformula'
        Width = 212
      end
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'descricao'
        Width = 200
      end
      object cxGrid1DBTableView1produzido: TcxGridDBColumn
        Caption = 'Qtd.Produzida'
        DataBinding.FieldName = 'produzido'
        Width = 66
      end
      object cxGrid1DBTableView1fator: TcxGridDBColumn
        Caption = 'Fator'
        DataBinding.FieldName = 'fator'
        Width = 55
      end
      object cxGrid1DBTableView1status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        Width = 94
      end
    end
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 65528
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspOPQuimico'
    RemoteServer = DM.ShCoGen
    OnCalcFields = oCdsCalcFields
    Left = 16
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsdescricaoformula: TStringField
      FieldName = 'descricaoformula'
      Size = 50
    end
    object oCdsficha: TStringField
      FieldName = 'ficha'
      Size = 5
    end
    object oCdslote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object oCdsemissao: TDateField
      FieldName = 'emissao'
    end
    object oCdsidformula: TIntegerField
      FieldName = 'idformula'
    end
    object oCdsproduzido: TSingleField
      FieldName = 'produzido'
    end
    object oCdsfator: TSingleField
      FieldName = 'fator'
    end
    object oCdsemproducao: TIntegerField
      FieldName = 'emproducao'
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object oCdsstatus: TStringField
      FieldName = 'status'
    end
    object oCdsdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  inherited oDS: TDataSource
    Left = 48
    Top = 65528
  end
end
