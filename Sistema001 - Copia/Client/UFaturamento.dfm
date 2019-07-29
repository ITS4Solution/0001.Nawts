inherited F_Faturamento: TF_Faturamento
  Caption = 'Faturamento'
  ClientHeight = 681
  ClientWidth = 574
  OnShow = FormShow
  ExplicitTop = -94
  ExplicitWidth = 590
  ExplicitHeight = 719
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 384
    Top = 416
    Width = 23
    Height = 22
  end
  inherited StatusBar1: TStatusBar
    Top = 662
    Width = 574
    ExplicitTop = 662
    ExplicitWidth = 574
  end
  inherited Panel1: TPanel
    Top = 607
    Width = 574
    ExplicitTop = 607
    ExplicitWidth = 574
    inherited btnNovo: TAdvGlassButton
      Left = 177
      Top = 46
      Visible = False
      ExplicitLeft = 177
      ExplicitTop = 46
    end
    inherited btnEditar: TAdvGlassButton
      Left = 20
      ExplicitLeft = 20
    end
    inherited btnDeletar: TAdvGlassButton
      Left = 283
      Top = 45
      Visible = False
      ExplicitLeft = 283
      ExplicitTop = 45
    end
    inherited btnSalvar: TAdvGlassButton
      Left = 125
      ExplicitLeft = 125
    end
    inherited btnsair: TAdvGlassButton
      Left = 468
      ExplicitLeft = 468
    end
    object btnOnCheckAll: TAdvGlassButton
      Left = 231
      Top = 13
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'On Check All'
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
      Version = '1.3.0.0'
      OnClick = btnOnCheckAllClick
    end
  end
  object TabbedNotebook1: TTabbedNotebook [3]
    Left = 0
    Top = 41
    Width = 574
    Height = 566
    Align = alClient
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    TabOrder = 2
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Averba'#231#227'o'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 151
          Top = 19
          Width = 32
          Height = 13
          Caption = 'Motivo'
          FocusControl = edtMotivoAVerbacao
        end
        object Bevel3: TBevel
          Left = 5
          Top = 51
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object chkFatAverbacao: TcxDBCheckBox
          Left = 15
          Top = 15
          Caption = 'Fatura Averba'#231#227'o ?'
          DataBinding.DataField = 'fat_averbacao'
          DataBinding.DataSource = oDS
          TabOrder = 0
          OnClick = chkFatAverbacaoClick
          Width = 121
        end
        object edtMotivoAVerbacao: TcxDBTextEdit
          Left = 185
          Top = 16
          DataBinding.DataField = 'fat_aver_motivo'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 345
        end
        object cxGroupBox1: TcxGroupBox
          Left = 5
          Top = 181
          TabOrder = 4
          Height = 73
          Width = 283
          object lblCaptionCorrSegur: TLabel
            Left = 50
            Top = 40
            Width = 51
            Height = 13
            Caption = 'Valor Total'
            FocusControl = cxDBCalcEdit1
          end
          object cxDBCalcEdit1: TcxDBCalcEdit
            Left = 104
            Top = 37
            DataBinding.DataField = 'fat_aver_vlrpordocumentototal'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCheckBox10: TcxDBCheckBox
            Left = 11
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_aver_vlrpordocumentototalup'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 292
          Top = 108
          TabOrder = 5
          Height = 73
          Width = 256
          object Label6: TLabel
            Left = 36
            Top = 44
            Width = 43
            Height = 13
            Caption = 'Paga por'
          end
          object cxDBCheckBox5: TcxDBCheckBox
            Left = 11
            Top = 12
            Caption = 'Usa padr'#227'o'
            DataBinding.DataField = 'fat_aver_pagaporup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBComboBox2: TcxDBComboBox
            Left = 84
            Top = 39
            DataBinding.DataField = 'fat_aver_pagapor'
            DataBinding.DataSource = oDS
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'Caixa Postal'
              'Documentos'
              'O que for menor')
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 5
          Top = 108
          TabOrder = 6
          Height = 73
          Width = 283
          object Label7: TLabel
            Left = 11
            Top = 46
            Width = 90
            Height = 13
            Caption = 'Dia de fechamento'
            FocusControl = cxDBSpinEdit1
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 104
            Top = 43
            DataBinding.DataField = 'fat_aver_diafechamento'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 59
          end
          object cxDBCheckBox31: TcxDBCheckBox
            Left = 10
            Top = 17
            Caption = 'Usa padr'#227'o'
            DataBinding.DataField = 'fat_aver_diafechamentoup'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 5
          Top = 254
          TabOrder = 8
          Height = 73
          Width = 283
          object Label8: TLabel
            Left = 8
            Top = 46
            Width = 84
            Height = 13
            Caption = 'Emite boleto para'
            FocusControl = cxDBSpinEdit2
          end
          object Label10: TLabel
            Left = 157
            Top = 46
            Width = 122
            Height = 13
            Caption = 'dia(s) ap'#243's o fechamento'
            FocusControl = cxDBSpinEdit2
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 95
            Top = 43
            DataBinding.DataField = 'fat_aver_emiteboletodias'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 59
          end
          object cxDBCheckBox9: TcxDBCheckBox
            Left = 11
            Top = 16
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_aver_emiteboletodiasup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 292
          Top = 181
          TabOrder = 7
          Height = 73
          Width = 256
          object Label5: TLabel
            Left = 21
            Top = 40
            Width = 58
            Height = 13
            Caption = 'Valor Parcial'
            FocusControl = cxDBCalcEdit7
          end
          object cxDBCalcEdit7: TcxDBCalcEdit
            Left = 84
            Top = 37
            DataBinding.DataField = 'fat_aver_vlrpordocumentoparcial'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 13
            Top = 13
            Caption = 'Usa padr'#227'o'
            DataBinding.DataField = 'fat_aver_vlrpordocumentoparcialup'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object GroupBox2: TGroupBox
          Left = 292
          Top = 60
          Width = 256
          Height = 48
          TabOrder = 2
          object cxDBCheckBox6: TcxDBCheckBox
            Left = 11
            Top = 13
            Caption = 'Emite boleto ?'
            DataBinding.DataField = 'fat_aver_emiteboleto'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
        object cxGroupBox16: TcxGroupBox
          Left = 5
          Top = 54
          TabOrder = 3
          Height = 54
          Width = 283
          object cxDBCheckBox7: TcxDBCheckBox
            Left = 10
            Top = 19
            Caption = 'Emite NFSe ?'
            DataBinding.DataField = 'fat_aver_emitenfse'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
        object GroupBox7: TGroupBox
          Left = 5
          Top = 328
          Width = 283
          Height = 176
          Caption = ' Faixa de valores por caixa postal '
          TabOrder = 9
          object cxGrid1: TcxGrid
            Left = 2
            Top = 15
            Width = 279
            Height = 159
            Align = alClient
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Enabled = False
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Enabled = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Enabled = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Hint = 'Novo'
              Navigator.Buttons.Append.Visible = True
              Navigator.Buttons.Delete.Hint = 'Deletar'
              Navigator.Buttons.Edit.Hint = 'Editar'
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Enabled = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Hint = 'Cancelar'
              Navigator.Buttons.Refresh.Enabled = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Enabled = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Enabled = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Enabled = False
              Navigator.Buttons.Filter.Visible = False
              DataController.DataSource = dsFaixaAverba
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1InicioFaixa: TcxGridDBColumn
                DataBinding.FieldName = 'InicioFaixa'
              end
              object cxGrid1DBTableView1FimFaixa: TcxGridDBColumn
                DataBinding.FieldName = 'FimFaixa'
              end
              object cxGrid1DBTableView1Valor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
        object cxGroupBox21: TcxGroupBox
          Left = 292
          Top = 254
          TabOrder = 10
          Height = 73
          Width = 256
          object Label22: TLabel
            Left = 25
            Top = 46
            Width = 57
            Height = 13
            Caption = 'Tipo default'
          end
          object cxDBComboBox1: TcxDBComboBox
            Left = 88
            Top = 43
            DataBinding.DataField = 'fat_aver_tp_pgto_defalt'
            DataBinding.DataSource = oDS
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'Total'
              'Parcial')
            TabOrder = 0
            Width = 121
          end
        end
        object cxGroupBox22: TcxGroupBox
          Left = 292
          Top = 327
          TabOrder = 11
          Height = 176
          Width = 256
          object Panel10: TPanel
            Left = 2
            Top = 136
            Width = 252
            Height = 38
            Align = alBottom
            TabOrder = 0
            DesignSize = (
              252
              38)
            object AdvGlassButton1: TAdvGlassButton
              Left = 163
              Top = 6
              Width = 85
              Height = 27
              Anchors = [akRight, akBottom]
              BackColor = 6052956
              Caption = 'Inserir Exce'#231#227'o'
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
              TabOrder = 0
              Version = '1.3.0.0'
              OnClick = AdvGlassButton1Click
            end
          end
          object cxGrid4: TcxGrid
            Left = 2
            Top = 5
            Width = 252
            Height = 131
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Enabled = False
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Enabled = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Enabled = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Hint = 'Novo'
              Navigator.Buttons.Append.Visible = True
              Navigator.Buttons.Delete.Hint = 'Deletar'
              Navigator.Buttons.Edit.Hint = 'Editar'
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Enabled = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Hint = 'Cancelar'
              Navigator.Buttons.Refresh.Enabled = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Enabled = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Enabled = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Enabled = False
              Navigator.Buttons.Filter.Visible = False
              DataController.DataSource = dsRelations_ex
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView3rex_terminalp: TcxGridDBColumn
                DataBinding.FieldName = 'rex_terminalp'
              end
              object cxGridDBTableView3rex_terminals: TcxGridDBColumn
                DataBinding.FieldName = 'rex_terminals'
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Empresarial'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 151
          Top = 19
          Width = 32
          Height = 13
          Caption = 'Motivo'
          FocusControl = cxDBTextEdit1
        end
        object Bevel1: TBevel
          Left = 5
          Top = 51
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 16
          Top = 15
          Caption = 'Fatura Empresarial ?'
          DataBinding.DataField = 'fat_empresarial'
          DataBinding.DataSource = oDS
          TabOrder = 0
          OnClick = chkFatAverbacaoClick
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 185
          Top = 16
          DataBinding.DataField = 'fat_aver_motivo'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 342
        end
        object cxGroupBox6: TcxGroupBox
          Left = 5
          Top = 108
          TabOrder = 4
          Height = 73
          Width = 251
          object Label11: TLabel
            Left = 11
            Top = 44
            Width = 24
            Height = 13
            Caption = 'Paga'
          end
          object cxDBCheckBox11: TcxDBCheckBox
            Left = 10
            Top = 12
            Caption = 'Usa padr'#227'o'
            DataBinding.DataField = 'fat_emp_pagaup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBComboBox3: TcxDBComboBox
            Left = 41
            Top = 41
            DataBinding.DataField = 'fat_emp_paga'
            DataBinding.DataSource = oDS
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'Parcial'
              'Integral')
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox7: TcxGroupBox
          Left = 5
          Top = 182
          TabOrder = 6
          Height = 73
          Width = 251
          object Label12: TLabel
            Left = 11
            Top = 46
            Width = 90
            Height = 13
            Caption = 'Dia de fechamento'
            FocusControl = cxDBSpinEdit3
          end
          object cxDBCheckBox12: TcxDBCheckBox
            Left = 10
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_emp_diafechamentoup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBSpinEdit3: TcxDBSpinEdit
            Left = 104
            Top = 43
            DataBinding.DataField = 'fat_emp_diafechamento'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 59
          end
        end
        object cxGroupBox8: TcxGroupBox
          Left = 261
          Top = 257
          TabOrder = 9
          Height = 75
          Width = 273
          object Label13: TLabel
            Left = 8
            Top = 46
            Width = 84
            Height = 13
            Caption = 'Emite boleto para'
            FocusControl = cxDBSpinEdit4
          end
          object Label14: TLabel
            Left = 146
            Top = 46
            Width = 122
            Height = 13
            Caption = 'dia(s) ap'#243's o fechamento'
            FocusControl = cxDBSpinEdit4
          end
          object cxDBSpinEdit4: TcxDBSpinEdit
            Left = 95
            Top = 43
            DataBinding.DataField = 'fat_emp_emiteboletodias'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 47
          end
          object cxDBCheckBox13: TcxDBCheckBox
            Left = 9
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_emp_emiteboletodiasup'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox9: TcxGroupBox
          Left = 261
          Top = 182
          TabOrder = 7
          Height = 73
          Width = 273
          object Label15: TLabel
            Left = 10
            Top = 46
            Width = 109
            Height = 13
            Caption = 'Valor da caixa principal'
          end
          object cxDBCheckBox16: TcxDBCheckBox
            Left = 9
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_emp_vlrcaixaprincipalup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCalcEdit2: TcxDBCalcEdit
            Left = 122
            Top = 43
            DataBinding.DataField = 'fat_emp_vlrcaixaprincipal'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox10: TcxGroupBox
          Left = 5
          Top = 257
          TabOrder = 8
          Height = 73
          Width = 251
          object Label16: TLabel
            Left = 8
            Top = 46
            Width = 111
            Height = 13
            Caption = 'Valor da caixa adicional'
          end
          object cxDBCheckBox17: TcxDBCheckBox
            Left = 9
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_emp_vlrcaixaprincipalup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCalcEdit3: TcxDBCalcEdit
            Left = 122
            Top = 43
            DataBinding.DataField = 'fat_emp_vlrcaixaprincipal'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox11: TcxGroupBox
          Left = 261
          Top = 108
          TabOrder = 5
          Height = 73
          Width = 273
          object Label17: TLabel
            Left = 11
            Top = 44
            Width = 48
            Height = 13
            Caption = 'Cobra por'
          end
          object cxDBCheckBox18: TcxDBCheckBox
            Left = 10
            Top = 12
            Caption = 'Usa padr'#227'o'
            DataBinding.DataField = 'fat_emp_cobraporup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBComboBox4: TcxDBComboBox
            Left = 62
            Top = 41
            DataBinding.DataField = 'fat_emp_cobrapor'
            DataBinding.DataSource = oDS
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'Caixa'
              'Faixa')
            TabOrder = 1
            Width = 121
          end
        end
        object GroupBox1: TGroupBox
          Left = 5
          Top = 333
          Width = 324
          Height = 176
          Caption = ' Faixa de valores por caixa postal '
          TabOrder = 10
          object cxGrid2: TcxGrid
            Left = 2
            Top = 15
            Width = 320
            Height = 159
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Enabled = False
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Enabled = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Enabled = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Hint = 'Novo'
              Navigator.Buttons.Append.Visible = True
              Navigator.Buttons.Delete.Hint = 'Deletar'
              Navigator.Buttons.Edit.Hint = 'Editar'
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Enabled = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Hint = 'Cancelar'
              Navigator.Buttons.Refresh.Enabled = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Enabled = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Enabled = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Enabled = False
              Navigator.Buttons.Filter.Visible = False
              DataController.DataSource = dsFaixaEmp
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1InicioFaixa: TcxGridDBColumn
                DataBinding.FieldName = 'InicioFaixa'
              end
              object cxGridDBTableView1FimFaixa: TcxGridDBColumn
                DataBinding.FieldName = 'FimFaixa'
              end
              object cxGridDBTableView1Valor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object GroupBox3: TGroupBox
          Left = 284
          Top = 60
          Width = 251
          Height = 48
          TabOrder = 2
          object cxDBCheckBox25: TcxDBCheckBox
            Left = 11
            Top = 13
            Caption = 'Emite boleto ?'
            DataBinding.DataField = 'fat_emp_emiteboleto'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
        object cxGroupBox17: TcxGroupBox
          Left = 5
          Top = 55
          TabOrder = 3
          Height = 54
          Width = 273
          object cxDBCheckBox15: TcxDBCheckBox
            Left = 10
            Top = 19
            Caption = 'Emite NFSe ?'
            DataBinding.DataField = 'fat_emp_emitenfse'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'EDI'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          Left = 153
          Top = 19
          Width = 32
          Height = 13
          Caption = 'Motivo'
          FocusControl = edtMotivoAVerbacao
        end
        object Bevel2: TBevel
          Left = 5
          Top = 51
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 16
          Top = 15
          Caption = 'Fatura EDI ?'
          DataBinding.DataField = 'fat_edi'
          DataBinding.DataSource = oDS
          TabOrder = 0
          OnClick = chkFatAverbacaoClick
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 189
          Top = 16
          DataBinding.DataField = 'fat_edi_motivo'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 336
        end
        object cxGroupBox12: TcxGroupBox
          Left = 5
          Top = 183
          TabOrder = 6
          Height = 73
          Width = 260
          object Label18: TLabel
            Left = 10
            Top = 46
            Width = 99
            Height = 13
            Caption = 'Valor da caixa postal'
          end
          object cxDBCheckBox21: TcxDBCheckBox
            Left = 9
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_edi_vlrcxpostalup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCalcEdit4: TcxDBCalcEdit
            Left = 112
            Top = 43
            DataBinding.DataField = 'fat_edi_vlrcxpostal'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox13: TcxGroupBox
          Left = 5
          Top = 109
          TabOrder = 4
          Height = 73
          Width = 260
          object Label19: TLabel
            Left = 11
            Top = 46
            Width = 90
            Height = 13
            Caption = 'Dia de fechamento'
            FocusControl = cxDBSpinEdit5
          end
          object cxDBCheckBox22: TcxDBCheckBox
            Left = 10
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_edi_diafechamentoup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBSpinEdit5: TcxDBSpinEdit
            Left = 104
            Top = 43
            DataBinding.DataField = 'fat_edi_diafechamento'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 59
          end
        end
        object cxGroupBox14: TcxGroupBox
          Left = 271
          Top = 183
          TabOrder = 7
          Height = 73
          Width = 259
          object Label20: TLabel
            Left = 10
            Top = 46
            Width = 82
            Height = 13
            Caption = 'Valor kb adicional'
          end
          object cxDBCheckBox23: TcxDBCheckBox
            Left = 9
            Top = 13
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_edi_vlrkbadicionalup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCalcEdit5: TcxDBCalcEdit
            Left = 96
            Top = 43
            DataBinding.DataField = 'fat_edi_vlrkbadicional'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object cxGroupBox15: TcxGroupBox
          Left = 271
          Top = 109
          TabOrder = 5
          Height = 73
          Width = 258
          object Label21: TLabel
            Left = 10
            Top = 46
            Width = 42
            Height = 13
            Caption = 'Franquia'
          end
          object cxDBCheckBox24: TcxDBCheckBox
            Left = 9
            Top = 19
            Caption = 'Usar padr'#227'o'
            DataBinding.DataField = 'fat_edi_franquiaup'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCalcEdit6: TcxDBCalcEdit
            Left = 56
            Top = 43
            DataBinding.DataField = 'fat_edi_franquia'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
        end
        object GroupBox4: TGroupBox
          Left = 268
          Top = 60
          Width = 260
          Height = 48
          TabOrder = 2
          object cxDBCheckBox14: TcxDBCheckBox
            Left = 11
            Top = 13
            Caption = 'Emite boleto ?'
            DataBinding.DataField = 'fat_edi_emiteboleto'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
        object cxGroupBox18: TcxGroupBox
          Left = 5
          Top = 56
          TabOrder = 3
          Height = 54
          Width = 258
          object cxDBCheckBox26: TcxDBCheckBox
            Left = 10
            Top = 19
            Caption = 'Emite NFSe ?'
            DataBinding.DataField = 'fat_edi_emitenfse'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Outros Produtos'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label4: TLabel
          Left = 159
          Top = 19
          Width = 32
          Height = 13
          Caption = 'Motivo'
          FocusControl = edtMotivoAVerbacao
        end
        object Bevel4: TBevel
          Left = 5
          Top = 51
          Width = 524
          Height = 8
          Shape = bsTopLine
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 16
          Top = 15
          Caption = 'Fatura Outros ?'
          DataBinding.DataField = 'fat_outros'
          DataBinding.DataSource = oDS
          TabOrder = 0
          OnClick = chkFatAverbacaoClick
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 193
          Top = 16
          DataBinding.DataField = 'fat_outros_motivo'
          DataBinding.DataSource = oDS
          TabOrder = 1
          Width = 336
        end
        object GroupBox5: TGroupBox
          Left = 269
          Top = 62
          Width = 260
          Height = 48
          TabOrder = 2
          object cxDBCheckBox19: TcxDBCheckBox
            Left = 11
            Top = 13
            Caption = 'Emite boleto ?'
            DataBinding.DataField = 'fat_outros_emiteboleto'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
        object cxGroupBox19: TcxGroupBox
          Left = 5
          Top = 57
          TabOrder = 3
          Height = 54
          Width = 260
          object cxDBCheckBox20: TcxDBCheckBox
            Left = 23
            Top = 19
            Caption = 'Emite NFSe ?'
            DataBinding.DataField = 'fat_outros_emitenfse'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
        end
        object GroupBox6: TGroupBox
          Left = 5
          Top = 118
          Width = 525
          Height = 307
          TabOrder = 4
          object cxGrid3: TcxGrid
            Left = 2
            Top = 15
            Width = 521
            Height = 290
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Enabled = False
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Enabled = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Enabled = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Enabled = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Hint = 'Novo'
              Navigator.Buttons.Append.Visible = True
              Navigator.Buttons.Delete.Hint = 'Deletar'
              Navigator.Buttons.Edit.Hint = 'Editar'
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Enabled = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Hint = 'Cancelar'
              Navigator.Buttons.Refresh.Enabled = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Enabled = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Enabled = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Enabled = False
              Navigator.Buttons.Filter.Visible = False
              DataController.DataSource = dsFat_OutrosProdutos
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.Appending = True
              OptionsData.DeletingConfirmation = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView2Descricao: TcxGridDBColumn
                DataBinding.FieldName = 'Descricao'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'Descricao'
                Properties.ListColumns = <
                  item
                    FieldName = 'Descricao'
                  end>
                Properties.ListSource = dsFatParOutros
                Properties.OnChange = cxGridDBTableView2DescricaoPropertiesChange
                Width = 156
              end
              object cxGridDBTableView2TipoCobranca: TcxGridDBColumn
                DataBinding.FieldName = 'TipoCobranca'
                Options.Editing = False
                Width = 119
              end
              object cxGridDBTableView2PeriodoCobranca: TcxGridDBColumn
                DataBinding.FieldName = 'PeriodoCobranca'
                Options.Editing = False
                Width = 96
              end
              object cxGridDBTableView2Qtde: TcxGridDBColumn
                DataBinding.FieldName = 'Qtde'
                PropertiesClassName = 'TcxSpinEditProperties'
              end
              object cxGridDBTableView2Valor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
              end
              object cxGridDBTableView2ValorTotal: TcxGridDBColumn
                DataBinding.FieldName = 'ValorTotal'
                Options.Editing = False
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Geral'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object cxGroupBox20: TcxGroupBox
          Left = 17
          Top = 14
          Caption = ' Agrupar boleto e NFSe por '
          TabOrder = 0
          Height = 156
          Width = 249
          object cxDBCheckBox27: TcxDBCheckBox
            Left = 14
            Top = 30
            Caption = 'Averba'#231#227'o'
            DataBinding.DataField = 'fat_gerais_agr_averbacao'
            DataBinding.DataSource = oDS
            TabOrder = 0
            Width = 121
          end
          object cxDBCheckBox28: TcxDBCheckBox
            Left = 14
            Top = 57
            Caption = 'EDI'
            DataBinding.DataField = 'fat_gerais_agr_edi'
            DataBinding.DataSource = oDS
            TabOrder = 1
            Width = 121
          end
          object cxDBCheckBox29: TcxDBCheckBox
            Left = 14
            Top = 86
            Caption = 'Empresarial'
            DataBinding.DataField = 'fat_gerais_agr_empresarial'
            DataBinding.DataSource = oDS
            TabOrder = 2
            Width = 121
          end
          object cxDBCheckBox30: TcxDBCheckBox
            Left = 14
            Top = 116
            Caption = 'Outros'
            DataBinding.DataField = 'fat_gerais_agr_outros'
            DataBinding.DataSource = oDS
            TabOrder = 3
            Width = 121
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Email'#180's'
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Caption = 'Panel8'
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object cxGrid5: TcxGrid
          Left = 1
          Top = 1
          Width = 564
          Height = 536
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView4: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Enabled = False
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Enabled = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Enabled = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Enabled = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Hint = 'Novo'
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Delete.Hint = 'Deletar'
            Navigator.Buttons.Edit.Hint = 'Editar'
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Enabled = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Hint = 'Cancelar'
            Navigator.Buttons.Refresh.Enabled = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            DataController.DataSource = dsFat_emails
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView4emails: TcxGridDBColumn
              DataBinding.FieldName = 'emails'
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Fiscal'
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 538
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object PnlNome: TPanel [4]
    Left = 0
    Top = 0
    Width = 574
    Height = 41
    Align = alTop
    TabOrder = 3
    object lblCliente: TcxLabel
      Left = 12
      Top = 12
      Caption = 'Cliente: '
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspFaturamento'
    RemoteServer = DM.ShCoGen
    Top = 65528
    object oCdsid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
    end
    object oCdsfat_terminal: TWideStringField
      FieldName = 'fat_terminal'
      Size = 16
    end
    object oCdsfat_tipo_cliente: TWideStringField
      FieldName = 'fat_tipo_cliente'
      Size = 2
    end
    object oCdsfat_averbacao: TBooleanField
      FieldName = 'fat_averbacao'
    end
    object oCdsfat_aver_motivo: TWideStringField
      FieldName = 'fat_aver_motivo'
      Size = 200
    end
    object oCdsfat_aver_aagaup: TBooleanField
      FieldName = 'fat_aver_aagaup'
    end
    object oCdsfat_aver_paga: TWideStringField
      FieldName = 'fat_aver_paga'
    end
    object oCdsfat_aver_pagaporup: TBooleanField
      FieldName = 'fat_aver_pagaporup'
    end
    object oCdsfat_aver_pagapor: TWideStringField
      FieldName = 'fat_aver_pagapor'
      Size = 40
    end
    object oCdsfat_aver_diafechamentoup: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'fat_aver_diafechamentoup'
    end
    object oCdsfat_aver_emiteboletodiasup: TBooleanField
      FieldName = 'fat_aver_emiteboletodiasup'
    end
    object oCdsfat_aver_diafechamento: TIntegerField
      FieldName = 'fat_aver_diafechamento'
    end
    object oCdsfat_aver_emiteboletodias: TIntegerField
      FieldName = 'fat_aver_emiteboletodias'
    end
    object oCdsfat_aver_emiteboleto: TBooleanField
      FieldName = 'fat_aver_emiteboleto'
    end
    object oCdsfat_aver_emitenfse: TBooleanField
      FieldName = 'fat_aver_emitenfse'
    end
    object oCdsfat_aver_vlrpordocumentototalup: TBooleanField
      FieldName = 'fat_aver_vlrpordocumentototalup'
    end
    object oCdsfat_aver_vlrpordocumentototal: TFloatField
      FieldName = 'fat_aver_vlrpordocumentototal'
    end
    object oCdsfat_aver_vlrpordocumentoparcialup: TBooleanField
      FieldName = 'fat_aver_vlrpordocumentoparcialup'
    end
    object oCdsfat_aver_vlrpordocumentoparcial: TFloatField
      FieldName = 'fat_aver_vlrpordocumentoparcial'
    end
    object oCdsfat_empresarial: TBooleanField
      FieldName = 'fat_empresarial'
    end
    object oCdsfat_emp_motivo: TWideStringField
      FieldName = 'fat_emp_motivo'
      Size = 200
    end
    object oCdsfat_emp_pagaup: TBooleanField
      FieldName = 'fat_emp_pagaup'
    end
    object oCdsfat_emp_paga: TWideStringField
      FieldName = 'fat_emp_paga'
    end
    object oCdsfat_emp_diafechamentoup: TBooleanField
      FieldName = 'fat_emp_diafechamentoup'
    end
    object oCdsfat_emp_diafechamento: TIntegerField
      FieldName = 'fat_emp_diafechamento'
    end
    object oCdsfat_emp_emiteboletodiasup: TBooleanField
      FieldName = 'fat_emp_emiteboletodiasup'
    end
    object oCdsfat_emp_emiteboletodias: TIntegerField
      FieldName = 'fat_emp_emiteboletodias'
    end
    object oCdsfat_emp_emiteboleto: TBooleanField
      FieldName = 'fat_emp_emiteboleto'
    end
    object oCdsfat_emp_emitenfse: TBooleanField
      FieldName = 'fat_emp_emitenfse'
    end
    object oCdsfat_emp_vlrcaixaprincipalup: TBooleanField
      FieldName = 'fat_emp_vlrcaixaprincipalup'
    end
    object oCdsfat_emp_vlrcaixaprincipal: TFloatField
      FieldName = 'fat_emp_vlrcaixaprincipal'
    end
    object oCdsfat_emp_vlrcaixaadicionalup: TBooleanField
      FieldName = 'fat_emp_vlrcaixaadicionalup'
    end
    object oCdsfat_emp_vlrcaixaadicional: TFloatField
      FieldName = 'fat_emp_vlrcaixaadicional'
    end
    object oCdsfat_emp_cobraporup: TBooleanField
      FieldName = 'fat_emp_cobraporup'
    end
    object oCdsfat_emp_cobrapor: TWideStringField
      FieldName = 'fat_emp_cobrapor'
      Size = 40
    end
    object oCdsfat_edi: TBooleanField
      FieldName = 'fat_edi'
    end
    object oCdsfat_edi_motivo: TWideStringField
      FieldName = 'fat_edi_motivo'
      Size = 200
    end
    object oCdsfat_edi_emiteboleto: TBooleanField
      FieldName = 'fat_edi_emiteboleto'
    end
    object oCdsfat_edi_emitenfse: TBooleanField
      FieldName = 'fat_edi_emitenfse'
    end
    object oCdsfat_edi_vlrcxpostalup: TFloatField
      FieldName = 'fat_edi_vlrcxpostalup'
    end
    object oCdsfat_edi_vlrcxpostal: TFloatField
      FieldName = 'fat_edi_vlrcxpostal'
    end
    object oCdsfat_edi_diafechamentoup: TBooleanField
      FieldName = 'fat_edi_diafechamentoup'
    end
    object oCdsfat_edi_diafechamento: TIntegerField
      FieldName = 'fat_edi_diafechamento'
    end
    object oCdsfat_edi_vlrkbadicionalup: TBooleanField
      FieldName = 'fat_edi_vlrkbadicionalup'
    end
    object oCdsfat_edi_vlrkbadicional: TFloatField
      FieldName = 'fat_edi_vlrkbadicional'
    end
    object oCdsfat_edi_franquiaup: TBooleanField
      FieldName = 'fat_edi_franquiaup'
    end
    object oCdsfat_edi_franquia: TFloatField
      FieldName = 'fat_edi_franquia'
    end
    object oCdsfat_outros: TBooleanField
      FieldName = 'fat_outros'
    end
    object oCdsfat_outros_motivo: TWideStringField
      FieldName = 'fat_outros_motivo'
      Size = 200
    end
    object oCdsfat_outros_diafechamentoup: TBooleanField
      FieldName = 'fat_outros_diafechamentoup'
    end
    object oCdsfat_outros_diafechamento: TIntegerField
      FieldName = 'fat_outros_diafechamento'
    end
    object oCdsfat_outros_emiteboleto: TBooleanField
      FieldName = 'fat_outros_emiteboleto'
    end
    object oCdsfat_outros_emitenfse: TBooleanField
      FieldName = 'fat_outros_emitenfse'
    end
    object oCdsfat_gerais_agr_averbacao: TBooleanField
      FieldName = 'fat_gerais_agr_averbacao'
    end
    object oCdsfat_gerais_agr_edi: TBooleanField
      FieldName = 'fat_gerais_agr_edi'
    end
    object oCdsfat_gerais_agr_empresarial: TBooleanField
      FieldName = 'fat_gerais_agr_empresarial'
    end
    object oCdsfat_gerais_agr_outros: TBooleanField
      FieldName = 'fat_gerais_agr_outros'
    end
    object oCdsdtinc: TDateField
      FieldName = 'dtinc'
    end
    object oCdsusuinc: TWideStringField
      FieldName = 'usuinc'
    end
    object oCdsdtalt: TDateField
      FieldName = 'dtalt'
    end
    object oCdsusualt: TWideStringField
      FieldName = 'usualt'
    end
    object oCdsfat_aver_tp_pgto_defalt: TWideStringField
      FieldName = 'fat_aver_tp_pgto_defalt'
    end
  end
  inherited oDS: TDataSource
    Top = 65528
  end
  object oCdsFaixaEmp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFat_EmpFaixa'
    RemoteServer = DM.ShCoGen
    BeforePost = oCdsFaixaEmpBeforePost
    AfterDelete = oCdsFaixaEmpAfterDelete
    Left = 152
    Top = 65528
    object oCdsFaixaEmpId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Id'
    end
    object oCdsFaixaEmpIdFaturamento: TIntegerField
      FieldName = 'IdFaturamento'
    end
    object oCdsFaixaEmpInicioFaixa: TIntegerField
      DisplayLabel = 'Inicio'
      FieldName = 'InicioFaixa'
    end
    object oCdsFaixaEmpFimFaixa: TIntegerField
      DisplayLabel = 'Fim'
      FieldName = 'FimFaixa'
    end
    object oCdsFaixaEmpValor: TFloatField
      FieldName = 'Valor'
    end
    object oCdsFaixaEmpDtInc: TDateField
      FieldName = 'DtInc'
    end
    object oCdsFaixaEmpUsuInc: TWideStringField
      FieldName = 'UsuInc'
    end
    object oCdsFaixaEmpDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object oCdsFaixaEmpUsuAlt: TWideStringField
      FieldName = 'UsuAlt'
      Size = 126
    end
  end
  object dsFaixaEmp: TDataSource
    AutoEdit = False
    DataSet = oCdsFaixaEmp
    OnStateChange = oDSStateChange
    Left = 183
    Top = 65528
  end
  object oCdsFaixaAverba: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFat_AverbaFaixa'
    RemoteServer = DM.ShCoGen
    BeforePost = oCdsFaixaAverbaBeforePost
    AfterDelete = oCdsFaixaAverbaAfterDelete
    Left = 80
    Top = 65528
    object oCdsFaixaAverbaId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Id'
    end
    object oCdsFaixaAverbaIdFaturamento: TIntegerField
      FieldName = 'IdFaturamento'
    end
    object oCdsFaixaAverbaInicioFaixa: TIntegerField
      DisplayLabel = 'Inicio'
      FieldName = 'InicioFaixa'
    end
    object oCdsFaixaAverbaFimFaixa: TIntegerField
      DisplayLabel = 'Fim'
      FieldName = 'FimFaixa'
    end
    object oCdsFaixaAverbaValor: TFloatField
      FieldName = 'Valor'
    end
    object oCdsFaixaAverbaDtInc: TDateField
      FieldName = 'DtInc'
    end
    object oCdsFaixaAverbaUsuInc: TWideStringField
      FieldName = 'UsuInc'
    end
    object oCdsFaixaAverbaDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object oCdsFaixaAverbaUsuAlt: TWideStringField
      FieldName = 'UsuAlt'
      Size = 126
    end
  end
  object dsFaixaAverba: TDataSource
    DataSet = oCdsFaixaAverba
    Left = 112
    Top = 65528
  end
  object cdsFat_OutrosProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFat_OutrosProdutos'
    RemoteServer = DM.ShCoGen
    BeforePost = cdsFat_OutrosProdutosBeforePost
    Left = 296
    Top = 65528
    object cdsFat_OutrosProdutosId: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Id'
      KeyFields = 'Id'
    end
    object cdsFat_OutrosProdutosIdFaturamento: TIntegerField
      FieldName = 'IdFaturamento'
    end
    object cdsFat_OutrosProdutosDescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 100
    end
    object cdsFat_OutrosProdutosTipoCobranca: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TipoCobranca'
      Size = 40
    end
    object cdsFat_OutrosProdutosPeriodoCobranca: TWideStringField
      DisplayLabel = 'Per'#237'odo'
      FieldName = 'PeriodoCobranca'
    end
    object cdsFat_OutrosProdutosQtde: TIntegerField
      FieldName = 'Qtde'
      OnChange = cdsFat_OutrosProdutosQtdeChange
    end
    object cdsFat_OutrosProdutosValor: TFloatField
      FieldName = 'Valor'
      OnChange = cdsFat_OutrosProdutosValorChange
      currency = True
    end
    object cdsFat_OutrosProdutosValorTotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'ValorTotal'
      currency = True
    end
    object cdsFat_OutrosProdutosDtInc: TDateField
      DisplayLabel = 'Dt. Inc.'
      FieldName = 'DtInc'
    end
    object cdsFat_OutrosProdutosUsuInc: TWideStringField
      DisplayLabel = 'Usu. Inc.'
      FieldName = 'UsuInc'
    end
    object cdsFat_OutrosProdutosDtAlt: TDateField
      DisplayLabel = 'Dt. Alt.'
      FieldName = 'DtAlt'
    end
    object cdsFat_OutrosProdutosUsuAlt: TWideStringField
      DisplayLabel = 'Usu. Alt.'
      FieldName = 'UsuAlt'
    end
  end
  object dsFat_OutrosProdutos: TDataSource
    DataSet = cdsFat_OutrosProdutos
    Left = 328
    Top = 65528
  end
  object dsFatParOutros: TDataSource
    DataSet = cdsFatParOutros
    Left = 256
    Top = 65528
  end
  object cdsFatParOutros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFatOutros'
    RemoteServer = DM.ShCoGen
    Left = 224
    Top = 65528
    object cdsFatParOutrosId: TIntegerField
      FieldName = 'Id'
    end
    object cdsFatParOutrosDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object cdsFatParOutrosValor: TFloatField
      FieldName = 'Valor'
    end
    object cdsFatParOutrosTipoCobranca: TWideStringField
      FieldName = 'TipoCobranca'
      Size = 40
    end
    object cdsFatParOutrosPeriodoCobranca: TWideStringField
      FieldName = 'PeriodoCobranca'
    end
    object cdsFatParOutrosDtInc: TDateField
      FieldName = 'DtInc'
    end
    object cdsFatParOutrosUsuInc: TWideStringField
      FieldName = 'UsuInc'
    end
    object cdsFatParOutrosDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object cdsFatParOutrosUsuAlt: TWideStringField
      FieldName = 'UsuAlt'
    end
  end
  object cdsFat_emails: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFatEmails'
    RemoteServer = DM.ShCoGen
    BeforePost = cdsFat_emailsBeforePost
    Left = 368
    Top = 65528
    object cdsFat_emailsid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
    end
    object cdsFat_emailsid_faturamento: TIntegerField
      FieldName = 'id_faturamento'
    end
    object cdsFat_emailsemails: TWideStringField
      FieldName = 'emails'
      Size = 100
    end
  end
  object dsFat_emails: TDataSource
    DataSet = cdsFat_emails
    Left = 400
    Top = 65528
  end
  object oCdsRelations_ex: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelations_ex'
    RemoteServer = DM.ShCoGen
    Left = 368
    Top = 400
  end
  object dsRelations_ex: TDataSource
    DataSet = oCdsRelations_ex
    Left = 448
    Top = 400
  end
  object oCdsRelationsInsert: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelations_exInsert'
    RemoteServer = DM.ShCoGen
    Left = 320
    Top = 544
    object oCdsRelationsInsertrex_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'rex_id'
      KeyFields = 'rex_id'
    end
    object oCdsRelationsInsertrex_terminalp: TWideStringField
      FieldName = 'rex_terminalp'
      Size = 8
    end
    object oCdsRelationsInsertrex_terminals: TWideStringField
      FieldName = 'rex_terminals'
      Size = 8
    end
    object oCdsRelationsInsertrex_usu_inc: TWideStringField
      FieldName = 'rex_usu_inc'
      Size = 10
    end
    object oCdsRelationsInsertrex_data_inc: TDateTimeField
      FieldName = 'rex_data_inc'
    end
    object oCdsRelationsInsertdtinc: TDateField
      FieldName = 'dtinc'
    end
    object oCdsRelationsInsertusuinc: TWideStringField
      FieldName = 'usuinc'
      Size = 10
    end
    object oCdsRelationsInsertdtalt: TDateField
      FieldName = 'dtalt'
    end
    object oCdsRelationsInsertusualt: TWideStringField
      FieldName = 'usualt'
      Size = 10
    end
  end
  object dsRelationsInsert: TDataSource
    DataSet = oCdsRelationsInsert
    Left = 432
    Top = 544
  end
end
