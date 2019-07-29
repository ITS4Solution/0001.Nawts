inherited F_EspEmb: TF_EspEmb
  Caption = 'Especifica'#231#227'o de Embalagem'
  ClientHeight = 635
  ClientWidth = 754
  ExplicitWidth = 770
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBevel1: TdxBevel
    Left = 171
    Top = 0
    Width = 583
    Height = 561
    Align = alClient
    ExplicitLeft = 530
    ExplicitTop = 143
    ExplicitWidth = 583
    ExplicitHeight = 561
  end
  inherited Image1: TImage
    Left = 0
    Top = 0
    Height = 561
    Align = alLeft
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitHeight = 88
  end
  inherited dxBevel2: TdxBevel
    Left = 0
    Width = 171
    Height = 109
    ExplicitLeft = 0
    ExplicitWidth = 171
    ExplicitHeight = 109
  end
  object Label82: TLabel [3]
    Left = 177
    Top = 24
    Width = 128
    Height = 13
    Caption = 'C'#243'd/Descri'#231#227'o do Produto '
    FocusControl = cxDBTextEdit55
  end
  inherited StatusBar1: TStatusBar
    Top = 616
    Width = 754
    ExplicitTop = 616
    ExplicitWidth = 754
  end
  inherited Panel1: TPanel
    Top = 561
    Width = 754
    ExplicitTop = 561
    ExplicitWidth = 754
    inherited btnsair: TAdvGlassButton
      Left = 648
      ExplicitLeft = 648
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
  object PageControl1: TPageControl [6]
    Left = 8
    Top = 119
    Width = 743
    Height = 432
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Frasco'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 735
        Height = 404
        Align = alClient
        Caption = 'Frasco'
        TabOrder = 0
        object Label1: TLabel
          Left = 357
          Top = 15
          Width = 38
          Height = 13
          Caption = 'Material'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 518
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Cor'
          FocusControl = cxDBTextEdit2
        end
        object Label3: TLabel
          Left = 10
          Top = 56
          Width = 99
          Height = 13
          Caption = 'Caracter'#237'stica da cor'
          FocusControl = cxDBTextEdit3
        end
        object Label4: TLabel
          Left = 178
          Top = 56
          Width = 24
          Height = 13
          Caption = 'Odor'
          FocusControl = cxDBTextEdit4
        end
        object Label5: TLabel
          Left = 340
          Top = 56
          Width = 51
          Height = 13
          Caption = 'Toxicidade'
          FocusControl = cxDBTextEdit5
        end
        object Label36: TLabel
          Left = 10
          Top = 15
          Width = 69
          Height = 13
          Caption = 'C'#243'd/Descri'#231#227'o'
          FocusControl = cxDBTextEdit1
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 357
          Top = 31
          DataBinding.DataField = 'materialf'
          DataBinding.DataSource = oDS
          TabOrder = 0
          Width = 155
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 518
          Top = 31
          DataBinding.DataField = 'corf'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 147
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 10
          Top = 73
          DataBinding.DataField = 'carctcorf'
          DataBinding.DataSource = oDS
          TabOrder = 2
          Width = 162
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 178
          Top = 73
          DataBinding.DataField = 'odorf'
          DataBinding.DataSource = oDS
          TabOrder = 3
          Width = 156
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 340
          Top = 73
          DataBinding.DataField = 'toxidadef'
          DataBinding.DataSource = oDS
          TabOrder = 4
          Width = 172
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 10
          Top = 31
          DataBinding.DataField = 'idembf'
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
          Properties.ListSource = dsEmbalagem
          TabOrder = 5
          Width = 341
        end
        object GroupBox10: TGroupBox
          Left = 9
          Top = 247
          Width = 138
          Height = 145
          Caption = 'Di'#226'metro externo da rosca'
          TabOrder = 6
          object Label21: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit21
          end
          object Label22: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit22
          end
          object Label23: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit23
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'diametroextroscafref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit22: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'diametroextroscafmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit23: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'diametroextroscafmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox11: TGroupBox
          Left = 152
          Top = 247
          Width = 138
          Height = 145
          Caption = 'Di'#226'metro externo gargalo'
          TabOrder = 7
          object Label24: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit24
          end
          object Label25: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit25
          end
          object Label26: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit26
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'diametroextgargfref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit25: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'diametroextgargfmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit26: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'diametroextgargfmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox12: TGroupBox
          Left = 295
          Top = 247
          Width = 138
          Height = 145
          Caption = 'Di'#226'metro interno gargalo'
          TabOrder = 8
          object Label27: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit27
          end
          object Label28: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit28
          end
          object Label29: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit29
          end
          object cxDBTextEdit27: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'diametrointgargfref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit28: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'diametrointgargfmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit29: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'diametrointgargfmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox13: TGroupBox
          Left = 438
          Top = 247
          Width = 138
          Height = 145
          Caption = 'Di'#226'metro da trava'
          TabOrder = 9
          object Label30: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit30
          end
          object Label31: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit31
          end
          object Label32: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit32
          end
          object cxDBTextEdit30: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'diametrotravafref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit31: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'diametrotravafmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit32: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'diametrotravafmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox14: TGroupBox
          Left = 582
          Top = 247
          Width = 138
          Height = 145
          Caption = 'Volume'
          TabOrder = 10
          object Label33: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit33
          end
          object Label34: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit34
          end
          object Label35: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit35
          end
          object cxDBTextEdit33: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'volumefref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit34: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'volumefmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit35: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'volumefmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox3: TGroupBox
          Left = 9
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Peso'
          TabOrder = 11
          object Label6: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit6
          end
          object Label7: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit7
          end
          object Label8: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit8
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'pesofref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'pesofmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'pesofmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox6: TGroupBox
          Left = 152
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Altura Total'
          TabOrder = 12
          object Label9: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit9
          end
          object Label10: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit10
          end
          object Label11: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit11
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'alturafref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'alturafmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'alturafmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox7: TGroupBox
          Left = 295
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Largura ombro'
          TabOrder = 13
          object Label12: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit12
          end
          object Label13: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit13
          end
          object Label14: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit14
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'larguraombrofref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'larguraombrofmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'larguraombrofmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox8: TGroupBox
          Left = 438
          Top = 101
          Width = 138
          Height = 144
          Caption = 'Largura corpo m'#233'dio'
          TabOrder = 14
          object Label15: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit15
          end
          object Label16: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit16
          end
          object Label17: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit17
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'larguracorpomediofref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit16: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'larguracorpomediofmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit17: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'larguracorpomediofmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox9: TGroupBox
          Left = 585
          Top = 99
          Width = 138
          Height = 138
          Caption = 'Di'#226'metro da rosca'
          TabOrder = 15
          object Label18: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit18
          end
          object Label19: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit19
          end
          object Label20: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit20
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'diametroroscafref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'diametroroscafmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'diametroroscafmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tampa'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 735
        Height = 404
        Align = alClient
        Caption = 'Tampa'
        TabOrder = 0
        object Label37: TLabel
          Left = 357
          Top = 15
          Width = 38
          Height = 13
          Caption = 'Material'
          FocusControl = cxDBTextEdit36
        end
        object Label38: TLabel
          Left = 518
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Cor'
          FocusControl = cxDBTextEdit37
        end
        object Label39: TLabel
          Left = 10
          Top = 56
          Width = 99
          Height = 13
          Caption = 'Caracter'#237'stica da cor'
          FocusControl = cxDBTextEdit38
        end
        object Label40: TLabel
          Left = 178
          Top = 56
          Width = 24
          Height = 13
          Caption = 'Odor'
          FocusControl = cxDBTextEdit39
        end
        object Label41: TLabel
          Left = 340
          Top = 56
          Width = 51
          Height = 13
          Caption = 'Toxicidade'
          FocusControl = cxDBTextEdit40
        end
        object Label42: TLabel
          Left = 10
          Top = 15
          Width = 69
          Height = 13
          Caption = 'C'#243'd/Descri'#231#227'o'
          FocusControl = cxDBTextEdit36
        end
        object cxDBTextEdit36: TcxDBTextEdit
          Left = 357
          Top = 31
          DataBinding.DataField = 'materialt'
          DataBinding.DataSource = oDS
          TabOrder = 0
          Width = 155
        end
        object cxDBTextEdit37: TcxDBTextEdit
          Left = 518
          Top = 31
          DataBinding.DataField = 'cort'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 147
        end
        object cxDBTextEdit38: TcxDBTextEdit
          Left = 10
          Top = 73
          DataBinding.DataField = 'carctcort'
          DataBinding.DataSource = oDS
          TabOrder = 2
          Width = 162
        end
        object cxDBTextEdit39: TcxDBTextEdit
          Left = 178
          Top = 73
          DataBinding.DataField = 'odort'
          DataBinding.DataSource = oDS
          TabOrder = 3
          Width = 156
        end
        object cxDBTextEdit40: TcxDBTextEdit
          Left = 340
          Top = 73
          DataBinding.DataField = 'toxidadet'
          DataBinding.DataSource = oDS
          TabOrder = 4
          Width = 172
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 10
          Top = 31
          DataBinding.DataField = 'idembt'
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
          Properties.ListSource = dsEmbalagem
          TabOrder = 5
          Width = 341
        end
        object GroupBox20: TGroupBox
          Left = 9
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Peso'
          TabOrder = 6
          object Label58: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit56
          end
          object Label59: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit57
          end
          object Label60: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit58
          end
          object cxDBTextEdit56: TcxDBTextEdit
            Left = 9
            Top = 33
            DataBinding.DataField = 'pesotref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit57: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'pesotmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit58: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'pesotmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox21: TGroupBox
          Left = 152
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Altura Total'
          TabOrder = 7
          object Label61: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit59
          end
          object Label62: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit60
          end
          object Label63: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit61
          end
          object cxDBTextEdit59: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'alturatref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit60: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'alturatmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit61: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'alturatmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox22: TGroupBox
          Left = 295
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Largura ombro'
          TabOrder = 8
          object Label64: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit62
          end
          object Label65: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit63
          end
          object Label66: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit64
          end
          object cxDBTextEdit62: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'larguraombrotref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit63: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'larguraombrotmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit64: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'larguraombrotmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox23: TGroupBox
          Left = 10
          Top = 249
          Width = 138
          Height = 144
          Caption = 'Largura corpo m'#233'dio'
          TabOrder = 9
          object Label67: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit65
          end
          object Label68: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit66
          end
          object Label69: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit67
          end
          object cxDBTextEdit65: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'larguracorpomediotref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit66: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'larguracorpomediotmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit67: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'larguracorpomediotmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox24: TGroupBox
          Left = 295
          Top = 251
          Width = 138
          Height = 144
          Caption = 'Di'#226'metro da rosca'
          TabOrder = 10
          object Label70: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit68
          end
          object Label71: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit69
          end
          object Label72: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit70
          end
          object cxDBTextEdit68: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'diametroroscatref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit69: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'diametroroscatmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit70: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'diametroroscatmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox4: TGroupBox
          Left = 151
          Top = 251
          Width = 138
          Height = 144
          Caption = 'Di'#226'metro '
          TabOrder = 11
          object Label83: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit78
          end
          object Label84: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit79
          end
          object Label85: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit80
          end
          object cxDBTextEdit78: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'diametrotref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit79: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'diametrotmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit80: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'diametrotmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Batoque'
      ImageIndex = 2
      object GroupBox15: TGroupBox
        Left = 0
        Top = 0
        Width = 735
        Height = 404
        Align = alClient
        Caption = 'Tampa'
        TabOrder = 0
        object Label43: TLabel
          Left = 357
          Top = 15
          Width = 38
          Height = 13
          Caption = 'Material'
          FocusControl = cxDBTextEdit41
        end
        object Label44: TLabel
          Left = 518
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Cor'
          FocusControl = cxDBTextEdit42
        end
        object Label45: TLabel
          Left = 10
          Top = 56
          Width = 99
          Height = 13
          Caption = 'Caracter'#237'stica da cor'
          FocusControl = cxDBTextEdit43
        end
        object Label46: TLabel
          Left = 178
          Top = 56
          Width = 24
          Height = 13
          Caption = 'Odor'
          FocusControl = cxDBTextEdit44
        end
        object Label47: TLabel
          Left = 340
          Top = 56
          Width = 51
          Height = 13
          Caption = 'Toxicidade'
          FocusControl = cxDBTextEdit45
        end
        object Label48: TLabel
          Left = 10
          Top = 15
          Width = 69
          Height = 13
          Caption = 'C'#243'd/Descri'#231#227'o'
          FocusControl = cxDBTextEdit41
        end
        object cxDBTextEdit41: TcxDBTextEdit
          Left = 357
          Top = 31
          DataBinding.DataField = 'materialb'
          DataBinding.DataSource = oDS
          TabOrder = 0
          Width = 155
        end
        object cxDBTextEdit42: TcxDBTextEdit
          Left = 518
          Top = 31
          DataBinding.DataField = 'corb'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 147
        end
        object cxDBTextEdit43: TcxDBTextEdit
          Left = 10
          Top = 73
          DataBinding.DataField = 'carctcorb'
          DataBinding.DataSource = oDS
          TabOrder = 2
          Width = 162
        end
        object cxDBTextEdit44: TcxDBTextEdit
          Left = 178
          Top = 73
          DataBinding.DataField = 'odorb'
          DataBinding.DataSource = oDS
          TabOrder = 3
          Width = 156
        end
        object cxDBTextEdit45: TcxDBTextEdit
          Left = 340
          Top = 73
          DataBinding.DataField = 'toxidadeb'
          DataBinding.DataSource = oDS
          TabOrder = 4
          Width = 172
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 10
          Top = 31
          DataBinding.DataField = 'idembb'
          DataBinding.DataSource = oDS
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'descricao'
            end
            item
              FieldName = 'codigo'
            end>
          Properties.ListSource = dsEmbalagem
          TabOrder = 5
          Width = 341
        end
        object GroupBox16: TGroupBox
          Left = 9
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Peso'
          TabOrder = 6
          object Label49: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit46
          end
          object Label50: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit47
          end
          object Label51: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit48
          end
          object cxDBTextEdit46: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'pesobref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit47: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'pesobmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit48: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'pesobmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox17: TGroupBox
          Left = 152
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Altura Total'
          TabOrder = 7
          object Label52: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit49
          end
          object Label53: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit50
          end
          object Label54: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit51
          end
          object cxDBTextEdit49: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'alturabref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit50: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'alturabmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit51: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'alturabmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
        object GroupBox18: TGroupBox
          Left = 295
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Largura ombro'
          TabOrder = 8
          object Label55: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit52
          end
          object Label56: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit53
          end
          object Label57: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit54
          end
          object cxDBTextEdit52: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'larguraombrobref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit53: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'larguraombrobmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit54: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'larguraombrobmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cartucho'
      ImageIndex = 3
      object GroupBox19: TGroupBox
        Left = 0
        Top = 0
        Width = 735
        Height = 404
        Align = alClient
        Caption = 'Tampa'
        TabOrder = 0
        object Label73: TLabel
          Left = 357
          Top = 15
          Width = 38
          Height = 13
          Caption = 'Material'
          FocusControl = cxDBTextEdit55
        end
        object Label74: TLabel
          Left = 518
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Cor'
          FocusControl = cxDBTextEdit71
        end
        object Label75: TLabel
          Left = 10
          Top = 56
          Width = 99
          Height = 13
          Caption = 'Caracter'#237'stica da cor'
          FocusControl = cxDBTextEdit72
        end
        object Label76: TLabel
          Left = 178
          Top = 56
          Width = 24
          Height = 13
          Caption = 'Odor'
          FocusControl = cxDBTextEdit73
        end
        object Label77: TLabel
          Left = 340
          Top = 56
          Width = 51
          Height = 13
          Caption = 'Toxicidade'
          FocusControl = cxDBTextEdit74
        end
        object Label78: TLabel
          Left = 10
          Top = 15
          Width = 69
          Height = 13
          Caption = 'C'#243'd/Descri'#231#227'o'
          FocusControl = cxDBTextEdit55
        end
        object cxDBTextEdit55: TcxDBTextEdit
          Left = 357
          Top = 31
          DataBinding.DataField = 'materialc'
          DataBinding.DataSource = oDS
          TabOrder = 0
          Width = 155
        end
        object cxDBTextEdit71: TcxDBTextEdit
          Left = 518
          Top = 31
          DataBinding.DataField = 'corc'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 147
        end
        object cxDBTextEdit72: TcxDBTextEdit
          Left = 10
          Top = 73
          DataBinding.DataField = 'carctcorc'
          DataBinding.DataSource = oDS
          TabOrder = 2
          Width = 162
        end
        object cxDBTextEdit73: TcxDBTextEdit
          Left = 178
          Top = 73
          DataBinding.DataField = 'odorc'
          DataBinding.DataSource = oDS
          TabOrder = 3
          Width = 156
        end
        object cxDBTextEdit74: TcxDBTextEdit
          Left = 340
          Top = 73
          DataBinding.DataField = 'toxidadec'
          DataBinding.DataSource = oDS
          TabOrder = 4
          Width = 172
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 10
          Top = 31
          DataBinding.DataField = 'idembc'
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
          Properties.ListSource = dsEmbalagem
          TabOrder = 5
          Width = 341
        end
        object GroupBox25: TGroupBox
          Left = 9
          Top = 100
          Width = 138
          Height = 145
          Caption = 'Peso'
          TabOrder = 6
          object Label79: TLabel
            Left = 7
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = cxDBTextEdit75
          end
          object Label80: TLabel
            Left = 7
            Top = 56
            Width = 32
            Height = 13
            Caption = 'M'#237'nimo'
            FocusControl = cxDBTextEdit76
          end
          object Label81: TLabel
            Left = 7
            Top = 93
            Width = 36
            Height = 13
            Caption = 'M'#225'ximo'
            FocusControl = cxDBTextEdit77
          end
          object cxDBTextEdit75: TcxDBTextEdit
            Left = 7
            Top = 33
            DataBinding.DataField = 'pesocref'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit76: TcxDBTextEdit
            Left = 7
            Top = 71
            DataBinding.DataField = 'pesocmin'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit77: TcxDBTextEdit
            Left = 7
            Top = 108
            DataBinding.DataField = 'pesocmax'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
        end
      end
    end
  end
  object cxDBLookupComboBox5: TcxDBLookupComboBox [7]
    Left = 177
    Top = 43
    DataBinding.DataField = 'idproduto'
    DataBinding.DataSource = oDS
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'nomeprodutopedido'
      end>
    Properties.ListSource = dsProduto
    TabOrder = 3
    Width = 387
  end
  inherited ActionList: TActionList
    Left = 435
    Top = 8
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspEspEmb'
    RemoteServer = DM.ShCoGen
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
  end
  object cdsEmbalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmbalagem'
    RemoteServer = DM.ShCoGen
    Left = 8
    Top = 64
    object cdsEmbalagemid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsEmbalagemdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsEmbalagemcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dsEmbalagem: TDataSource
    DataSet = cdsEmbalagem
    Left = 40
    Top = 64
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProd'
    RemoteServer = DM.ShCoGen
    Left = 88
    Top = 64
    object cdsProdutoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsProdutonomeprodutopedido: TStringField
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 120
    Top = 64
  end
  object reportEsp: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43237.387051921300000000
    ReportOptions.LastChange = 43237.611570185190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 520
    Top = 88
    Datasets = <
      item
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 96.313543640000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 189.090909090000000000
          Top = 10.193259090000000000
          Width = 340.000000000000000000
          Height = 23.636363640000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESPECIFICA'#199#195'O DE EMBALAGEM')
          ParentFont = False
        end
        object ConteudoCompletoPRODUTONOME: TfrxMemoView
          Left = 151.818181820000000000
          Top = 39.284168180000000000
          Width = 415.397340910000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTONOME'
          DataSet = F_EspEmbGrid.dbConteudoCompleto
          DataSetName = 'ConteudoCompleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ConteudoCompleto."PRODUTONOME"]')
          ParentFont = False
        end
      end
      object Shape1: TfrxShapeView
        Left = 5.454545450000000000
        Top = 9.090909090000000000
        Width = 707.272727270000000000
        Height = 100.000000000000000000
      end
      object Picture1: TfrxPictureView
        Left = 12.727272730000000000
        Top = 15.454545450000000000
        Width = 128.181818190000000000
        Height = 87.272727270000000000
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
        Left = 39.090909090000000000
        Top = 132.727272730000000000
        Width = 111.760977270000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'I.        Objetivo')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 14.545454550000000000
        Top = 159.272727270000000000
        Width = 688.181818180000000000
        Height = 58.181818180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haBlock
        Memo.UTF8W = (
          
            'Estabelecer os requisitos para sele'#231#227'o, aquisi'#231#227'o, recebimento e' +
            ' inspe'#231#227'o de todos os componentes das embalagens para assegurar ' +
            'que estejam em conformidade com as especifica'#231#245'es determinadas p' +
            'elo Sistema de Qualidade Nawt'#39's Life.')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 39.090909090000000000
        Top = 232.727272730000000000
        Width = 144.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'II.        Codifica'#231#227'o')
        ParentFont = False
      end
      object Shape2: TfrxShapeView
        Left = 39.090909089999990000
        Top = 265.454545450000000000
        Width = 640.000000000000000000
        Height = 136.363636370000000000
      end
      object Memo5: TfrxMemoView
        Left = 43.695187170000000000
        Top = 268.909090910000000000
        Width = 147.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'C'#243'digo Nawt'#39's Life')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 202.818181820000000000
        Top = 269.000000000000000000
        Width = 470.909090910000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Componentes')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 39.090909089999990000
        Top = 289.090909090000000000
        Width = 639.679144390000000000
        Height = 0.374331550000000000
        Color = clBlack
        Diagonal = True
      end
      object Line2: TfrxLineView
        Left = 199.090909090000000000
        Top = 265.454545450000000000
        Height = 137.005347590000000000
        Color = clBlack
        Diagonal = True
      end
      object ConteudoCompletoFRASCCOD: TfrxMemoView
        Left = 69.090909090000000000
        Top = 301.818181820000000000
        DataField = 'FRASCCOD'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."FRASCCOD"]')
        ParentFont = False
      end
      object ConteudoCompletoFRASCCOD1: TfrxMemoView
        Left = 44.000000000000000000
        Top = 295.454545460000000000
        Width = 149.019480910000000000
        Height = 22.427061760000000000
        DataField = 'FRASCCOD'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."FRASCCOD"]')
        ParentFont = False
      end
      object ConteudoCompletoTAMCOD: TfrxMemoView
        Left = 43.636363640000000000
        Top = 321.818181820000000000
        Width = 149.019480910000000000
        Height = 21.838826470000000000
        DataField = 'TAMCOD'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."TAMCOD"]')
        ParentFont = False
      end
      object ConteudoCompletoBATOCOD: TfrxMemoView
        Left = 43.636363640000000000
        Top = 349.090909090000000000
        Width = 149.019480910000000000
        Height = 21.838826470000000000
        DataField = 'BATOCOD'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."BATOCOD"]')
        ParentFont = False
      end
      object ConteudoCompletoCARTCOD: TfrxMemoView
        Left = 43.636363640000000000
        Top = 377.272727270000000000
        Width = 149.019480910000000000
        Height = 21.250591180000000000
        DataField = 'CARTCOD'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."CARTCOD"]')
        ParentFont = False
      end
      object ConteudoCompletoFRASDESC: TfrxMemoView
        Left = 201.764705880000000000
        Top = 295.294117650000000000
        Width = 471.806650590000000000
        Height = 21.838826470000000000
        DataField = 'FRASDESC'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."FRASDESC"]')
        ParentFont = False
      end
      object ConteudoCompletoTAMDESC: TfrxMemoView
        Left = 202.352941180000000000
        Top = 322.352941180000000000
        Width = 471.218415290000000000
        Height = 21.838826470000000000
        DataField = 'TAMDESC'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."TAMDESC"]')
        ParentFont = False
      end
      object ConteudoCompletoBATODESC: TfrxMemoView
        Left = 201.764705880000000000
        Top = 348.823529410000000000
        Width = 471.806650590000000000
        Height = 20.662355880000000000
        DataField = 'BATODESC'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."BATODESC"]')
        ParentFont = False
      end
      object ConteudoCompletoCARTDESC: TfrxMemoView
        Left = 202.941176470000000000
        Top = 375.882352940000000000
        Width = 470.630180000000000000
        Height = 21.250591180000000000
        DataField = 'CARTDESC'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."CARTDESC"]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 38.235294120000000000
        Top = 416.470588240000000000
        Width = 182.135308820000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'III.        Especifica'#231#245'es:')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 14.705882360000000000
        Top = 448.235294110000000000
        Width = 81.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '1.  Frasco')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 14.705882350000000000
        Top = 475.882352940000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'A - Composi'#231#227'o e Caracter'#237'sticas organol'#233'pticas')
        ParentFont = False
      end
      object Shape3: TfrxShapeView
        Left = 14.705882360000000000
        Top = 504.705882350000000000
        Width = 682.941176470000000000
        Height = 136.363636370000000000
      end
      object Line3: TfrxLineView
        Left = 188.235294120000000000
        Top = 504.117647060000000000
        Height = 137.005347590000000000
        Color = clBlack
        Diagonal = True
      end
      object Line4: TfrxLineView
        Left = 13.529411770000000000
        Top = 532.352941180000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo10: TfrxMemoView
        Left = 16.470588240000000000
        Top = 508.235294120000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 17.058823530000000000
        Top = 535.882352940000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Cor')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 16.647058820000000000
        Top = 562.352941180000000000
        Width = 170.677925730000000000
        Height = 20.909090910000000000
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
        Left = 17.647058830000000000
        Top = 588.823529420000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
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
        Left = 17.470588230000000000
        Top = 615.294117650000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Toxidade')
        ParentFont = False
      end
      object Line5: TfrxLineView
        Left = 15.294117650000000000
        Top = 560.000000000000000000
        Width = 682.941176470000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line6: TfrxLineView
        Left = 14.117647060000000000
        Top = 586.470588240000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line7: TfrxLineView
        Left = 14.705882350000000000
        Top = 612.941176470000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object ConteudoCompletomaterialf: TfrxMemoView
        Left = 190.588235300000000000
        Top = 506.470588240000000000
        Width = 504.432737060000000000
        Height = 23.603532350000000000
        DataField = 'materialf'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."materialf"]')
        ParentFont = False
      end
      object ConteudoCompletocorf: TfrxMemoView
        Left = 191.176470590000000000
        Top = 535.882352950000000000
        Width = 503.844501770000000000
        Height = 21.250591180000000000
        DataField = 'corf'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."corf"]')
        ParentFont = False
      end
      object ConteudoCompletocarctcorf: TfrxMemoView
        Left = 190.588235290000000000
        Top = 561.764705880000000000
        Width = 504.432737060000000000
        Height = 20.662355880000000000
        DataField = 'carctcorf'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."carctcorf"]')
        ParentFont = False
      end
      object ConteudoCompletoodorf: TfrxMemoView
        Left = 190.588235290000000000
        Top = 587.647058820000000000
        Width = 504.432737060000000000
        Height = 23.015297060000000000
        DataField = 'odorf'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."odorf"]')
        ParentFont = False
      end
      object ConteudoCompletotoxidadef: TfrxMemoView
        Left = 190.588235300000000000
        Top = 616.470588230000000000
        Width = 503.844501760000000000
        Height = 22.427061760000000000
        DataField = 'toxidadef'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."toxidadef"]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 14.545454550000000000
        Top = 652.727272730000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'B - Propriedades dimensionais')
        ParentFont = False
      end
      object Shape4: TfrxShapeView
        Left = 12.727272730000000000
        Top = 685.454545450000000000
        Width = 688.395721930000000000
        Height = 312.727272730000000000
      end
      object Line8: TfrxLineView
        Left = 12.727272730000000000
        Top = 713.636363640000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line9: TfrxLineView
        Left = 195.454545460000000000
        Top = 685.454545450000000000
        Height = 313.368983950000000000
        Color = clBlack
        Diagonal = True
      end
      object Line10: TfrxLineView
        Left = 364.545454550000000000
        Top = 685.454545450000000000
        Height = 311.550802130000000000
        Color = clBlack
        Diagonal = True
      end
      object Line11: TfrxLineView
        Left = 533.636363640000000000
        Top = 685.454545450000000000
        Height = 312.459893040000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo16: TfrxMemoView
        Left = 16.363636360000000000
        Top = 690.000000000000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 199.090909090000000000
        Top = 689.090909090000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Refer'#234'ncia')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 367.272727270000000000
        Top = 689.090909090000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#237'nimo')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 536.363636370000000000
        Top = 689.090909090000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#225'ximo')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 16.363636360000000000
        Top = 718.909090910000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Peso')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 16.363636360000000000
        Top = 748.090909090000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Altura Total')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 16.363636360000000000
        Top = 776.363636360000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Largura ombro')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 16.363636360000000000
        Top = 804.545454550000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Largura copo m'#233'dio')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 16.363636360000000000
        Top = 832.727272730000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Di'#226'metro da rosca')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 15.363636360000000000
        Top = 858.181818180000000000
        Width = 176.577540110000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Di'#226'metro exter. rosca')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 16.363636360000000000
        Top = 885.454545450000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Di'#226'metro exter. gargalo')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 16.363636360000000000
        Top = 912.727272730000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Di'#226'metro inter. gargalo')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 16.363636360000000000
        Top = 942.090909090000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Di'#226'metro da trava')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 16.363636360000000000
        Top = 971.454545450000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Volume')
        ParentFont = False
      end
      object Line12: TfrxLineView
        Left = 12.727272730000000000
        Top = 743.636363640000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line13: TfrxLineView
        Left = 13.636363640000000000
        Top = 773.636363640000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line14: TfrxLineView
        Left = 12.727272730000000000
        Top = 800.909090910000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line15: TfrxLineView
        Left = 12.727272730000000000
        Top = 829.090909090000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line16: TfrxLineView
        Left = 12.727272730000000000
        Top = 856.363636360000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line17: TfrxLineView
        Left = 13.636363640000000000
        Top = 882.727272730000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line18: TfrxLineView
        Left = 12.727272730000000000
        Top = 909.090909090000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line19: TfrxLineView
        Left = 12.727272730000000000
        Top = 937.272727270000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line20: TfrxLineView
        Left = 12.727272730000000000
        Top = 967.272727270000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object ConteudoCompletopesofref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 717.272727270000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataField = 'pesofref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesofref"]')
        ParentFont = False
      end
      object ConteudoCompletopesofmin: TfrxMemoView
        Left = 367.272727270000000000
        Top = 716.363636360000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataField = 'pesofmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesofmin"]')
        ParentFont = False
      end
      object ConteudoCompletopesofmax: TfrxMemoView
        Left = 536.363636360000000000
        Top = 716.363636360000000000
        Width = 163.042362730000000000
        Height = 23.443104550000000000
        DataField = 'pesofmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesofmax"]')
        ParentFont = False
      end
      object ConteudoCompletoalturafref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 747.272727270000000000
        Width = 163.951453640000000000
        Height = 22.534013640000000000
        DataField = 'alturafref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturafref"]')
        ParentFont = False
      end
      object ConteudoCompletoalturafmin: TfrxMemoView
        Left = 367.272727270000000000
        Top = 746.363636360000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataField = 'alturafmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturafmin"]')
        ParentFont = False
      end
      object ConteudoCompletoalturafmax: TfrxMemoView
        Left = 537.272727270000000000
        Top = 746.363636360000000000
        Width = 161.224180910000000000
        Height = 22.534013640000000000
        DataField = 'alturafmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturafmax"]')
        ParentFont = False
      end
      object ConteudoCompletolarguraombrofref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 775.454545450000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataField = 'larguraombrofref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrofref"]')
        ParentFont = False
      end
      object ConteudoCompletolarguraombrofmin: TfrxMemoView
        Left = 368.181818180000000000
        Top = 775.454545450000000000
        Width = 163.042362730000000000
        Height = 22.534013640000000000
        DataField = 'larguraombrofmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrofmin"]')
        ParentFont = False
      end
      object ConteudoCompletolarguraombrofmax: TfrxMemoView
        Left = 536.363636360000000000
        Top = 777.272727270000000000
        Width = 163.042362730000000000
        Height = 20.715831820000000000
        DataField = 'larguraombrofmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrofmax"]')
        ParentFont = False
      end
      object ConteudoCompletolarguracorpomediofref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 803.636363640000000000
        Width = 163.951453640000000000
        Height = 22.534013640000000000
        DataField = 'larguracorpomediofref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguracorpomediofref"]')
        ParentFont = False
      end
      object ConteudoCompletolarguracorpomediofmin: TfrxMemoView
        Left = 368.181818180000000000
        Top = 804.545454550000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataField = 'larguracorpomediofmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguracorpomediofmin"]')
        ParentFont = False
      end
      object ConteudoCompletolarguracorpomediofmax: TfrxMemoView
        Left = 537.272727270000000000
        Top = 803.636363640000000000
        Width = 161.224180900000000000
        Height = 23.443104550000000000
        DataField = 'larguracorpomediofmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguracorpomediofmax"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroroscafref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 832.727272730000000000
        Width = 163.951453640000000000
        Height = 20.715831820000000000
        DataField = 'diametroroscafref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroroscafref"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroroscafmin: TfrxMemoView
        Left = 367.272727270000000000
        Top = 830.909090910000000000
        Width = 163.951453640000000000
        Height = 22.534013640000000000
        DataField = 'diametroroscafmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroroscafmin"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroroscafmax: TfrxMemoView
        Left = 537.272727260000000000
        Top = 831.818181820000000000
        Width = 161.224180910000000000
        Height = 20.715831820000000000
        DataField = 'diametroroscafmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroroscafmax"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroextroscafref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 859.090909090000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataField = 'diametroextroscafref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroextroscafref"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroextroscafmin: TfrxMemoView
        Left = 367.272727270000000000
        Top = 859.909090910000000000
        Width = 163.951453640000000000
        Height = 18.897650000000000000
        DataField = 'diametroextroscafmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroextroscafmin"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroextroscafmax: TfrxMemoView
        Left = 537.272727270000000000
        Top = 859.090909090000000000
        Width = 161.224180910000000000
        Height = 20.715831820000000000
        DataField = 'diametroextroscafmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroextroscafmax"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroextgargfref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 886.363636360000000000
        Width = 163.951453640000000000
        Height = 18.897650000000000000
        DataField = 'diametroextgargfref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroextgargfref"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroextgargfmin: TfrxMemoView
        Left = 367.272727270000000000
        Top = 884.545454540000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataField = 'diametroextgargfmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroextgargfmin"]')
        ParentFont = False
      end
      object ConteudoCompletodiametroextgargfmax: TfrxMemoView
        Left = 537.272727270000000000
        Top = 885.454545450000000000
        Width = 161.224180910000000000
        Height = 19.806740910000000000
        DataField = 'diametroextgargfmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroextgargfmax"]')
        ParentFont = False
      end
      object ConteudoCompletodiametrointgargfref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 912.727272730000000000
        Width = 163.042362730000000000
        Height = 20.715831820000000000
        DataField = 'diametrointgargfref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrointgargfref"]')
        ParentFont = False
      end
      object ConteudoCompletodiametrointgargfmin: TfrxMemoView
        Left = 368.181818180000000000
        Top = 910.909090910000000000
        Width = 163.042362730000000000
        Height = 21.624922730000000000
        DataField = 'diametrointgargfmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrointgargfmin"]')
        ParentFont = False
      end
      object ConteudoCompletodiametrointgargfmax: TfrxMemoView
        Left = 537.272727270000000000
        Top = 912.727272730000000000
        Width = 160.315090000000000000
        Height = 19.806740910000000000
        DataField = 'diametrointgargfmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrointgargfmax"]')
        ParentFont = False
      end
      object ConteudoCompletodiametrotravafref: TfrxMemoView
        Left = 198.181818180000000000
        Top = 940.909090910000000000
        Width = 163.042362730000000000
        Height = 20.715831820000000000
        DataField = 'diametrotravafref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrotravafref"]')
        ParentFont = False
      end
      object ConteudoCompletodiametrotravafmin: TfrxMemoView
        Left = 369.090909090000000000
        Top = 940.909090910000000000
        Width = 161.224180910000000000
        Height = 21.624922730000000000
        DataField = 'diametrotravafmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrotravafmin"]')
        ParentFont = False
      end
      object ConteudoCompletodiametrotravafmax: TfrxMemoView
        Left = 536.363636360000000000
        Top = 940.909090910000000000
        Width = 161.224180910000000000
        Height = 21.624922730000000000
        DataField = 'diametrotravafmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrotravafmax"]')
        ParentFont = False
      end
      object ConteudoCompletovolumefref: TfrxMemoView
        Left = 199.090909090000000000
        Top = 970.909090900000000000
        Width = 163.042362730000000000
        Height = 23.443104550000000000
        DataField = 'volumefref'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."volumefref"]')
        ParentFont = False
      end
      object ConteudoCompletovolumefmin: TfrxMemoView
        Left = 369.090909090000000000
        Top = 970.000000000000000000
        Width = 162.133271820000000000
        Height = 22.534013640000000000
        DataField = 'volumefmin'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."volumefmin"]')
        ParentFont = False
      end
      object ConteudoCompletovolumefmax: TfrxMemoView
        Left = 537.272727270000000000
        Top = 970.000000000000000000
        Width = 159.405999090000000000
        Height = 23.443104550000000000
        DataField = 'volumefmax'
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."volumefmax"]')
        ParentFont = False
      end
      object Line55: TfrxLineView
        Left = 40.000000000000000000
        Top = 319.090909090000000000
        Width = 638.770053480000000000
        Height = 0.374331550000000000
        Color = clBlack
        Diagonal = True
      end
      object Line56: TfrxLineView
        Left = 40.000000000000000000
        Top = 346.363636360000000000
        Width = 639.679144390000000000
        Height = 0.374331550000000000
        Color = clBlack
        Diagonal = True
      end
      object Line57: TfrxLineView
        Left = 40.000000000000000000
        Top = 373.636363640000000000
        Width = 639.679144390000000000
        Height = 0.374331550000000000
        Color = clBlack
        Diagonal = True
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo30: TfrxMemoView
        Left = 16.524064180000000000
        Top = 2.727272730000000000
        Width = 81.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '2.  Tampa')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 16.524064170000000000
        Top = 30.374331560000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'A - Composi'#231#227'o e Caracter'#237'sticas organol'#233'pticas')
        ParentFont = False
      end
      object Shape5: TfrxShapeView
        Left = 16.524064180000000000
        Top = 59.197860970000000000
        Width = 682.941176470000000000
        Height = 136.363636370000000000
      end
      object Line21: TfrxLineView
        Left = 190.053475940000000000
        Top = 58.609625680000000000
        Height = 137.005347590000000000
        Color = clBlack
        Diagonal = True
      end
      object Line22: TfrxLineView
        Left = 15.347593590000000000
        Top = 86.844919800000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo32: TfrxMemoView
        Left = 18.288770060000000000
        Top = 62.727272740000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 18.877005350000000000
        Top = 90.374331560000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Cor')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 18.465240640000000000
        Top = 116.844919800000000000
        Width = 170.677925730000000000
        Height = 20.909090910000000000
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
      object Memo35: TfrxMemoView
        Left = 19.465240650000000000
        Top = 143.315508040000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
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
      object Memo36: TfrxMemoView
        Left = 19.288770050000000000
        Top = 169.786096270000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Toxidade')
        ParentFont = False
      end
      object Line23: TfrxLineView
        Left = 17.112299470000000000
        Top = 114.491978620000000000
        Width = 682.941176470000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line24: TfrxLineView
        Left = 15.935828880000000000
        Top = 140.962566860000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line25: TfrxLineView
        Left = 16.524064170000000000
        Top = 167.433155090000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo37: TfrxMemoView
        Left = 192.406417120000000000
        Top = 60.962566860000000000
        Width = 504.432737060000000000
        Height = 23.603532350000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."materialt"]')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 192.994652410000000000
        Top = 90.374331570000000000
        Width = 503.844501770000000000
        Height = 21.250591180000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."cort"]')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 192.406417110000000000
        Top = 116.256684500000000000
        Width = 504.432737060000000000
        Height = 20.662355880000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."carctcort"]')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 192.406417110000000000
        Top = 142.139037440000000000
        Width = 504.432737060000000000
        Height = 23.015297060000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."odort"]')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 192.406417120000000000
        Top = 170.962566850000000000
        Width = 503.844501760000000000
        Height = 22.427061760000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."toxidadet"]')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 16.363636370000000000
        Top = 207.219251350000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'B - Propriedades dimensionais')
        ParentFont = False
      end
      object Shape6: TfrxShapeView
        Left = 14.545454550000000000
        Top = 239.946524070000000000
        Width = 688.395721930000000000
        Height = 199.090909100000000000
      end
      object Line26: TfrxLineView
        Left = 14.545454550000000000
        Top = 268.128342260000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line27: TfrxLineView
        Left = 197.272727280000000000
        Top = 239.946524070000000000
        Height = 198.823529400000000000
        Color = clBlack
        Diagonal = True
      end
      object Line28: TfrxLineView
        Left = 366.363636370000000000
        Top = 239.946524070000000000
        Height = 199.732620310000000000
        Color = clBlack
        Diagonal = True
      end
      object Line29: TfrxLineView
        Left = 535.454545459999900000
        Top = 239.946524070000000000
        Height = 198.823529400000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo43: TfrxMemoView
        Left = 18.181818180000000000
        Top = 244.491978620000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 200.909090910000000000
        Top = 243.582887710000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Refer'#234'ncia')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 369.090909090000000000
        Top = 243.582887710000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#237'nimo')
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 538.181818190000000000
        Top = 243.582887710000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#225'ximo')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 18.181818180000000000
        Top = 273.401069530000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Peso')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 18.181818180000000000
        Top = 302.582887710000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Altura Total')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 18.181818180000000000
        Top = 330.855614980000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Largura ombro')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 18.181818180000000000
        Top = 359.037433170000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Largura copo m'#233'dio')
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 18.181818180000000000
        Top = 387.219251350000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Di'#226'metro da rosca')
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 17.181818180000000000
        Top = 412.673796800000000000
        Width = 176.577540110000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Di'#226'metro exter. rosca')
        ParentFont = False
      end
      object Line30: TfrxLineView
        Left = 14.545454550000000000
        Top = 298.128342260000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line31: TfrxLineView
        Left = 15.454545460000000000
        Top = 328.128342260000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line32: TfrxLineView
        Left = 14.545454550000000000
        Top = 355.401069530000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line33: TfrxLineView
        Left = 14.545454550000000000
        Top = 383.582887710000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line34: TfrxLineView
        Left = 14.545454550000000000
        Top = 410.855614980000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo57: TfrxMemoView
        Left = 200.000000000000000000
        Top = 271.764705890000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesotref"]')
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 369.090909090000000000
        Top = 270.855614980000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesotmin"]')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 538.181818180000100000
        Top = 270.855614980000000000
        Width = 163.042362730000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesotmax"]')
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Left = 200.000000000000000000
        Top = 301.764705890000000000
        Width = 163.951453640000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturatref"]')
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Left = 369.090909090000000000
        Top = 300.855614980000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturatmin"]')
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Left = 539.090909090000000000
        Top = 300.855614980000000000
        Width = 161.224180910000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturatmax"]')
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Left = 200.000000000000000000
        Top = 329.946524070000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrotref"]')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Left = 370.000000000000000000
        Top = 329.946524070000000000
        Width = 163.042362730000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrotmin"]')
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        Left = 538.181818180000100000
        Top = 331.764705890000000000
        Width = 163.042362730000000000
        Height = 20.715831820000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrotmax"]')
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Left = 200.000000000000000000
        Top = 358.128342260000000000
        Width = 163.951453640000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguracorpomediotref"]')
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Left = 370.000000000000000000
        Top = 359.037433170000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguracorpomediotmin"]')
        ParentFont = False
      end
      object Memo68: TfrxMemoView
        Left = 539.090909090000000000
        Top = 358.128342260000000000
        Width = 161.224180900000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguracorpomediotmax"]')
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Left = 200.000000000000000000
        Top = 387.219251350000000000
        Width = 163.951453640000000000
        Height = 20.715831820000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrotref"]')
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 369.090909090000000000
        Top = 385.401069530000000000
        Width = 163.951453640000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrotmin"]')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 539.090909079999900000
        Top = 386.310160440000000000
        Width = 161.224180910000000000
        Height = 20.715831820000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametrotmax"]')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 200.000000000000000000
        Top = 413.582887710000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroroscatref"]')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 369.090909090000000000
        Top = 414.401069530000000000
        Width = 163.951453640000000000
        Height = 18.897650000000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroroscatmin"]')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Left = 539.090909090000000000
        Top = 413.582887710000000000
        Width = 161.224180910000000000
        Height = 20.715831820000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."diametroroscatmax"]')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 15.614973270000000000
        Top = 453.636363640000000000
        Width = 91.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '3.  Batoque')
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 15.614973260000000000
        Top = 481.283422470000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'A - Composi'#231#227'o e Caracter'#237'sticas organol'#233'pticas')
        ParentFont = False
      end
      object Shape7: TfrxShapeView
        Left = 15.614973270000000000
        Top = 510.106951880000000000
        Width = 682.941176470000000000
        Height = 136.363636370000000000
      end
      object Line35: TfrxLineView
        Left = 189.144385030000000000
        Top = 509.518716590000000000
        Height = 137.005347590000000000
        Color = clBlack
        Diagonal = True
      end
      object Line36: TfrxLineView
        Left = 14.438502680000000000
        Top = 537.754010710000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo55: TfrxMemoView
        Left = 17.379679150000000000
        Top = 513.636363650000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 17.967914440000000000
        Top = 541.283422470000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Cor')
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        Left = 17.556149730000000000
        Top = 567.754010710000000000
        Width = 170.677925730000000000
        Height = 20.909090910000000000
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
      object Memo76: TfrxMemoView
        Left = 18.556149740000000000
        Top = 594.224598950000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
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
      object Memo77: TfrxMemoView
        Left = 18.379679140000000000
        Top = 620.695187180000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Toxidade')
        ParentFont = False
      end
      object Line37: TfrxLineView
        Left = 16.203208560000000000
        Top = 565.401069530000000000
        Width = 682.941176470000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line38: TfrxLineView
        Left = 15.026737970000000000
        Top = 591.871657770000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line39: TfrxLineView
        Left = 15.614973260000000000
        Top = 618.342246000000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo78: TfrxMemoView
        Left = 191.497326210000000000
        Top = 511.871657770000000000
        Width = 504.432737060000000000
        Height = 23.603532350000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."materialb"]')
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        Left = 192.085561500000000000
        Top = 541.283422480000000000
        Width = 503.844501770000000000
        Height = 21.250591180000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."corb"]')
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        Left = 191.497326200000000000
        Top = 567.165775410000100000
        Width = 504.432737060000000000
        Height = 20.662355880000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."carctcorb"]')
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        Left = 191.497326200000000000
        Top = 593.048128350000000000
        Width = 504.432737060000000000
        Height = 23.015297060000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."odorb"]')
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        Left = 191.497326210000000000
        Top = 621.871657760000000000
        Width = 503.844501760000000000
        Height = 22.427061760000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."toxidadeb"]')
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        Left = 15.454545460000000000
        Top = 658.128342260000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'B - Propriedades dimensionais')
        ParentFont = False
      end
      object Shape8: TfrxShapeView
        Left = 13.636363640000000000
        Top = 690.855614980000000000
        Width = 688.395721930000000000
        Height = 118.181818190000000000
      end
      object Line40: TfrxLineView
        Left = 13.636363640000000000
        Top = 719.037433170000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line41: TfrxLineView
        Left = 196.363636370000000000
        Top = 690.855614980000000000
        Height = 118.823529400000000000
        Color = clBlack
        Diagonal = True
      end
      object Line42: TfrxLineView
        Left = 365.454545460000000000
        Top = 690.855614980000000000
        Height = 118.823529400000000000
        Color = clBlack
        Diagonal = True
      end
      object Line43: TfrxLineView
        Left = 534.545454550000100000
        Top = 690.855614980000000000
        Height = 118.823529400000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo84: TfrxMemoView
        Left = 17.272727270000000000
        Top = 695.401069530000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        Left = 200.000000000000000000
        Top = 694.491978620000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Refer'#234'ncia')
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        Left = 368.181818180000000000
        Top = 694.491978620000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#237'nimo')
        ParentFont = False
      end
      object Memo87: TfrxMemoView
        Left = 537.272727280000000000
        Top = 694.491978620000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#225'ximo')
        ParentFont = False
      end
      object Memo88: TfrxMemoView
        Left = 17.272727270000000000
        Top = 724.310160440000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Peso')
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        Left = 17.272727270000000000
        Top = 753.491978620000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Altura Total')
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        Left = 17.272727270000000000
        Top = 781.764705890000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Largura ombro')
        ParentFont = False
      end
      object Line44: TfrxLineView
        Left = 13.636363640000000000
        Top = 749.037433170000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line45: TfrxLineView
        Left = 14.545454550000000000
        Top = 779.037433170000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo94: TfrxMemoView
        Left = 199.090909090000000000
        Top = 722.673796800000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesobref"]')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        Left = 368.181818180000000000
        Top = 721.764705890000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesobmin"]')
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        Left = 537.272727270000000000
        Top = 721.764705890000000000
        Width = 163.042362730000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesobmax"]')
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        Left = 199.090909090000000000
        Top = 752.673796800000000000
        Width = 163.951453640000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturabref"]')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        Left = 368.181818180000000000
        Top = 751.764705890000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturabmin"]')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        Left = 538.181818180000100000
        Top = 751.764705890000000000
        Width = 161.224180910000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."alturabmax"]')
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        Left = 199.090909090000000000
        Top = 780.855614980000000000
        Width = 163.951453640000000000
        Height = 21.624922730000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrobref"]')
        ParentFont = False
      end
      object Memo101: TfrxMemoView
        Left = 369.090909090000000000
        Top = 780.855614980000000000
        Width = 163.042362730000000000
        Height = 22.534013640000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrobmin"]')
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        Left = 537.272727270000000000
        Top = 782.673796800000000000
        Width = 163.042362730000000000
        Height = 20.715831820000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."larguraombrobmax"]')
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        Left = 12.994652410000000000
        Top = 823.636363640000000000
        Width = 91.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '4.  Cartucho')
        ParentFont = False
      end
      object Memo92: TfrxMemoView
        Left = 12.994652400000000000
        Top = 851.283422470000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'A - Composi'#231#227'o e Caracter'#237'sticas organol'#233'pticas')
        ParentFont = False
      end
      object Shape9: TfrxShapeView
        Left = 12.994652410000000000
        Top = 880.106951880000000000
        Width = 682.941176470000000000
        Height = 136.363636370000000000
      end
      object Line46: TfrxLineView
        Left = 186.524064170000000000
        Top = 879.518716590000000000
        Height = 137.005347590000000000
        Color = clBlack
        Diagonal = True
      end
      object Line47: TfrxLineView
        Left = 11.818181820000000000
        Top = 907.754010710000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo93: TfrxMemoView
        Left = 14.759358290000000000
        Top = 883.636363650000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        Left = 15.347593580000000000
        Top = 911.283422470000000000
        Width = 167.486631020000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Cor')
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        Left = 14.935828870000000000
        Top = 937.754010710000000000
        Width = 170.677925730000000000
        Height = 20.909090910000000000
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
      object Memo105: TfrxMemoView
        Left = 15.935828880000000000
        Top = 964.224598950000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
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
      object Memo106: TfrxMemoView
        Left = 15.759358280000000000
        Top = 990.695187180000000000
        Width = 166.898395730000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Toxidade')
        ParentFont = False
      end
      object Line48: TfrxLineView
        Left = 13.582887700000000000
        Top = 935.401069530000000000
        Width = 682.941176470000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line49: TfrxLineView
        Left = 12.406417110000000000
        Top = 961.871657770000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line50: TfrxLineView
        Left = 12.994652400000000000
        Top = 988.342246000000000000
        Width = 684.705882350000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo107: TfrxMemoView
        Left = 188.877005350000000000
        Top = 881.871657770000000000
        Width = 504.432737060000000000
        Height = 23.603532350000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."materialc"]')
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        Left = 189.465240640000000000
        Top = 911.283422480000000000
        Width = 503.844501770000000000
        Height = 21.250591180000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."corc"]')
        ParentFont = False
      end
      object Memo109: TfrxMemoView
        Left = 188.877005340000000000
        Top = 937.165775410000000000
        Width = 504.432737060000000000
        Height = 20.662355880000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."carctcorc"]')
        ParentFont = False
      end
      object Memo110: TfrxMemoView
        Left = 188.877005340000000000
        Top = 963.048128350000000000
        Width = 504.432737060000000000
        Height = 23.015297060000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."odorc"]')
        ParentFont = False
      end
      object Memo111: TfrxMemoView
        Left = 188.877005350000000000
        Top = 991.871657760000000000
        Width = 503.844501760000000000
        Height = 22.427061760000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."toxidadec"]')
        ParentFont = False
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo112: TfrxMemoView
        Left = 16.363636370000000000
        Top = 8.181818180000000000
        Width = 361.176470590000000000
        Height = 22.352941180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Memo.UTF8W = (
          'B - Propriedades dimensionais')
        ParentFont = False
      end
      object Shape10: TfrxShapeView
        Left = 15.454545460000000000
        Top = 40.909090900000000000
        Width = 688.395721930000000000
        Height = 61.818181830000000000
      end
      object Line51: TfrxLineView
        Left = 14.545454550000000000
        Top = 69.090909090000000000
        Width = 689.251336900000000000
        Height = 0.053475930000000000
        Color = clBlack
        Diagonal = True
      end
      object Line52: TfrxLineView
        Left = 197.272727280000000000
        Top = 40.909090900000000000
        Height = 60.641711220000000000
        Color = clBlack
        Diagonal = True
      end
      object Line53: TfrxLineView
        Left = 366.363636370000000000
        Top = 40.909090900000000000
        Height = 62.459893040000000000
        Color = clBlack
        Diagonal = True
      end
      object Line54: TfrxLineView
        Left = 535.454545459999900000
        Top = 40.909090900000000000
        Height = 62.459893040000000000
        Color = clBlack
        Diagonal = True
      end
      object Memo113: TfrxMemoView
        Left = 18.181818180000000000
        Top = 45.454545450000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Material')
        ParentFont = False
      end
      object Memo114: TfrxMemoView
        Left = 200.909090910000000000
        Top = 44.545454540000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'Refer'#234'ncia')
        ParentFont = False
      end
      object Memo115: TfrxMemoView
        Left = 369.090909090000000000
        Top = 44.545454540000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#237'nimo')
        ParentFont = False
      end
      object Memo116: TfrxMemoView
        Left = 538.181818189999900000
        Top = 44.545454540000000000
        Width = 162.941176470000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'M'#225'ximo')
        ParentFont = False
      end
      object Memo117: TfrxMemoView
        Left = 18.181818180000000000
        Top = 74.363636360000000000
        Width = 174.759358290000000000
        Height = 20.909090910000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Peso')
        ParentFont = False
      end
      object Memo118: TfrxMemoView
        Left = 200.000000000000000000
        Top = 72.727272720000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesobref"]')
        ParentFont = False
      end
      object Memo119: TfrxMemoView
        Left = 369.090909090000000000
        Top = 71.818181810000000000
        Width = 163.951453640000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesobmin"]')
        ParentFont = False
      end
      object Memo120: TfrxMemoView
        Left = 538.181818180000100000
        Top = 71.818181810000000000
        Width = 163.042362730000000000
        Height = 23.443104550000000000
        DataSet = F_EspEmbGrid.dbConteudoCompleto
        DataSetName = 'ConteudoCompleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ConteudoCompleto."pesobmax"]')
        ParentFont = False
      end
      object Memo121: TfrxMemoView
        Left = 15.454545460000000000
        Top = 150.909090910000000000
        Width = 688.181818180000000000
        Height = 58.181818180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haBlock
        Memo.UTF8W = (
          
            'PEBD: Polietileno de Baixa Densidade - O PEBD '#233' um pol'#237'mero util' +
            'izado na fabrica'#231#227'o de filmes, sacolas pl'#225'sticas, embalagens, re' +
            'cipientes para qualquer atividade mercadol'#243'gica como industrias ' +
            'qu'#237'micas, aliment'#237'cias e farmac'#234'uticas entre outras.')
        ParentFont = False
      end
    end
  end
end
