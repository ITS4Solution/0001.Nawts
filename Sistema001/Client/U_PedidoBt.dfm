inherited F_PedidosBt: TF_PedidosBt
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 527
  ClientWidth = 724
  OnKeyPress = FormKeyPress
  ExplicitWidth = 740
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 724
    Height = 453
    Align = alClient
    ExplicitLeft = 1
    ExplicitTop = -6
    ExplicitWidth = 724
    ExplicitHeight = 458
  end
  object Label1: TLabel [3]
    Left = 191
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Pedido'
    FocusControl = cxDBDateEdit1
  end
  object Label2: TLabel [4]
    Left = 191
    Top = 46
    Width = 38
    Height = 13
    Caption = 'Entrega'
    FocusControl = cxDBDateEdit2
  end
  object Label3: TLabel [5]
    Left = 318
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = cxDBTextEdit1
  end
  object Label4: TLabel [6]
    Left = 318
    Top = 46
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = cxDBTextEdit2
  end
  object Label5: TLabel [7]
    Left = 318
    Top = 83
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = cxDBTextEdit3
  end
  object Label6: TLabel [8]
    Left = 495
    Top = 83
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = cxDBTextEdit4
  end
  object Label7: TLabel [9]
    Left = 663
    Top = 83
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = cxDBTextEdit5
  end
  object Label8: TLabel [10]
    Left = 567
    Top = 120
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = cxDBTextEdit6
  end
  object Label9: TLabel [11]
    Left = 318
    Top = 120
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = cxDBTextEdit7
  end
  object Label10: TLabel [12]
    Left = 447
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Celular'
    FocusControl = cxDBTextEdit8
  end
  inherited StatusBar1: TStatusBar
    Top = 508
    Width = 724
    ExplicitTop = 508
    ExplicitWidth = 724
  end
  inherited Panel1: TPanel
    Top = 453
    Width = 724
    TabOrder = 11
    ExplicitTop = 453
    ExplicitWidth = 724
    inherited btnSalvar: TAdvGlassButton
      Left = 323
      ExplicitLeft = 323
    end
    inherited btnsair: TAdvGlassButton
      Left = 618
      ExplicitLeft = 618
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 426
      Top = 13
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Imprimir'
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
      TabOrder = 5
      Version = '1.3.0.2'
      OnClick = AdvGlassButton1Click
    end
  end
  object Panel2: TPanel [15]
    Left = 0
    Top = 270
    Width = 724
    Height = 188
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 12
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 722
      Height = 186
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.Next.Enabled = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.Last.Enabled = False
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Edit.Enabled = False
        Navigator.Buttons.Refresh.Enabled = False
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.Filter.Enabled = False
        DataController.DataSource = dsPedidoDetalhe
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'precototal'
            Column = cxGrid1DBTableView1precototal
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        object cxGrid1DBTableView1produto: TcxGridDBColumn
          Caption = 'Produtos'
          DataBinding.FieldName = 'produto'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'descricao'
          Properties.ListColumns = <
            item
              FieldName = 'descricao'
            end>
          Properties.ListSource = dsProdutos
          Properties.OnCloseUp = cxGrid1DBTableView1produtoPropertiesCloseUp
          Width = 476
        end
        object cxGrid1DBTableView1un: TcxGridDBColumn
          Caption = 'Unid.'
          DataBinding.FieldName = 'un'
          Width = 71
        end
        object cxGrid1DBTableView1precoun: TcxGridDBColumn
          Caption = 'P.Unit'#225'rio'
          DataBinding.FieldName = 'precoun'
          Width = 148
        end
        object cxGrid1DBTableView1precototal: TcxGridDBColumn
          Caption = 'P.Total'
          DataBinding.FieldName = 'precototal'
          Width = 147
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object DBEdit1: TDBEdit [16]
    Left = 272
    Top = 600
    Width = 134
    Height = 21
    DataField = 'pvbruto'
    DataSource = oDS
    TabOrder = 13
  end
  object DBEdit2: TDBEdit [17]
    Left = 272
    Top = 640
    Width = 134
    Height = 21
    DataField = 'desconto'
    DataSource = oDS
    TabOrder = 14
  end
  object DBEdit3: TDBEdit [18]
    Left = 272
    Top = 680
    Width = 134
    Height = 21
    DataField = 'liquido'
    DataSource = oDS
    TabOrder = 15
  end
  object cxDBDateEdit1: TcxDBDateEdit [19]
    Left = 191
    Top = 24
    DataBinding.DataField = 'datapedido'
    DataBinding.DataSource = oDS
    TabOrder = 0
    Width = 121
  end
  object cxDBDateEdit2: TcxDBDateEdit [20]
    Left = 191
    Top = 61
    DataBinding.DataField = 'dataentrega'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 121
  end
  object cxDBTextEdit1: TcxDBTextEdit [21]
    Left = 318
    Top = 24
    DataBinding.DataField = 'nome'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 395
  end
  object cxDBTextEdit2: TcxDBTextEdit [22]
    Left = 318
    Top = 61
    DataBinding.DataField = 'endereco'
    DataBinding.DataSource = oDS
    TabOrder = 3
    Width = 395
  end
  object cxDBTextEdit3: TcxDBTextEdit [23]
    Left = 318
    Top = 97
    DataBinding.DataField = 'bairro'
    DataBinding.DataSource = oDS
    TabOrder = 4
    Width = 171
  end
  object cxDBTextEdit4: TcxDBTextEdit [24]
    Left = 495
    Top = 97
    DataBinding.DataField = 'cidade'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 162
  end
  object cxDBTextEdit5: TcxDBTextEdit [25]
    Left = 663
    Top = 97
    DataBinding.DataField = 'uf'
    DataBinding.DataSource = oDS
    TabOrder = 6
    Width = 50
  end
  object cxDBTextEdit6: TcxDBTextEdit [26]
    Left = 567
    Top = 135
    DataBinding.DataField = 'cep'
    DataBinding.DataSource = oDS
    TabOrder = 9
    Width = 149
  end
  object cxDBTextEdit7: TcxDBTextEdit [27]
    Left = 318
    Top = 135
    DataBinding.DataField = 'telefone'
    DataBinding.DataSource = oDS
    TabOrder = 7
    Width = 123
  end
  object cxDBTextEdit8: TcxDBTextEdit [28]
    Left = 447
    Top = 135
    DataBinding.DataField = 'celular'
    DataBinding.DataSource = oDS
    TabOrder = 8
    Width = 114
  end
  object cxGroupBox1: TcxGroupBox [29]
    Left = 8
    Top = 170
    TabOrder = 16
    Height = 94
    Width = 708
    object Label11: TLabel
      Left = 7
      Top = 9
      Width = 21
      Height = 13
      Caption = 'R.V.'
      FocusControl = cxDBTextEdit9
    end
    object Label12: TLabel
      Left = 155
      Top = 9
      Width = 27
      Height = 13
      Caption = 'R.V.2'
      FocusControl = cxDBTextEdit10
    end
    object Label13: TLabel
      Left = 7
      Top = 48
      Width = 27
      Height = 13
      Caption = 'R.V.3'
      FocusControl = cxDBTextEdit11
    end
    object Label14: TLabel
      Left = 310
      Top = 9
      Width = 49
      Height = 13
      Caption = 'P.V. Bruto'
      FocusControl = DBEdit4
    end
    object Label15: TLabel
      Left = 511
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Desconto'
      FocusControl = DBEdit5
    end
    object Label16: TLabel
      Left = 464
      Top = 96
      Width = 30
      Height = 13
      Caption = 'liquido'
      FocusControl = DBEdit6
    end
    object Label17: TLabel
      Left = 310
      Top = 48
      Width = 33
      Height = 13
      Caption = 'L'#237'quido'
      FocusControl = DBEdit7
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 7
      Top = 24
      DataBinding.DataField = 'rv'
      DataBinding.DataSource = oDS
      TabOrder = 0
      Width = 142
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 155
      Top = 24
      DataBinding.DataField = 'rv2'
      DataBinding.DataSource = oDS
      TabOrder = 1
      Width = 149
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 7
      Top = 62
      DataBinding.DataField = 'rv3'
      DataBinding.DataSource = oDS
      TabOrder = 2
      Width = 135
    end
    object DBEdit4: TDBEdit
      Left = 310
      Top = 24
      Width = 195
      Height = 21
      DataField = 'pvbruto'
      DataSource = oDS
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 511
      Top = 24
      Width = 186
      Height = 21
      DataField = 'desconto'
      DataSource = oDS
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 464
      Top = 112
      Width = 134
      Height = 21
      DataField = 'liquido'
      DataSource = oDS
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 310
      Top = 62
      Width = 195
      Height = 21
      DataField = 'liquido'
      DataSource = oDS
      TabOrder = 5
    end
  end
  inherited ActionList: TActionList
    Left = 112
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspPedidos'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdsdatapedido: TDateField
      FieldName = 'datapedido'
    end
    object oCdsdataentrega: TDateField
      FieldName = 'dataentrega'
    end
    object oCdsnome: TStringField
      FieldName = 'nome'
      Size = 45
    end
    object oCdsendereco: TStringField
      FieldName = 'endereco'
      Size = 45
    end
    object oCdsbairro: TStringField
      FieldName = 'bairro'
      Size = 25
    end
    object oCdscidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object oCdsuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object oCdscep: TStringField
      FieldName = 'cep'
      Size = 12
    end
    object oCdstelefone: TStringField
      FieldName = 'telefone'
      Size = 15
    end
    object oCdscelular: TStringField
      FieldName = 'celular'
      Size = 17
    end
    object oCdsrv: TStringField
      FieldName = 'rv'
      Size = 30
    end
    object oCdsrv2: TStringField
      FieldName = 'rv2'
      Size = 30
    end
    object oCdsrv3: TStringField
      FieldName = 'rv3'
      Size = 30
    end
    object oCdspvbruto: TSingleField
      FieldName = 'pvbruto'
      DisplayFormat = '#,##0.00'
    end
    object oCdsdesconto: TSingleField
      FieldName = 'desconto'
      DisplayFormat = '#,##0.00'
    end
    object oCdsliquido: TSingleField
      FieldName = 'liquido'
      DisplayFormat = '#,##0.00'
    end
  end
  object cdsPedidoDetalhe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'id'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPedidosDetalhe'
    RemoteServer = DM.ShCoGen
    Left = 16
    Top = 248
    object cdsPedidoDetalheid: TIntegerField
      FieldName = 'id'
    end
    object cdsPedidoDetalheun: TIntegerField
      FieldName = 'un'
      OnChange = cdsPedidoDetalheunChange
    end
    object cdsPedidoDetalhecodigo: TStringField
      FieldName = 'codigo'
      Size = 5
    end
    object cdsPedidoDetalheproduto: TStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsPedidoDetalheprecoun: TSingleField
      FieldName = 'precoun'
      OnChange = cdsPedidoDetalheprecounChange
      DisplayFormat = '#,##0.00'
    end
    object cdsPedidoDetalheprecototal: TSingleField
      FieldName = 'precototal'
      DisplayFormat = '#,##0.00'
    end
    object cdsPedidoDetalheidpedido: TIntegerField
      FieldName = 'idpedido'
    end
  end
  object dsPedidoDetalhe: TDataSource
    DataSet = cdsPedidoDetalhe
    Left = 48
    Top = 247
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    RemoteServer = DM.ShCoGen
    Left = 16
    Top = 72
    object cdsProdutosid: TIntegerField
      FieldName = 'id'
    end
    object cdsProdutoscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object cdsProdutosgrupo: TIntegerField
      FieldName = 'grupo'
    end
    object cdsProdutoscodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object cdsProdutosprocedencia: TStringField
      FieldName = 'procedencia'
    end
    object cdsProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsProdutosgrupopedido: TStringField
      FieldName = 'grupopedido'
      Size = 15
    end
    object cdsProdutosnumeropa: TIntegerField
      FieldName = 'numeropa'
    end
    object cdsProdutosnomeprodutopedido: TStringField
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
    object cdsProdutosncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object cdsProdutoscodformula: TStringField
      FieldName = 'codformula'
      Size = 4
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 48
    Top = 72
  end
  object DBPedidosDetalhe: TfrxDBDataset
    UserName = 'DBPedidosDetalhe'
    CloseDataSource = False
    DataSet = cdsPedidoDetalhe
    BCDToCurrency = False
    Left = 136
    Top = 384
  end
  object DBPedidos: TfrxDBDataset
    UserName = 'DBPedidos'
    CloseDataSource = False
    DataSet = oCds
    BCDToCurrency = False
    Left = 136
    Top = 320
  end
  object ReportPedidos: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42671.408074351800000000
    ReportOptions.LastChange = 42870.421649085650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 352
    Datasets = <
      item
        DataSet = DBPedidosDetalhe
        DataSetName = 'DBPedidosDetalhe'
      end
      item
        DataSet = DBPedidos
        DataSetName = 'DBPedidos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape3: TfrxShapeView
        Left = 11.338590000000000000
        Top = 11.338590000000000000
        Width = 468.661720000000000000
        Height = 151.181200000000000000
        Shape = skRoundRectangle
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 173.858380000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape2: TfrxShapeView
          Left = 604.724800000000000000
          Top = 120.944960000000000000
          Width = 434.645950000000000000
          Height = 41.574830000000000000
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 204.094620000000000000
          Top = 26.456710000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Industria e Com'#233'rcio de Cosm'#233'ticos Ltda.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 740.787880000000000000
          Top = 132.283550000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Pedidos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 170.078850000000000000
          Width = 1058.267716535430000000
          Hint = '0'
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object Picture1: TfrxPictureView
          Left = 26.456710000000000000
          Top = 30.236240000000000000
          Width = 173.858380000000000000
          Height = 120.944960000000000000
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000AB00
            00006E080600000058CDE31E000000097048597300000B1300000B1301009A9C
            18000019A54944415478DAED9D0BB85D4575C7D7350428258A3C2308068A0808
            58C057E5150404A150112A0F4B094DA1A8286A2D223612051179598C500B6A53
            117CD442D08AF22889C8A33C2B2A6079C45B544002253C123108717ECC9AEFAC
            3B99FD3AF7E69E7BF699FFF7ADEFECE79CD9B3FF7B66CD9A356B86962F5F2E19
            19FD80A14CD68C7E41266B46DF6068D55557ED751EDA80ED9CFCCCC90BBDCE48
            9B91C93A7AACEBE41627BB3AF955AF33D36664B28EC49B9D3CE5E4EE06F7ECEC
            E4474E0E70F2DD06F7FD8D933F7632A7D70FDD2FC8641D890F38F998935724CE
            4D76F29C936D9C6CEFE47E27CF3B39D1C9814EAE77F23927434E3672B2C8C937
            9CD029D8D4C92FA2F4387E96937FE8F543F70B32594782A6FC874ECE76F211F1
            BAE8FE4ED670F21927CF38D9D6C9A54E362F49679993A39C5C229EBC4738F994
            93F39C5CE7648693639D1CEAE49BBD7EE87E4126EB487CDCC9A9BA4D4DB8A96E
            EFEBE4FBD1B51739F9AB441A5788AF699745C77FECE475D1B16F3999EDE49E5E
            3F783F60D0C94AAD7798F85A8EE6FDE5896B8E76F2A582FBBF2EBE760CB84BD3
            490135E226273B26CE2D75F259F1FAEB1315795EDBC9FFF7BAE07A8136937515
            27BFAF7A7EF11DA3BF77B24BE2FC0DE23B5045B8D5C9EBCD3E9DB3A94E7E5B70
            FD494E3E6DF67FA7FF71B593ABC49BBFA891FFCCC96B65E447B2B1937F71729C
            93853D2AD39EA2CD648534873B39273A4ECD46ED7475747C7DF135E55BCD313A
            50E8AD29EBC0AB9DDCEBE40127EF115FC3D2C3478D9895B87E03278F44C7AE75
            B247E25A3A780F895729DE25BE33F66B276B89FFC006126D26EB4B9CFC523C41
            42D34BAD44534B2D7A7DE21E3A4110ED41273F75B29F1E87DCB6798630DF76F2
            2AF135EFB37A9C7BF7D4FB9E31D7BFCCC97D4E56175FBBD2EC7FD9C99D4EFEB4
            20FFB39D9CACF9A78578A5A67FAA0C28DA4C56F07E279F7772BB9361270789EF
            ED4F2FB8FEDF9D1C2CBED6C434B5857872D154D32487B1690AED2FF4FA18D4D0
            A8014F9B63A80AEF10AF020415E14A276F93F29A72B178A207FCABF8DA7B20D1
            76B2A2065C1C1DDB4C56B47906DCAAE7DE151D9F22BEA61C4B478A359D7CD5C9
            FB9C3C9C388F3A324FFFDB825AFF347DAE676480D056B26E28BEC9A4273FC91C
            47077D8393FF49958593DDC4DB41C76B8C1F55859A33B60050039F5472DF3D7A
            7EDE38E57342A08D649DE6E43F9CEC5072CD91E26BB589063E186CBA6788EFF1
            D3A9C25A41870B55E410278F8BD791C388DAC0A08D6465BC9D973BA4BFB39DEC
            EE6489781D9391A72DC5D7BA97CBD836EDA305795ECFC9A3E618766046C28AAC
            0C0383369235069D183A3373C50F8102F4407AD73F978945D61420306AC94C27
            5FE975667A5A100340D6ADC58F2CED239EB4FD087458AC1857F53A23BDC42090
            751327E78B1FAFEF671D6F35F1235E038B41202BD600865E07FA45B7018340D6
            8C96209335A36F30E864C5288FCFEA2ABA3FA442A160E77C3A710F662F7C0DF0
            8E7A41058B0276D045E6BA778A77A6592E9D21D521F3BFD84A193EADF20CCB50
            0C3A59F15FC55124550898B5B64A1C3FC5C93F268E33F67FB9D9C756BA5EC5FF
            8761DC8C1A1874B2E24DF578C979FC5C6317C3D39D7C34712DA34BDF32FBF8B6
            4E917264B236C0A09395B955B8EAED24DEB939064D34847AD61CDBDBC987F417
            E0EEC79C2C86487F6AAE63E2E19F3B794B225D1C577031649ED732C9A8854127
            6BC0B9E267B6A6C0749313A3630CD9DEA7DB78696D56702F0ED95F4F1CFF9E78
            226734401BC94A6729CCA5A2F3C37CA5AA21D50B9DFC6DC979FC0D969AFD300B
            16E0E0BD49C17DC19F36C67C193923A12E183A7E9378DBF1634EBEB0524A7082
            A28D64654EFF4DBA8DEBDD9FC848A2A5802A50E6D44C136FF5541C63AED56DC8
            CA8C81D407416D7D6EE2F8024DA329AE91CE3418D487D55646014E54B491ACF8
            ABDE62F671725E52710F0E2247555C436DBD58B7A915FF4BB709190459533EB0
            C73BF9A7C4F1B2D90A65C0ADF108DD463FDE6ECC4B6F02A38D64C58FF576DD86
            5C78575591157BE70CDD86742F495C738193BFD36D6AB76B74BB1BB2E2E0BD5B
            17CF96C9DA328C96ACE898F4E05F9FB88EB040CC3ADD4B3A1E50DD9095D858BB
            76F16C36B0C64F64C5A019AD4626ABC75CF1B307001301D171AF4E5CC7BC27C8
            62C98A373F1DAC266465666D2A4E411532595B064BD627C593B5CAF03E573A64
            FDA0F84E111D98C9896B19329D269D498790959AF5F9C4B54564AD0A9E5184AF
            3979B76E67B2B600DD90F5DF9CFCB56E87C87E9F70F2C9C4B527889F961D42F8
            7443D61BC50F44340535FBE1BA9DC9DA02E064729B6E7743D660A6A260307DAD
            115DCB30EA292A04AD4087450D4891955AFA7389E398D652235B55C8646D192C
            5921169DA22AB2DA5EB61DB1C2F6FAE5C4F5E8B4A8037F24DD91F5BFC5C7B36A
            0A4BD6B2682EADC42090959AF5E98A7B8AC80A18C79F5A722F64450D48B9FA15
            91F566F151B69B8259AE87E976266B0B30D6643D467CF4BE22744356062DDED4
            C5B3D9109B99AC2D80252B24DD48AAC96A4D4229C79532DF546A5ED480266425
            4CD11BBB78B64CD696A11BB25A93508AAC45BA2B28232BAE84E7248E93BF3774
            F16CAC5170886E67B2B600315951039EAAB8A78AAC80E63EB5300664450D484D
            F32E222BA6B5D408D9DA2A74081F499C67FD8110348EB0EFDBAFF4D29C40683B
            5979E990F5C98A7B6C2FBB88ACE8B4A9F858908A9AB50959EF9074B8F6FF141F
            DB358C94C5C8646D192C59196685AC8B2BEEA94356003137481C1B2BB2E2D08D
            63372A47CABF9669337FA9DB99AC2D403764B526A132B29EA0E72DBA212B2137
            E328875807182CC07E4BB8A0D4A4C44CD696C19215E33D64AD5A0185F042EFD1
            EDD424C1007C635129AC0BE16FC493353597AA685A8BB5B3320A7584FE6F00AB
            C7A4CC65213237C8646D0162B23211B068291E1694385225BC78A69C50D3D214
            A7BCFF6D8F1C149195B505A8A1530B5C3CA979C452B165E23C93115341D89864
            78906E67B2B600F4B26FD56DE2F753B3169195B80045EBB432CF29E5F60759BE
            6DF617E97FC464AD9A2A530654825B12C72D5953AA44AB310864A5662D8A0DC0
            0217FF5B70AE68610A3CFC1744C770688903BF3118F0C12E9F8185DFEE4A1C27
            A2F73B753B93B50588C94A13FD58C1B5C40440AF8498A1C9671BBBEC370AEE59
            477C278741006ADE10513BAE85211C46FBE734EDE5D2093554B41F8E2D9091B1
            0A0232595B064B565E3835EB63DD2737A140308D03753B93B505B064A56986AC
            8BBA4F6E422193B56588C98A1AF068F7C94D285C263E001C281A58682D0681AC
            ABF73A436308EBC390C9DA0258B2D2B9992E5E0D088BB7D95EFE5062BFEC9AB2
            6BAB7EBBB936B6487C463A73B732595B004BD6362393B505A0E6B97ED4A94C7C
            603B5EB7D799184FB491AC0C5F126125D82D2DCAF687A27BECFE50C1FD556956
            DD53E73F52F7732D8319EF1B8F029D28682359335A8A4CD68CBE41266B46DF20
            9335A36F90C99AD137C864CDE81B64B266F40D325933FA0699AC197D834CD68C
            BE41266B3330659AE013CC3CFDF438FEEF86D2095CFC6CC135048E639A0E3367
            1FAF99AE056B76E104C40220B7D5BC67AA96C7BEE23DDC083FFFCFE2D7061B0B
            ECA5CFF3E2E449C8CA4332EDA36A15BE803554EC549135F5B7CD8BE6F2CC7621
            0D2257DFD4655A4DC147C23242FB882764BC081DEF901560EE11BF6CD1950DD3
            67F6C1A5669FA833550EEB6F173FF78CD517DFEBE434F153DB0928C2ACE147A4
            7B1095E6127D56E28B11846E0FC8CA2ACFCC538770218019411C5894EC238984
            08CE70B4783FD1C59A410A89A00CDF1D4506270258B10F12CE4F9CA37CF08B0D
            CEDCFB8B8F4D359E802057248EDFAEF979B8CB746D284DC0BAB2DF2BB99ED917
            FFA7DB84B89F219E50615D2E3EAEAF7599179633A50561AD8647540E207DC8CA
            97412086CB1337CE14BFFA9E054486A004D9C519F8012DC4614987D0E927CC12
            1FF36AAB82F3CC7B0A6126A749E7858D27EC0CD7006ADCA6B5A945BC2CFD0EFA
            AC456001BBA3751BA253665454909CD919DB4A6721E6A6206E2D116B58B38119
            C2789711CC636FABB3CE10EF5A17037DA9E88B25A4243ACB3747515013097C6C
            386E172D4EF145F1AB0CDEEFE4D53DCAA38D241800792F1B459AF8C5A287BF56
            9FF1F88AEB4300391056F89EACBF907C78147961AD0556B381ACCCEE20F20C7A
            F4544B565ED00D899B8B62890202319C2C232394F42B08B846E0353ED8A2482A
            109597494C81C36AA63BD6B0F1AE0288633016EF00D2564D5BC797960E5C5879
            9C1AF580317C3E08496B4D0DCD22D170ECC555C02D59A9D669DAD1C9B68912F8
            B878053A06EB87D22B2E0A08D12FB01D0CD6ADFA50C1756165419ACD8F55A449
            39A203DBD8B0E863BF97D1616592B52EE8EDBF52B7896C7848CDFBB6D5BC2ED5
            E778A0E03AA6CFD35284693B3CDBA196AC2C52B6BEF89795D23788EEFC60740C
            D69F2AE9487945E025D2C323F2C822295F5E9D28D0719C2ABE6C7AAB28DEA99A
            80F3043C634D55F4F1B09ED590A6179B75E26930F3B50C266939FCCC9C5B57F3
            CC9A591715E4997242F79DA9FBF4D259048E1855B7EA4B1A0DC692ACF43FF8F0
            B6D672611FAB101DEB9435E04CF153C179C6B0FA22AA20C1E92ED0F345A0034E
            657897DE4F87F5848A7B504B50CDEE65C792F524F1F6329669C456766C74E3DD
            7AB34513B2420A5486D788271BB50E44E405CE92F4243F1EF0401949B0A7B560
            58E5EF3CF12478223A4F4D4FD8CA2DF577532D1CA2FA5D6CAEA5E0CB743DF4C3
            43A363A84B103815FA1DBBE37DFA5FD4383F101FEF2AF492C7C28230D6352B3A
            22EFEF55E618E4BD2771ED05FADF2F934ED84FC8F4849E9B55F01F98D376D167
            DF5F8F85E5463F2CE945425680252BCD1AC408AB88D0D3DD24BAFED4284375C9
            8AAAC0C7402DF329F1262FBE5EDB7C6012BB39BA8F1A18126F648ED9A524D7D5
            F3D3CCF97841B4D0BB441745D5B18BABEDA8CFC8C719225A87669E269BF559EF
            AF53908AD053A743BAA1397EA63EEFC17ACD68B032D4801932B2734DE7E98192
            EBAD1A80FA7450C9B5739C1CA7DB541AC3BA7DB678A2824DA4C640424C5614E5
            F0A2F9BA5291EC78C177E8761DB2D211B944B7E39A852F722DDDA6AAA7268C07
            2708B6FB63B34FF3BEB1D90F640CF8B98C343D713F2320AC06980A610978319B
            99C2FD4055C125105404806AB353946F6A62D62438AE61BA3156065909A47CBE
            D9AF222BEF205420DF11BF92780A411D03A890B6F6B6EB8B61023DA92A936564
            0504D99D1BDDF390C9284D05356519592176087ACB08171F41F88A2C4940D1C8
            09CDAE5541ACD11A1BF135D1F510E546DDA629C7CC5414170A5D76583AAD4830
            7237054DFD9D667F99E6332C057F82E6E3E886E9C6581964E5039A63F6CBC88A
            2E0FF142CB619BF61810300C4BC72B8173CF77749B7EC25BAB3259455680DEB5
            77748C668DC2874458092E29F90F4B56407CD3EB741B83EF16E61CC4FD45220D
            FBD080D191B02260B07D5AA0038526E6977AEF178BCA40C686ACA1D317E3FD4E
            BEA0DB987BAA42C657A19FC86A0730482FBC435A4F3E64AB3E40C4D241A53A64
            4599A6799B1C1DA7F63A5E337B51C97F701DE4C2D2402D176C9834CFE8B053CC
            B545648D83FE3E251D25FF0ACD832D6C080AF95007F86ACBD65E1D2BB2026AF8
            54587674E2F77699668C7E222B43F6A1C6C46E3A2C9DB04838E4844E2A24857B
            A58BEBD5212BE02B88C7FD4918121FA399AA020F49E766AA16CCDE9AC9B5CD35
            456405B12A80DE4AD3CBAA26F4D0D19FB736E7E9207D589F6997B23290B1232B
            46ECA20E59996ED704A3212BEF80950DD1E1ADFEBEB2C88A2A16F8B450CBA76B
            D4252B288A91CF58F99D520F988E50A621F9DBC437CD76C1DD32B232767DBAD9
            3F5B0B8C1AF793B2A2AA70B2A68D69EA4B6565206347568055033D75CDC4396C
            D9A78C226D301AB252E6A8480CFAD88EEC78D4ACE8F0B4AE550BE815A2095945
            33B971748C2FB5CAFF91C24105A0E6C324364D8F5B130828232BCD3E0300AB98
            638B34ADA5FA1BDF1BF740936520634B56D132229DDDA3E3B42CE8AD556BC996
            613464C5CC0461768E8EAF2CB2DA75BB00E13A8BFA3736547EFA8286648DCD48
            A08AAC900543393A2F5F172F32F4F821D734736D19590136D0BDCCFE3CE94482
            16CDDBEBCCFE5C27474935EC4758F79E18E47D3BCD5380B531066C9F28C32648
            91B5AEFD16329C2B2B2ECCB1B2C88A6DD98E5015AD063E5B7C27B4D42FC192F5
            A3FAA73B4B396277B22AB25A82C5A1C5636B80351AA780D9E702B31F7B1B0535
            238066EF6AA906FF196AE0A2A528AB400BF1437D3EDBD431746BBD988A5662A9
            8B94D7151FECBC8AFBF0EFC0268E2A177BD7D1F93BCFEC97551AD4800F4AA745
            2CD3C519D479283AC63BB2AB3432DA88F338EFEA792981252BA6285EFE9BA51A
            B6B35346566B140634DBD81A7999E8BA8C36AD66CEE38DFFDB92FFA5097D5C0B
            6C89EE5B7307841BD6EDA7F4FC0B520DECC561F134FC7A198665740DD5E0CC1A
            F7072C97B4475658519BE7C6C4F5BB0669C6889B56916A35C02E92FC0E59D177
            39B6A7D3E92D33B1D132AEA7DB551D4786BB63C7A0EF8B375FD271DFA9C6FFBD
            084B56D8CE1736A5EA26F14D66706A296BD6A8291746C7202FC3919BEB7F591D
            948F0522E248BCA4204D1E1467E3A295A3696A70696CA27B9E259DE52821127A
            151684C3A55960E260538E97B3E403E385D0229DD120BD18782DFD24719CE6F3
            B3D26946F96878B11B6B995A2B4A5CB9F01EE645D7D07AF291C64E4410145531
            EEB0A29BD3C92E225C70CC4E814AA2682DB21180AC647EBA29C46B75FB7629D7
            2178911086DEDEFCA2F4C5AFE9B46BE21CFFCB4B9D191D3F45A5C8404C137DA1
            A46B0800E9205F13A7115E2CEACA6EE65837DEF70CFB069DEC7E7D769AEC978A
            FFC8F66D985EC0519A373E0408187FC8EBEB331481168D26961144D494D0C1C3
            4E8DE98FF7631763C6336E4EE2F9A9C1C3EAE1A1C50AF3F12E92F4129EF61978
            7E5A96A55A56674A83797B90F5447D006EA2E9445F41B99E2BD526299A240873
            71C9358CFD53CBD0711B16DF4108CA3C4D238A352626AC045F95F402BB16D3F4
            3A9A9ED497CC4000B5EA9E92F68C2AC374F16AC90D4D0AD1007DF03A7D664C69
            E8A7D4AA7C5C5FE922BD00DE09AD10AE784513F9E8F8D80590C302702F98F37D
            3DED682CA6625388754C3165A6893060909151881C3720A36F90C99AD137C864
            CDE81B64B276074C63E8E9B54C2E1963834CD6E6982D1D27995B7A9D99414226
            6B73302283FDF6DA5E6764D090222BDEDBCC40C53E88619BF17CCC4A4D5CBB5E
            A1E960E7C46E79611779C356892F00C66A8677B1F92EAD711FDE598C3E612A63
            E8369EF2824F2543BE3CF8421939D5BA080C0986A00E8C44317AC77031337EAF
            AA713FD84FBC8D7891960BF95B47BC519D34862BEEA71C191860C40FDB293655
            7C1196487D60833E4CF3C0D83F033F9365C529F65560CED652CD3BA353BF6A78
            3F60706792DE4B3E78CFCF96DD60C9CAA8055EF7782D61D0663C1BD2E233C038
            F97CA907BCB74ED35F32C1B8344E0A8C5EDC51330D9C5B2ED5749ED0B430861F
            5CE35E6205307D3A0C09E24463091BE25511A08351B08535D2B4DE66BCA887B5
            4CB89F8F6A598D3CF1E19FAFF7F2F13EA765435933A45BE53C03A9503D7EA4FB
            0C7BE2A4F3ACD4438838C3E824D10FF1B765A48FB96C336BA681DF08BE007C5C
            73C5939F346649B361E4795A0EFCBE51FF9FB44B230F5AB286978837CDAFCD35
            14304D5E1D7F490A9011ADD8998302A566A8E5B0201D47EFB04424C389CC38C5
            79B98E630AB520E3FB0C99DE2C1DE71C469470F8A6A664A4ECD81A6905306B96
            8F370482000C2152BB55111E071B08CF8B6610859A35C461A07662C8BAEED0F0
            12BD67A8E6F5A26577AEACE8FC8D1716EF7B468D3442801022CAD8294E7C787C
            6804E7FB418D7478075414B612E143C2C5B1B40F10C84ACD77A5CA3E89EBEA4E
            74633A354D2C2FE16E733CB8C9219FAF910E6B92320CCBB02F355970F3832875
            C8CACBE7E338430B873C51B3E14AB7B91E6FEA641D9E0D92A066ACAEF9E27FAA
            BCA8ECE8DD565A36787A6D2DCD01D1213C35631D1500B568B196DBA4E89C8D5E
            53053A95B3C593FD13E6F874F1AD2EB5F55B6AA463FF0F3F8E73749BE7291DE2
            0E6425033834A41C73EB0222F1D2D0A9E2881EF898E28340D35C772A3244D853
            B7A99170A2A86A6E03202584D842EF9DA3CFB7BD16085E474DC91ADC2299FC87
            0A305D7C0DD1145B6AD98C175929377C38EC0C8D6E805A46B9E2A86D7D5FD1A3
            1768BE5089EA04A5B64ED9B44AA8433756DD14C81A22A68C66162664A5434382
            3497F79A73217D548A262B3933E16F9616C2B078B22DAE711F4E2EBCC86BB4F0
            20E85CF15F324E3BD4024DC90AF9A915212A3A313542374BC58F3759D1F3711E
            C209666A8DEB8B109CBE8BC8FAA8A65F37823A1346674B4745C3FDB1B4B31BC8
            8A8B18BA171EECDB24AEABEB6882BE8ADEBABB3E404070182683757ACF5C4B2F
            135D97CE09353204297347B4A0E70DC1F1060BFA2F330AF0EDC44A81FE3D579A
            4D5F09B31A683A210ABA1E7A2CE4AFDB7104AFD1FB52B1C3EA00ABCC4BB55CEA
            5847B816173EF44CC8F49BE87CDDC8861015C2E2F1766454D6E8DB755BCD3D34
            0F819821324B6545663B58E1CB41190F2E7CE8777C99CCFBAFA3D784690C4BB5
            3041A84998E9B8678D34C0957A7F9862F36ECD432A926151C16EA0CF41B8A3DB
            B490E828427A22C884190175C18815240DD35228389A466AD7D31BA413A66B43
            BAB51ADC17106A2EC857377C6608E969E74041625A9A0552DFD213FC75A74927
            EA3735EA3A5ADE55B15D014DFED95A8EC1DD91672A8BCCF822623B2B7A1D5F0D
            B51A3D3FE237A14B5CD6A060C8045F09D6053A4874D8D04B9AC47842A7A17749
            0F911A1DA2F1E5D6A995E92963F2A2F74AA849BE623A69CCDDA2F9C47CB39FE6
            0D93589D21534C4634FB9015F31ED6125402C83E5DEA87249FA2E54B6D02F951
            736EAE79EF242D87B3749F9E3C04ACFB5EF0D4A7D74D2BC0C74265107C889BCC
            B6455564B2202AD634F143CFC7D42C47B0A3E61D550C53D50E9A9FB3AA6E1C5A
            BEBCAE8A9191D15BFC01F1CD1CB7320A0BC40000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 204.094620000000000000
          Top = 48.913420000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'CNPJ: 63.064968/0001-00')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 294.803340000000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        object Shape1: TfrxShapeView
          Left = 15.118120000000000000
          Top = 4.779530000000000000
          Width = 1028.032160000000000000
          Height = 268.346630000000000000
          GroupIndex = 2
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 384.141930000000000000
          Top = 13.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 29.456710000000000000
          Top = 41.133890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Entrega:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 384.425480000000000000
          Top = 41.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 383.960730000000000000
          Top = 70.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 29.118120000000000000
          Top = 13.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pedido:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = -11.338590000000000000
          Top = 283.464750000000000000
          Width = 1058.267716540000000000
          Hint = '0'
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 384.732530000000000000
          Top = 97.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 835.276130000000000000
          Top = 97.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 385.732530000000000000
          Top = 125.504020000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 31.260050000000000000
          Top = 125.504020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 30.236240000000000000
          Top = 99.047310000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Celular:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 30.236240000000000000
          Top = 181.417440000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R.V.:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 30.236240000000000000
          Top = 209.874150000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R.V.2:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 30.236240000000000000
          Top = 238.110390000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R.V.3:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 385.732530000000000000
          Top = 180.417440000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P.V. Bruto:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 385.173470000000000000
          Top = 209.874150000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 384.512060000000000000
          Top = 238.110390000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'L'#237'quido:')
          ParentFont = False
        end
        object DBPedidosdatapedido: TfrxMemoView
          Left = 94.488250000000000000
          Top = 14.118120000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'datapedido'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."datapedido"]')
          ParentFont = False
        end
        object DBPedidosdataentrega: TfrxMemoView
          Left = 98.267780000000000000
          Top = 41.574830000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'dataentrega'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."dataentrega"]')
          ParentFont = False
        end
        object DBPedidosnome: TfrxMemoView
          Left = 438.425480000000000000
          Top = 14.118120000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."nome"]')
          ParentFont = False
        end
        object DBPedidosendereco: TfrxMemoView
          Left = 472.441250000000000000
          Top = 41.574830000000000000
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          DataField = 'endereco'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."endereco"]')
          ParentFont = False
        end
        object DBPedidosbairro: TfrxMemoView
          Left = 445.984540000000000000
          Top = 70.031540000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DataField = 'bairro'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."bairro"]')
          ParentFont = False
        end
        object DBPedidoscidade: TfrxMemoView
          Left = 449.764070000000000000
          Top = 97.267780000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'cidade'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."cidade"]')
          ParentFont = False
        end
        object DBPedidoscep: TfrxMemoView
          Left = 430.866420000000000000
          Top = 124.724490000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'cep'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."cep"]')
          ParentFont = False
        end
        object DBPedidosuf: TfrxMemoView
          Left = 865.512370000000000000
          Top = 98.267780000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'uf'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."uf"]')
          ParentFont = False
        end
        object DBPedidosrv: TfrxMemoView
          Left = 75.590600000000000000
          Top = 181.417440000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'rv'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."rv"]')
          ParentFont = False
        end
        object DBPedidosrv2: TfrxMemoView
          Left = 82.149660000000000000
          Top = 209.653680000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'rv2'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."rv2"]')
          ParentFont = False
        end
        object DBPedidosrv3: TfrxMemoView
          Left = 81.149660000000000000
          Top = 238.110390000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'rv3'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."rv3"]')
          ParentFont = False
        end
        object DBPedidostelefone: TfrxMemoView
          Left = 105.826840000000000000
          Top = 125.724490000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'telefone'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."telefone"]')
          ParentFont = False
        end
        object DBPedidoscelular: TfrxMemoView
          Left = 94.488250000000000000
          Top = 98.488250000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'celular'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."celular"]')
          ParentFont = False
        end
        object DBPedidospvbruto: TfrxMemoView
          Left = 476.220780000000000000
          Top = 180.637910000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'pvbruto'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."pvbruto"]')
          ParentFont = False
        end
        object DBPedidosdesconto: TfrxMemoView
          Left = 468.661720000000000000
          Top = 209.874150000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'desconto'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."desconto"]')
          ParentFont = False
        end
        object DBPedidosliquido: TfrxMemoView
          Left = 453.543600000000000000
          Top = 238.889920000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'liquido'
          DataSet = DBPedidos
          DataSetName = 'DBPedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidos."liquido"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 570.709030000000000000
        Width = 1046.929810000000000000
        object Memo12: TfrxMemoView
          Left = 661.417750000000000000
          Top = 0.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 759.685530000000000000
          Top = 0.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P. Unit'#225'rio')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 884.410020000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 2.779530000000000000
          Width = 631.181510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.Produto')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 23.677180000000000000
          Width = 1058.267716540000000000
          Hint = '0'
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 631.181510000000000000
        Width = 1046.929810000000000000
        DataSet = DBPedidosDetalhe
        DataSetName = 'DBPedidosDetalhe'
        RowCount = 0
        object frxDBDataset1produto: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DataField = 'produto'
          DataSet = DBPedidosDetalhe
          DataSetName = 'DBPedidosDetalhe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidosDetalhe."produto"]')
          ParentFont = False
        end
        object frxDBDataset1un: TfrxMemoView
          Left = 657.638220000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'un'
          DataSet = DBPedidosDetalhe
          DataSetName = 'DBPedidosDetalhe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidosDetalhe."un"]')
          ParentFont = False
        end
        object frxDBDataset1precoun: TfrxMemoView
          Left = 759.685530000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'precoun'
          DataSet = DBPedidosDetalhe
          DataSetName = 'DBPedidosDetalhe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidosDetalhe."precoun"]')
          ParentFont = False
        end
        object frxDBDataset1precototal: TfrxMemoView
          Left = 884.410020000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'precototal'
          DataSet = DBPedidosDetalhe
          DataSetName = 'DBPedidosDetalhe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBPedidosDetalhe."precototal"]')
          ParentFont = False
        end
      end
    end
  end
end
