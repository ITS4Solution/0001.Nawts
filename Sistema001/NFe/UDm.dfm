object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 504
  Width = 921
  object sqlCliFor: TSQLDataSet
    CommandText = 'select * from NFE_CLIFOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 704
    Top = 144
    object sqlCliForID: TIntegerField
      FieldName = 'ID'
    end
    object sqlCliForNOMERAZAO: TStringField
      FieldName = 'NOMERAZAO'
      Size = 60
    end
    object sqlCliForNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 60
    end
    object sqlCliForENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqlCliForNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sqlCliForBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sqlCliForCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqlCliForCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sqlCliForUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sqlCliForCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object sqlCliForCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sqlCliForCGC: TStringField
      FieldName = 'CGC'
    end
    object sqlCliForIERG: TStringField
      FieldName = 'IERG'
      Size = 15
    end
    object sqlCliForFJ: TStringField
      FieldName = 'FJ'
      Size = 1
    end
    object sqlCliForTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object sqlCliForDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object sqlCliForEMAI: TStringField
      FieldName = 'EMAI'
      Size = 80
    end
    object sqlCliForCLIFORTRANSP: TStringField
      FieldName = 'CLIFORTRANSP'
      Size = 1
    end
    object sqlCliForCONSUMIDOR: TStringField
      FieldName = 'CONSUMIDOR'
      Size = 3
    end
    object sqlCliForESTRANGEIRO: TStringField
      FieldName = 'ESTRANGEIRO'
      Size = 3
    end
    object sqlCliForDOCESTRAN: TStringField
      FieldName = 'DOCESTRAN'
      Size = 3
    end
  end
  object sqlProdutos: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 704
    Top = 208
    object sqlProdutosID: TIntegerField
      FieldName = 'ID'
    end
    object sqlProdutosCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
    end
    object sqlProdutosNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sqlProdutosUN: TStringField
      FieldName = 'UN'
      Size = 2
    end
    object sqlProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object sqlProdutosIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
    end
    object sqlProdutosPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sqlProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object sqlProdutosPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object sqlProdutosCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object sqlProdutosCODCST: TIntegerField
      FieldName = 'CODCST'
    end
    object sqlProdutosALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object sqlProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object sqlProdutosCODCSTIPI: TIntegerField
      FieldName = 'CODCSTIPI'
    end
    object sqlProdutosCODCSTPIS: TIntegerField
      FieldName = 'CODCSTPIS'
    end
    object sqlProdutosCODCSTCOFINS: TIntegerField
      FieldName = 'CODCSTCOFINS'
    end
    object sqlProdutosALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object sqlProdutosALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
    end
    object sqlProdutosALIQCOFINS: TFloatField
      FieldName = 'ALIQCOFINS'
    end
    object sqlProdutosREDICMS: TFloatField
      FieldName = 'REDICMS'
    end
    object sqlProdutosALIQMVA: TFloatField
      FieldName = 'ALIQMVA'
    end
    object sqlProdutosALIQIVA: TFloatField
      FieldName = 'ALIQIVA'
    end
    object sqlProdutosMODBCICMS: TIntegerField
      FieldName = 'MODBCICMS'
    end
    object sqlProdutosMODBCICMSST: TIntegerField
      FieldName = 'MODBCICMSST'
    end
    object sqlProdutosNCMALIQNACIO: TSingleField
      FieldName = 'NCMALIQNACIO'
    end
    object sqlProdutosNCMALIQIMP: TSingleField
      FieldName = 'NCMALIQIMP'
    end
    object sqlProdutosNCMALIQEST: TSingleField
      FieldName = 'NCMALIQEST'
    end
    object sqlProdutosNCMALIQMUN: TSingleField
      FieldName = 'NCMALIQMUN'
    end
    object sqlProdutosICMSDIF: TStringField
      FieldName = 'ICMSDIF'
      Size = 3
    end
    object sqlProdutosICMSINTDIF: TIntegerField
      FieldName = 'ICMSINTDIF'
    end
    object sqlProdutosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object sqlGrupoProdutos: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_GRUPOPRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 704
    Top = 264
    object sqlGrupoProdutosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlGrupoProdutosCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object sqlGrupoProdutosNOMEGRUPO: TStringField
      FieldName = 'NOMEGRUPO'
      Size = 30
    end
  end
  object sqlTransportadoras: TSQLDataSet
    CommandText = 'SELECT  * FROM TBLTRANSPORTADORAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 32
    Top = 312
    object sqlTransportadorasID: TIntegerField
      FieldName = 'ID'
    end
    object sqlTransportadorasNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlTransportadorasRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 60
    end
    object sqlTransportadorasCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object sqlTransportadorasCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object sqlTransportadorasINSCRICAO_ESTADUAL: TStringField
      FieldName = 'INSCRICAO_ESTADUAL'
    end
    object sqlTransportadorasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sqlTransportadorasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sqlTransportadorasMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object sqlTransportadorasTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object sqlTransportadorasTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
  end
  object sqldtstNFSaida: TSQLDataSet
    CommandText = 'SELECT  * FROM TBLNFESAIDA'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 112
    Top = 144
    object sqldtstNFSaidaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqldtstNFSaidaNRONFE: TIntegerField
      FieldName = 'NRONFE'
    end
    object sqldtstNFSaidaSERIENFE: TIntegerField
      FieldName = 'SERIENFE'
    end
    object sqldtstNFSaidaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sqldtstNFSaidaDATA: TDateField
      FieldName = 'DATA'
    end
    object sqldtstNFSaidaCODFISCAL: TIntegerField
      FieldName = 'CODFISCAL'
    end
    object sqldtstNFSaidaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sqldtstNFSaidaCONDPAGAMENTO: TStringField
      FieldName = 'CONDPAGAMENTO'
      Size = 30
    end
    object sqldtstNFSaidaDETALHEPAGAMENTO: TStringField
      FieldName = 'DETALHEPAGAMENTO'
      Size = 50
    end
    object sqldtstNFSaidaVALORNFE: TSingleField
      FieldName = 'VALORNFE'
    end
    object sqldtstNFSaidaVALORCALCULADO: TSingleField
      FieldName = 'VALORCALCULADO'
    end
    object sqldtstNFSaidaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object sqlEstados: TSQLDataSet
    CommandText = 'SELECT  * FROM TBLESTADOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 192
    Top = 144
    object sqlEstadosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlEstadosCODIGO_IBGE: TIntegerField
      FieldName = 'CODIGO_IBGE'
    end
    object sqlEstadosSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object sqlEstadosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object sqlNFeCabecalho: TSQLDataSet
    CommandText = 'Select * from NFE_CABECALHO WHERE ID =0'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 704
    Top = 8
    object sqlNFeCabecalhoID: TIntegerField
      FieldName = 'ID'
    end
    object sqlNFeCabecalhoIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
    end
    object sqlNFeCabecalhoCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object sqlNFeCabecalhoCFOPDESC: TStringField
      FieldName = 'CFOPDESC'
      Size = 249
    end
    object sqlNFeCabecalhoENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      Size = 1
    end
    object sqlNFeCabecalhoNNOTA: TIntegerField
      FieldName = 'NNOTA'
    end
    object sqlNFeCabecalhoCONSUMOREVENDA: TStringField
      FieldName = 'CONSUMOREVENDA'
      Size = 1
    end
    object sqlNFeCabecalhoDATAEMISSAO: TSQLTimeStampField
      FieldName = 'DATAEMISSAO'
    end
    object sqlNFeCabecalhoDATAENTRADASAIDA: TSQLTimeStampField
      FieldName = 'DATAENTRADASAIDA'
    end
    object sqlNFeCabecalhoHORAENTRADASAIDA: TStringField
      FieldName = 'HORAENTRADASAIDA'
      Size = 5
    end
    object sqlNFeCabecalhoIDDESTINATARIO: TIntegerField
      FieldName = 'IDDESTINATARIO'
    end
    object sqlNFeCabecalhoDESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      Size = 50
    end
    object sqlNFeCabecalhoCNPJDESTINATARIO: TStringField
      FieldName = 'CNPJDESTINATARIO'
      Size = 18
    end
    object sqlNFeCabecalhoIEDESTINATARIO: TStringField
      FieldName = 'IEDESTINATARIO'
      Size = 10
    end
    object sqlNFeCabecalhoENDERECODESTINATARIO: TStringField
      FieldName = 'ENDERECODESTINATARIO'
      Size = 50
    end
    object sqlNFeCabecalhoNUMEROENDDESTINATARIO: TStringField
      FieldName = 'NUMEROENDDESTINATARIO'
      Size = 5
    end
    object sqlNFeCabecalhoCOMPLEMENTODESTINATARIO: TStringField
      FieldName = 'COMPLEMENTODESTINATARIO'
      Size = 50
    end
    object sqlNFeCabecalhoBAIRRODESTINATARIO: TStringField
      FieldName = 'BAIRRODESTINATARIO'
    end
    object sqlNFeCabecalhoCEPDESTINATARIO: TStringField
      FieldName = 'CEPDESTINATARIO'
      Size = 10
    end
    object sqlNFeCabecalhoCIDADEDESTINATARIO: TStringField
      FieldName = 'CIDADEDESTINATARIO'
      Size = 50
    end
    object sqlNFeCabecalhoCODCIDADEDESTINATARIO: TIntegerField
      FieldName = 'CODCIDADEDESTINATARIO'
    end
    object sqlNFeCabecalhoUFDESTINATARIO: TStringField
      FieldName = 'UFDESTINATARIO'
      Size = 2
    end
    object sqlNFeCabecalhoCODUFDESTINATARIO: TIntegerField
      FieldName = 'CODUFDESTINATARIO'
    end
    object sqlNFeCabecalhoTELEFONEDESTINATARIO: TStringField
      FieldName = 'TELEFONEDESTINATARIO'
      Size = 12
    end
    object sqlNFeCabecalhoCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Size = 44
    end
    object sqlNFeCabecalhoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
    end
    object sqlNFeCabecalhoTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Size = 1
    end
    object sqlNFeCabecalhoCODRETORNOSEFAZ: TIntegerField
      FieldName = 'CODRETORNOSEFAZ'
    end
    object sqlNFeCabecalhoDESCRETORNOSEFAZ: TStringField
      FieldName = 'DESCRETORNOSEFAZ'
      Size = 50
    end
    object sqlNFeCabecalhoDATACANCELAMENTONOTA: TSQLTimeStampField
      FieldName = 'DATACANCELAMENTONOTA'
    end
    object sqlNFeCabecalhoMOTIVOCANCELAMENTONOTA: TStringField
      FieldName = 'MOTIVOCANCELAMENTONOTA'
      Size = 249
    end
    object sqlNFeCabecalhoPROTOCOLOCANCELAMENTO: TStringField
      FieldName = 'PROTOCOLOCANCELAMENTO'
    end
    object sqlNFeCabecalhoCSTAT: TIntegerField
      FieldName = 'CSTAT'
    end
    object sqlNFeCabecalhoSTATUSNOTA: TStringField
      FieldName = 'STATUSNOTA'
      Size = 1
    end
    object sqlNFeCabecalhoMSGSTATUS: TStringField
      FieldName = 'MSGSTATUS'
      Size = 249
    end
    object sqlNFeCabecalhoIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
    end
    object sqlNFeCabecalhoNRECIBO: TStringField
      FieldName = 'NRECIBO'
    end
    object sqlNFeCabecalhoDATAHORARECIBO: TSQLTimeStampField
      FieldName = 'DATAHORARECIBO'
    end
    object sqlNFeCabecalhoAMBIENTE: TStringField
      FieldName = 'AMBIENTE'
      Size = 1
    end
    object sqlNFeCabecalhoT_VALORBC: TFloatField
      FieldName = 'T_VALORBC'
    end
    object sqlNFeCabecalhoT_VALORICMS: TFloatField
      FieldName = 'T_VALORICMS'
    end
    object sqlNFeCabecalhoT_VALORICMSST: TFloatField
      FieldName = 'T_VALORICMSST'
    end
    object sqlNFeCabecalhoT_VALORBCST: TFloatField
      FieldName = 'T_VALORBCST'
    end
    object sqlNFeCabecalhoT_VALORST: TFloatField
      FieldName = 'T_VALORST'
    end
    object sqlNFeCabecalhoT_VALORPRODUTOS: TFloatField
      FieldName = 'T_VALORPRODUTOS'
    end
    object sqlNFeCabecalhoT_VALORFRETE: TFloatField
      FieldName = 'T_VALORFRETE'
    end
    object sqlNFeCabecalhoT_VALORSEGURO: TFloatField
      FieldName = 'T_VALORSEGURO'
    end
    object sqlNFeCabecalhoT_VALORDESCONTO: TFloatField
      FieldName = 'T_VALORDESCONTO'
    end
    object sqlNFeCabecalhoT_VALORII: TFloatField
      FieldName = 'T_VALORII'
    end
    object sqlNFeCabecalhoT_VALORIPI: TFloatField
      FieldName = 'T_VALORIPI'
    end
    object sqlNFeCabecalhoT_VALORPIS: TFloatField
      FieldName = 'T_VALORPIS'
    end
    object sqlNFeCabecalhoT_VALORCOFINS: TFloatField
      FieldName = 'T_VALORCOFINS'
    end
    object sqlNFeCabecalhoT_VALOROUTRASDESPESAS: TFloatField
      FieldName = 'T_VALOROUTRASDESPESAS'
    end
    object sqlNFeCabecalhoT_VALORNOTAFISCAL: TFloatField
      FieldName = 'T_VALORNOTAFISCAL'
    end
    object sqlNFeCabecalhoIDTRANSPORTADOR: TStringField
      FieldName = 'IDTRANSPORTADOR'
      Size = 50
    end
    object sqlNFeCabecalhoTRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      Size = 50
    end
    object sqlNFeCabecalhoCNPJTRANSPORTADOR: TStringField
      FieldName = 'CNPJTRANSPORTADOR'
      Size = 18
    end
    object sqlNFeCabecalhoIETRANSPORTADOR: TStringField
      FieldName = 'IETRANSPORTADOR'
      Size = 10
    end
    object sqlNFeCabecalhoENDERECTRANSPORTADOR: TStringField
      FieldName = 'ENDERECTRANSPORTADOR'
      Size = 50
    end
    object sqlNFeCabecalhoCOMPLEMENTOTRANSPORTADOR: TStringField
      FieldName = 'COMPLEMENTOTRANSPORTADOR'
      Size = 50
    end
    object sqlNFeCabecalhoBAIRROTRANSPORTADOR: TStringField
      FieldName = 'BAIRROTRANSPORTADOR'
    end
    object sqlNFeCabecalhoCEPTRANSPORTADOR: TStringField
      FieldName = 'CEPTRANSPORTADOR'
      Size = 10
    end
    object sqlNFeCabecalhoCIDADETRANSPORTADOR: TStringField
      FieldName = 'CIDADETRANSPORTADOR'
      Size = 50
    end
    object sqlNFeCabecalhoCODCIDADETRANSPORTADOR: TIntegerField
      FieldName = 'CODCIDADETRANSPORTADOR'
    end
    object sqlNFeCabecalhoUFTRANSPORTADOR: TStringField
      FieldName = 'UFTRANSPORTADOR'
      Size = 2
    end
    object sqlNFeCabecalhoCODUFTRANSPORTADOR: TIntegerField
      FieldName = 'CODUFTRANSPORTADOR'
    end
    object sqlNFeCabecalhoTELEFONETRANSPORTADOR: TStringField
      FieldName = 'TELEFONETRANSPORTADOR'
      Size = 12
    end
    object sqlNFeCabecalhoPLACATRANSPORTADOR: TStringField
      FieldName = 'PLACATRANSPORTADOR'
      Size = 8
    end
    object sqlNFeCabecalhoUFPLACATRANSPORTADOR: TStringField
      FieldName = 'UFPLACATRANSPORTADOR'
      Size = 2
    end
    object sqlNFeCabecalhoVOLUMETRANSPORTADOR: TStringField
      FieldName = 'VOLUMETRANSPORTADOR'
    end
    object sqlNFeCabecalhoPESOBRUTOTRANSPORTADOR: TFloatField
      FieldName = 'PESOBRUTOTRANSPORTADOR'
    end
    object sqlNFeCabecalhoPESOLIQUIDOTRANSPORTADOR: TFloatField
      FieldName = 'PESOLIQUIDOTRANSPORTADOR'
    end
    object sqlNFeCabecalhoMARCATRANSPORTADOR: TStringField
      FieldName = 'MARCATRANSPORTADOR'
      Size = 30
    end
    object sqlNFeCabecalhoESPECIETRANSPORTADOR: TStringField
      FieldName = 'ESPECIETRANSPORTADOR'
    end
    object sqlNFeCabecalhoRNTCTRANSPORTADOR: TStringField
      FieldName = 'RNTCTRANSPORTADOR'
      Size = 10
    end
    object sqlNFeCabecalhoNUMERACAOTRANSPORTADOR: TStringField
      FieldName = 'NUMERACAOTRANSPORTADOR'
    end
    object sqlNFeCabecalhoMODFRETE: TIntegerField
      FieldName = 'MODFRETE'
    end
    object sqlNFeCabecalhoFINALIDADENOTA: TIntegerField
      FieldName = 'FINALIDADENOTA'
    end
    object sqlNFeCabecalhoINFADD: TMemoField
      FieldName = 'INFADD'
      BlobType = ftMemo
      Size = 1
    end
    object sqlNFeCabecalhoSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object sqlNFeCabecalhoSERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
  end
  object tmsMsgComp: TAdvSmoothMessageDialog
    MaximumWidth = 0
    ButtonAreaFill.Color = clWhite
    ButtonAreaFill.ColorTo = clWhite
    ButtonAreaFill.ColorMirror = clNone
    ButtonAreaFill.ColorMirrorTo = clNone
    ButtonAreaFill.GradientType = gtVertical
    ButtonAreaFill.GradientMirrorType = gtSolid
    ButtonAreaFill.Opacity = 0
    ButtonAreaFill.OpacityTo = 100
    ButtonAreaFill.BorderColor = clNone
    ButtonAreaFill.Rounding = 5
    ButtonAreaFill.RoundingType = rtBottom
    ButtonAreaFill.ShadowOffset = 0
    ButtonAreaFill.Glow = gmNone
    Buttons = <
      item
        Spacing = 0
        Caption = 'Ok'
        Color = 15984090
        ColorDown = 15785680
        ColorFocused = 16050398
        HoverColor = 16120314
      end>
    Caption = 'tmsMsgComp'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    CaptionFill.Color = clWhite
    CaptionFill.ColorMirror = clNone
    CaptionFill.ColorMirrorTo = clNone
    CaptionFill.GradientType = gtVertical
    CaptionFill.GradientMirrorType = gtSolid
    CaptionFill.Opacity = 100
    CaptionFill.OpacityTo = 0
    CaptionFill.BorderColor = clNone
    CaptionFill.Rounding = 5
    CaptionFill.RoundingType = rtTop
    CaptionFill.ShadowOffset = 0
    CaptionFill.Glow = gmNone
    Fill.Color = 15984090
    Fill.ColorTo = 15785680
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtSolid
    Fill.Opacity = 240
    Fill.OpacityTo = 220
    Fill.BorderColor = clBlack
    Fill.Rounding = 5
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    HTMLText.Font.Charset = DEFAULT_CHARSET
    HTMLText.Font.Color = clWindowText
    HTMLText.Font.Height = -11
    HTMLText.Font.Name = 'Tahoma'
    HTMLText.Font.Style = []
    Position = poDesigned
    Version = '1.3.0.1'
    ProgressMaximum = 100.000000000000000000
    ProgressAppearance.BackGroundFill.Color = 16765615
    ProgressAppearance.BackGroundFill.ColorTo = 16765615
    ProgressAppearance.BackGroundFill.ColorMirror = clNone
    ProgressAppearance.BackGroundFill.ColorMirrorTo = clNone
    ProgressAppearance.BackGroundFill.GradientType = gtVertical
    ProgressAppearance.BackGroundFill.GradientMirrorType = gtSolid
    ProgressAppearance.BackGroundFill.BorderColor = clSilver
    ProgressAppearance.BackGroundFill.Rounding = 0
    ProgressAppearance.BackGroundFill.ShadowOffset = 0
    ProgressAppearance.BackGroundFill.Glow = gmNone
    ProgressAppearance.ProgressFill.Color = 11196927
    ProgressAppearance.ProgressFill.ColorTo = 7257087
    ProgressAppearance.ProgressFill.ColorMirror = 4370174
    ProgressAppearance.ProgressFill.ColorMirrorTo = 8053246
    ProgressAppearance.ProgressFill.GradientType = gtVertical
    ProgressAppearance.ProgressFill.GradientMirrorType = gtVertical
    ProgressAppearance.ProgressFill.BorderColor = 16765357
    ProgressAppearance.ProgressFill.Rounding = 0
    ProgressAppearance.ProgressFill.ShadowOffset = 0
    ProgressAppearance.ProgressFill.Glow = gmNone
    ProgressAppearance.Font.Charset = DEFAULT_CHARSET
    ProgressAppearance.Font.Color = clWindowText
    ProgressAppearance.Font.Height = -11
    ProgressAppearance.Font.Name = 'Tahoma'
    ProgressAppearance.Font.Style = []
    ProgressAppearance.ProgressFont.Charset = DEFAULT_CHARSET
    ProgressAppearance.ProgressFont.Color = clWindowText
    ProgressAppearance.ProgressFont.Height = -11
    ProgressAppearance.ProgressFont.Name = 'Tahoma'
    ProgressAppearance.ProgressFont.Style = []
    ProgressAppearance.ValueFormat = '%.0f%%'
    Left = 96
    Top = 24
    TMSStyle = 0
  end
  object sqlConfiguracoes: TSQLDataSet
    CommandText = 'Select * from NFE_Configuracoes'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 704
    Top = 80
    object sqlConfiguracoesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlConfiguracoesSMTP: TStringField
      FieldName = 'SMTP'
      Size = 100
    end
    object sqlConfiguracoesSMTPUSUARIO: TStringField
      FieldName = 'SMTPUSUARIO'
      Size = 60
    end
    object sqlConfiguracoesSMTPSENHA: TStringField
      FieldName = 'SMTPSENHA'
      Size = 15
    end
    object sqlConfiguracoesSMTPPORTA: TIntegerField
      FieldName = 'SMTPPORTA'
    end
    object sqlConfiguracoesSMTPAUTENTICA: TStringField
      FieldName = 'SMTPAUTENTICA'
      Size = 1
    end
    object sqlConfiguracoesSMTPENVIAEMAIL: TStringField
      FieldName = 'SMTPENVIAEMAIL'
      Size = 1
    end
    object sqlConfiguracoesGERARCREDICMSPFISICA: TStringField
      FieldName = 'GERARCREDICMSPFISICA'
      Size = 1
    end
    object sqlConfiguracoesDANFE_LOGOEXPANDIDA: TStringField
      FieldName = 'DANFE_LOGOEXPANDIDA'
      Size = 1
    end
  end
  object Conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=21.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=localhost:dbNfe'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 24
    Top = 24
  end
  object sqlCST: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_CST'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 16
    object sqlCSTCST: TIntegerField
      FieldName = 'CST'
    end
    object sqlCSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object sqlCSTCODTIPOREGIME: TIntegerField
      FieldName = 'CODTIPOREGIME'
    end
    object sqlCSTORIG: TStringField
      FieldName = 'ORIG'
      Size = 1
    end
    object sqlCSTMODBC: TStringField
      FieldName = 'MODBC'
      Size = 1
    end
    object sqlCSTPREDBC: TStringField
      FieldName = 'PREDBC'
      Size = 1
    end
    object sqlCSTVBC: TStringField
      FieldName = 'VBC'
      Size = 1
    end
    object sqlCSTPICMS: TStringField
      FieldName = 'PICMS'
      Size = 1
    end
    object sqlCSTVICMS: TStringField
      FieldName = 'VICMS'
      Size = 1
    end
    object sqlCSTMODBCST: TStringField
      FieldName = 'MODBCST'
      Size = 1
    end
    object sqlCSTPMVAST: TStringField
      FieldName = 'PMVAST'
      Size = 1
    end
    object sqlCSTPREDBCST: TStringField
      FieldName = 'PREDBCST'
      Size = 1
    end
    object sqlCSTVBCST: TStringField
      FieldName = 'VBCST'
      Size = 1
    end
    object sqlCSTPICMSST: TStringField
      FieldName = 'PICMSST'
      Size = 1
    end
    object sqlCSTVICMSST: TStringField
      FieldName = 'VICMSST'
      Size = 1
    end
    object sqlCSTUFST: TStringField
      FieldName = 'UFST'
      Size = 1
    end
    object sqlCSTPBCOP: TStringField
      FieldName = 'PBCOP'
      Size = 1
    end
    object sqlCSTVBCSTRET: TStringField
      FieldName = 'VBCSTRET'
      Size = 1
    end
    object sqlCSTVICMSSTRET: TStringField
      FieldName = 'VICMSSTRET'
      Size = 1
    end
    object sqlCSTMOTDESICMS: TStringField
      FieldName = 'MOTDESICMS'
      Size = 1
    end
    object sqlCSTVBCSTDEST: TStringField
      FieldName = 'VBCSTDEST'
      Size = 1
    end
    object sqlCSTVICMSSTDEST: TStringField
      FieldName = 'VICMSSTDEST'
      Size = 1
    end
    object sqlCSTPCREDSN: TStringField
      FieldName = 'PCREDSN'
      Size = 1
    end
    object sqlCSTVCREDICMSSN: TStringField
      FieldName = 'VCREDICMSSN'
      Size = 1
    end
  end
  object sqlQryModBC: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_ModBC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 72
    object sqlQryModBCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlQryModBCCODMODBC: TIntegerField
      FieldName = 'CODMODBC'
    end
    object sqlQryModBCDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object sqlModBCST: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_MODBCST'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 128
    object sqlModBCSTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlModBCSTCODBCCST: TIntegerField
      FieldName = 'CODBCCST'
    end
    object sqlModBCSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object sqlCSTPIS: TSQLDataSet
    CommandText = 'SELECT * FROM  NFE_CSTPIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 240
    object sqlCSTPISID: TIntegerField
      FieldName = 'ID'
    end
    object sqlCSTPISDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 249
    end
  end
  object sqlCSTIPI: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_CSTIPI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 184
    object sqlCSTIPIID: TIntegerField
      FieldName = 'ID'
    end
    object sqlCSTIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object sqlCSTCOFINS: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_CSTCOFINS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 296
    object sqlCSTCOFINSID: TIntegerField
      FieldName = 'ID'
    end
    object sqlCSTCOFINSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 249
    end
  end
  object QryAux: TSQLQuery
    ObjectView = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      'Select * from nfe_produtos')
    SQLConnection = Conexao
    Left = 370
    Top = 16
  end
  object sqlEmitente: TSQLDataSet
    CommandText = 'select * from NFE_EMITENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 616
    Top = 8
    object sqlEmitenteID: TIntegerField
      FieldName = 'ID'
    end
    object sqlEmitenteNOMERAZAOSOCIAL: TStringField
      FieldName = 'NOMERAZAOSOCIAL'
      Size = 60
    end
    object sqlEmitenteNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 60
    end
    object sqlEmitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sqlEmitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sqlEmitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object sqlEmitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sqlEmitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqlEmitenteCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sqlEmitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 12
    end
    object sqlEmitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sqlEmitenteCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object sqlEmitentePAIS: TStringField
      FieldName = 'PAIS'
    end
    object sqlEmitenteCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object sqlEmitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object sqlEmitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object sqlEmitenteIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object sqlEmitenteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
    end
    object sqlEmitenteIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object sqlEmitenteCNAE: TIntegerField
      FieldName = 'CNAE'
    end
    object sqlEmitenteLOGO: TStringField
      FieldName = 'LOGO'
      Size = 249
    end
    object sqlEmitenteCODTIPOREGIME: TIntegerField
      FieldName = 'CODTIPOREGIME'
    end
    object sqlEmitentePSIMPLES: TFloatField
      FieldName = 'PSIMPLES'
    end
    object sqlEmitenteCERTIFICADO: TStringField
      FieldName = 'CERTIFICADO'
      Size = 249
    end
    object sqlEmitenteTITULOCERTIFICADO: TStringField
      FieldName = 'TITULOCERTIFICADO'
      Size = 249
    end
    object sqlEmitenteVALIDADECERT: TSQLTimeStampField
      FieldName = 'VALIDADECERT'
    end
    object sqlEmitenteSENHACERT: TStringField
      FieldName = 'SENHACERT'
    end
    object sqlEmitenteAMBIENTE: TStringField
      FieldName = 'AMBIENTE'
      Size = 1
    end
    object sqlEmitenteEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Size = 60
    end
    object sqlEmitenteEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 60
    end
    object sqlEmitenteEMAIL3: TStringField
      FieldName = 'EMAIL3'
      Size = 60
    end
    object sqlEmitenteMODELODANFE: TIntegerField
      FieldName = 'MODELODANFE'
    end
    object sqlEmitenteFORMAEMISSAO: TIntegerField
      FieldName = 'FORMAEMISSAO'
    end
    object sqlEmitenteCFOPPADRAO: TIntegerField
      FieldName = 'CFOPPADRAO'
    end
    object sqlEmitenteMUDACFOPINTE: TStringField
      FieldName = 'MUDACFOPINTE'
      Size = 1
    end
  end
  object sqlNFeItens: TSQLDataSet
    CommandText = 'Select * from NFE_Itens'#13#10'Where IDNota =:ID'#13#10'Order by ID'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = Conexao
    Left = 792
    Top = 8
    object sqlNFeItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlNFeItensIDNOTA: TIntegerField
      FieldName = 'IDNOTA'
    end
    object sqlNFeItensCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 10
    end
    object sqlNFeItensCODEAN: TStringField
      FieldName = 'CODEAN'
      Size = 13
    end
    object sqlNFeItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object sqlNFeItensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object sqlNFeItensEXTIPI: TStringField
      FieldName = 'EXTIPI'
      Size = 10
    end
    object sqlNFeItensCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object sqlNFeItensUNCOMERCIAL: TStringField
      FieldName = 'UNCOMERCIAL'
      Size = 3
    end
    object sqlNFeItensQTDCOMERCIAL: TFloatField
      FieldName = 'QTDCOMERCIAL'
    end
    object sqlNFeItensVALORUNCOMERCIAL: TFloatField
      FieldName = 'VALORUNCOMERCIAL'
    end
    object sqlNFeItensVALORPRODUTO: TFloatField
      FieldName = 'VALORPRODUTO'
    end
    object sqlNFeItensCODEANTRIB: TStringField
      FieldName = 'CODEANTRIB'
      Size = 10
    end
    object sqlNFeItensUNTRIB: TStringField
      FieldName = 'UNTRIB'
      Size = 3
    end
    object sqlNFeItensQTDTRIB: TFloatField
      FieldName = 'QTDTRIB'
    end
    object sqlNFeItensVALORUNTRIB: TFloatField
      FieldName = 'VALORUNTRIB'
    end
    object sqlNFeItensVALORFRETE: TFloatField
      FieldName = 'VALORFRETE'
    end
    object sqlNFeItensVALORSEGURO: TFloatField
      FieldName = 'VALORSEGURO'
    end
    object sqlNFeItensVALORDESCONTO: TFloatField
      FieldName = 'VALORDESCONTO'
    end
    object sqlNFeItensVALOROUTRAS: TFloatField
      FieldName = 'VALOROUTRAS'
    end
    object sqlNFeItensVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object sqlNFeItensVALORTOTALLIQUIDO: TFloatField
      FieldName = 'VALORTOTALLIQUIDO'
    end
    object sqlNFeItensINFADPRODUTO: TMemoField
      FieldName = 'INFADPRODUTO'
      BlobType = ftMemo
      Size = 1
    end
    object sqlNFeItensICMS_CSTCSOSN: TIntegerField
      FieldName = 'ICMS_CSTCSOSN'
    end
    object sqlNFeItensICMS_ORIGEM: TIntegerField
      FieldName = 'ICMS_ORIGEM'
    end
    object sqlNFeItensICMS_MODBC: TIntegerField
      FieldName = 'ICMS_MODBC'
    end
    object sqlNFeItensICMS_VBCICMS: TFloatField
      FieldName = 'ICMS_VBCICMS'
    end
    object sqlNFeItensICMS_VBCICMSST: TFloatField
      FieldName = 'ICMS_VBCICMSST'
    end
    object sqlNFeItensICMS_PICMS: TFloatField
      FieldName = 'ICMS_PICMS'
    end
    object sqlNFeItensICMS_VICMS: TFloatField
      FieldName = 'ICMS_VICMS'
    end
    object sqlNFeItensICMS_MODBCST: TIntegerField
      FieldName = 'ICMS_MODBCST'
    end
    object sqlNFeItensICMS_PMVAST: TFloatField
      FieldName = 'ICMS_PMVAST'
    end
    object sqlNFeItensICMS_PREDBC: TFloatField
      FieldName = 'ICMS_PREDBC'
    end
    object sqlNFeItensICMS_PICMSST: TFloatField
      FieldName = 'ICMS_PICMSST'
    end
    object sqlNFeItensICMS_VICMSST: TFloatField
      FieldName = 'ICMS_VICMSST'
    end
    object sqlNFeItensIPI_CST: TIntegerField
      FieldName = 'IPI_CST'
    end
    object sqlNFeItensIPI_CLENQ: TStringField
      FieldName = 'IPI_CLENQ'
      Size = 5
    end
    object sqlNFeItensIPI_CNPJPROD: TStringField
      FieldName = 'IPI_CNPJPROD'
      Size = 18
    end
    object sqlNFeItensIPI_CSELO: TStringField
      FieldName = 'IPI_CSELO'
    end
    object sqlNFeItensIPI_QSELO: TFloatField
      FieldName = 'IPI_QSELO'
    end
    object sqlNFeItensIPI_CENQ: TStringField
      FieldName = 'IPI_CENQ'
    end
    object sqlNFeItensIPI_VALORBC: TFloatField
      FieldName = 'IPI_VALORBC'
    end
    object sqlNFeItensIPI_QUNID: TFloatField
      FieldName = 'IPI_QUNID'
    end
    object sqlNFeItensIPI_VALORUNID: TFloatField
      FieldName = 'IPI_VALORUNID'
    end
    object sqlNFeItensIPI_PIPI: TFloatField
      FieldName = 'IPI_PIPI'
    end
    object sqlNFeItensIPI_VALORIPI: TFloatField
      FieldName = 'IPI_VALORIPI'
    end
  end
  object Qry: TSQLQuery
    ObjectView = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM NFE_CIDADES')
    SQLConnection = Conexao
    Left = 322
    Top = 16
  end
  object sqlCidades: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_CIDADES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 360
    object sqlCidadesID: TIntegerField
      FieldName = 'ID'
    end
    object sqlCidadesCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object sqlCidadesESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
    object sqlCidadesSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object sqlCidadesCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sqlCidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
  end
  object sqlConfiguracao: TSQLDataSet
    CommandText = 'select * from NFE_CNFG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 704
    Top = 320
    object sqlConfiguracaoID: TIntegerField
      FieldName = 'ID'
    end
    object sqlConfiguracaoCERTIDIG: TStringField
      FieldName = 'CERTIDIG'
      Size = 50
    end
    object sqlConfiguracaoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 50
    end
    object sqlConfiguracaoVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object sqlConfiguracaoFEMISSAO: TStringField
      FieldName = 'FEMISSAO'
      Size = 50
    end
    object sqlConfiguracaoMODELO: TStringField
      FieldName = 'MODELO'
    end
    object sqlConfiguracaoCFOPP: TStringField
      FieldName = 'CFOPP'
    end
    object sqlConfiguracaoSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sqlConfiguracaoBLOQUEAR: TIntegerField
      FieldName = 'BLOQUEAR'
    end
    object sqlConfiguracaoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sqlConfiguracaoHOMOLOGACAO: TIntegerField
      FieldName = 'HOMOLOGACAO'
    end
    object sqlConfiguracaoPRODUCAO: TIntegerField
      FieldName = 'PRODUCAO'
    end
    object sqlConfiguracaoVISUALIZARIMAGEM: TIntegerField
      FieldName = 'VISUALIZARIMAGEM'
    end
    object sqlConfiguracaoSALVARSOAP: TIntegerField
      FieldName = 'SALVARSOAP'
    end
    object sqlConfiguracaoAJUSTAR: TIntegerField
      FieldName = 'AJUSTAR'
    end
    object sqlConfiguracaoAGUARDAR: TIntegerField
      FieldName = 'AGUARDAR'
    end
    object sqlConfiguracaoTENTATIVAS: TIntegerField
      FieldName = 'TENTATIVAS'
    end
    object sqlConfiguracaoINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object sqlConfiguracaoHOST: TStringField
      FieldName = 'HOST'
      Size = 50
    end
    object sqlConfiguracaoPORTA: TStringField
      FieldName = 'PORTA'
    end
    object sqlConfiguracaoUSER: TStringField
      FieldName = 'USER'
      Size = 50
    end
    object sqlConfiguracaoSENHAUSER: TStringField
      FieldName = 'SENHAUSER'
      Size = 30
    end
    object sqlConfiguracaoPASTAENVIO: TIntegerField
      FieldName = 'PASTAENVIO'
    end
    object sqlConfiguracaoCADCLIENTE: TIntegerField
      FieldName = 'CADCLIENTE'
    end
    object sqlConfiguracaoCADPRODUTO: TIntegerField
      FieldName = 'CADPRODUTO'
    end
    object sqlConfiguracaoPASTENVIO: TStringField
      FieldName = 'PASTENVIO'
      Size = 1000
    end
    object sqlConfiguracaoNFEAUTO: TStringField
      FieldName = 'NFEAUTO'
      Size = 1000
    end
    object sqlConfiguracaoNFECANCEL: TStringField
      FieldName = 'NFECANCEL'
      Size = 1000
    end
    object sqlConfiguracaoNFEINUT: TStringField
      FieldName = 'NFEINUT'
      Size = 1000
    end
    object sqlConfiguracaoCARTACOER: TStringField
      FieldName = 'CARTACOER'
      Size = 1000
    end
    object sqlConfiguracaoSCHEMAS: TStringField
      FieldName = 'SCHEMAS'
      Size = 1000
    end
  end
  object sqlNCM: TSQLDataSet
    CommandText = 'select * from TBLNCM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 792
    Top = 80
    object sqlNCMCOD_NCM: TIntegerField
      FieldName = 'COD_NCM'
    end
    object sqlNCMNCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
      Required = True
      Size = 10
    end
    object sqlNCMNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object sqlNCMNCM_DESCRICAO: TStringField
      FieldName = 'NCM_DESCRICAO'
      Size = 2000
    end
    object sqlNCMNCM_ALIQNAC: TFMTBCDField
      FieldName = 'NCM_ALIQNAC'
      Precision = 18
      Size = 2
    end
    object sqlNCMNCM_ALIQIMP: TFMTBCDField
      FieldName = 'NCM_ALIQIMP'
      Precision = 18
      Size = 2
    end
    object sqlNCMNCM_ALIQESTADUAL: TFMTBCDField
      FieldName = 'NCM_ALIQESTADUAL'
      Precision = 18
      Size = 2
    end
    object sqlNCMNCM_ALIQMUNICIPAL: TFMTBCDField
      FieldName = 'NCM_ALIQMUNICIPAL'
      Precision = 18
      Size = 2
    end
    object sqlNCMNCM_CEST: TStringField
      FieldName = 'NCM_CEST'
      Size = 10
    end
    object sqlNCMNCM_UF: TStringField
      FieldName = 'NCM_UF'
      FixedChar = True
      Size = 2
    end
  end
  object sqlICMS: TSQLDataSet
    CommandText = 'select * from TBLICMS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 792
    Top = 144
    object sqlICMSCOD_ICMS: TIntegerField
      FieldName = 'COD_ICMS'
    end
    object sqlICMSICMS_UF: TStringField
      FieldName = 'ICMS_UF'
      FixedChar = True
      Size = 2
    end
    object sqlICMSICMS_ALIQUOTA: TFMTBCDField
      FieldName = 'ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object sqlICMSICMS_INTERNO: TFMTBCDField
      FieldName = 'ICMS_INTERNO'
      Precision = 18
      Size = 2
    end
  end
  object IdSNMP1: TIdSNMP
    ReceiveTimeout = 5000
    Community = 'public'
    Left = 48
    Top = 128
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 184
    Top = 280
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 72
    Top = 216
  end
end
