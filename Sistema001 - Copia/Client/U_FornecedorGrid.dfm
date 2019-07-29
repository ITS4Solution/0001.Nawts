inherited F_FornecedorGrid: TF_FornecedorGrid
  Caption = 'Lista de Fornecedor'
  ClientWidth = 702
  ExplicitWidth = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Width = 702
    ExplicitWidth = 702
  end
  inherited Panel1: TPanel
    Width = 702
    ExplicitWidth = 702
    inherited btnsair: TAdvGlassButton
      Left = 594
      ExplicitLeft = 594
    end
    inherited AdvGlassButton2: TAdvGlassButton
      Left = 488
      Anchors = [akRight, akBottom]
      ExplicitLeft = 488
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 14
      Top = 14
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
      OnClick = AdvGlassButton1Click
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 702
    ExplicitTop = 8
    ExplicitWidth = 702
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      FilterBox.Position = fpTop
      FilterBox.Visible = fvNever
      DataController.DataSource = oDS
      object cxGrid1DBTableView1cpf_cnpj: TcxGridDBColumn
        Caption = 'CNPJ/CPF'
        DataBinding.FieldName = 'cpf_cnpj'
      end
      object cxGrid1DBTableView1nome_razaosocial: TcxGridDBColumn
        DataBinding.FieldName = 'nome_razaosocial'
      end
      object cxGrid1DBTableView1tppessoa: TcxGridDBColumn
        DataBinding.FieldName = 'tppessoa'
      end
      object cxGrid1DBTableView1contato: TcxGridDBColumn
        Caption = 'Contato'
        DataBinding.FieldName = 'contato'
      end
      object cxGrid1DBTableView1cargo: TcxGridDBColumn
        Caption = 'Cargo'
        DataBinding.FieldName = 'cargo'
      end
      object cxGrid1DBTableView1email: TcxGridDBColumn
        Caption = 'E-mail'
        DataBinding.FieldName = 'email'
      end
      object cxGrid1DBTableView1obs: TcxGridDBColumn
        DataBinding.FieldName = 'obs'
      end
      object cxGrid1DBTableView1codfornecedor: TcxGridDBColumn
        Caption = 'C'#243'd.Fornecedor'
        DataBinding.FieldName = 'codfornecedor'
      end
      object cxGrid1DBTableView1datacad: TcxGridDBColumn
        Caption = 'Data Cadastramento'
        DataBinding.FieldName = 'datacad'
      end
      object cxGrid1DBTableView1fone1: TcxGridDBColumn
        Caption = 'Telefone'
        DataBinding.FieldName = 'fone1'
      end
      object cxGrid1DBTableView1fone2: TcxGridDBColumn
        Caption = 'Telefone 2'
        DataBinding.FieldName = 'fone2'
      end
      object cxGrid1DBTableView1fone3: TcxGridDBColumn
        Caption = 'Telefone 3'
        DataBinding.FieldName = 'fone3'
      end
      object cxGrid1DBTableView1fone4: TcxGridDBColumn
        Caption = 'Telefone 4'
        DataBinding.FieldName = 'fone4'
      end
      object cxGrid1DBTableView1fax: TcxGridDBColumn
        Caption = 'FAX'
        DataBinding.FieldName = 'fax'
      end
      object cxGrid1DBTableView1uf: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'uf'
      end
      object cxGrid1DBTableView1cidade: TcxGridDBColumn
        Caption = 'Cidade'
        DataBinding.FieldName = 'cidade'
      end
      object cxGrid1DBTableView1endereco: TcxGridDBColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'endereco'
      end
      object cxGrid1DBTableView1cep: TcxGridDBColumn
        Caption = 'CEP'
        DataBinding.FieldName = 'cep'
      end
      object cxGrid1DBTableView1ie: TcxGridDBColumn
        Caption = 'IE'
        DataBinding.FieldName = 'ie'
      end
    end
  end
  inherited ActionList: TActionList
    Top = 0
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspFornecedor'
    RemoteServer = DM.ShCoGen
    Top = 65528
    object oCdsid: TIntegerField
      FieldName = 'id'
    end
    object oCdscpf_cnpj: TStringField
      DisplayLabel = 'cnpj / cpf'
      FieldName = 'cpf_cnpj'
      Size = 18
    end
    object oCdsnome_razaosocial: TStringField
      DisplayLabel = 'Raz'#227'o Social / Nome'
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object oCdstppessoa: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tppessoa'
      Size = 10
    end
    object oCdsobs: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object oCdscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object oCdsdatacad: TDateField
      FieldName = 'datacad'
    end
    object oCdscargo: TStringField
      FieldName = 'cargo'
      Size = 30
    end
    object oCdsfone1: TStringField
      FieldName = 'fone1'
      Size = 15
    end
    object oCdsfone2: TStringField
      FieldName = 'fone2'
      Size = 15
    end
    object oCdsfone3: TStringField
      FieldName = 'fone3'
      Size = 15
    end
    object oCdsfone4: TStringField
      FieldName = 'fone4'
      Size = 15
    end
    object oCdsuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object oCdscidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object oCdsie: TStringField
      FieldName = 'ie'
      Size = 14
    end
    object oCdscontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object oCdsendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object oCdsfax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object oCdscep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object oCdsemail: TStringField
      FieldName = 'email'
      Size = 30
    end
  end
  inherited oDS: TDataSource
    Left = 32
    Top = 65528
  end
end
