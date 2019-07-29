inherited F_RefugoBt: TF_RefugoBt
  Caption = 'Refugo '
  ClientHeight = 381
  ClientWidth = 725
  KeyPreview = True
  OnKeyPress = FormKeyPress
  ExplicitWidth = 741
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 725
    Height = 307
    Align = alClient
    ExplicitLeft = -1
    ExplicitTop = 0
    ExplicitWidth = 572
    ExplicitHeight = 307
  end
  object Label1: TLabel [3]
    Left = 189
    Top = 8
    Width = 61
    Height = 13
    Caption = 'C'#243'd. Insumo'
  end
  object Label2: TLabel [4]
    Left = 582
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit1
  end
  object Label3: TLabel [5]
    Left = 449
    Top = 8
    Width = 95
    Height = 13
    Caption = 'Ordem de Produ'#231#227'o'
    FocusControl = cxDBSpinEdit2
  end
  object Label4: TLabel [6]
    Left = 189
    Top = 48
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = cxDBMemo1
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 725
    ExplicitTop = 362
    ExplicitWidth = 725
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 725
    TabOrder = 5
    ExplicitTop = 307
    ExplicitWidth = 725
    inherited btnEditar: TAdvGlassButton
      Enabled = False
    end
    inherited btnsair: TAdvGlassButton
      Left = 619
      Top = 13
      ExplicitLeft = 619
      ExplicitTop = 13
    end
  end
  object DBEdit1: TDBEdit [9]
    Left = 582
    Top = 23
    Width = 127
    Height = 21
    DataField = 'qtd'
    DataSource = oDS
    TabOrder = 2
  end
  object cxDBSpinEdit2: TcxDBSpinEdit [10]
    Left = 449
    Top = 23
    DataBinding.DataField = 'idordemproducao'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 127
  end
  object cxDBMemo1: TcxDBMemo [11]
    Left = 189
    Top = 64
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataBinding.DataField = 'obser'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Height = 74
    Width = 520
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [12]
    Left = 189
    Top = 23
    DataBinding.DataField = 'codinsumo'
    DataBinding.DataSource = oDS
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'descricao'
      end
      item
        FieldName = 'codigo'
      end>
    Properties.ListSource = dsInsumos
    TabOrder = 0
    Width = 254
  end
  inherited ActionList: TActionList
    Left = 128
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspTblRefugo'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscodinsumo: TIntegerField
      FieldName = 'codinsumo'
    end
    object oCdsqtd: TSingleField
      FieldName = 'qtd'
    end
    object oCdsidordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object oCdsobser: TMemoField
      FieldName = 'obser'
      BlobType = ftMemo
      Size = 1
    end
  end
  object cdsInsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTblInsumos'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 56
    object cdsInsumoid: TIntegerField
      FieldName = 'id'
    end
    object cdsInsumocodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object cdsInsumoue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object cdsInsumolitragem: TSingleField
      FieldName = 'litragem'
    end
    object cdsInsumodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsInsumotipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
  end
  object dsInsumos: TDataSource
    DataSet = cdsInsumo
    Left = 40
    Top = 56
  end
end
