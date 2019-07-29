inherited F_Emitente: TF_Emitente
  Caption = 'F_Emitente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object AdvGlassButton1: TAdvGlassButton
      Left = 18
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
      Version = '1.3.0.1'
      OnClick = AdvGlassButton1Click
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = oDS
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1NomeRazaoSocial: TcxGridDBColumn
        DataBinding.FieldName = 'NomeRazaoSocial'
      end
      object cxGrid1DBTableView1CNPJ: TcxGridDBColumn
        DataBinding.FieldName = 'CNPJ'
      end
    end
  end
  inherited oCds: TClientDataSet
    ProviderName = 'dspEmitente'
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
  inherited SaveDialog: TSaveDialog
    Left = 352
    Top = 8
  end
  object dspEmitente: TDataSetProvider
    DataSet = DM.sqlEmitente
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 9
  end
end
