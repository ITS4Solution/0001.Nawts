inherited F_EmitenteBt: TF_EmitenteBt
  Caption = 'F_EmitenteBt'
  ClientHeight = 534
  ClientWidth = 832
  OnShow = FormShow
  ExplicitWidth = 848
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Left = 2
    Top = -2
    Width = 723
    Height = 421
    ExplicitLeft = 2
    ExplicitTop = -2
    ExplicitWidth = 723
    ExplicitHeight = 421
  end
  inherited Image1: TImage
    Left = 522
    Top = 288
    ExplicitLeft = 522
    ExplicitTop = 288
  end
  inherited dxBevel2: TdxBevel
    Left = 522
    Top = 280
    Width = 191
    Height = 133
    ExplicitLeft = 522
    ExplicitTop = 280
    ExplicitWidth = 191
    ExplicitHeight = 133
  end
  inherited StatusBar1: TStatusBar
    Top = 515
    Width = 832
    ExplicitTop = 515
    ExplicitWidth = 832
  end
  inherited Panel1: TPanel
    Top = 460
    Width = 832
    ExplicitTop = 460
    ExplicitWidth = 832
    inherited btnSalvar: TAdvGlassButton
      Left = 325
      ExplicitLeft = 325
    end
    inherited btnsair: TAdvGlassButton
      Left = 726
      ExplicitLeft = 726
    end
  end
  object PageControl1: TPageControl [5]
    Left = 0
    Top = 0
    Width = 832
    Height = 460
    ActivePage = TabEmpresa
    Align = alClient
    TabOrder = 2
    object TabEmpresa: TTabSheet
      Caption = '&Empresa'
      object pnEmpresa: TPanel
        Left = 0
        Top = 0
        Width = 824
        Height = 432
        Align = alClient
        Caption = 'pnEmpresa'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        object Label1: TLabel
          Left = 36
          Top = 14
          Width = 41
          Height = 13
          Caption = 'C'#243'digo:'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 88
          Top = 14
          Width = 74
          Height = 13
          Caption = 'Raz'#227'o Social:'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 325
          Top = 14
          Width = 51
          Height = 13
          Caption = 'Fantasia:'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 36
          Top = 56
          Width = 55
          Height = 13
          Caption = 'Endere'#231'o:'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 277
          Top = 56
          Width = 47
          Height = 13
          Caption = 'Numero:'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 440
          Top = 56
          Width = 37
          Height = 13
          Caption = 'Bairro:'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 36
          Top = 98
          Width = 41
          Height = 13
          Caption = 'Cidade:'
          FocusControl = DBEdit7
        end
        object Label9: TLabel
          Left = 349
          Top = 56
          Width = 23
          Height = 13
          Caption = 'CEP:'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 239
          Top = 98
          Width = 17
          Height = 13
          Caption = 'UF:'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 282
          Top = 98
          Width = 52
          Height = 13
          Caption = 'Telefone:'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 380
          Top = 98
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 36
          Top = 139
          Width = 81
          Height = 13
          Caption = 'Insc. Estadual:'
          FocusControl = DBEdit13
        end
        object Label14: TLabel
          Left = 278
          Top = 139
          Width = 111
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal:'
          FocusControl = DBEdit14
        end
        object Label15: TLabel
          Left = 402
          Top = 139
          Width = 31
          Height = 13
          Caption = 'CNAE:'
          FocusControl = DBEdit15
        end
        object Label19: TLabel
          Left = 36
          Top = 182
          Width = 102
          Height = 13
          Caption = 'Email1 (Empresa):'
          FocusControl = DBEdit19
        end
        object Label20: TLabel
          Left = 36
          Top = 220
          Width = 130
          Height = 13
          Caption = 'Email2 (Contabilidade):'
          FocusControl = DBEdit20
        end
        object Label21: TLabel
          Left = 36
          Top = 258
          Width = 94
          Height = 13
          Caption = 'Email3 (Backup):'
          FocusControl = DBEdit21
        end
        object Label16: TLabel
          Left = 36
          Top = 378
          Width = 116
          Height = 13
          Caption = 'Titulo do Certificado:'
          FocusControl = DBEdit16
        end
        object Label8: TLabel
          Left = 157
          Top = 139
          Width = 88
          Height = 13
          Caption = 'Insc. SUFRAMA:'
          FocusControl = DBEdit8
        end
        object Shape1: TShape
          Left = 562
          Top = 28
          Width = 178
          Height = 145
          Brush.Style = bsClear
        end
        object Label22: TLabel
          Left = 562
          Top = 14
          Width = 68
          Height = 13
          Caption = 'Logo Marca:'
        end
        object imgLogoMarca: TImage
          Left = 562
          Top = 30
          Width = 174
          Height = 138
          Center = True
          Proportional = True
          Stretch = True
        end
        object SpeedButton4: TSpeedButton
          Left = 215
          Top = 110
          Width = 23
          Height = 22
          Enabled = False
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000220B0000220B000000010000000000008C5A5A009C6B
            63009C6B6B00EFB56B00A57B7300B5847300C68C7B00BD848400B58C8C00FFD6
            A500BDADAD00F7DEBD00D6C6C600F7DEC600FFDEC600FFE7C600EFDECE00F7DE
            CE00F7E7CE00FFE7CE00EFE7D600F7E7D600FFE7D600FFEFD600EFDEDE00EFE7
            DE00F7E7DE00F7EFDE00FFEFDE00FFF7DE00FFF7E700FFF7EF00FFFFEF00FFFF
            F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00232323232323
            2323232323232323232323232323232323232323232323232323232323232323
            2323232323232323232323232323232323232323232323232323000000000023
            2323232300000000002304040404042323232323040404040423000A0A0A0023
            23232323000A0A0A002304232323042323232323042323230423001616090023
            2323232300161609002304232323042323232323042323230423001616090000
            0023000000161609002304232323040404230404042323230423001616090016
            0023001600161609002304232323042304230423042323230423001616090016
            0000001600161609002304232323042304040423042323230423001616090016
            0000001600161609002304232323042304040423042323230423001616090000
            0000000000161609002304232323040404040404042323230423230016090023
            0000002300161600232323042323042304040423042323042323232300000000
            0023000000000023232323230404040404230404040404232323232323000000
            2323230000002323232323232304040423232304040423232323232323001600
            2323230016002323232323232304230423232304230423232323232323000000
            2323230000002323232323232304040423232304040423232323232323232323
            2323232323232323232323232323232323232323232323232323}
          NumGlyphs = 2
          OnClick = SpeedButton4Click
        end
        object DBText1: TDBText
          Left = 77
          Top = 98
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'CodCidade'
          DataSource = oDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 255
          Top = 98
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'CodUF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btLimparImg: TSpeedButton
          Left = 684
          Top = 174
          Width = 56
          Height = 22
          Caption = 'Limpar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            E9EAF9BEBFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBE
            ECE9E9F9FFFFFFFFFFFFFFFFFFEDEEFA424DD50114CC9698E3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9696E10000C64242CFEDEDFAFFFFFFE5E6F94554D8
            1548EE1750F9041CD19496E2FFFFFFFFFFFFFFFFFFFFFFFF9494E00202CC0000
            F90000EC4444CFE5E5F8BFC3F00323D22364FC2763FE174EF9071DD29798E3FF
            FFFFFFFFFF9797E10407CD0000F90000FE0000F90000C6BFBFECFEFEFF969CE7
            0B2ED82463F92662FE164EF90219D09A9BE49A9BE3000BCE0013F90006FE0000
            F90404CD9696E1FEFEFFFFFFFFFFFFFF9499E6072CD62463F92762FE164EF903
            1AD10116D1062BF90422FE0013F90104CC9494E0FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF969BE7062AD62463F92662FE174FFB1144FB0E3CFE062BF8000BCE9697
            E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999EE7072BD72665FB25
            60FE1C54FE1144FB0116D1999AE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF999FE90930D82F70FB2F6CFE2460FE1850FB031AD1999AE4FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969FEB0B39DB3E82F94684FE2F
            70FB2665FC2661FE164DF90219D09697E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            949EED1044E05193FB5D98FE3D81FB0930D8072BD72463F92662FE164EF9031A
            D19496E2FFFFFFFFFFFFFEFEFF96A4F0174FE463A3FB74ABFE5193FB0B39DB9A
            A0E99A9FE8062AD62463FB2662FE174EF9071DD29698E3FEFEFFBFC9F80C4AE7
            77B6FC8FBEFE63A3FC1346E0979FEBFFFFFFFFFFFF979CE70B2DD82463F92762
            FE1750FB0114CCBFC0EEE5EAFC4871ED599BF777B7FC144EE3949FEDFFFFFFFF
            FFFFFFFFFFFFFFFF9499E6082DD72464FB1548EE4450D7E5E6F8FFFFFFEDF0FD
            456FEC0D4BE696A4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969CE70323
            D24352D8EDEEFAFFFFFFFFFFFFFFFFFFE9EDFCBEC8F7FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEC2F0E9EAFAFFFFFFFFFFFF}
          ParentFont = False
          OnClick = btLimparImgClick
        end
        object btInserirImg: TSpeedButton
          Left = 611
          Top = 174
          Width = 69
          Height = 22
          Caption = 'Inserir'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BEFF00FFFF00FFFF00FF078DBE25A1D171C6E884D7FA66CDF965CDF965CDF965
            CDF965CDF865CDF965CDF866CEF93AADD81999C9FF00FFFF00FF078DBE4CBCE7
            39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9C9F0F3078DBEFF00FF078DBE72D6FA078DBEAEE9FC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9C9F0F3078DBEFF00FF078DBE79DDFB
            1899C79ADFF392E7FC84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DAC9F0F31496C4FF00FF078DBE82E3FC43B7DC65C2E0ABF0FC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDAC9F0F3C9F0F3078DBE078DBE8AEAFC
            77DCF3219CC7FEFFFFC8F7FDC9F7FDC9F7FDC9F7FEC8F7FEC9F7FDC8F7FE9BD5
            E6EAFEFED2F3F8078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          OnClick = btInserirImgClick
        end
        object DBEdit1: TDBEdit
          Left = 36
          Top = 28
          Width = 46
          Height = 21
          Color = 15263976
          DataField = 'ID'
          DataSource = oDS
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 88
          Top = 28
          Width = 233
          Height = 21
          DataField = 'NomeRazaoSocial'
          DataSource = oDS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 325
          Top = 28
          Width = 231
          Height = 21
          DataField = 'NomeFantasia'
          DataSource = oDS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 36
          Top = 69
          Width = 237
          Height = 21
          DataField = 'Endereco'
          DataSource = oDS
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 277
          Top = 69
          Width = 69
          Height = 21
          DataField = 'Numero'
          DataSource = oDS
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 440
          Top = 69
          Width = 116
          Height = 21
          DataField = 'Bairro'
          DataSource = oDS
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 36
          Top = 111
          Width = 179
          Height = 21
          DataField = 'Cidade'
          DataSource = oDS
          TabOrder = 7
          OnKeyDown = DBEdit7KeyDown
        end
        object DBEdit9: TDBEdit
          Left = 349
          Top = 69
          Width = 87
          Height = 21
          DataField = 'CEP'
          DataSource = oDS
          TabOrder = 5
        end
        object DBEdit10: TDBEdit
          Left = 239
          Top = 111
          Width = 39
          Height = 21
          DataField = 'UF'
          DataSource = oDS
          TabOrder = 8
          OnKeyDown = DBEdit10KeyDown
        end
        object DBEdit11: TDBEdit
          Left = 282
          Top = 111
          Width = 94
          Height = 21
          DataField = 'Telefone'
          DataSource = oDS
          TabOrder = 9
        end
        object DBEdit12: TDBEdit
          Left = 380
          Top = 111
          Width = 176
          Height = 21
          DataField = 'CNPJ'
          DataSource = oDS
          TabOrder = 10
        end
        object DBEdit13: TDBEdit
          Left = 36
          Top = 152
          Width = 115
          Height = 21
          DataField = 'IE'
          DataSource = oDS
          TabOrder = 11
        end
        object DBEdit14: TDBEdit
          Left = 276
          Top = 152
          Width = 120
          Height = 21
          DataField = 'IM'
          DataSource = oDS
          TabOrder = 13
        end
        object DBEdit15: TDBEdit
          Left = 402
          Top = 152
          Width = 86
          Height = 21
          DataField = 'CNAE'
          DataSource = oDS
          TabOrder = 14
        end
        object DBEdit19: TDBEdit
          Left = 36
          Top = 195
          Width = 452
          Height = 21
          CharCase = ecLowerCase
          DataField = 'Email1'
          DataSource = oDS
          TabOrder = 15
        end
        object DBEdit20: TDBEdit
          Left = 36
          Top = 232
          Width = 452
          Height = 21
          CharCase = ecLowerCase
          DataField = 'Email2'
          DataSource = oDS
          TabOrder = 16
        end
        object DBEdit21: TDBEdit
          Left = 36
          Top = 270
          Width = 452
          Height = 21
          CharCase = ecLowerCase
          DataField = 'Email3'
          DataSource = oDS
          TabOrder = 17
        end
        object GroupBoxAmbCert: TGroupBox
          Left = 496
          Top = 202
          Width = 310
          Height = 178
          Caption = 'Ambiente/Certifica'#231#227'o:'
          TabOrder = 19
          object Label18: TLabel
            Left = 143
            Top = 53
            Width = 132
            Height = 13
            Caption = 'Validade do Certificado:'
            FocusControl = DBEdit18
          end
          object Label17: TLabel
            Left = 7
            Top = 14
            Width = 64
            Height = 13
            Caption = 'Certificado:'
            FocusControl = DBEdit17
          end
          object Label23: TLabel
            Left = 7
            Top = 52
            Width = 119
            Height = 13
            Caption = 'Senha do Certificado:'
            FocusControl = DBEdit23
          end
          object SpeedButton1: TSpeedButton
            Left = 276
            Top = 27
            Width = 23
            Height = 21
            Hint = 'Selecionar Certificado Digital'
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000210B0000210B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB6601CB6601
              CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB66
              01FF00FFFF00FFFF00FF8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
              8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8CFF00FFFF00FFFF00FFCB6601FEF4E9
              FEF4E9FFF0DEFFEDD9FEE9D1FEE6CAFFE2C1FFE1BAFFDCB3FFD8ADFFE1B5CB66
              01FF00FFFF00FFFF00FF8C8C8CE1E1E1E1E1E1E1E1E1E1E1E1DDDDDDDDDDDDDD
              DDDDDDDDDDD6D6D6D6D6D6DDDDDD8C8C8CFF00FFFF00FFFF00FFCB6601FDF7F0
              FFF8EFFFF3E4FFF0DEFEE9D1FEE9D1FFE2C1FFE2C1FFDEB8FFDCB3FFE1B5CB66
              01FF00FFFF00FFFF00FF8C8C8CE1E1E1E1E1E1E1E1E1E1E1E1DDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDD6D6D6DDDDDD8C8C8CFF00FFFF00FFFF00FFCB6601FEF9F5
              FEF9F5FFF3E4FFF3E4FFF0DEFEE9D1FFE9CEFFE2C1FFE1BAFFDCB3FFE1B5CB66
              01FF00FFFF00FFFF00FF8C8C8CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DDDDDDDD
              DDDDDDDDDDD6D6D6DDDDDDD6D6D68C8C8CFF00FFFF00FFFF00FFCB6601FDFAFA
              FDFAFAFFF8EFFFF3E4FFF3E4FEE9D1FEE9D1FFE9CEFFE2C1FFE1BAFFE1BACB66
              01FF00FFFF00FFFF00FF8C8C8CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDD8C8C8CFF00FFFF00FFFF00FFCB6601FDFAFA
              FDFAFAFEF9F5FFF8EFFFF3E4FFF3E4FEE9D1FEE9D1E6D0C2E6CCB9FFEEC3CB66
              01FF00FFFF00FFFF00FF8C8C8CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DD
              DDDDE1E1E1D6D6D6D6D6D6DDDDDD8C8C8CFF00FFFF00FFFF00FFCB6601FDFAFA
              FDFAFAFDFAFAFEF9F5FFF8EFFFF3E4FFF3E4E2D0CF333ABC3235B3DFCABECB66
              0153204E000BB90106A58C8C8CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
              E1E1DDDDDD919191919191D6D6D68C8C8C7676767D7D7D767676CB6601FEF4E9
              FEF9F5FEF4E9FFF3E4FFEDD9FFEDD9FEE9D1CFB8BA1F27B62246EF4144B97F5C
              80141CAF0F38F00108A88C8C8CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DD
              DDDDCFCFCF8C8C8CA6A6A69999999999998383839999997D7D7DCB6601CB6601
              CB6601CB6601CB6601CB6601CB6601CB6601F3A651AC6F57333ABC2D4CE9192E
              CD2246EF0108A8FF00FF8C8C8C8C8C8C9191918C8C8C9191918C8C8C8C8C8C8C
              8C8CBABABA999999919191A6A6A6919191A6A6A67D7D7DFF00FFFF00FFCB6601
              CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601603D732C46D95680
              FF1E2DC1FF00FFFF00FFFF00FF8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C
              8C8C8C8C8C8C8C8C8C8C8CA6A6A6C1C1C1919191FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF471E5B3840BE4F67E7202E
              C04461ED1F27B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FF767676999999B4B4B4919191B4B4B4838383FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2833C16A7FED1014A6FF00
              FF1F27B64461ED0E13AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FF919191BABABA7D7D7DFF00FF8C8C8CB4B4B47D7D7DFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1014A61014A6FF00FFFF00
              FFFF00FF1016AA0108A8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FF838383838383FF00FFFF00FFFF00FF7D7D7D7D7D7DFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object DBEdit18: TDBEdit
            Left = 143
            Top = 65
            Width = 130
            Height = 21
            DataField = 'ValidadeCert'
            DataSource = oDS
            TabOrder = 2
          end
          object DBEdit17: TDBEdit
            Left = 7
            Top = 27
            Width = 266
            Height = 21
            DataField = 'Certificado'
            DataSource = oDS
            TabOrder = 0
          end
          object DBEdit23: TDBEdit
            Left = 7
            Top = 65
            Width = 130
            Height = 21
            DataField = 'SenhaCert'
            DataSource = oDS
            PasswordChar = '*'
            TabOrder = 1
          end
          object DBRadioAmbiente2: TDBRadioGroup
            Left = 7
            Top = 92
            Width = 266
            Height = 77
            Caption = 'Ambiente:'
            DataField = 'Ambiente'
            DataSource = oDS
            Items.Strings = (
              '1 - Produ'#231#227'o'
              '2 - Homologa'#231#227'o')
            TabOrder = 3
            Values.Strings = (
              'P'
              'H')
          end
        end
        object DBRadioRegime: TDBRadioGroup
          Left = 36
          Top = 298
          Width = 452
          Height = 74
          Caption = 'CRT - C'#243'digo Regime Tribut'#225'rio:'
          DataField = 'CodTipoRegime'
          DataSource = oDS
          Items.Strings = (
            '1 - Simples Nacional'
            '2 - Simples Nacional - com excesso de sublimite de receita bruta'
            '3 - Regime normal')
          TabOrder = 18
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object DBEdit16: TDBEdit
          Tag = 1
          Left = 36
          Top = 391
          Width = 770
          Height = 21
          Color = 15263976
          DataField = 'TituloCertificado'
          DataSource = oDS
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit8: TDBEdit
          Left = 155
          Top = 152
          Width = 115
          Height = 21
          DataField = 'SUFRAMA'
          DataSource = oDS
          TabOrder = 12
        end
      end
    end
    object TabTributo: TTabSheet
      Caption = '&Tributos'
      ImageIndex = 1
      object pnTributo: TPanel
        Left = 0
        Top = 0
        Width = 824
        Height = 432
        Align = alClient
        Caption = 'pnTributo'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        object Panel2: TPanel
          Left = 4
          Top = 7
          Width = 357
          Height = 78
          BevelInner = bvLowered
          Caption = 'pnCfgFoto'
          ParentColor = True
          ShowCaption = False
          TabOrder = 0
          object Label24: TLabel
            Left = 2
            Top = 2
            Width = 353
            Height = 13
            Align = alTop
            Caption = 'Dados pad'#227'o para emiss'#227'o de NFe.'
            Color = clInfoBk
            ParentColor = False
            Transparent = False
            WordWrap = True
            ExplicitWidth = 195
          end
          object Label25: TLabel
            Left = 4
            Top = 19
            Width = 31
            Height = 13
            Caption = 'CFOP:'
            FocusControl = DBEdit22
          end
          object DBEdit22: TDBEdit
            Left = 4
            Top = 31
            Width = 76
            Height = 21
            DataField = 'CFOPPadrao'
            DataSource = oDS
            TabOrder = 0
          end
          object DBCheckBox1: TDBCheckBox
            Left = 4
            Top = 56
            Width = 336
            Height = 17
            Caption = 'Muda CFOP automaticamente Destinat'#225'rio interestadual.'
            DataField = 'MudaCFOPInte'
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'F'
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 472
    Top = 360
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspEmitente'
    Left = 216
    Top = 40
    object oCdsID: TIntegerField
      FieldName = 'ID'
    end
    object oCdsNomeRazaoSocial: TStringField
      FieldName = 'NomeRazaoSocial'
      Size = 60
    end
    object oCdsNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 60
    end
    object oCdsEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object oCdsNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object oCdsComplemento: TStringField
      FieldName = 'Complemento'
      Size = 60
    end
    object oCdsBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object oCdsCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object oCdsCodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object oCdsCEP: TStringField
      FieldName = 'CEP'
      Size = 12
    end
    object oCdsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object oCdsCodUF: TIntegerField
      FieldName = 'CodUF'
    end
    object oCdsPais: TStringField
      FieldName = 'Pais'
    end
    object oCdsCodPais: TIntegerField
      FieldName = 'CodPais'
    end
    object oCdsTelefone: TStringField
      FieldName = 'Telefone'
      Size = 10
    end
    object oCdsCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object oCdsIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object oCdsSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
    end
    object oCdsIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object oCdsCNAE: TIntegerField
      FieldName = 'CNAE'
    end
    object oCdsLogo: TStringField
      FieldName = 'Logo'
      Size = 249
    end
    object oCdsCodTipoRegime: TIntegerField
      FieldName = 'CodTipoRegime'
    end
    object oCdspSimples: TFloatField
      FieldName = 'pSimples'
    end
    object oCdsCertificado: TStringField
      FieldName = 'Certificado'
      Size = 249
    end
    object oCdsTituloCertificado: TStringField
      FieldName = 'TituloCertificado'
      Size = 249
    end
    object oCdsValidadeCert: TSQLTimeStampField
      FieldName = 'ValidadeCert'
    end
    object oCdsSenhaCert: TStringField
      FieldName = 'SenhaCert'
    end
    object oCdsAmbiente: TStringField
      FieldName = 'Ambiente'
      Size = 1
    end
    object oCdsEmail1: TStringField
      FieldName = 'Email1'
      Size = 60
    end
    object oCdsEmail2: TStringField
      FieldName = 'Email2'
      Size = 60
    end
    object oCdsEmail3: TStringField
      FieldName = 'Email3'
      Size = 60
    end
    object oCdsModeloDanfe: TIntegerField
      FieldName = 'ModeloDanfe'
    end
    object oCdsFormaEmissao: TIntegerField
      FieldName = 'FormaEmissao'
    end
    object oCdsCFOPPadrao: TIntegerField
      FieldName = 'CFOPPadrao'
    end
    object oCdsMudaCFOPInte: TStringField
      FieldName = 'MudaCFOPInte'
      Size = 1
    end
  end
  inherited oDS: TDataSource
    OnDataChange = oDSDataChange
    Left = 248
    Top = 40
  end
  object dspEmitente: TDataSetProvider
    DataSet = DM.sqlEmitente
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 170
    Top = 41
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Jpg(*.jpg)|*.Jpg|Bitmaps (*.bmp)|*.bmp'
    InitialDir = 'C:\'
    Left = 492
    Top = 144
  end
end
