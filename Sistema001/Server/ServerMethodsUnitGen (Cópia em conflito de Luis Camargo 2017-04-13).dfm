object ServerMethodsGen: TServerMethodsGen
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 575
  Width = 1018
  object qryAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMCnn.dbxCnn
    Left = 952
    Top = 16
  end
  object sqlTblInsumos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblinsumos"')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 8
    object sqlTblInsumosid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblInsumoscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlTblInsumosue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object sqlTblInsumoslitragem: TSingleField
      FieldName = 'litragem'
    end
    object sqlTblInsumosdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlTblInsumostipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
    object sqlTblInsumosestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object sqlTblInsumosestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
  end
  object dspTblInsumos: TDataSetProvider
    DataSet = sqlTblInsumos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 8
  end
  object sqlNfeEntrada: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'Select * from "tblnfeentrada"')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 64
    object sqlNfeEntradaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlNfeEntradanronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object sqlNfeEntradaserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object sqlNfeEntradadata: TDateField
      FieldName = 'data'
    end
    object sqlNfeEntradacodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object sqlNfeEntradacodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlNfeEntradacondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object sqlNfeEntradadetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object sqlNfeEntradatipomaterial: TStringField
      FieldName = 'tipomaterial'
      Size = 10
    end
    object sqlNfeEntradavalornfe: TSingleField
      FieldName = 'valornfe'
    end
    object sqlNfeEntradavalorcalculado: TSingleField
      FieldName = 'valorcalculado'
    end
    object sqlNfeEntradaobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspNfeEntrada: TDataSetProvider
    DataSet = sqlNfeEntrada
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 64
  end
  object sqlnfeentradaitens: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select * from "tblnfeentradaitens" where "tblnfeentradaitens"."c' +
        'odnfeentrada" = :id')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 120
    object sqlnfeentradaitensid: TIntegerField
      FieldName = 'id'
    end
    object sqlnfeentradaitenscodnfeentrada: TIntegerField
      FieldName = 'codnfeentrada'
    end
    object sqlnfeentradaitenscodproduto: TStringField
      FieldName = 'codproduto'
      Size = 30
    end
    object sqlnfeentradaitensUE: TStringField
      FieldName = 'UE'
      Size = 10
    end
    object sqlnfeentradaitensqtde: TSingleField
      FieldName = 'qtde'
    end
    object sqlnfeentradaitensvlrunitario: TSingleField
      FieldName = 'vlrunitario'
    end
    object sqlnfeentradaitensvaloripi: TSingleField
      FieldName = 'valoripi'
    end
    object sqlnfeentradaitensvalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object sqlnfeentradaitenscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlnfeentradaitenscodfiscal: TStringField
      FieldName = 'codfiscal'
      Size = 10
    end
    object sqlnfeentradaitenslote: TStringField
      FieldName = 'lote'
    end
    object sqlnfeentradaitensvalidade: TDateField
      FieldName = 'validade'
    end
    object sqlnfeentradaitensnroregistro: TIntegerField
      FieldName = 'nroregistro'
    end
    object sqlnfeentradaitenspercentagemicms: TSingleField
      FieldName = 'percentagemicms'
    end
    object sqlnfeentradaitensteveaumento: TSmallintField
      FieldName = 'teveaumento'
    end
    object sqlnfeentradaitensgeraetiqueta: TSmallintField
      FieldName = 'geraetiqueta'
    end
    object sqlnfeentradaitenscadastradf: TSmallintField
      FieldName = 'cadastradf'
    end
    object sqlnfeentradaitensncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object sqlnfeentradaitensitem: TIntegerField
      FieldName = 'item'
    end
    object sqlnfeentradaitenssequencial: TIntegerField
      FieldName = 'sequencial'
    end
  end
  object dspnfeentradaitens: TDataSetProvider
    DataSet = sqlnfeentradaitens
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 120
  end
  object sqlFornecedor: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'Select * from "tblfornecedor"')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 168
    object sqlFornecedorid: TIntegerField
      FieldName = 'id'
    end
    object sqlFornecedorcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 18
    end
    object sqlFornecedornome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object sqlFornecedortppessoa: TStringField
      FieldName = 'tppessoa'
      Size = 10
    end
    object sqlFornecedorobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object sqlFornecedorcodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlFornecedordatacad: TDateField
      FieldName = 'datacad'
    end
    object sqlFornecedorcargo: TStringField
      FieldName = 'cargo'
      Size = 30
    end
    object sqlFornecedorfone1: TStringField
      FieldName = 'fone1'
      Size = 15
    end
    object sqlFornecedorfone2: TStringField
      FieldName = 'fone2'
      Size = 15
    end
    object sqlFornecedorfone3: TStringField
      FieldName = 'fone3'
      Size = 15
    end
    object sqlFornecedorfone4: TStringField
      FieldName = 'fone4'
      Size = 15
    end
    object sqlFornecedoruf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object sqlFornecedorcidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object sqlFornecedorie: TStringField
      FieldName = 'ie'
      Size = 14
    end
    object sqlFornecedorcontato: TStringField
      FieldName = 'contato'
      Size = 30
    end
    object sqlFornecedorendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object sqlFornecedorfax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object sqlFornecedorcep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object sqlFornecedoremail: TStringField
      FieldName = 'email'
      Size = 30
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sqlFornecedor
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 168
  end
  object sqlProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'Select * from "tblprodutos"')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 224
    object sqlProdutosid: TIntegerField
      FieldName = 'id'
    end
    object sqlProdutoscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlProdutosgrupo: TIntegerField
      FieldName = 'grupo'
    end
    object sqlProdutoscodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object sqlProdutosprocedencia: TStringField
      FieldName = 'procedencia'
    end
    object sqlProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlProdutosgrupopedido: TStringField
      FieldName = 'grupopedido'
      Size = 15
    end
    object sqlProdutosnumeropa: TIntegerField
      FieldName = 'numeropa'
    end
    object sqlProdutosnomeprodutopedido: TStringField
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
    object sqlProdutosncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = sqlProdutos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 224
  end
  object sqlGrupoProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'Select * from "tblgrupoprodutos"')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 280
    object sqlGrupoProdutosid: TIntegerField
      FieldName = 'id'
    end
    object sqlGrupoProdutoscodgrupo: TIntegerField
      FieldName = 'codgrupo'
    end
    object sqlGrupoProdutosnomegrupo: TStringField
      FieldName = 'nomegrupo'
      Size = 30
    end
  end
  object dspGrupoProdutos: TDataSetProvider
    DataSet = sqlGrupoProdutos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 280
  end
  object sqlProdutoxInsumos: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftWideString
        Name = 'idprod'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'Select * from "tblprodutosxinsumos" where "produtoid" = :idprod')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 336
    object sqlProdutoxInsumosid: TIntegerField
      FieldName = 'id'
    end
    object sqlProdutoxInsumosprodutoid: TIntegerField
      FieldName = 'produtoid'
    end
    object sqlProdutoxInsumosinsumosid: TIntegerField
      FieldName = 'insumosid'
    end
  end
  object dspProdutosxInsumos: TDataSetProvider
    DataSet = sqlProdutoxInsumos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 336
  end
  object sqlTblMatPrima: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblmateriaprima"')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 392
    object sqlTblMatPrimaid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblMatPrimacodigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 30
    end
    object sqlTblMatPrimaue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object sqlTblMatPrimadescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlTblMatPrimatipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
  end
  object dspTblMatPrima: TDataSetProvider
    DataSet = sqlTblMatPrima
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 82
    Top = 392
  end
  object sqltblestoqueinsumos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idnfe'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'ininsumo'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select * from "tblestoqueinsumos" where "idnfeentrada" = :idnfe ' +
        'and "idinsumo" = :ininsumo')
    SQLConnection = DMCnn.dbxCnn
    Left = 178
    Top = 8
    object sqltblestoqueinsumosid: TIntegerField
      FieldName = 'id'
    end
    object sqltblestoqueinsumosidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object sqltblestoqueinsumosidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object sqltblestoqueinsumostipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object sqltblestoqueinsumosdata: TDateField
      FieldName = 'data'
    end
    object sqltblestoqueinsumosobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object sqltblestoqueinsumosquantd: TSingleField
      FieldName = 'quantd'
    end
    object sqltblestoqueinsumosidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
    object sqltblestoqueinsumosidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object sqltblestoqueinsumosidproduto: TIntegerField
      FieldName = 'idproduto'
    end
  end
  object dsptblestoqueinsumos: TDataSetProvider
    DataSet = sqltblestoqueinsumos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 226
    Top = 8
  end
  object sqlListaEstoqueInsumos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select b."codigo",b."descricao",sum(a."quantd") as quantd from "' +
        'tblestoqueinsumos" a,"tblinsumos" b'
      'where a."idinsumo" = b."id"'
      'group by a."idinsumo",b."codigo",b."descricao"')
    SQLConnection = DMCnn.dbxCnn
    Left = 186
    Top = 440
    object sqlListaEstoqueInsumoscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlListaEstoqueInsumosdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlListaEstoqueInsumosQUANTD: TFloatField
      FieldName = 'QUANTD'
    end
  end
  object dspListaEstoqueInsumos: TDataSetProvider
    DataSet = sqlListaEstoqueInsumos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 234
    Top = 440
  end
  object dspTblFormula: TDataSetProvider
    DataSet = sqlTblFormula
    Left = 232
    Top = 64
  end
  object dspTblFormuladetalhe: TDataSetProvider
    DataSet = sqlTblFormuladetalhe
    Left = 232
    Top = 120
  end
  object sqlTblFormula: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from "tblformulas" ')
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 64
    object sqlTblFormulaid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblFormulacodigo: TStringField
      FieldName = 'codigo'
      Size = 4
    end
    object sqlTblFormuladescricaoformula: TStringField
      FieldName = 'descricaoformula'
      Size = 50
    end
    object sqlTblFormulaobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
      Size = 1
    end
    object sqlTblFormulapercentual: TSingleField
      FieldName = 'percentual'
    end
    object sqlTblFormulaidcodprocesso: TStringField
      FieldName = 'idcodprocesso'
      Size = 10
    end
    object sqlTblFormulavalido: TIntegerField
      FieldName = 'valido'
    end
  end
  object sqlTblFormuladetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idformula'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select "tblformuladetalhe".*, "tblinsumos"."id", "tblinsumos"."d' +
        'escricao"'
      'from "tblformuladetalhe", "tblinsumos"'
      'where "tblformuladetalhe"."idtblformula" = :idformula'
      'and "tblformuladetalhe"."idmateriaprima" = "tblinsumos"."id"'
      'and "tblinsumos"."tipo" = '#39'Mat. Prima'#39)
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 120
    object sqlTblFormuladetalheid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblFormuladetalheidtblformula: TIntegerField
      FieldName = 'idtblformula'
    end
    object sqlTblFormuladetalheidmateriaprima: TIntegerField
      FieldName = 'idmateriaprima'
    end
    object sqlTblFormuladetalhepercentual: TSingleField
      FieldName = 'percentual'
    end
    object sqlTblFormuladetalhecodprodutoacab: TStringField
      FieldName = 'codprodutoacab'
      Size = 10
    end
    object sqlTblFormuladetalheid_1: TIntegerField
      FieldName = 'id_1'
    end
    object sqlTblFormuladetalhedescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object sqlTblOrdemProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblordemdeproducao"')
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 176
    object sqlTblOrdemProducaoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlTblOrdemProducaoficha: TStringField
      FieldName = 'ficha'
      Size = 5
    end
    object sqlTblOrdemProducaolote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object sqlTblOrdemProducaoemissao: TDateField
      FieldName = 'emissao'
    end
    object sqlTblOrdemProducaoidformula: TIntegerField
      FieldName = 'idformula'
    end
    object sqlTblOrdemProducaoproduzido: TSingleField
      FieldName = 'produzido'
    end
    object sqlTblOrdemProducaofator: TSingleField
      FieldName = 'fator'
    end
    object sqlTblOrdemProducaoemproducao: TIntegerField
      FieldName = 'emproducao'
    end
    object sqlTblOrdemProducaoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlTblOrdemProducaostatus: TStringField
      FieldName = 'status'
      Size = 30
    end
  end
  object dspTblOrdemdeProducao: TDataSetProvider
    DataSet = sqlTblOrdemProducao
    Left = 232
    Top = 176
  end
  object sqlTblOrdemProducaoDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'iddetalhe'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select * from "tblordemdeproducaodetalhe" where "idtblordemdepro' +
        'ducao" = :iddetalhe')
    SQLConnection = DMCnn.dbxCnn
    Left = 32
    Top = 496
    object sqlTblOrdemProducaoDetalheid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblOrdemProducaoDetalheidtblordemdeproducao: TIntegerField
      FieldName = 'idtblordemdeproducao'
    end
    object sqlTblOrdemProducaoDetalheidmateriaprima: TIntegerField
      FieldName = 'idmateriaprima'
    end
    object sqlTblOrdemProducaoDetalhepercentual: TSingleField
      FieldName = 'percentual'
    end
    object sqlTblOrdemProducaoDetalhequantidade: TSingleField
      FieldName = 'quantidade'
    end
    object sqlTblOrdemProducaoDetalhelote1: TStringField
      FieldName = 'lote1'
      Size = 15
    end
    object sqlTblOrdemProducaoDetalhelote2: TStringField
      FieldName = 'lote2'
      Size = 15
    end
    object sqlTblOrdemProducaoDetalhepreco_aquisicao: TSingleField
      FieldName = 'preco_aquisicao'
    end
    object sqlTblOrdemProducaoDetalhevalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object sqlTblOrdemProducaoDetalhelote3: TStringField
      FieldName = 'lote3'
      Size = 15
    end
  end
  object dspTblOrdemProducaoDetalhe: TDataSetProvider
    DataSet = sqlTblOrdemProducaoDetalhe
    Left = 80
    Top = 496
  end
  object sqlTblInsumosFormula: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select * from "tblinsumos" where "tblinsumos"."tipo" = '#39'Mat. Pri' +
        'ma'#39)
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 224
    object sqlTblInsumosFormulaid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblInsumosFormulacodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlTblInsumosFormulaue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object sqlTblInsumosFormulalitragem: TSingleField
      FieldName = 'litragem'
    end
    object sqlTblInsumosFormuladescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlTblInsumosFormulatipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
    object sqlTblInsumosFormulaestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object sqlTblInsumosFormulaestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
  end
  object dspTblIsumosFormula: TDataSetProvider
    DataSet = sqlTblInsumosFormula
    Left = 232
    Top = 224
  end
  object sqlOrdemProducaoDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idordem'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select "tblordemdeproducaodetalhe".*, "tblinsumos"."descricao"'
      'from "tblordemdeproducaodetalhe", "tblinsumos"'
      
        'where "tblordemdeproducaodetalhe"."idmateriaprima" = "tblinsumos' +
        '"."id"'
      'and "idtblordemdeproducao" = :idordem')
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 272
    object sqlOrdemProducaoDetalheid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlOrdemProducaoDetalheidtblordemdeproducao: TIntegerField
      FieldName = 'idtblordemdeproducao'
    end
    object sqlOrdemProducaoDetalheidmateriaprima: TIntegerField
      FieldName = 'idmateriaprima'
    end
    object sqlOrdemProducaoDetalhepercentual: TSingleField
      FieldName = 'percentual'
    end
    object sqlOrdemProducaoDetalhequantidade: TSingleField
      FieldName = 'quantidade'
    end
    object sqlOrdemProducaoDetalhelote1: TStringField
      FieldName = 'lote1'
      Size = 15
    end
    object sqlOrdemProducaoDetalhelote2: TStringField
      FieldName = 'lote2'
      Size = 15
    end
    object sqlOrdemProducaoDetalhepreco_aquisicao: TSingleField
      FieldName = 'preco_aquisicao'
    end
    object sqlOrdemProducaoDetalhevalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object sqlOrdemProducaoDetalhelote3: TStringField
      FieldName = 'lote3'
      Size = 15
    end
    object sqlOrdemProducaoDetalhedescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dspOrdemProducaoDetalhe: TDataSetProvider
    DataSet = sqlOrdemProducaoDetalhe
    Left = 232
    Top = 272
  end
  object sqlTblOrdemEnvase: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select envase.*, produto."descricao"'
      'from "tblordemenvase" as envase, "tblprodutos" as produto'
      'where envase."idprodutos" = produto."id"')
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 328
    object sqlTblOrdemEnvaseid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblOrdemEnvasecodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object sqlTblOrdemEnvaseidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object sqlTblOrdemEnvaseqtdprevista: TSingleField
      FieldName = 'qtdprevista'
    end
    object sqlTblOrdemEnvaseqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object sqlTblOrdemEnvasehora: TTimeField
      FieldName = 'hora'
    end
    object sqlTblOrdemEnvasedata: TDateField
      FieldName = 'data'
    end
    object sqlTblOrdemEnvaseue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object sqlTblOrdemEnvaselote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object sqlTblOrdemEnvasecpa: TStringField
      FieldName = 'cpa'
      Size = 5
    end
    object sqlTblOrdemEnvaseoperador: TStringField
      FieldName = 'operador'
      Size = 30
    end
    object sqlTblOrdemEnvasestatus: TStringField
      FieldName = 'status'
      Size = 15
    end
    object sqlTblOrdemEnvasedescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dspTblOrdemEnvase: TDataSetProvider
    DataSet = sqlTblOrdemEnvase
    Left = 232
    Top = 328
  end
  object sqlTblInsumoEnvase: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'ipdprod'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select "tblprodutos"."id","tblprodutos"."descricao","tblprodutos' +
        'xinsumos"."insumosid",'
      '"tblinsumos"."descricao" as insumodesc'
      'from "tblprodutos","tblprodutosxinsumos","tblinsumos"'
      'where "tblprodutos"."id" = "tblprodutosxinsumos"."produtoid"'
      'and "tblprodutosxinsumos"."insumosid" = "tblinsumos"."id"'
      'and "tblprodutos"."id" = :ipdprod')
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 384
    object sqlTblInsumoEnvaseid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlTblInsumoEnvasedescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlTblInsumoEnvaseinsumosid: TIntegerField
      FieldName = 'insumosid'
    end
    object sqlTblInsumoEnvaseINSUMODESC: TStringField
      FieldName = 'INSUMODESC'
      Size = 100
    end
  end
  object dspTblInsumoEnvase: TDataSetProvider
    DataSet = sqlTblInsumoEnvase
    Left = 232
    Top = 384
  end
  object dspEstoqueQuimico: TDataSetProvider
    DataSet = sqlEstoqueQuimico
    Left = 82
    Top = 447
  end
  object sqlEstoqueQuimico: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select   "tblestoqueinsumos"."id","tblestoqueinsumos"."idinsumo"' +
        ',"tblestoqueinsumos"."idnfeentrada",'
      
        '"tblestoqueinsumos"."tipo", "tblestoqueinsumos"."data", "tblesto' +
        'queinsumos"."idordemquimico", "tblestoqueinsumos"."idproduto",'
      
        '"tblestoqueinsumos"."quantd", "tblestoqueinsumos"."obs", "tblpro' +
        'dutos"."descricao"'
      'from   "tblestoqueinsumos", "tblprodutos"'
      'where  "tblestoqueinsumos"."tipo" = '#39'Mat. Prima Acabada'#39
      'and    "tblestoqueinsumos"."idproduto" = "tblprodutos"."id"'
      '')
    SQLConnection = DMCnn.dbxCnn
    Left = 34
    Top = 446
    object sqlEstoqueQuimicoid: TIntegerField
      FieldName = 'id'
    end
    object sqlEstoqueQuimicoidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object sqlEstoqueQuimicoidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object sqlEstoqueQuimicotipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object sqlEstoqueQuimicodata: TDateField
      FieldName = 'data'
    end
    object sqlEstoqueQuimicoidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object sqlEstoqueQuimicoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlEstoqueQuimicoquantd: TSingleField
      FieldName = 'quantd'
    end
    object sqlEstoqueQuimicoobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object sqlEstoqueQuimicodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dspAcertoInsumo: TDataSetProvider
    DataSet = sqlAcertoInsumo
    Left = 376
    Top = 8
  end
  object sqlAcertoInsumo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select estoque.*, insumo."descricao"'
      'from "tblestoqueinsumos" as estoque, "tblinsumos" as insumo'
      'where estoque."idinsumo" = insumo."id"'
      'and estoque."idnfeentrada" = -1'
      'and estoque."obs" is not null')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 8
    object sqlAcertoInsumoid: TIntegerField
      FieldName = 'id'
    end
    object sqlAcertoInsumoidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object sqlAcertoInsumoidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object sqlAcertoInsumotipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object sqlAcertoInsumodata: TDateField
      FieldName = 'data'
    end
    object sqlAcertoInsumoobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object sqlAcertoInsumoquantd: TSingleField
      FieldName = 'quantd'
    end
    object sqlAcertoInsumoidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
    object sqlAcertoInsumoidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object sqlAcertoInsumoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlAcertoInsumodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object sqlTblRefugo: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from "tblrefugo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 64
    object sqlTblRefugoid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblRefugocodinsumo: TIntegerField
      FieldName = 'codinsumo'
    end
    object sqlTblRefugoqtd: TSingleField
      FieldName = 'qtd'
    end
    object sqlTblRefugoidordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object sqlTblRefugoobser: TMemoField
      FieldName = 'obser'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspTblRefugo: TDataSetProvider
    DataSet = sqlTblRefugo
    Left = 376
    Top = 64
  end
  object sqlRefugoNome: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select refugo.*, insumo."descricao"'
      'from "tblrefugo" as refugo, "tblinsumos" as insumo'
      'where refugo."codinsumo" = insumo."id"')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 120
    object sqlRefugoNomeid: TIntegerField
      FieldName = 'id'
    end
    object sqlRefugoNomecodinsumo: TIntegerField
      FieldName = 'codinsumo'
    end
    object sqlRefugoNomeqtd: TSingleField
      FieldName = 'qtd'
    end
    object sqlRefugoNomeidordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object sqlRefugoNomeobser: TMemoField
      FieldName = 'obser'
      BlobType = ftMemo
      Size = 1
    end
    object sqlRefugoNomedescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dspRefugoNome: TDataSetProvider
    DataSet = sqlRefugoNome
    Left = 376
    Top = 120
  end
  object sqlTblEnvaseDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idop'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select * from "tblenvasedetalhe" where "tblenvasedetalhe"."idord' +
        'emproducao" = :idop')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 176
    object sqlTblEnvaseDetalheid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblEnvaseDetalhecodproduto: TStringField
      FieldName = 'codproduto'
      Size = 50
    end
    object sqlTblEnvaseDetalheqtd: TSingleField
      FieldName = 'qtd'
    end
    object sqlTblEnvaseDetalheue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object sqlTblEnvaseDetalhepreco: TSingleField
      FieldName = 'preco'
    end
    object sqlTblEnvaseDetalhevalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object sqlTblEnvaseDetalheidordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object sqlTblEnvaseDetalheidcodproduto: TIntegerField
      FieldName = 'idcodproduto'
    end
  end
  object dsTblEnvaseDetalhe: TDataSetProvider
    DataSet = sqlTblEnvaseDetalhe
    Left = 376
    Top = 176
  end
  object sqlOrdemEnvaseBt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblordemenvase"')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 224
    object sqlOrdemEnvaseBtid: TIntegerField
      FieldName = 'id'
    end
    object sqlOrdemEnvaseBtcodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object sqlOrdemEnvaseBtidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object sqlOrdemEnvaseBtqtdprevista: TSingleField
      FieldName = 'qtdprevista'
    end
    object sqlOrdemEnvaseBtqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object sqlOrdemEnvaseBthora: TTimeField
      FieldName = 'hora'
    end
    object sqlOrdemEnvaseBtdata: TDateField
      FieldName = 'data'
    end
    object sqlOrdemEnvaseBtue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object sqlOrdemEnvaseBtlote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object sqlOrdemEnvaseBtcpa: TStringField
      FieldName = 'cpa'
      Size = 5
    end
    object sqlOrdemEnvaseBtoperador: TStringField
      FieldName = 'operador'
      Size = 30
    end
    object sqlOrdemEnvaseBtstatus: TStringField
      FieldName = 'status'
      Size = 15
    end
  end
  object dspOrdemEnvaseBt: TDataSetProvider
    DataSet = sqlOrdemEnvaseBt
    Left = 376
    Top = 224
  end
  object sqlQtdProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idpr'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select "tblprodutos"."id","tblprodutos"."descricao","tblprodutos' +
        'xinsumos"."insumosid",'
      
        '"tblinsumos"."descricao" as insumodesc, sum(estoque."quantd"), e' +
        'stoque."idinsumo"'
      
        'from "tblprodutos","tblprodutosxinsumos","tblinsumos", "tblestoq' +
        'ueinsumos" as estoque'
      'where "tblprodutos"."id" = "tblprodutosxinsumos"."produtoid"'
      'and "tblprodutosxinsumos"."insumosid" = "tblinsumos"."id"  '
      'and "tblprodutos"."id" = :idpr'
      'and "tblinsumos"."id" = estoque."idinsumo"'
      
        'group by "tblprodutos"."id","tblprodutos"."descricao","tblprodut' +
        'osxinsumos"."insumosid",'
      '"tblinsumos"."descricao", estoque."idinsumo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 272
    object sqlQtdProdutoid: TIntegerField
      FieldName = 'id'
    end
    object sqlQtdProdutodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlQtdProdutoinsumosid: TIntegerField
      FieldName = 'insumosid'
    end
    object sqlQtdProdutoINSUMODESC: TStringField
      FieldName = 'INSUMODESC'
      Size = 100
    end
    object sqlQtdProdutoSUM: TFloatField
      FieldName = 'SUM'
    end
    object sqlQtdProdutoidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
  end
  object dspQtdProduto: TDataSetProvider
    DataSet = sqlQtdProduto
    Left = 376
    Top = 272
  end
  object sqlOPQuimico: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select "tblordemdeproducao".*, "tblformulas"."descricaoformula",' +
        ' "tblprodutos"."descricao"'
      'from "tblordemdeproducao", "tblformulas", "tblprodutos"'
      'where "tblordemdeproducao"."idformula" = "tblformulas"."id"'
      'and "tblordemdeproducao"."idproduto" = "tblprodutos"."id"')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 328
    object sqlOPQuimicoid: TIntegerField
      FieldName = 'id'
    end
    object sqlOPQuimicoficha: TStringField
      FieldName = 'ficha'
      Size = 5
    end
    object sqlOPQuimicolote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object sqlOPQuimicoemissao: TDateField
      FieldName = 'emissao'
    end
    object sqlOPQuimicoidformula: TIntegerField
      FieldName = 'idformula'
    end
    object sqlOPQuimicoproduzido: TSingleField
      FieldName = 'produzido'
    end
    object sqlOPQuimicofator: TSingleField
      FieldName = 'fator'
    end
    object sqlOPQuimicoemproducao: TIntegerField
      FieldName = 'emproducao'
    end
    object sqlOPQuimicoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlOPQuimicostatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object sqlOPQuimicodescricaoformula: TStringField
      FieldName = 'descricaoformula'
      Size = 50
    end
    object sqlOPQuimicodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dspOPQuimico: TDataSetProvider
    DataSet = sqlOPQuimico
    Left = 376
    Top = 328
  end
  object sqlEstoqueQObs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idest'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select "tblestoqueinsumos"."id", "tblestoqueinsumos"."obs"'
      'from   "tblestoqueinsumos"'
      'where  "tblestoqueinsumos"."tipo" = '#39'Mat. Prima Acabada'#39
      'and    "tblestoqueinsumos"."id" = :idest')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 384
    object sqlEstoqueQObsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlEstoqueQObsobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
  end
  object dspEstoqueQObs: TDataSetProvider
    DataSet = sqlEstoqueQObs
    Left = 376
    Top = 384
  end
  object sqlTblOrdemProducaoQ: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idop'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select * from "tblordemproducaoquimico"'
      'where "tblordemproducaoquimico"."idtblordemproducao" = :idop')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 440
    object sqlTblOrdemProducaoQid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblOrdemProducaoQidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlTblOrdemProducaoQidtblordemproducao: TIntegerField
      FieldName = 'idtblordemproducao'
    end
    object sqlTblOrdemProducaoQpercentual: TSingleField
      FieldName = 'percentual'
    end
    object sqlTblOrdemProducaoQqtd: TSingleField
      FieldName = 'qtd'
    end
  end
  object dspTblOrdemProducaoQ: TDataSetProvider
    DataSet = sqlTblOrdemProducaoQ
    Left = 376
    Top = 440
  end
  object sqlOrdemEnvaseQProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idprodu'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select "tblprodutos"."descricao","tblordemdeproducao"."id","tblo' +
        'rdemdeproducao"."idproduto"'
      'from  "tblprodutos", "tblordemdeproducao"'
      'where "tblordemdeproducao"."idproduto" = :idprodu'
      'and "tblordemdeproducao"."status" = '#39'Finalizada'#39)
    SQLConnection = DMCnn.dbxCnn
    Left = 184
    Top = 496
    object sqlOrdemEnvaseQProdutodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlOrdemEnvaseQProdutoid: TIntegerField
      FieldName = 'id'
    end
    object sqlOrdemEnvaseQProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
  end
  object dspOrdemEnvaseQProduto: TDataSetProvider
    DataSet = sqlOrdemEnvaseQProduto
    Left = 232
    Top = 496
  end
  object sqlNfEId: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftWideString
        Name = 'idnfe'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'Select * from "tblnfeentrada" where "tblnfeentrada"."id" = :idnf' +
        'e')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 8
    object sqlNfEIdid: TIntegerField
      FieldName = 'id'
    end
    object sqlNfEIdnronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object sqlNfEIdserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object sqlNfEIddata: TDateField
      FieldName = 'data'
    end
    object sqlNfEIdcodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object sqlNfEIdcodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlNfEIdcondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object sqlNfEIddetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object sqlNfEIdtipomaterial: TStringField
      FieldName = 'tipomaterial'
      Size = 10
    end
    object sqlNfEIdvalornfe: TSingleField
      FieldName = 'valornfe'
    end
    object sqlNfEIdvalorcalculado: TSingleField
      FieldName = 'valorcalculado'
    end
    object sqlNfEIdobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspNfEId: TDataSetProvider
    DataSet = sqlNfEId
    Left = 496
    Top = 8
  end
  object sqlOpQID: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idop'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select * from "tblordemdeproducao" where "tblordemdeproducao"."i' +
        'd" = :idop')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 64
    object sqlOpQIDid: TIntegerField
      FieldName = 'id'
    end
    object sqlOpQIDficha: TStringField
      FieldName = 'ficha'
      Size = 5
    end
    object sqlOpQIDlote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object sqlOpQIDemissao: TDateField
      FieldName = 'emissao'
    end
    object sqlOpQIDidformula: TIntegerField
      FieldName = 'idformula'
    end
    object sqlOpQIDproduzido: TSingleField
      FieldName = 'produzido'
    end
    object sqlOpQIDfator: TSingleField
      FieldName = 'fator'
    end
    object sqlOpQIDemproducao: TIntegerField
      FieldName = 'emproducao'
    end
    object sqlOpQIDidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlOpQIDstatus: TStringField
      FieldName = 'status'
      Size = 30
    end
  end
  object dspOpQID: TDataSetProvider
    DataSet = sqlOpQID
    Left = 496
    Top = 64
  end
  object sqlRelEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select insu."descricao", insu."codigo", sum(est."quantd"),insu."' +
        'estoqueminimo",'
      
        'insu."estoquemaximo",(sum(est."quantd")- (insu."estoqueminimo"))' +
        ' as falta'
      'from "tblinsumos" as insu'
      
        'left join "tblestoqueinsumos" as est on (insu."id" = est."idinsu' +
        'mo")'
      'group by insu."descricao", insu."codigo", insu."estoqueminimo",'
      'insu."estoquemaximo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 120
    object sqlRelEstoquedescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlRelEstoquecodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlRelEstoqueSUM: TFloatField
      FieldName = 'SUM'
    end
    object sqlRelEstoqueestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object sqlRelEstoqueestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
    object sqlRelEstoqueFALTA: TFloatField
      FieldName = 'FALTA'
    end
  end
  object dspRelEstoque: TDataSetProvider
    DataSet = sqlRelEstoque
    Left = 496
    Top = 120
  end
  object sqlInsumoID: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblinsumos"."id", "tblinsumos"."descricao", "tblinsumos"' +
        '."codigo"'
      'from "tblinsumos"'
      'where "tblinsumos"."tipo" = '#39'Mat. Prima'#39
      '')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 176
    object sqlInsumoIDid: TIntegerField
      FieldName = 'id'
    end
    object sqlInsumoIDdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlInsumoIDcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspInsumoID: TDataSetProvider
    DataSet = sqlInsumoID
    Left = 496
    Top = 176
  end
  object sqlTblSaidaEmbalagem: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from "tblsaidaembalagem"')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 224
    object sqlTblSaidaEmbalagemid: TIntegerField
      FieldName = 'id'
    end
    object sqlTblSaidaEmbalagemidordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object sqlTblSaidaEmbalagemdata: TDateField
      FieldName = 'data'
    end
    object sqlTblSaidaEmbalagemdestino: TStringField
      FieldName = 'destino'
      Size = 45
    end
    object sqlTblSaidaEmbalagemresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 45
    end
    object sqlTblSaidaEmbalagemrequisitante: TStringField
      FieldName = 'requisitante'
      Size = 45
    end
    object sqlTblSaidaEmbalagemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlTblSaidaEmbalagemvalor: TSingleField
      FieldName = 'valor'
    end
  end
  object dspTblSaidaEmabalagem: TDataSetProvider
    DataSet = sqlTblSaidaEmbalagem
    Left = 496
    Top = 224
  end
  object sqlSaidaDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblsaidadetalhe"')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 272
    object sqlSaidaDetalheid: TIntegerField
      FieldName = 'id'
    end
    object sqlSaidaDetalheitem: TIntegerField
      FieldName = 'item'
    end
    object sqlSaidaDetalheqtd: TSingleField
      FieldName = 'qtd'
    end
    object sqlSaidaDetalheqtdcaixa: TSingleField
      FieldName = 'qtdcaixa'
    end
    object sqlSaidaDetalhetotal: TSingleField
      FieldName = 'total'
    end
    object sqlSaidaDetalhedata: TDateField
      FieldName = 'data'
    end
    object sqlSaidaDetalhehora: TTimeField
      FieldName = 'hora'
    end
  end
  object dspSaidaDetalhe: TDataSetProvider
    DataSet = sqlSaidaDetalhe
    Left = 496
    Top = 272
  end
  object sqlOrdemSaida: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select "tblordemenvase".*, "tblprodutos"."descricao"'
      'from "tblordemenvase", "tblprodutos"'
      'where "tblordemenvase"."status" <> '#39'Finalizada'#39
      'and "tblordemenvase"."idprodutos" = "tblprodutos"."id"')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 328
    object sqlOrdemSaidaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlOrdemSaidacodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object sqlOrdemSaidaidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object sqlOrdemSaidaqtdprevista: TSingleField
      FieldName = 'qtdprevista'
    end
    object sqlOrdemSaidaqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object sqlOrdemSaidahora: TTimeField
      FieldName = 'hora'
    end
    object sqlOrdemSaidadata: TDateField
      FieldName = 'data'
    end
    object sqlOrdemSaidaue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object sqlOrdemSaidalote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object sqlOrdemSaidacpa: TStringField
      FieldName = 'cpa'
      Size = 5
    end
    object sqlOrdemSaidaoperador: TStringField
      FieldName = 'operador'
      Size = 30
    end
    object sqlOrdemSaidastatus: TStringField
      FieldName = 'status'
      Size = 15
    end
    object sqlOrdemSaidadescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dspOrdemSaida: TDataSetProvider
    DataSet = sqlOrdemSaida
    Left = 496
    Top = 328
  end
  object sqlAcessSaida: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'codOP'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select "tblenvasedetalhe"."codproduto", "tblprodutos"."descricao' +
        '", "tblordemenvase"."codopenvase"'
      'from "tblenvasedetalhe", "tblordemenvase", "tblprodutos"'
      'where "tblordemenvase"."codopenvase" = :codOP'
      'and "tblordemenvase"."idprodutos" = "tblprodutos"."id"'
      'and "tblenvasedetalhe"."idordemproducao" = "tblordemenvase"."id"')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 384
    object sqlAcessSaidacodproduto: TStringField
      FieldName = 'codproduto'
      Size = 50
    end
    object sqlAcessSaidadescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlAcessSaidacodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
  end
  object dspAcessSaida: TDataSetProvider
    DataSet = sqlAcessSaida
    Left = 496
    Top = 384
  end
  object sqlUsuariosLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblusuarios"')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 440
    object sqlUsuariosListaid: TIntegerField
      FieldName = 'id'
    end
    object sqlUsuariosListanome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object sqlUsuariosListaemail: TStringField
      FieldName = 'email'
      Required = True
      Size = 45
    end
    object sqlUsuariosListausuario: TStringField
      FieldName = 'usuario'
      Required = True
      Size = 45
    end
    object sqlUsuariosListasenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 45
    end
    object sqlUsuariosListanivel: TIntegerField
      FieldName = 'nivel'
      Required = True
    end
  end
  object dspUsuariosLista: TDataSetProvider
    DataSet = sqlUsuariosLista
    Left = 496
    Top = 440
  end
  object sqlUsuariosUn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'id'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select * from "tblusuarios" where "tblusuarios"."id" = :id')
    SQLConnection = DMCnn.dbxCnn
    Left = 328
    Top = 496
    object sqlUsuariosUnid: TIntegerField
      FieldName = 'id'
    end
    object sqlUsuariosUnnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object sqlUsuariosUnemail: TStringField
      FieldName = 'email'
      Required = True
      Size = 45
    end
    object sqlUsuariosUnusuario: TStringField
      FieldName = 'usuario'
      Required = True
      Size = 45
    end
    object sqlUsuariosUnsenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 45
    end
    object sqlUsuariosUnnivel: TIntegerField
      FieldName = 'nivel'
      Required = True
    end
  end
  object dspUsuariosUn: TDataSetProvider
    DataSet = sqlUsuariosUn
    Left = 376
    Top = 496
  end
  object sqlQuimicoCod: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'cod'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select "tblprodutos".*'
      'from "tblprodutos"'
      'where "tblprodutos"."codformula" = :cod ')
    SQLConnection = DMCnn.dbxCnn
    Left = 448
    Top = 496
    object sqlQuimicoCoddescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlQuimicoCodcodformula: TStringField
      FieldName = 'codformula'
      Size = 4
    end
    object sqlQuimicoCodid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlQuimicoCodcodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlQuimicoCodgrupo: TIntegerField
      FieldName = 'grupo'
    end
    object sqlQuimicoCodcodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object sqlQuimicoCodprocedencia: TStringField
      FieldName = 'procedencia'
    end
    object sqlQuimicoCodgrupopedido: TStringField
      FieldName = 'grupopedido'
      Size = 15
    end
    object sqlQuimicoCodnumeropa: TIntegerField
      FieldName = 'numeropa'
    end
    object sqlQuimicoCodnomeprodutopedido: TStringField
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
    object sqlQuimicoCodncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
  end
  object dspQuimicoCod: TDataSetProvider
    DataSet = sqlQuimicoCod
    Left = 496
    Top = 496
  end
  object sqlProdutoForOP: TSQLQuery
    Params = <>
    Left = 584
    Top = 8
  end
  object dspProdutoForOP: TDataSetProvider
    DataSet = sqlProdutoForOP
    Left = 624
    Top = 8
  end
end
