inherited F_EspMP: TF_EspMP
  Caption = 'Especifica'#231#227'o de Mat'#233'ria Prima'
  ClientHeight = 381
  ClientWidth = 701
  ExplicitWidth = 717
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Top = 0
    Width = 701
    Height = 307
    Align = alClient
    ExplicitTop = 7
    ExplicitWidth = 701
    ExplicitHeight = 537
  end
  object Label1: TLabel [3]
    Left = 191
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Mat'#233'ria Prima'
  end
  object Label12: TLabel [4]
    Left = 568
    Top = 8
    Width = 11
    Height = 13
    Caption = 'PL'
    FocusControl = cxDBTextEdit11
  end
  object Label13: TLabel [5]
    Left = 191
    Top = 48
    Width = 63
    Height = 13
    Caption = 'Conserva'#231#227'o'
    FocusControl = cxDBTextEdit12
  end
  object Label14: TLabel [6]
    Left = 191
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Finalidade'
    FocusControl = cxDBTextEdit13
  end
  inherited StatusBar1: TStatusBar
    Top = 362
    Width = 701
    ExplicitTop = 362
    ExplicitWidth = 701
  end
  inherited Panel1: TPanel
    Top = 307
    Width = 701
    TabOrder = 3
    ExplicitTop = 307
    ExplicitWidth = 701
    inherited btnsair: TAdvGlassButton
      Left = 595
      ExplicitLeft = 595
    end
    object btnImprimir: TAdvGlassButton
      Left = 423
      Top = 13
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Imprimir'
      Enabled = False
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
      OnClick = btnImprimirClick
    end
  end
  object GroupBox1: TGroupBox [9]
    Left = 8
    Top = 132
    Width = 681
    Height = 160
    Caption = 'Caracter'#237'sticas F'#237'sico Qu'#237'micas'
    TabOrder = 4
    object Label2: TLabel
      Left = 9
      Top = 24
      Width = 38
      Height = 13
      Caption = 'Material'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 176
      Top = 24
      Width = 17
      Height = 13
      Caption = 'Cor'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 9
      Top = 64
      Width = 99
      Height = 13
      Caption = 'Caracter'#237'stica da cor'
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 176
      Top = 64
      Width = 24
      Height = 13
      Caption = 'Odor'
      FocusControl = cxDBTextEdit4
    end
    object Label6: TLabel
      Left = 9
      Top = 104
      Width = 44
      Height = 13
      Caption = 'Toxidade'
      FocusControl = cxDBTextEdit5
    end
    object Label7: TLabel
      Left = 175
      Top = 104
      Width = 85
      Height = 13
      Caption = 'Densidade (20'#186'C)'
      FocusControl = cxDBTextEdit6
    end
    object Label8: TLabel
      Left = 342
      Top = 24
      Width = 156
      Height = 13
      Caption = #205'nd. de Saponifica'#231#227'o MG KOH/g'
      FocusControl = cxDBTextEdit7
    end
    object Label9: TLabel
      Left = 342
      Top = 104
      Width = 86
      Height = 13
      Caption = #205'nd. de Iodo cgl/g'
      FocusControl = cxDBTextEdit8
    end
    object Label10: TLabel
      Left = 342
      Top = 64
      Width = 124
      Height = 13
      Caption = #205'nd. de Per'#243'xidos meq/Kg'
      FocusControl = cxDBTextEdit9
    end
    object Label11: TLabel
      Left = 508
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Umidade'
      FocusControl = cxDBTextEdit10
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 9
      Top = 40
      DataBinding.DataField = 'material'
      DataBinding.DataSource = oDS
      TabOrder = 0
      Width = 160
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 176
      Top = 40
      DataBinding.DataField = 'cor'
      DataBinding.DataSource = oDS
      TabOrder = 1
      Width = 160
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 9
      Top = 80
      DataBinding.DataField = 'crtcor'
      DataBinding.DataSource = oDS
      TabOrder = 2
      Width = 160
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 176
      Top = 80
      DataBinding.DataField = 'odor'
      DataBinding.DataSource = oDS
      TabOrder = 3
      Width = 160
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 9
      Top = 120
      DataBinding.DataField = 'toxidade'
      DataBinding.DataSource = oDS
      TabOrder = 4
      Width = 160
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 175
      Top = 120
      DataBinding.DataField = 'densidade'
      DataBinding.DataSource = oDS
      TabOrder = 5
      Width = 160
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 342
      Top = 40
      DataBinding.DataField = 'ismg'
      DataBinding.DataSource = oDS
      TabOrder = 6
      Width = 160
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 342
      Top = 120
      DataBinding.DataField = 'iiodo'
      DataBinding.DataSource = oDS
      TabOrder = 8
      Width = 160
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 342
      Top = 80
      DataBinding.DataField = 'ipero'
      DataBinding.DataSource = oDS
      TabOrder = 7
      Width = 160
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 508
      Top = 40
      DataBinding.DataField = 'umidade'
      DataBinding.DataSource = oDS
      TabOrder = 9
      Width = 160
    end
  end
  object cxDBTextEdit11: TcxDBTextEdit [10]
    Left = 568
    Top = 24
    DataBinding.DataField = 'pl'
    DataBinding.DataSource = oDS
    TabOrder = 5
    Width = 121
  end
  object cxDBTextEdit12: TcxDBTextEdit [11]
    Left = 191
    Top = 65
    DataBinding.DataField = 'conservacao'
    DataBinding.DataSource = oDS
    TabOrder = 1
    Width = 498
  end
  object cxDBTextEdit13: TcxDBTextEdit [12]
    Left = 191
    Top = 104
    DataBinding.DataField = 'finalidade'
    DataBinding.DataSource = oDS
    TabOrder = 2
    Width = 498
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [13]
    Left = 191
    Top = 24
    DataBinding.DataField = 'idmp'
    DataBinding.DataSource = oDS
    Properties.GridMode = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'descricao'
      end
      item
        FieldName = 'codigo'
      end>
    Properties.ListSource = dsMP
    Properties.OnCloseUp = cxDBLookupComboBox1PropertiesCloseUp
    TabOrder = 6
    Width = 371
  end
  inherited ActionList: TActionList
    Left = 80
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspMPEspc'
    RemoteServer = DM.ShCoGen
    object oCdsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object oCdsidmp: TIntegerField
      FieldName = 'idmp'
    end
    object oCdsmaterial: TStringField
      FieldName = 'material'
      Size = 80
    end
    object oCdscor: TStringField
      FieldName = 'cor'
      Size = 50
    end
    object oCdscrtcor: TStringField
      FieldName = 'crtcor'
      Size = 50
    end
    object oCdsodor: TStringField
      FieldName = 'odor'
      Size = 50
    end
    object oCdstoxidade: TStringField
      FieldName = 'toxidade'
      Size = 50
    end
    object oCdsdensidade: TStringField
      FieldName = 'densidade'
      Size = 50
    end
    object oCdsismg: TStringField
      FieldName = 'ismg'
      Size = 50
    end
    object oCdsiiodo: TStringField
      FieldName = 'iiodo'
      Size = 50
    end
    object oCdsipero: TStringField
      FieldName = 'ipero'
      Size = 50
    end
    object oCdsumidade: TStringField
      FieldName = 'umidade'
      Size = 50
    end
    object oCdsconservacao: TStringField
      FieldName = 'conservacao'
      Size = 50
    end
    object oCdsfinalidade: TStringField
      FieldName = 'finalidade'
      Size = 50
    end
    object oCdspl: TStringField
      FieldName = 'pl'
      Size = 10
    end
  end
  object cdsMP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInsumoID'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 56
    object cdsMPid: TIntegerField
      FieldName = 'id'
    end
    object cdsMPdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsMPcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dsMP: TDataSource
    DataSet = cdsMP
    Left = 40
    Top = 56
  end
  object frxEspMP: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42671.608191388900000000
    ReportOptions.LastChange = 43236.412133587960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 544
    Top = 236
    Datasets = <
      item
        DataSet = dbCab
        DataSetName = 'frxCab'
      end
      item
        DataSet = dbItem
        DataSetName = 'frxdbItem'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 130.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 6.000000000000000000
          Top = 0.102350000000001300
          Width = 705.488250000000000000
          Height = 125.897650000000000000
        end
        object Picture1: TfrxPictureView
          Left = 11.000000000000000000
          Top = 10.102350000000000000
          Width = 147.488250000000000000
          Height = 108.897650000000000000
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000AB
            0000006E080600000058CDE31E000000206348524D00007A25000080830000F9
            FF000080E8000052080001155800003A970000176FD75A1F9000000009704859
            7300000B1300000B1301009A9C180000167E49444154785EEDDD07B8254B51C0
            F1A7E0531473402428A062C4AC9800C100268C28A09813415151492A12CC1103
            28E69C1382A2820113661130A1026651CC98D0B57EFB9D7A5FBD7E35E1DCBDBB
            DE73EEDCEFFBEF9EA9AEE913A6A6A7BBBABAFAAA0B172E6C6C1C04AD7063E32C
            D20A3736CE22575D7DF5D51B97CE6D82171F641BA74C2BDCD88B5709FE24B869
            916D5C065AE139E6B6C11B0CB225DE21B810BC5791ADE12383FB0DB28D195AE1
            39E61383BF1A64C94BECFE7FA3E04383B70DDE3AF8C180B13E3578BFE0FD03F5
            DC3D78B1C039B7D8FD5F71CE170DB28D195AE139E6760123FAE2DDB1BEE84382
            470537DCC9DE38F8A380DE14FF19DC23A0CF60EF153C27F8B4E06D82C704F43E
            28C8F7DE58A0159E6318661A9C7E68BEBE4B30EA7E5B90E5952704FE46FDDF0E
            46DDEF095E3F1875371A5AE13942ABA705FCF9E005C1684CF8E8A03B17DF1554
            DD67049D1E74237E3DA8FAC9BF059F15BC62D09D5B79A546762E688547C2F51B
            D90863BD6BC0583B23FA85A03B2FF9B5A0EAFF537083A0D3C58383AAFF1FC193
            8307066F1EF8A3A73F3CDE24370B9E18DCB2C8CE15ADF04878F5E0530619DE22
            78974186570B184E35A6170553DE81D709E83C3B50DF37EC8E1F1174FA370A6A
            DDF07E9DEE8D03E5BA142F13BC74F00F3B59A77F2E6885470227FD5F04BF5164
            F70D5C70EEA6AA9B3C3C50FEDCE0C776AF313E9EB5C83F1078ACBFD44E86CF0C
            7E2EC8C158F2F2C1DF06FF1CF80CDC56EAD58FAD7A958705747827FE6CF7FAA1
            41A77B2E688547043FA68BCCA8BE7FF7FA67834E17DF17D079EDDDF1EB06DF1C
            7C4C906E28F8FBC0208F2B5AE8971D646F193C32A85D842705DEABEA8DFC6340
            27F9C6A0D33B17B4C223C2E0A95E6C743ECF441FF47B0719185F35D6D340EBCB
            47EB91DF95DF31D0128F9F5FABFF71C1D87A1F3DADF008788D802F539FB35E68
            C76F1674E730C63B0457728EDF7B751E007EDDFAB9479E15BC4F309E77D4B4C2
            03E7B502FDD4EE22279CF4DDB9FFDFB861DE237866F0F8E0B1C15F063E33CFC4
            4D82EC23E78CDAB9A1151E3846CFFA9C46EB66A49E12B8D8FF1A7C53605AF4F9
            8196E9B41FED978ACFA3CF5B65A66D7DFE292FC3B9A1151E19EF1AB8D80C3565
            FAA0668ECE9AB176F88C3E3F0F42577E6E688547063FA98BFD6E457668E8C3BA
            E9BAB273432B3C326E1EF0991E7A1FEF251BD9B9A2151E19D70BCEFD853E065A
            E1C6C659A4156E6C9C455AE1398253FE56C1AD77BC5EC04BF026C138659AD0B9
            6760BAD5AA80F70DB8C15E35A87A560DDC3BF884DDFFB8CF0ED3C0A670D74486
            6DEC6885E708B347A2FA790B467E2FE8CEE1EFECF4851A563D812B9D5EE5DC4D
            995E0AADF01C2190B933A2A40B31FCFCA0D3BD5B50F5BA79FD91CD58F7A0159E
            23C4898AF67F5ED019D37F07350410FCB53F11A48E287F4B5CACCDAA7A0F0A7E
            31A8F525A6501F1DF8ABE76CCCD00ACF215F117446052DE9A86F3A37CBADD51A
            CB930F0E6A5D09BF6FA7BF31432B3C700C5A0C76F0CAC19A29D5C7059D51255A
            E0AA9FAB60A155AE65958CA71D11AFD0E92F61164B80B7C06C41DC9DCED1D20A
            0F1C2180D6364194FD68681DB924658A2F08AAFE3B0559C658A76E08F9036A3D
            C9CF049DFE123F1D641D06869DCED1D20A0F9CB70AAA6188C2EAF42A22F0EB39
            1DAF10A4BEC0E8945B72321503FB4941AD23995BAD30C7B70659C7D377B27343
            2B3C70AC12CD0B6A91DD1A63159195E7FC4F795DF9DA20F5EFB493E124C66A9D
            56A7BFC466AC47C6A51AABC1D6B8C43AB10281BED5AC293B89B15AFADDE92F51
            136BFCCE4E766E688507CE498CD5A2C03CE7BD83772EC7956F0FE85763FDF360
            5F631500DEE92FB119EB91518DD5EAD0358EF76AAC0C8CECBF8AACA2CCD2993C
            66AC22BB6A7DC994B12E25CF98C2CD92756CC67A049CC458BF25C87332B39F74
            3E29AB48AE669A368F4F62AC260B3AFD25BE23C83A36633D02645CC90B7A1263
            4D37953FB353294FA4087A40F0EFBB638934A68CF5FEC1783E7E29E8F497D88C
            F5C8A8C6CAB0D6186B1D65D719ABCC9C32C2885FB87B7D1263FDE5A0D35FA21A
            EB5C3697A3A4151E38A3B14E85FA55A68C152616B2AC83B14E85FA4D19EBAF04
            9DFE12DF19641D9BB11E01A76DAC1F1B6459C7498CF56941A7BF444DB1B919EB
            11508D5598DE1A63AD2EA12E70652E365504D5BEC6FAAB41A7BFC466AC47C649
            8CB5BA843A639DEABB62CE583F39E8CE31E9D0E92FF1DD41D6B119EB11301AEB
            CB059D5E65C95891697C46C8A796794F19ABAC869DBE6070E18772CB76E5D2BA
            671DBFB5939D1B5AE181538DF55F02B9513BBD4A1D654F19AB1D5A52A76200B6
            AFB1D69CB195CC099B3365239BB11E19D558E5B7AAD15253AC3156FC75907AC9
            691A6BEE02F3F54556918E33EBD88CF5083889B15697D09CB17E7A907AC9498C
            F5378351D79643FF1B289778782CC766AC47463556CEFB353BA07C4D90E7748B
            0413130C6308A1D6D65FA73FB5ACA5FA592DFBB6EF562D972CB8D69364666E6C
            C67A048CC63AB7158F56D7FCBD962ECFB1E4C44E2953D1FF75448E296315B955
            23FB2BA6819559EEDD954F2561CB54F3D88CF50890BF3F2FA829D1396395D022
            7547A6C2FE24B6A87A7CB0FE46BDA5A53273D86673AC0FD558BBAEC451D30A0F
            9CD1582D1AECF460838BD41DE9F471FB60D4ED12BF7D5930EAADE50D83B13ED8
            21267536633D024663B5C57AA7071306D2F89852F57FBED6D7ECF4C1F83F3ED0
            55305960FFD5AE15B621F18704CA25C0C87443D20A65CA2181DE76D37ECF407A
            F6770FEE1C8CB90A92CD588F8C6AACC2F8E68CF5D0C81DB837633D12AAB15A8E
            3D264C3B6436633D3246631D379438647E28C8EF3635B170B4B4C2036734D64E
            E750A9310C9BB11E01D5582DFA7BBBC03643F2AA66FED5C4E61846DE89411124
            594B6E1370DCE34D0B32BFC09A2FF0EFC2FB43B20D70432566A970DB1D76BF86
            CF88B72FD85FF61D072C34DC8CF588A8C67ACC6CC67A046895BA8B7B6CFC5DD0
            7DFFA3A5151E381EF516E459416AC973C563B422D94492C7B2A5205F4BF59332
            AF47E4ADAA48BA56317D3BF2E41DF9DAD46BCABCAEFC5403F95707DDF73F5A5A
            E1C6C659A4156E6C9C455AE1C6C659A4156E6C9C455AE1C6C659A4156E6C9C45
            5AE1C6C659A4156E6C9C455AE1C6C659A4156E6C9C455AE1C624B2B298627D48
            915D096CBC71CB606AB90B0499D3995B7336873DBB64531408D495774873F4D0
            C0D4B6DFE573839B059DEE49B077C3358B27FDE34BAED9852FB109DAB854C47A
            FA35497B0F19DFBB069208EDEBF42E076E12E9E37F37784EF0AC81E70756113C
            2AB0B76C57C71CD684D5EFB62660FD2E812422F46D536FB311AFFD3F95AB6B2D
            F27DC9B468A9BA65EB6E84EB2B9081C41A74A96B849DC1B1C40B632510876999
            F11F0774FD2F4793856F9DFE216195AADD03BB323763A66687457E9DDEE58481
            E4FB57247ABB71D09DB3869A4A13162F767AC9CD83D4B5790899B4F129B35072
            3C672D32325ADECE067F3CB0EDD3DF074F5168EB1DAB2CF38D2A566F8E9559C9
            692DFE03033ACF0E04374FA5D03924EC8BEA6EEECAE007CCDFE63577B22B4D5D
            E19A9CA435AD68B06A7D82CA3BBDE4EB82D4957A89ECF1BB63AB33D8C378CE5A
            3CF6D5F3F0C0D3E2F3828BBB9057A50F276898BB6365E9B3D4B82B3B446CD93E
            B739C56303BF89A750577E25A89904138FF14E772DBA751620DA0FD6A6759D4E
            2513C82177F8D658F91CB65D1AF5F741F74ABD8C55B7C612F68BA9F2AB926515
            F9012A53B944F1CCE00306D9A1629716DFD73EAE5D39E4A0A2E3B1D9955F096A
            BEABE4B4AEC19A65EBC6372F08F2BD7F34E8F44E8A3FBB367A62ABFF1981A7DD
            53AB92040F3232EBC4E707491E1C54DD84EE5C428843A10E306452E974903B0B
            7A3475E51523F73137EC5486EC7DB89CC6BA16C694EFADA5EF743AAC69D362EA
            42DE6A27EBE051D048E67BF8CED7AB0A3629FBAAC0482C952A3AD5551F5AD6BB
            0FB2255CC45B04FA7C4BDBAB7779AADCD939DAEC5A02E537DDBDD61FCF2C82E4
            9D5B675C06237A5F1F9E015B3C5875BD1F1DA3F32AAFF85EF2AB667D56185824
            F88581475A77CE3E9CA6B11A7FF85C1EE5F602B3B702F7D5943780474217A0EE
            BE28BB3899CDECBA73121B35D3D752EA3E7ABD748E459C523C5D3CAE055A4F4B
            3BBC7E4C901F266198551FFB182BA3F8C9E0B9814EB83A8DF2749EAD02EDCEF1
            058D0C3D06122E0DA97B945BDA218BDF589E692B2D71796240AE35B86750EB97
            C267FC9E151903AB3E7497A652BFBB89F24268713E22A8A3E4D3F0209C76CBAA
            8FC81D56EBB3F2B7D335B0D205A8693F19EEDF048F08BA73E086A56B1096B234
            78396CABEE24F5E04141DD458451E5074AC60FB4D65875949DEF434B05C9F13C
            A68ED4FA8CE719DCD96EB2EAD5AD24B5747F1AD4F27143B41C5DEA8B8E9BAB59
            3AAD05AD19AD9F14705F79E47BCA54FD2572A46E9F812AD72291CB7555E527E1
            727403C6C1F5DC231AB51BE03B773AC95706A95B075F5FB29361D544423D60AC
            F5425B539F9555AC914F9D35C6AA3CCF1D5B967424E30F826E72C27AFDD4811F
            AA96A731265AD15AEE7CA3DCA91496E02BCEF31FBD93ED4B7611202FACDC02B5
            DCE35237ABCA4EC2E530564EFD5ADF92B1D606E44776B28E9B04A9A7F1AB6575
            7F31335FB5ACA51E8CC68A0F0BB2C2C4266559CE30968C954B24CFF588AC7751
            35124CF595F473AA5E755ADF6927AB785467B9C7F15C5E2837487D8AA4937B5F
            24C3A89FC10DA275CE7229DE1F578E4FCAE530D6FB06B5BE3963F5746203A95B
            1FED23BA96A9975DCCC42452961927D4B2967AD0192B2E3A640774CA9531A27B
            EC5E4F518D15B70BB24C6B5ACB0CBCEAB949FDD23010C8B2F47D56BE34C8722D
            B11495793C725AC67AA3A07E868421A4CE9A94F14B1C92B1D6090CAE287D78E8
            76D4C4C8589C54AA0753C6CAFDD2EDBDAFF5D26ACD8D8C6160A55FE9D1587D98
            1ECF1E8DB5CE29631D93FEDAE692DCA3DDCD34FED8CF0B941B28E88FD6BA464E
            CB58613D7FFD1C893D0B3AFD937048C62A0F42EA1954FF7EA081FAC3E0E941E6
            6F905F617173BD7A3065ACD0D7CC374D189AC7B8C77077CE480E6E8C98FDE0CE
            E70DA8754E192BC6AE00F794E4BB39E3A4FF5CCBBD1FD7886415635D95D33456
            17B97E86CA5CDF6E1F2EC558FD26623BC6FEFBE53256D726F5D84AA7B39A7A30
            67AC98CA91AF85ECF43B329E803BCA00C4AE25B5AE3963FD8CA0EA0AB4312FFD
            D981F2B1ABC06FFC8420DD5C539CA6B18231A4FB6A44EC4177CE3E5C8AB1DA58
            C34DED3B57F9956859F5E1D76CA037493D58325678BCE69B276BE21F39D7B3E5
            E3D34B79758160CE587D5173F7559FD1E7C402B7482D03231CEB19396D638541
            A44143FD2C7851B0662FD9392EC55805868C031D5C2E63ADFB76616E7C33DE40
            D7A11EAC31D6D18D84256335A3937D5E77571DF18F3ED23963854985AA2FB96E
            2DB7F96E2D175E56CBA7A837E1DA7346043E9B64A8B2EA634C4697D6BE74C6BA
            D67F4BF7CB07192E97B13E20A8F54EED06FEB060312EA11E78CC7677DDC8184E
            B664ACD5C04617D2E80D588AD811BF50F5C768A3EC6624D57534479DC199DA8A
            72097D68FDB2F151C738EA679ADA89652D5DD4D578937458DD40D7687C2CBB77
            50EB9B6B34B480F58938D71737A953EB053BAB3A26877417DC04557E1DEA013F
            60DDF96E8E3AD89933D6EA1486C7765E4C2D4C4EBB263708C63A2A5C3FB965A4
            28F5D1DDA115CFBA780CE626022AFCC579DE0FEF64421F97E6AE479CDF4564E5
            8EDAA2DEBB6D88F6617CB462A91B503749BEEB4E5619FDE94B2E36D731759706
            8EDC88B56E9802D7B0681C1DAF72E9D503217206065536853E59BEF1DC63CD1D
            9A7A89BBD2E3C01CF3D807D552DA7A47004A571F448FD39DDA395AE498F27DFA
            9E753B4A3710179BE08CA9988529D2A73C6E67995E0F0D4295EF8BA8A5FC9C15
            CB5A3C72F92FC1F83C8544388D5E94B17131A53CEA882AEB82882C81FAA8A0EA
            E20EC19CC1E92A8CE724B70EBA73AE837F5C102D489EAC491679BED487D059A6
            3FB50C041E19D6CF64DD153F5A8D4E4AFCC0730E62A37B7A5D0B814F0D94EF13
            34E24F6ED5FA394E127DFFB420CF67EC66ACB4F08EB526DD396BF0E876F3098A
            7193BBE12BC602F9BE1D5A4201CC3E531DE079F2F09AF00F73D227A2B0BAEF2F
            6ACC38011CFED07898A499DAC233F11DF4B7C587F08D7F4E70C3A0D36DF18FE6
            D8A3456BA27F2598564CE71A9794F3C648A611FBA3EA6719C4F8A0F70BB24C9F
            C61736D72C40656A83DD8A7EAD7AA6EE6413015AEEA9C8A839B4102ED25E3F62
            C132202D951BD1C89BF3DBA0B55B1EB40F066FAE071F3503EB7083EB6224FEC4
            CFD6F2AEEE83A115EEC95A57CC9C6B62B173BDB1D10A3736CE22AD7063E32CD2
            0A3736CE22AD70631103A8D52E978DD3A1156ECC626A903BE89A1C4C1B578656
            B8318B19993B0EB28D2B4027141421DC8ECF53ACAA998C7D43BBF84F0547DC2B
            3093D2E92CC13F6BB2C2F956602E2DDB4E7C561302964D589C38960BD2B87360
            B9F5B8D47A0A01E4EA84EFC41F7BFF60C9115EB114E73EC1DD02EF2F6F959C50
            D622ADC962C277EAFDC4F03ADFFF73337D1D7CD0265DF8BA7D17D7A95B62BF84
            355B66C9FC9FCBDEF7C5E40E1BF3BBF01FCF6548BC483DA02CACCDD4A04A5C6C
            5378663FE666A946446F794C9A6C1048621DBA68FDBAD070092B0372C98C8B6A
            12C0CC4AA73BE202D629C1D160335F954875CEF65A36458D36B344C6EC9958DA
            1706FEBA732A3E931924F1AC390327124DFC8159A935C1339CFA361FCECFE1FA
            2C5EE042669CF1BFC017378AEB224EB9D3EF10ABCB1E4C75FB5D19BDD9B37DA7
            91C55F58EE6F02C66F22902873414C520FF2220A3EA9724B32D6C64B6682B731
            9823035656052C0419E89DC7C20A1F199889A97A53789F8C21A8C1395AD20C9E
            B076AB9EB3842519CEAB931BA610D718BC001BBF8DD72651D423BED7B127C63E
            53C39607D5DF660D72AF3A670CFEF69BAE8DA1F0845587788E2A37A54CAEB5AF
            F2295C03FAB51171032D8E01F285C78B0ACCD95E4B61C75A2333BDA81ECBB8AB
            3CC3E4FC68553E85C7257D8BCC6A98DF5A63D5A7D422672AA45CFF2F5026E320
            F60DB2CEEFE6B5EDD4F373AD89A2AA06EE51AC1E7955ABCE5A72DDDADA2E806E
            117D8929C6329F6BED63DC8A0CF5E84654B92E11F95C42BB4A8DC4CB6424589C
            E2CE17925738B90BCC5D0B43CA28AA31A387281EF27D9622DB5037BF9430347F
            9D5E07A3E45ACAE5BE72018815B87D20B105D9BEC69A91499E34BA4A22A03ABD
            25648951CF953256C127F4EB0A8D9320D6413D1A922AF79B920BD8999B52AFD4
            A06C31C075E9FC24F92233A65CCA2A4CC69AD13FD7E427DA91F5EFBB93B33B2F
            1361585560D0D5E98DE853E663C6B9421F45EDFBD3EF22DBD7581997F30C905C
            38FDC74E6F892B6DACBA70F49756F92E9141DF53C62A85D05A6385FEAA201FE7
            6271B09B2FACE57782D6E35A0A3BD6069A6801D5E3D150E51930BC76F4AC35C8
            C1838B929999D70EF48C30331A2CFBBF0CCC316F87E37D97AFE4AA06AF3DB218
            9DD7FB0C1CA1C5574FF659F725430ED77A473C51725991DC0663F9DACC866E52
            7548E056E57E6BF2B54F4D1EA66A98999965B121AB0779E7D4103E7D3DA3FAB5
            FD9A5CC6601090B26C49C44C56DD39E49BAA4B6C189E3AD6BA59FCB0F93DF2B1
            9FBE51293A1DE78A80B5E48AD55C96E24FDCA7DF67D49D83EB4C3D560D74E54B
            3817FBA4CFD42D724E5D03C588C594EEE3E9C9785D03C694F10EE80F2FAEA1DA
            61D58273EA5A3C752EE59FB896B1C2CE1B027439BEADD911D7AA95DBE78771D7
            7035C9A06C4025E878DF1C4FFA3482C0AD0DE246D332AF6D95B538FADE5C66D9
            92F0077A3AE846C8ABC45DA4A55D3B652A699C785BE7E97FF3216B092C9CDB27
            25394F8073B9CDD4D725A39BC2E7F71B38176EC87DAE0B8F83D65CA0B4C192AC
            3A1EE9FBAEB6E572F204D51848AE26B87E9FA9678D074F8DA06FAD2AAF8CEBDD
            E95E8BAB2E5CB8B0B171005CB8EAFF00CD18F1A7057B7BD10000000049454E44
            AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 177.000000000000000000
          Top = 24.102350000000000000
          Width = 491.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESPECIFICA'#199#195'O DE MAT'#201'RIA PRIMA')
          ParentFont = False
        end
        object frxdbItemdescricao: TfrxMemoView
          Left = 177.000000000000000000
          Top = 54.102350000000000000
          Width = 490.630180000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbItem
          DataSetName = 'frxdbItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbItem."descricao"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 547.000000000000000000
          Top = 86.102350000000000000
          Width = 156.488250000000000000
          Height = 32.897650000000000000
        end
        object frxCabpl: TfrxMemoView
          Left = 590.000000000000000000
          Top = 90.102350000000000000
          Width = 111.370130000000000000
          Height = 25.897650000000000000
          DataField = 'pl'
          DataSet = dbCab
          DataSetName = 'frxCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCab."pl"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 550.000000000000000000
          Top = 91.102350000000000000
          Width = 36.488250000000000000
          Height = 22.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PL')
          ParentFont = False
        end
      end
      object Memo3: TfrxMemoView
        Left = 38.000000000000000000
        Top = 170.000000000000000000
        Width = 110.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'I.       Objetivo')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 11.000000000000000000
        Top = 195.000000000000000000
        Width = 692.488250000000000000
        Height = 56.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haBlock
        Memo.UTF8W = (
          
            'Estabelecer os requisitos para sele'#231#227'o, aquisi'#231#227'o, recebimento e' +
            ' inspe'#231#227'o da mat'#233'ria prima e asseguras que esteja em conformidad' +
            'e com as especifica'#231#245'es determinadas pelo Sistema de Qualidade N' +
            'awt'#39's Lite.')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 38.000000000000000000
        Top = 266.000000000000000000
        Width = 139.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'II.       Codifica'#231#227'o')
        ParentFont = False
      end
      object frxdbItemcodigo: TfrxMemoView
        Left = 77.000000000000000000
        Top = 321.000000000000000000
        Width = 157.110390000000000000
        Height = 18.897650000000000000
        DataField = 'codigo'
        DataSet = dbItem
        DataSetName = 'frxdbItem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxdbItem."codigo"]')
        ParentFont = False
      end
      object frxdbItemdescricao1: TfrxMemoView
        Left = 240.000000000000000000
        Top = 321.000000000000000000
        Width = 403.630180000000000000
        Height = 18.897650000000000000
        DataField = 'descricao'
        DataSet = dbItem
        DataSetName = 'frxdbItem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxdbItem."descricao"]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 77.000000000000000000
        Top = 299.000000000000000000
        Width = 158.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'C'#243'digo Nawt'#39's Lite'
          '')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 240.000000000000000000
        Top = 299.000000000000000000
        Width = 404.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Mat'#233'ria Prima')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 40.000000000000000000
        Top = 358.000000000000000000
        Width = 176.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'III.       Especifica'#231#245'es:')
        ParentFont = False
      end
      object Shape3: TfrxShapeView
        Left = 74.000000000000000000
        Top = 297.000000000000000000
        Width = 572.000000000000000000
        Height = 47.000000000000000000
      end
      object Line1: TfrxLineView
        Left = 238.000000000000000000
        Top = 297.555555560000000000
        Height = 47.000000000000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo9: TfrxMemoView
        Left = 9.757575760000000000
        Top = 388.303030310000000000
        Width = 256.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          'A - Caracter'#237'sticas F'#237'sico Qu'#237'micas')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 15.545454550000000000
        Top = 421.863636360000000000
        Width = 286.154916660000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material'
          '')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 15.378787890000000000
        Top = 446.363636360000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Cor'
          '')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 15.045454550000000000
        Top = 471.196969690000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Caracter'#237'stica da cor')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 15.212121220000000000
        Top = 496.363636360000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Odor')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 15.045454550000000000
        Top = 520.863636360000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Toxicidade')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 15.378787880000000000
        Top = 545.030303020000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Densidade (20'#186'C)')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 15.045454550000000000
        Top = 569.530303030000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #205'ndice de Saponifica'#231#227'o MG KOH/g')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 15.378787880000000000
        Top = 593.863636360000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #205'ndice de Iodo cgl/g')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 15.378787890000000000
        Top = 618.863636360000000000
        Width = 286.154916670000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #205'ndice de Per'#243'xidos meq/Kg')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 14.545454550000000000
        Top = 643.030303020000000000
        Width = 286.988250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Umidade')
        ParentFont = False
      end
      object Shape4: TfrxShapeView
        Left = 12.045454550000000000
        Top = 418.030303020000000000
        Width = 695.000000000000000000
        Height = 246.666666670000000000
      end
      object frxCabmaterial: TfrxMemoView
        Left = 305.378787880000000000
        Top = 423.030303030000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'material'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."material"]')
        ParentFont = False
      end
      object frxCabcor: TfrxMemoView
        Left = 304.378787880000000000
        Top = 446.196969690000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'cor'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."cor"]')
        ParentFont = False
      end
      object frxCabcrtcor: TfrxMemoView
        Left = 304.545454550000000000
        Top = 470.530303030000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'crtcor'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."crtcor"]')
        ParentFont = False
      end
      object frxCabodor: TfrxMemoView
        Left = 304.545454550000000000
        Top = 496.363636360000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'odor'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."odor"]')
        ParentFont = False
      end
      object frxCabtoxidade: TfrxMemoView
        Left = 304.545454550000000000
        Top = 520.530303030000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'toxidade'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."toxidade"]')
        ParentFont = False
      end
      object frxCabdensidade: TfrxMemoView
        Left = 304.545454550000000000
        Top = 544.696969689999900000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'densidade'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."densidade"]')
        ParentFont = False
      end
      object frxCabismg: TfrxMemoView
        Left = 304.545454550000000000
        Top = 568.696969689999900000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'ismg'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."ismg"]')
        ParentFont = False
      end
      object frxCabiiodo: TfrxMemoView
        Left = 304.545454550000000000
        Top = 593.696969690000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'iiodo'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."iiodo"]')
        ParentFont = False
      end
      object frxCabipero: TfrxMemoView
        Left = 305.378787880000000000
        Top = 618.863636360000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'ipero'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."ipero"]')
        ParentFont = False
      end
      object frxCabumidade: TfrxMemoView
        Left = 305.378787880000000000
        Top = 643.030303030000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        DataField = 'umidade'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxCab."umidade"]')
        ParentFont = False
      end
      object Line2: TfrxLineView
        Left = 303.712121220000000000
        Top = 418.425039870000000000
        Height = 246.605263160000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo20: TfrxMemoView
        Left = 10.909090910000000000
        Top = 681.818181820000000000
        Width = 125.579159090000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          'B - Conserva'#231#227'o')
        ParentFont = False
      end
      object frxCabconservacao: TfrxMemoView
        Left = 10.000000000000000000
        Top = 709.090909090000000000
        Width = 696.993816360000000000
        Height = 55.261286360000000000
        DataField = 'conservacao'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haBlock
        Memo.UTF8W = (
          '[frxCab."conservacao"]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 11.818181820000000000
        Top = 781.818181820000000000
        Width = 107.397340910000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        HAlign = haCenter
        Memo.UTF8W = (
          'C - Finalidade')
        ParentFont = False
      end
      object frxCabfinalidade: TfrxMemoView
        Left = 10.000000000000000000
        Top = 809.090909090000000000
        Width = 696.993816360000000000
        Height = 106.170377270000000000
        DataField = 'finalidade'
        DataSet = dbCab
        DataSetName = 'frxCab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haBlock
        Memo.UTF8W = (
          '[frxCab."finalidade"]')
        ParentFont = False
      end
    end
  end
  object dbCab: TfrxDBDataset
    UserName = 'frxCab'
    CloseDataSource = False
    DataSource = oDS
    BCDToCurrency = False
    Left = 608
    Top = 236
  end
  object dbItem: TfrxDBDataset
    UserName = 'frxdbItem'
    CloseDataSource = False
    DataSource = dsMP
    BCDToCurrency = False
    Left = 640
    Top = 236
  end
end
