inherited F_ControleNFMP: TF_ControleNFMP
  Caption = 'F_ControleNFMP'
  ClientHeight = 458
  ClientWidth = 857
  ExplicitWidth = 873
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 439
    Width = 857
    ExplicitTop = 439
    ExplicitWidth = 870
  end
  inherited Panel1: TPanel
    Top = 384
    Width = 857
    ExplicitTop = 384
    ExplicitWidth = 870
    inherited btnsair: TAdvGlassButton
      Left = 749
      ExplicitLeft = 762
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 643
      Anchors = [akTop, akRight]
      ExplicitLeft = 656
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 857
    Height = 384
    ExplicitWidth = 870
    ExplicitHeight = 384
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1nronfe: TcxGridDBColumn
        Caption = 'N'#186' Nfe'
        DataBinding.FieldName = 'nronfe'
        Width = 45
      end
      object cxGrid1DBTableView1serienfe: TcxGridDBColumn
        Caption = 'S'#233'rie'
        DataBinding.FieldName = 'serienfe'
        Width = 67
      end
      object cxGrid1DBTableView1data: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'data'
        Width = 63
      end
      object cxGrid1DBTableView1codfiscal: TcxGridDBColumn
        Caption = 'C'#243'd. Fiscal '
        DataBinding.FieldName = 'codfiscal'
        Width = 68
      end
      object cxGrid1DBTableView1nome_razaosocial: TcxGridDBColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'nome_razaosocial'
        Width = 212
      end
      object cxGrid1DBTableView1condpagamento: TcxGridDBColumn
        Caption = 'Cond. Pagto.'
        DataBinding.FieldName = 'condpagamento'
        Width = 68
      end
      object cxGrid1DBTableView1detalhepagamento: TcxGridDBColumn
        Caption = 'Detalhe Pagto.'
        DataBinding.FieldName = 'detalhepagamento'
        Width = 169
      end
      object cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn
        Caption = 'Valot Total'
        DataBinding.FieldName = 'VALORTOTAL'
        Width = 146
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspNFQuimico'
    ReadOnly = True
    RemoteServer = DM.ShCoGen
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsnronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object oCdsserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object oCdsdata: TDateField
      FieldName = 'data'
    end
    object oCdscodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object oCdsnome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object oCdscondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object oCdsdetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object oCdsobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object oCdsVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
  end
  inherited oDS: TDataSource
    Left = 32
    Top = 65520
  end
end
