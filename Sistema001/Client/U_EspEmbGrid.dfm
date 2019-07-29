inherited F_EspEmbGrid: TF_EspEmbGrid
  Caption = 'F_EspEmbGrid'
  ClientHeight = 570
  ClientWidth = 1280
  ExplicitWidth = 1296
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 551
    Width = 1280
    ExplicitTop = 551
    ExplicitWidth = 1280
  end
  inherited Panel1: TPanel
    Top = 496
    Width = 1280
    ExplicitTop = 496
    ExplicitWidth = 1280
    inherited btnsair: TAdvGlassButton
      Left = 1172
      ExplicitLeft = 1172
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 1068
      Anchors = [akTop, akRight]
      ExplicitLeft = 1068
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 9
      Top = 11
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
      OnClick = AdvGlassButton2Click
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 1280
    Height = 496
    ExplicitWidth = 1280
    ExplicitHeight = 496
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1PRODUTONOME: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'PRODUTONOME'
        Width = 308
      end
      object cxGrid1DBTableView1FRASCCOD: TcxGridDBColumn
        Caption = 'C'#243'd. '
        DataBinding.FieldName = 'FRASCCOD'
        Width = 32
      end
      object cxGrid1DBTableView1FRASDESC: TcxGridDBColumn
        Caption = 'Frasco'
        DataBinding.FieldName = 'FRASDESC'
        Width = 258
      end
      object cxGrid1DBTableView1TAMCOD: TcxGridDBColumn
        Caption = 'C'#243'd. '
        DataBinding.FieldName = 'TAMCOD'
        Width = 33
      end
      object cxGrid1DBTableView1TAMDESC: TcxGridDBColumn
        Caption = 'Tampa'
        DataBinding.FieldName = 'TAMDESC'
        Width = 279
      end
      object cxGrid1DBTableView1BATOCOD: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'BATOCOD'
        Width = 33
      end
      object cxGrid1DBTableView1BATODESC: TcxGridDBColumn
        Caption = 'Batoque'
        DataBinding.FieldName = 'BATODESC'
        Width = 276
      end
      object cxGrid1DBTableView1CARTCOD: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'CARTCOD'
        Width = 33
      end
      object cxGrid1DBTableView1CARTDESC: TcxGridDBColumn
        Caption = 'Cartucho'
        DataBinding.FieldName = 'CARTDESC'
        Width = 231
      end
    end
  end
  inherited ActionList: TActionList
    Left = 216
    Top = 65520
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspEspEmbList'
    RemoteServer = DM.ShCoGen
    Left = 16
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object oCdsidembf: TIntegerField
      FieldName = 'idembf'
    end
    object oCdsidembt: TIntegerField
      FieldName = 'idembt'
    end
    object oCdsidembb: TIntegerField
      FieldName = 'idembb'
    end
    object oCdsidembc: TIntegerField
      FieldName = 'idembc'
    end
    object oCdsmaterialf: TStringField
      FieldName = 'materialf'
      Size = 25
    end
    object oCdscorf: TStringField
      FieldName = 'corf'
      Size = 25
    end
    object oCdscarctcorf: TStringField
      FieldName = 'carctcorf'
      Size = 25
    end
    object oCdsodorf: TStringField
      FieldName = 'odorf'
      Size = 25
    end
    object oCdstoxidadef: TStringField
      FieldName = 'toxidadef'
      Size = 25
    end
    object oCdspesofref: TStringField
      FieldName = 'pesofref'
      Size = 25
    end
    object oCdspesofmin: TStringField
      FieldName = 'pesofmin'
      Size = 25
    end
    object oCdspesofmax: TStringField
      FieldName = 'pesofmax'
      Size = 25
    end
    object oCdsalturafref: TStringField
      FieldName = 'alturafref'
      Size = 25
    end
    object oCdsalturafmin: TStringField
      FieldName = 'alturafmin'
      Size = 25
    end
    object oCdsalturafmax: TStringField
      FieldName = 'alturafmax'
      Size = 25
    end
    object oCdslarguraombrofref: TStringField
      FieldName = 'larguraombrofref'
      Size = 25
    end
    object oCdslarguraombrofmin: TStringField
      FieldName = 'larguraombrofmin'
      Size = 25
    end
    object oCdslarguraombrofmax: TStringField
      FieldName = 'larguraombrofmax'
      Size = 25
    end
    object oCdslarguracorpomediofref: TStringField
      FieldName = 'larguracorpomediofref'
      Size = 25
    end
    object oCdslarguracorpomediofmin: TStringField
      FieldName = 'larguracorpomediofmin'
      Size = 25
    end
    object oCdslarguracorpomediofmax: TStringField
      FieldName = 'larguracorpomediofmax'
      Size = 25
    end
    object oCdsdiametroroscafref: TStringField
      FieldName = 'diametroroscafref'
      Size = 25
    end
    object oCdsdiametroroscafmin: TStringField
      FieldName = 'diametroroscafmin'
      Size = 25
    end
    object oCdsdiametroroscafmax: TStringField
      FieldName = 'diametroroscafmax'
      Size = 25
    end
    object oCdsdiametroextroscafref: TStringField
      FieldName = 'diametroextroscafref'
      Size = 25
    end
    object oCdsdiametroextroscafmin: TStringField
      FieldName = 'diametroextroscafmin'
      Size = 25
    end
    object oCdsdiametroextroscafmax: TStringField
      FieldName = 'diametroextroscafmax'
      Size = 25
    end
    object oCdsdiametroextgargfref: TStringField
      FieldName = 'diametroextgargfref'
      Size = 25
    end
    object oCdsdiametroextgargfmin: TStringField
      FieldName = 'diametroextgargfmin'
      Size = 25
    end
    object oCdsdiametroextgargfmax: TStringField
      FieldName = 'diametroextgargfmax'
      Size = 25
    end
    object oCdsdiametrointgargfref: TStringField
      FieldName = 'diametrointgargfref'
      Size = 25
    end
    object oCdsdiametrointgargfmin: TStringField
      FieldName = 'diametrointgargfmin'
      Size = 25
    end
    object oCdsdiametrointgargfmax: TStringField
      FieldName = 'diametrointgargfmax'
      Size = 25
    end
    object oCdsdiametrotravafref: TStringField
      FieldName = 'diametrotravafref'
      Size = 25
    end
    object oCdsdiametrotravafmin: TStringField
      FieldName = 'diametrotravafmin'
      Size = 25
    end
    object oCdsdiametrotravafmax: TStringField
      FieldName = 'diametrotravafmax'
      Size = 25
    end
    object oCdsvolumefref: TStringField
      FieldName = 'volumefref'
      Size = 25
    end
    object oCdsvolumefmin: TStringField
      FieldName = 'volumefmin'
      Size = 25
    end
    object oCdsvolumefmax: TStringField
      FieldName = 'volumefmax'
      Size = 25
    end
    object oCdsmaterialt: TStringField
      FieldName = 'materialt'
      Size = 25
    end
    object oCdscort: TStringField
      FieldName = 'cort'
      Size = 25
    end
    object oCdscarctcort: TStringField
      FieldName = 'carctcort'
      Size = 25
    end
    object oCdsodort: TStringField
      FieldName = 'odort'
      Size = 25
    end
    object oCdstoxidadet: TStringField
      FieldName = 'toxidadet'
      Size = 25
    end
    object oCdspesotref: TStringField
      FieldName = 'pesotref'
      Size = 25
    end
    object oCdspesotmin: TStringField
      FieldName = 'pesotmin'
      Size = 25
    end
    object oCdspesotmax: TStringField
      FieldName = 'pesotmax'
      Size = 25
    end
    object oCdsalturatref: TStringField
      FieldName = 'alturatref'
      Size = 25
    end
    object oCdsalturatmin: TStringField
      FieldName = 'alturatmin'
      Size = 25
    end
    object oCdsalturatmax: TStringField
      FieldName = 'alturatmax'
      Size = 25
    end
    object oCdslarguraombrotref: TStringField
      FieldName = 'larguraombrotref'
      Size = 25
    end
    object oCdslarguraombrotmin: TStringField
      FieldName = 'larguraombrotmin'
      Size = 25
    end
    object oCdslarguraombrotmax: TStringField
      FieldName = 'larguraombrotmax'
      Size = 25
    end
    object oCdslarguracorpomediotref: TStringField
      FieldName = 'larguracorpomediotref'
      Size = 25
    end
    object oCdslarguracorpomediotmin: TStringField
      FieldName = 'larguracorpomediotmin'
      Size = 25
    end
    object oCdslarguracorpomediotmax: TStringField
      FieldName = 'larguracorpomediotmax'
      Size = 25
    end
    object oCdsdiametrotref: TStringField
      FieldName = 'diametrotref'
      Size = 25
    end
    object oCdsdiametrotmin: TStringField
      FieldName = 'diametrotmin'
      Size = 25
    end
    object oCdsdiametrotmax: TStringField
      FieldName = 'diametrotmax'
      Size = 25
    end
    object oCdsdiametroroscatref: TStringField
      FieldName = 'diametroroscatref'
      Size = 25
    end
    object oCdsdiametroroscatmin: TStringField
      FieldName = 'diametroroscatmin'
      Size = 25
    end
    object oCdsdiametroroscatmax: TStringField
      FieldName = 'diametroroscatmax'
      Size = 25
    end
    object oCdsmaterialb: TStringField
      FieldName = 'materialb'
      Size = 25
    end
    object oCdscorb: TStringField
      FieldName = 'corb'
      Size = 25
    end
    object oCdscarctcorb: TStringField
      FieldName = 'carctcorb'
      Size = 25
    end
    object oCdsodorb: TStringField
      FieldName = 'odorb'
      Size = 25
    end
    object oCdstoxidadeb: TStringField
      FieldName = 'toxidadeb'
      Size = 25
    end
    object oCdspesobref: TStringField
      FieldName = 'pesobref'
      Size = 25
    end
    object oCdspesobmin: TStringField
      FieldName = 'pesobmin'
      Size = 25
    end
    object oCdspesobmax: TStringField
      FieldName = 'pesobmax'
      Size = 25
    end
    object oCdsalturabref: TStringField
      FieldName = 'alturabref'
      Size = 25
    end
    object oCdsalturabmin: TStringField
      FieldName = 'alturabmin'
      Size = 25
    end
    object oCdsalturabmax: TStringField
      FieldName = 'alturabmax'
      Size = 25
    end
    object oCdslarguraombrobref: TStringField
      FieldName = 'larguraombrobref'
      Size = 25
    end
    object oCdslarguraombrobmin: TStringField
      FieldName = 'larguraombrobmin'
      Size = 25
    end
    object oCdslarguraombrobmax: TStringField
      FieldName = 'larguraombrobmax'
      Size = 25
    end
    object oCdsmaterialc: TStringField
      FieldName = 'materialc'
      Size = 25
    end
    object oCdscorc: TStringField
      FieldName = 'corc'
      Size = 25
    end
    object oCdscarctcorc: TStringField
      FieldName = 'carctcorc'
      Size = 25
    end
    object oCdsodorc: TStringField
      FieldName = 'odorc'
      Size = 25
    end
    object oCdstoxidadec: TStringField
      FieldName = 'toxidadec'
      Size = 25
    end
    object oCdspesocref: TStringField
      FieldName = 'pesocref'
      Size = 25
    end
    object oCdspesocmin: TStringField
      FieldName = 'pesocmin'
      Size = 25
    end
    object oCdspesocmax: TStringField
      FieldName = 'pesocmax'
      Size = 25
    end
    object oCdsFRASCCOD: TStringField
      FieldName = 'FRASCCOD'
      Size = 30
    end
    object oCdsFRASDESC: TStringField
      FieldName = 'FRASDESC'
      Size = 100
    end
    object oCdsTAMCOD: TStringField
      FieldName = 'TAMCOD'
      Size = 30
    end
    object oCdsTAMDESC: TStringField
      FieldName = 'TAMDESC'
      Size = 100
    end
    object oCdsBATOCOD: TStringField
      FieldName = 'BATOCOD'
      Size = 30
    end
    object oCdsBATODESC: TStringField
      FieldName = 'BATODESC'
      Size = 100
    end
    object oCdsCARTCOD: TStringField
      FieldName = 'CARTCOD'
      Size = 30
    end
    object oCdsCARTDESC: TStringField
      FieldName = 'CARTDESC'
      Size = 100
    end
    object oCdsPRODUTONOME: TStringField
      FieldName = 'PRODUTONOME'
      Size = 50
    end
  end
  inherited oDS: TDataSource
    Top = 65528
  end
  inherited SaveDialog: TSaveDialog
    Left = 184
    Top = 65520
  end
  object dbConteudoCompleto: TfrxDBDataset
    UserName = 'ConteudoCompleto'
    CloseDataSource = False
    DataSource = oDS
    BCDToCurrency = False
    Left = 96
    Top = 65528
  end
end
