object ServerMethodsGen: TServerMethodsGen
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 725
  Width = 1017
  object qryAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DMCnn.dbxCnn
    Left = 782
    Top = 16
  end
  object sqlTblInsumos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblinsumos"'
      'Order by "descricao"'
      '')
    SQLConnection = DMCnn.dbxCnn
    Left = 18
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
    object sqlTblInsumoslote: TStringField
      FieldName = 'lote'
      Size = 50
    end
    object sqlTblInsumoscod_item: TStringField
      FieldName = 'cod_item'
      Size = 60
    end
    object sqlTblInsumostipo_item: TStringField
      FieldName = 'tipo_item'
      Size = 2
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
      
        'select N."id", N."nronfe", N."serienfe", N."data", N."codfiscal"' +
        ', F."nome_razaosocial", F."codfornecedor",'
      
        'F."id", N."condpagamento", N."detalhepagamento", N."obs", sum(I.' +
        '"valortotal") as ValorTotal'
      
        'from "tblnfeentrada" N, "tblnfeentradaitens" I, "tblfornecedor" ' +
        'F'
      'where N."id" = I."codnfeentrada"'
      'and N."codfornecedor" = F."id"'
      
        'group by N."id",N."nronfe", N."serienfe", N."data", N."codfiscal' +
        '", F."nome_razaosocial", N."condpagamento",'
      'N."detalhepagamento", N."obs", F."codfornecedor", F."id"')
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
    object sqlNfeEntradanome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object sqlNfeEntradacondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object sqlNfeEntradadetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object sqlNfeEntradaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object sqlNfeEntradaobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object sqlNfeEntradacodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlNfeEntradaid_1: TIntegerField
      FieldName = 'id_1'
      Required = True
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
    object sqlProdutoscodformula: TStringField
      FieldName = 'codformula'
      Size = 4
    end
    object sqlProdutosidprodprincipal: TIntegerField
      FieldName = 'idprodprincipal'
    end
    object sqlProdutosrevisao: TIntegerField
      FieldName = 'revisao'
    end
    object sqlProdutoscod_item: TStringField
      FieldName = 'cod_item'
      Size = 60
    end
    object sqlProdutostipo_item: TStringField
      FieldName = 'tipo_item'
      Size = 2
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
    Left = 130
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
    object sqltblestoqueinsumoslote: TStringField
      FieldName = 'lote'
      Size = 40
    end
    object sqltblestoqueinsumosdataval: TDateField
      FieldName = 'dataval'
    end
  end
  object dsptblestoqueinsumos: TDataSetProvider
    DataSet = sqltblestoqueinsumos
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 178
    Top = 8
  end
  object sqlListaEstoqueInsumos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select b."codigo",b."descricao",sum(a."quantd") as quantd from "' +
        'tblinsumos" b'
      'inner join "tblestoqueinsumos" a on a."idinsumo" = b."id"'
      'where a."idordemenvase" is null'
      'group by a."idinsumo",b."codigo",b."descricao"')
    SQLConnection = DMCnn.dbxCnn
    Left = 130
    Top = 448
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
    Left = 178
    Top = 448
  end
  object dspTblFormula: TDataSetProvider
    DataSet = sqlTblFormula
    Left = 176
    Top = 64
  end
  object dspTblFormuladetalhe: TDataSetProvider
    DataSet = sqlTblFormuladetalhe
    Left = 176
    Top = 120
  end
  object sqlTblFormula: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from "tblformulas" ')
    SQLConnection = DMCnn.dbxCnn
    Left = 128
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
    object sqlTblFormulavalido: TIntegerField
      FieldName = 'valido'
    end
    object sqlTblFormulaidcodprocesso: TStringField
      FieldName = 'idcodprocesso'
      Size = 10
    end
    object sqlTblFormulacodproduto: TStringField
      FieldName = 'codproduto'
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
        'escricao", "tblinsumos"."codigo"'
      'from "tblformuladetalhe", "tblinsumos"'
      'where "tblformuladetalhe"."idtblformula" = :idformula'
      'and "tblformuladetalhe"."idmateriaprima" = "tblinsumos"."id"'
      'and "tblinsumos"."tipo" = '#39'Mat. Prima'#39)
    SQLConnection = DMCnn.dbxCnn
    Left = 128
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
    object sqlTblFormuladetalheid_1: TIntegerField
      FieldName = 'id_1'
    end
    object sqlTblFormuladetalhedescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlTblFormuladetalhecodprodutoacab: TStringField
      FieldName = 'codprodutoacab'
      Size = 10
    end
    object sqlTblFormuladetalhecodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlTblFormuladetalhepercentual: TFMTBCDField
      FieldName = 'percentual'
      Precision = 18
      Size = 4
    end
  end
  object sqlTblOrdemProducao: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQL.Strings = (
      'select * from "tblordemdeproducao"')
    SQLConnection = DMCnn.dbxCnn
    Left = 128
    Top = 168
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
    end
  end
  object dspTblOrdemdeProducao: TDataSetProvider
    DataSet = sqlTblOrdemProducao
    Left = 176
    Top = 168
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
    Top = 504
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
    Top = 504
  end
  object sqlTblInsumosFormula: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select * from "tblinsumos" where "tblinsumos"."tipo" = '#39'Mat. Pri' +
        'ma'#39)
    SQLConnection = DMCnn.dbxCnn
    Left = 128
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
    Left = 176
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
      
        'select "tblordemdeproducaodetalhe".*, "tblinsumos"."descricao", ' +
        ' "tblinsumos"."codigo"'
      'from "tblordemdeproducaodetalhe", "tblinsumos"'
      
        'where "tblordemdeproducaodetalhe"."idmateriaprima" = "tblinsumos' +
        '"."id"'
      'and "idtblordemdeproducao" = :idordem')
    SQLConnection = DMCnn.dbxCnn
    Left = 128
    Top = 280
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
    object sqlOrdemProducaoDetalhecodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspOrdemProducaoDetalhe: TDataSetProvider
    DataSet = sqlOrdemProducaoDetalhe
    Left = 176
    Top = 280
  end
  object sqlTblOrdemEnvase: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select envase.*, produto."descricao"'
      'from "tblordemenvase" as envase, "tblprodutos" as produto'
      'where envase."idprodutos" = produto."id"'
      'order by envase."data" desc ')
    SQLConnection = DMCnn.dbxCnn
    Left = 128
    Top = 336
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
    Left = 176
    Top = 336
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
    Left = 128
    Top = 392
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
    Left = 176
    Top = 392
  end
  object dspEstoqueQuimico: TDataSetProvider
    DataSet = sqlEstoqueQuimico
    Left = 82
    Top = 447
  end
  object sqlEstoqueQuimico: TSQLQuery
    MaxBlobSize = 1
    ParamCheck = False
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
    Left = 272
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
    Left = 224
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
    object sqlAcertoInsumolote: TStringField
      FieldName = 'lote'
      Size = 40
    end
  end
  object sqlTblRefugo: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from "tblrefugo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 224
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
    Left = 272
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
    Left = 224
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
    Left = 272
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
    Left = 224
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
    Left = 272
    Top = 176
  end
  object sqlOrdemEnvaseBt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblordemenvase"'
      'order by "data"  desc ')
    SQLConnection = DMCnn.dbxCnn
    Left = 224
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
    Left = 272
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
    Left = 224
    Top = 280
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
    Left = 272
    Top = 280
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
    Left = 224
    Top = 336
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
    Left = 272
    Top = 336
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
    Left = 224
    Top = 392
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
    Left = 272
    Top = 392
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
    Left = 224
    Top = 448
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
    Left = 272
    Top = 448
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
    Left = 128
    Top = 504
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
    Left = 176
    Top = 504
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
    Left = 320
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
    Left = 368
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
    Left = 320
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
    Left = 368
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
      'where insu."tipo" = '#39'Mat. Prima'#39
      'group by insu."descricao", insu."codigo", insu."estoqueminimo",'
      'insu."estoquemaximo" order by insu."codigo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 320
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
    Left = 368
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
    Left = 320
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
    Left = 368
    Top = 176
  end
  object sqlTblSaidaEmbalagem: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from "tblsaidaembalagem"')
    SQLConnection = DMCnn.dbxCnn
    Left = 320
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
    Left = 368
    Top = 224
  end
  object sqlSaidaDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblsaidadetalhe"')
    SQLConnection = DMCnn.dbxCnn
    Left = 320
    Top = 280
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
    Left = 368
    Top = 280
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
    Left = 320
    Top = 336
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
    object sqlOrdemSaidadescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlOrdemSaidastatus: TStringField
      FieldName = 'status'
      Size = 15
    end
  end
  object dspOrdemSaida: TDataSetProvider
    DataSet = sqlOrdemSaida
    Left = 368
    Top = 336
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
    Left = 320
    Top = 392
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
    Left = 368
    Top = 392
  end
  object sqlUsuariosLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblusuarios"')
    SQLConnection = DMCnn.dbxCnn
    Left = 320
    Top = 448
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
  end
  object dspUsuariosLista: TDataSetProvider
    DataSet = sqlUsuariosLista
    Left = 368
    Top = 448
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
    Left = 224
    Top = 504
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
  end
  object dspUsuariosUn: TDataSetProvider
    DataSet = sqlUsuariosUn
    Left = 272
    Top = 504
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
    Left = 320
    Top = 504
    object sqlQuimicoCoddescricao: TStringField
      FieldName = 'descricao'
      Size = 50
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
    object sqlQuimicoCodcodformula: TStringField
      FieldName = 'codformula'
      Size = 4
    end
  end
  object dspQuimicoCod: TDataSetProvider
    DataSet = sqlQuimicoCod
    Left = 368
    Top = 504
  end
  object sqlProdutoForOP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 8
  end
  object dspProdutoForOP: TDataSetProvider
    DataSet = sqlProdutoForOP
    Left = 464
    Top = 8
  end
  object sqlRelEstoque2: TSQLQuery
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
      
        'where insu."tipo" = '#39'Embalagem'#39' and ("local" <> '#39'envase'#39' or "loc' +
        'al" is null)'
      'group by insu."descricao", insu."codigo", insu."estoqueminimo",'
      'insu."estoquemaximo" order by  insu."codigo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 64
    object sqlRelEstoque2descricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlRelEstoque2codigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlRelEstoque2SUM: TFloatField
      FieldName = 'SUM'
    end
    object sqlRelEstoque2estoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object sqlRelEstoque2estoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
    object sqlRelEstoque2FALTA: TFloatField
      FieldName = 'FALTA'
    end
  end
  object dspRelEstoque2: TDataSetProvider
    DataSet = sqlRelEstoque2
    Left = 464
    Top = 64
  end
  object sqlPedidos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblpedidos"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 120
    object sqlPedidosid: TIntegerField
      FieldName = 'id'
    end
    object sqlPedidosdatapedido: TDateField
      FieldName = 'datapedido'
    end
    object sqlPedidosdataentrega: TDateField
      FieldName = 'dataentrega'
    end
    object sqlPedidosnome: TStringField
      FieldName = 'nome'
      Size = 45
    end
    object sqlPedidosendereco: TStringField
      FieldName = 'endereco'
      Size = 45
    end
    object sqlPedidosbairro: TStringField
      FieldName = 'bairro'
      Size = 25
    end
    object sqlPedidoscidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object sqlPedidosuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object sqlPedidoscep: TStringField
      FieldName = 'cep'
      Size = 12
    end
    object sqlPedidostelefone: TStringField
      FieldName = 'telefone'
      Size = 15
    end
    object sqlPedidoscelular: TStringField
      FieldName = 'celular'
      Size = 17
    end
    object sqlPedidosrv: TStringField
      FieldName = 'rv'
      Size = 30
    end
    object sqlPedidosrv2: TStringField
      FieldName = 'rv2'
      Size = 30
    end
    object sqlPedidosrv3: TStringField
      FieldName = 'rv3'
      Size = 30
    end
    object sqlPedidospvbruto: TSingleField
      FieldName = 'pvbruto'
    end
    object sqlPedidosdesconto: TSingleField
      FieldName = 'desconto'
    end
    object sqlPedidosliquido: TSingleField
      FieldName = 'liquido'
    end
  end
  object dspPedidos: TDataSetProvider
    DataSet = sqlPedidos
    Left = 464
    Top = 120
  end
  object sqlPedidosDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'id'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select * from "tblpedidosdetalhe" where'
      ' "tblpedidosdetalhe"."idpedido" = :id')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 176
    object sqlPedidosDetalheid: TIntegerField
      FieldName = 'id'
    end
    object sqlPedidosDetalheun: TIntegerField
      FieldName = 'un'
    end
    object sqlPedidosDetalhecodigo: TStringField
      FieldName = 'codigo'
      Size = 5
    end
    object sqlPedidosDetalheproduto: TStringField
      FieldName = 'produto'
      Size = 50
    end
    object sqlPedidosDetalheprecoun: TSingleField
      FieldName = 'precoun'
    end
    object sqlPedidosDetalheprecototal: TSingleField
      FieldName = 'precototal'
    end
    object sqlPedidosDetalheidpedido: TIntegerField
      FieldName = 'idpedido'
    end
  end
  object dspPedidosDetalhe: TDataSetProvider
    DataSet = sqlPedidosDetalhe
    Left = 464
    Top = 176
  end
  object sqlNfeBtn: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from "tblnfeentrada"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 224
    object sqlNfeBtnid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlNfeBtnnronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object sqlNfeBtnserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object sqlNfeBtndata: TDateField
      FieldName = 'data'
    end
    object sqlNfeBtncodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object sqlNfeBtncodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlNfeBtncondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object sqlNfeBtndetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object sqlNfeBtntipomaterial: TStringField
      FieldName = 'tipomaterial'
      Size = 10
    end
    object sqlNfeBtnvalornfe: TSingleField
      FieldName = 'valornfe'
    end
    object sqlNfeBtnvalorcalculado: TSingleField
      FieldName = 'valorcalculado'
    end
    object sqlNfeBtnobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object sqlNfeBtnlote: TIntegerField
      FieldName = 'lote'
    end
  end
  object dspNFeBtn: TDataSetProvider
    DataSet = sqlNfeBtn
    Left = 464
    Top = 224
  end
  object sqlNfeSum: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idsum'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select sum(I."valortotal") as ValorTotal'
      'from "tblnfeentradaitens" I'
      'where I."codnfeentrada" = :idsum')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 280
  end
  object dspNfeSum: TDataSetProvider
    DataSet = sqlNfeSum
    Left = 464
    Top = 280
  end
  object sqlRelatForn: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftWideString
        Name = 'codforn'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'ini'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fim'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      
        'select nfe."id" as nfeid,nfe.* ,forne."nome_razaosocial",forne."' +
        'id" as codforn, nfeitens.*, nomeitem."descricao", nomeitem."codi' +
        'go" '
      'from "tblnfeentrada" as nfe'
      
        'left outer join "tblnfeentradaitens" as nfeitens on nfeitens."co' +
        'dnfeentrada" = nfe."id"'
      
        'left outer join "tblinsumos" as nomeitem on nomeitem."id" = nfei' +
        'tens."codproduto"'
      
        'left outer join "tblfornecedor" as forne on Nfe."codfornecedor" ' +
        '= forne."id"'
      'where nfe."codfornecedor" = :codforn'
      'and nfe."data" >= :ini and nfe."data" <= :fim'
      'order by nfe."id"')
    SQLConnection = DMCnn.dbxCnn
    Left = 320
    Top = 552
    object sqlRelatFornNFEID: TIntegerField
      FieldName = 'NFEID'
      Required = True
    end
    object sqlRelatFornid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlRelatFornnronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object sqlRelatFornserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object sqlRelatForndata: TDateField
      FieldName = 'data'
    end
    object sqlRelatForncodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object sqlRelatForncodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlRelatForncondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object sqlRelatForndetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object sqlRelatForntipomaterial: TStringField
      FieldName = 'tipomaterial'
      Size = 10
    end
    object sqlRelatFornvalornfe: TSingleField
      FieldName = 'valornfe'
    end
    object sqlRelatFornvalorcalculado: TSingleField
      FieldName = 'valorcalculado'
    end
    object sqlRelatFornobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object sqlRelatFornlote: TIntegerField
      FieldName = 'lote'
    end
    object sqlRelatFornnome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object sqlRelatFornCODFORN: TIntegerField
      FieldName = 'CODFORN'
    end
    object sqlRelatFornid_1: TIntegerField
      FieldName = 'id_1'
    end
    object sqlRelatForncodnfeentrada: TIntegerField
      FieldName = 'codnfeentrada'
    end
    object sqlRelatForncodproduto: TStringField
      FieldName = 'codproduto'
      Size = 30
    end
    object sqlRelatFornUE: TStringField
      FieldName = 'UE'
      Size = 10
    end
    object sqlRelatFornqtde: TSingleField
      FieldName = 'qtde'
    end
    object sqlRelatFornvlrunitario: TSingleField
      FieldName = 'vlrunitario'
    end
    object sqlRelatFornvaloripi: TSingleField
      FieldName = 'valoripi'
    end
    object sqlRelatFornvalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object sqlRelatForncodfornecedor_1: TIntegerField
      FieldName = 'codfornecedor_1'
    end
    object sqlRelatForncodfiscal_1: TStringField
      FieldName = 'codfiscal_1'
      Size = 10
    end
    object sqlRelatFornlote_1: TStringField
      FieldName = 'lote_1'
    end
    object sqlRelatFornvalidade: TDateField
      FieldName = 'validade'
    end
    object sqlRelatFornnroregistro: TIntegerField
      FieldName = 'nroregistro'
    end
    object sqlRelatFornpercentagemicms: TSingleField
      FieldName = 'percentagemicms'
    end
    object sqlRelatFornteveaumento: TSmallintField
      FieldName = 'teveaumento'
    end
    object sqlRelatForngeraetiqueta: TSmallintField
      FieldName = 'geraetiqueta'
    end
    object sqlRelatForncadastradf: TSmallintField
      FieldName = 'cadastradf'
    end
    object sqlRelatFornncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object sqlRelatFornitem: TIntegerField
      FieldName = 'item'
    end
    object sqlRelatFornsequencial: TIntegerField
      FieldName = 'sequencial'
    end
    object sqlRelatForndescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlRelatForncodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspRelatForn: TDataSetProvider
    DataSet = sqlRelatForn
    Left = 368
    Top = 552
  end
  object sqlNomePro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idcod'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select "tblinsumos"."descricao" from "tblinsumos"'
      'where "tblinsumos"."codigo" = :idcod')
    SQLConnection = DMCnn.dbxCnn
    Left = 320
    Top = 608
    object sqlNomeProdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dspNomePro: TDataSetProvider
    DataSet = sqlNomePro
    Left = 368
    Top = 608
  end
  object qrySeq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select gen_id("NfeEntrada_S",0) from rdb$database')
    SQLConnection = DMCnn.dbxCnn
    Left = 32
    Top = 552
    object qrySeqGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      Required = True
    end
  end
  object dspSeq: TDataSetProvider
    DataSet = qrySeq
    Left = 80
    Top = 552
  end
  object qryNfImp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'nf'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select itens.*, ins."descricao", ins."codigo"'
      'from "tblnfeentradaitens" as itens, "tblinsumos" as ins'
      
        'where  ins."id" = itens."codproduto"  and  itens."codnfeentrada"' +
        ' = :nf')
    SQLConnection = DMCnn.dbxCnn
    Left = 32
    Top = 608
    object qryNfImpid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryNfImpcodnfeentrada: TIntegerField
      FieldName = 'codnfeentrada'
    end
    object qryNfImpcodproduto: TStringField
      FieldName = 'codproduto'
      Size = 30
    end
    object qryNfImpUE: TStringField
      FieldName = 'UE'
      Size = 10
    end
    object qryNfImpqtde: TSingleField
      FieldName = 'qtde'
    end
    object qryNfImpvlrunitario: TSingleField
      FieldName = 'vlrunitario'
    end
    object qryNfImpvaloripi: TSingleField
      FieldName = 'valoripi'
    end
    object qryNfImpvalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object qryNfImpcodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object qryNfImpcodfiscal: TStringField
      FieldName = 'codfiscal'
      Size = 10
    end
    object qryNfImplote: TStringField
      FieldName = 'lote'
    end
    object qryNfImpvalidade: TDateField
      FieldName = 'validade'
    end
    object qryNfImpnroregistro: TIntegerField
      FieldName = 'nroregistro'
    end
    object qryNfImppercentagemicms: TSingleField
      FieldName = 'percentagemicms'
    end
    object qryNfImpteveaumento: TSmallintField
      FieldName = 'teveaumento'
    end
    object qryNfImpgeraetiqueta: TSmallintField
      FieldName = 'geraetiqueta'
    end
    object qryNfImpcadastradf: TSmallintField
      FieldName = 'cadastradf'
    end
    object qryNfImpncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object qryNfImpitem: TIntegerField
      FieldName = 'item'
    end
    object qryNfImpsequencial: TIntegerField
      FieldName = 'sequencial'
    end
    object qryNfImpdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qryNfImpcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspNfImp: TDataSetProvider
    DataSet = qryNfImp
    Left = 80
    Top = 608
  end
  object sqlLoteQuimico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select est."lote", est."data", est."quantd"'
      ' from "tblestoqueinsumos" as est'
      ' where est."idinsumo" = :ID'
      ' order by  est."data" asc')
    SQLConnection = DMCnn.dbxCnn
    Left = 128
    Top = 608
    object sqlLoteQuimicolote: TStringField
      FieldName = 'lote'
      Size = 40
    end
    object sqlLoteQuimicodata: TDateField
      FieldName = 'data'
    end
    object sqlLoteQuimicoquantd: TSingleField
      FieldName = 'quantd'
    end
  end
  object dspLoteQuimico: TDataSetProvider
    DataSet = sqlLoteQuimico
    Left = 176
    Top = 608
  end
  object sqlEstoqueQ: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblestoqueinsumos"')
    SQLConnection = DMCnn.dbxCnn
    Left = 128
    Top = 552
    object sqlEstoqueQid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlEstoqueQidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object sqlEstoqueQidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object sqlEstoqueQtipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object sqlEstoqueQdata: TDateField
      FieldName = 'data'
    end
    object sqlEstoqueQobs2: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object sqlEstoqueQquantd: TSingleField
      FieldName = 'quantd'
    end
    object sqlEstoqueQidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
    object sqlEstoqueQidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object sqlEstoqueQidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlEstoqueQlote: TStringField
      FieldName = 'lote'
      Size = 40
    end
  end
  object dspEstoqueQ: TDataSetProvider
    DataSet = sqlEstoqueQ
    Left = 176
    Top = 552
  end
  object sqlOPDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'idop'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'Select * from "tblordemdeproducaodetalhe" where "idtblordemdepro' +
        'ducao" =  :idop')
    SQLConnection = DMCnn.dbxCnn
    Left = 224
    Top = 608
    object sqlOPDetalheid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlOPDetalheidtblordemdeproducao: TIntegerField
      FieldName = 'idtblordemdeproducao'
    end
    object sqlOPDetalheidmateriaprima: TIntegerField
      FieldName = 'idmateriaprima'
    end
    object sqlOPDetalhepercentual: TSingleField
      FieldName = 'percentual'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object sqlOPDetalhequantidade: TSingleField
      FieldName = 'quantidade'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object sqlOPDetalhelote1: TStringField
      FieldName = 'lote1'
      Size = 15
    end
    object sqlOPDetalhelote2: TStringField
      FieldName = 'lote2'
      Size = 15
    end
    object sqlOPDetalhepreco_aquisicao: TSingleField
      FieldName = 'preco_aquisicao'
    end
    object sqlOPDetalhevalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object sqlOPDetalhelote3: TStringField
      FieldName = 'lote3'
      Size = 15
    end
    object sqlOPDetalheqtd1: TSingleField
      FieldName = 'qtd1'
    end
    object sqlOPDetalheqtd2: TSingleField
      FieldName = 'qtd2'
    end
    object sqlOPDetalheqtd3: TSingleField
      FieldName = 'qtd3'
    end
  end
  object dspOPDetalhe: TDataSetProvider
    DataSet = sqlOPDetalhe
    Left = 272
    Top = 608
  end
  object sqlForItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idnf'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'select itens.*, nomeitem."descricao", nomeitem."codigo" from "tb' +
        'lnfeentradaitens" as itens'
      
        'left outer join "tblinsumos" as nomeitem on nomeitem."id" = iten' +
        's."codproduto"'
      'where itens."codnfeentrada" = :idnf')
    SQLConnection = DMCnn.dbxCnn
    Left = 224
    Top = 552
    object sqlForItensid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlForItenscodnfeentrada: TIntegerField
      FieldName = 'codnfeentrada'
    end
    object sqlForItenscodproduto: TStringField
      FieldName = 'codproduto'
      Size = 30
    end
    object sqlForItensUE: TStringField
      FieldName = 'UE'
      Size = 10
    end
    object sqlForItensqtde: TSingleField
      FieldName = 'qtde'
    end
    object sqlForItensvlrunitario: TSingleField
      FieldName = 'vlrunitario'
    end
    object sqlForItensvaloripi: TSingleField
      FieldName = 'valoripi'
    end
    object sqlForItensvalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object sqlForItenscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object sqlForItenscodfiscal: TStringField
      FieldName = 'codfiscal'
      Size = 10
    end
    object sqlForItenslote: TStringField
      FieldName = 'lote'
    end
    object sqlForItensvalidade: TDateField
      FieldName = 'validade'
    end
    object sqlForItensnroregistro: TIntegerField
      FieldName = 'nroregistro'
    end
    object sqlForItenspercentagemicms: TSingleField
      FieldName = 'percentagemicms'
    end
    object sqlForItensteveaumento: TSmallintField
      FieldName = 'teveaumento'
    end
    object sqlForItensgeraetiqueta: TSmallintField
      FieldName = 'geraetiqueta'
    end
    object sqlForItenscadastradf: TSmallintField
      FieldName = 'cadastradf'
    end
    object sqlForItensncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object sqlForItensitem: TIntegerField
      FieldName = 'item'
    end
    object sqlForItenssequencial: TIntegerField
      FieldName = 'sequencial'
    end
    object sqlForItensdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlForItenscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspForItens: TDataSetProvider
    DataSet = sqlForItens
    Left = 272
    Top = 552
  end
  object sqlMatPrimaRelat: TSQLQuery
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
      'where insu."tipo" = '#39'Mat. Prima'#39
      'group by insu."descricao", insu."codigo", insu."estoqueminimo",'
      'insu."estoquemaximo" order by  insu."codigo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 8
    object sqlMatPrimaRelatdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlMatPrimaRelatcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlMatPrimaRelatSUM: TFloatField
      FieldName = 'SUM'
    end
    object sqlMatPrimaRelatestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object sqlMatPrimaRelatestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
    object sqlMatPrimaRelatFALTA: TFloatField
      FieldName = 'FALTA'
    end
  end
  object dspMatPrimaRelat: TDataSetProvider
    DataSet = sqlMatPrimaRelat
    Left = 560
    Top = 8
  end
  object sqlUsoIntRelat: TSQLQuery
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
      'where insu."tipo" = '#39'Uso Interno'#39
      'group by insu."descricao", insu."codigo", insu."estoqueminimo",'
      'insu."estoquemaximo" order by  insu."codigo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 64
    object sqlUsoIntRelatdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlUsoIntRelatcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlUsoIntRelatSUM: TFloatField
      FieldName = 'SUM'
    end
    object sqlUsoIntRelatestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object sqlUsoIntRelatestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
    object sqlUsoIntRelatFALTA: TFloatField
      FieldName = 'FALTA'
    end
  end
  object dspUsoIntRelat: TDataSetProvider
    DataSet = sqlUsoIntRelat
    Left = 560
    Top = 64
  end
  object qryNFQuimico: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select N."id", N."nronfe", N."serienfe", N."data", N."codfiscal"' +
        ', F."nome_razaosocial", N."condpagamento",'
      'N."detalhepagamento", N."obs", sum(I."valortotal") as ValorTotal'
      
        'from "tblnfeentrada" N, "tblnfeentradaitens" I, "tblfornecedor" ' +
        'F'
      'where N."id" = I."codnfeentrada"'
      'and N."codfornecedor" = F."id"'
      'and I."sequencial" > 0'
      
        'group by N."id",N."nronfe", N."serienfe", N."data", N."codfiscal' +
        '", F."nome_razaosocial", N."condpagamento",'
      'N."detalhepagamento", N."obs"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 336
    object qryNFQuimicoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryNFQuimiconronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object qryNFQuimicoserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object qryNFQuimicodata: TDateField
      FieldName = 'data'
    end
    object qryNFQuimicocodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object qryNFQuimiconome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object qryNFQuimicocondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object qryNFQuimicodetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object qryNFQuimicoobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object qryNFQuimicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
  end
  object dspNFQuimico: TDataSetProvider
    DataSet = qryNFQuimico
    Left = 464
    Top = 336
  end
  object qryNFQuimicoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'nfe'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select "tblnfeentradaitens".*, "tblinsumos"."descricao", "tblins' +
        'umos"."codigo" from "tblnfeentradaitens"'
      
        'inner join "tblinsumos" on "tblinsumos"."id" = "tblnfeentradaite' +
        'ns"."codproduto"'
      'where "sequencial" > 0 and "codnfeentrada" = :nfe')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 392
    object qryNFQuimicoItensid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryNFQuimicoItenscodnfeentrada: TIntegerField
      FieldName = 'codnfeentrada'
    end
    object qryNFQuimicoItenscodproduto: TStringField
      FieldName = 'codproduto'
      Size = 30
    end
    object qryNFQuimicoItensUE: TStringField
      FieldName = 'UE'
      Size = 10
    end
    object qryNFQuimicoItensqtde: TSingleField
      FieldName = 'qtde'
    end
    object qryNFQuimicoItensvlrunitario: TSingleField
      FieldName = 'vlrunitario'
    end
    object qryNFQuimicoItensvaloripi: TSingleField
      FieldName = 'valoripi'
    end
    object qryNFQuimicoItensvalortotal: TSingleField
      FieldName = 'valortotal'
    end
    object qryNFQuimicoItenscodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object qryNFQuimicoItenscodfiscal: TStringField
      FieldName = 'codfiscal'
      Size = 10
    end
    object qryNFQuimicoItenslote: TStringField
      FieldName = 'lote'
    end
    object qryNFQuimicoItensvalidade: TDateField
      FieldName = 'validade'
    end
    object qryNFQuimicoItensnroregistro: TIntegerField
      FieldName = 'nroregistro'
    end
    object qryNFQuimicoItenspercentagemicms: TSingleField
      FieldName = 'percentagemicms'
    end
    object qryNFQuimicoItensteveaumento: TSmallintField
      FieldName = 'teveaumento'
    end
    object qryNFQuimicoItensgeraetiqueta: TSmallintField
      FieldName = 'geraetiqueta'
    end
    object qryNFQuimicoItenscadastradf: TSmallintField
      FieldName = 'cadastradf'
    end
    object qryNFQuimicoItensncm: TStringField
      FieldName = 'ncm'
      Size = 15
    end
    object qryNFQuimicoItensitem: TIntegerField
      FieldName = 'item'
    end
    object qryNFQuimicoItenssequencial: TIntegerField
      FieldName = 'sequencial'
    end
    object qryNFQuimicoItensdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qryNFQuimicoItenscodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspNFQuimicoItens: TDataSetProvider
    DataSet = qryNFQuimicoItens
    Left = 464
    Top = 392
  end
  object qryComunicadoInt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblcomunicado"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 448
    object qryComunicadoIntseqci: TIntegerField
      FieldName = 'seqci'
    end
    object qryComunicadoIntdata: TDateField
      FieldName = 'data'
    end
    object qryComunicadoIntidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object qryComunicadoIntobs: TStringField
      FieldName = 'obs'
      Size = 255
    end
    object qryComunicadoIntid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryComunicadoIntusado: TIntegerField
      FieldName = 'usado'
    end
  end
  object dspComunicadoInt: TDataSetProvider
    DataSet = qryComunicadoInt
    Left = 464
    Top = 448
  end
  object qryMPEspc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblespmp"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 504
    object qryMPEspcid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryMPEspcidmp: TIntegerField
      FieldName = 'idmp'
    end
    object qryMPEspcmaterial: TStringField
      FieldName = 'material'
      Size = 80
    end
    object qryMPEspccor: TStringField
      FieldName = 'cor'
      Size = 50
    end
    object qryMPEspccrtcor: TStringField
      FieldName = 'crtcor'
      Size = 50
    end
    object qryMPEspcodor: TStringField
      FieldName = 'odor'
      Size = 50
    end
    object qryMPEspctoxidade: TStringField
      FieldName = 'toxidade'
      Size = 50
    end
    object qryMPEspcdensidade: TStringField
      FieldName = 'densidade'
      Size = 50
    end
    object qryMPEspcismg: TStringField
      FieldName = 'ismg'
      Size = 50
    end
    object qryMPEspciiodo: TStringField
      FieldName = 'iiodo'
      Size = 50
    end
    object qryMPEspcipero: TStringField
      FieldName = 'ipero'
      Size = 50
    end
    object qryMPEspcumidade: TStringField
      FieldName = 'umidade'
      Size = 50
    end
    object qryMPEspcconservacao: TStringField
      FieldName = 'conservacao'
      Size = 50
    end
    object qryMPEspcfinalidade: TStringField
      FieldName = 'finalidade'
      Size = 50
    end
    object qryMPEspcpl: TStringField
      FieldName = 'pl'
      Size = 10
    end
  end
  object dspMPEspc: TDataSetProvider
    DataSet = qryMPEspc
    Left = 464
    Top = 504
  end
  object qryMPEspList: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblespmp".*, "tblinsumos"."descricao", "tblinsumos"."cod' +
        'igo"  from "tblespmp"'
      'inner join "tblinsumos" on "tblinsumos"."id" = "tblespmp"."idmp"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 552
    object qryMPEspListid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryMPEspListidmp: TIntegerField
      FieldName = 'idmp'
    end
    object qryMPEspListmaterial: TStringField
      FieldName = 'material'
      Size = 80
    end
    object qryMPEspListcor: TStringField
      FieldName = 'cor'
      Size = 50
    end
    object qryMPEspListcrtcor: TStringField
      FieldName = 'crtcor'
      Size = 50
    end
    object qryMPEspListodor: TStringField
      FieldName = 'odor'
      Size = 50
    end
    object qryMPEspListtoxidade: TStringField
      FieldName = 'toxidade'
      Size = 50
    end
    object qryMPEspListdensidade: TStringField
      FieldName = 'densidade'
      Size = 50
    end
    object qryMPEspListismg: TStringField
      FieldName = 'ismg'
      Size = 50
    end
    object qryMPEspListiiodo: TStringField
      FieldName = 'iiodo'
      Size = 50
    end
    object qryMPEspListipero: TStringField
      FieldName = 'ipero'
      Size = 50
    end
    object qryMPEspListumidade: TStringField
      FieldName = 'umidade'
      Size = 50
    end
    object qryMPEspListconservacao: TStringField
      FieldName = 'conservacao'
      Size = 50
    end
    object qryMPEspListfinalidade: TStringField
      FieldName = 'finalidade'
      Size = 50
    end
    object qryMPEspListpl: TStringField
      FieldName = 'pl'
      Size = 10
    end
    object qryMPEspListdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qryMPEspListcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspMPEspList: TDataSetProvider
    DataSet = qryMPEspList
    Left = 464
    Top = 552
  end
  object qryEspEmb: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblespemb"')
    SQLConnection = DMCnn.dbxCnn
    Left = 416
    Top = 608
    object qryEspEmbid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryEspEmbidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qryEspEmbidembf: TIntegerField
      FieldName = 'idembf'
    end
    object qryEspEmbidembt: TIntegerField
      FieldName = 'idembt'
    end
    object qryEspEmbidembb: TIntegerField
      FieldName = 'idembb'
    end
    object qryEspEmbidembc: TIntegerField
      FieldName = 'idembc'
    end
    object qryEspEmbmaterialf: TStringField
      FieldName = 'materialf'
      Size = 25
    end
    object qryEspEmbcorf: TStringField
      FieldName = 'corf'
      Size = 25
    end
    object qryEspEmbcarctcorf: TStringField
      FieldName = 'carctcorf'
      Size = 25
    end
    object qryEspEmbodorf: TStringField
      FieldName = 'odorf'
      Size = 25
    end
    object qryEspEmbtoxidadef: TStringField
      FieldName = 'toxidadef'
      Size = 25
    end
    object qryEspEmbpesofref: TStringField
      FieldName = 'pesofref'
      Size = 25
    end
    object qryEspEmbpesofmin: TStringField
      FieldName = 'pesofmin'
      Size = 25
    end
    object qryEspEmbpesofmax: TStringField
      FieldName = 'pesofmax'
      Size = 25
    end
    object qryEspEmbalturafref: TStringField
      FieldName = 'alturafref'
      Size = 25
    end
    object qryEspEmbalturafmin: TStringField
      FieldName = 'alturafmin'
      Size = 25
    end
    object qryEspEmbalturafmax: TStringField
      FieldName = 'alturafmax'
      Size = 25
    end
    object qryEspEmblarguraombrofref: TStringField
      FieldName = 'larguraombrofref'
      Size = 25
    end
    object qryEspEmblarguraombrofmin: TStringField
      FieldName = 'larguraombrofmin'
      Size = 25
    end
    object qryEspEmblarguraombrofmax: TStringField
      FieldName = 'larguraombrofmax'
      Size = 25
    end
    object qryEspEmblarguracorpomediofref: TStringField
      FieldName = 'larguracorpomediofref'
      Size = 25
    end
    object qryEspEmblarguracorpomediofmin: TStringField
      FieldName = 'larguracorpomediofmin'
      Size = 25
    end
    object qryEspEmblarguracorpomediofmax: TStringField
      FieldName = 'larguracorpomediofmax'
      Size = 25
    end
    object qryEspEmbdiametroroscafref: TStringField
      FieldName = 'diametroroscafref'
      Size = 25
    end
    object qryEspEmbdiametroroscafmin: TStringField
      FieldName = 'diametroroscafmin'
      Size = 25
    end
    object qryEspEmbdiametroroscafmax: TStringField
      FieldName = 'diametroroscafmax'
      Size = 25
    end
    object qryEspEmbdiametroextroscafref: TStringField
      FieldName = 'diametroextroscafref'
      Size = 25
    end
    object qryEspEmbdiametroextroscafmin: TStringField
      FieldName = 'diametroextroscafmin'
      Size = 25
    end
    object qryEspEmbdiametroextroscafmax: TStringField
      FieldName = 'diametroextroscafmax'
      Size = 25
    end
    object qryEspEmbdiametroextgargfref: TStringField
      FieldName = 'diametroextgargfref'
      Size = 25
    end
    object qryEspEmbdiametroextgargfmin: TStringField
      FieldName = 'diametroextgargfmin'
      Size = 25
    end
    object qryEspEmbdiametroextgargfmax: TStringField
      FieldName = 'diametroextgargfmax'
      Size = 25
    end
    object qryEspEmbdiametrointgargfref: TStringField
      FieldName = 'diametrointgargfref'
      Size = 25
    end
    object qryEspEmbdiametrointgargfmin: TStringField
      FieldName = 'diametrointgargfmin'
      Size = 25
    end
    object qryEspEmbdiametrointgargfmax: TStringField
      FieldName = 'diametrointgargfmax'
      Size = 25
    end
    object qryEspEmbdiametrotravafref: TStringField
      FieldName = 'diametrotravafref'
      Size = 25
    end
    object qryEspEmbdiametrotravafmin: TStringField
      FieldName = 'diametrotravafmin'
      Size = 25
    end
    object qryEspEmbdiametrotravafmax: TStringField
      FieldName = 'diametrotravafmax'
      Size = 25
    end
    object qryEspEmbvolumefref: TStringField
      FieldName = 'volumefref'
      Size = 25
    end
    object qryEspEmbvolumefmin: TStringField
      FieldName = 'volumefmin'
      Size = 25
    end
    object qryEspEmbvolumefmax: TStringField
      FieldName = 'volumefmax'
      Size = 25
    end
    object qryEspEmbmaterialt: TStringField
      FieldName = 'materialt'
      Size = 25
    end
    object qryEspEmbcort: TStringField
      FieldName = 'cort'
      Size = 25
    end
    object qryEspEmbcarctcort: TStringField
      FieldName = 'carctcort'
      Size = 25
    end
    object qryEspEmbodort: TStringField
      FieldName = 'odort'
      Size = 25
    end
    object qryEspEmbtoxidadet: TStringField
      FieldName = 'toxidadet'
      Size = 25
    end
    object qryEspEmbpesotref: TStringField
      FieldName = 'pesotref'
      Size = 25
    end
    object qryEspEmbpesotmin: TStringField
      FieldName = 'pesotmin'
      Size = 25
    end
    object qryEspEmbpesotmax: TStringField
      FieldName = 'pesotmax'
      Size = 25
    end
    object qryEspEmbalturatref: TStringField
      FieldName = 'alturatref'
      Size = 25
    end
    object qryEspEmbalturatmin: TStringField
      FieldName = 'alturatmin'
      Size = 25
    end
    object qryEspEmbalturatmax: TStringField
      FieldName = 'alturatmax'
      Size = 25
    end
    object qryEspEmblarguraombrotref: TStringField
      FieldName = 'larguraombrotref'
      Size = 25
    end
    object qryEspEmblarguraombrotmin: TStringField
      FieldName = 'larguraombrotmin'
      Size = 25
    end
    object qryEspEmblarguraombrotmax: TStringField
      FieldName = 'larguraombrotmax'
      Size = 25
    end
    object qryEspEmblarguracorpomediotref: TStringField
      FieldName = 'larguracorpomediotref'
      Size = 25
    end
    object qryEspEmblarguracorpomediotmin: TStringField
      FieldName = 'larguracorpomediotmin'
      Size = 25
    end
    object qryEspEmblarguracorpomediotmax: TStringField
      FieldName = 'larguracorpomediotmax'
      Size = 25
    end
    object qryEspEmbdiametrotref: TStringField
      FieldName = 'diametrotref'
      Size = 25
    end
    object qryEspEmbdiametrotmin: TStringField
      FieldName = 'diametrotmin'
      Size = 25
    end
    object qryEspEmbdiametrotmax: TStringField
      FieldName = 'diametrotmax'
      Size = 25
    end
    object qryEspEmbdiametroroscatref: TStringField
      FieldName = 'diametroroscatref'
      Size = 25
    end
    object qryEspEmbdiametroroscatmin: TStringField
      FieldName = 'diametroroscatmin'
      Size = 25
    end
    object qryEspEmbdiametroroscatmax: TStringField
      FieldName = 'diametroroscatmax'
      Size = 25
    end
    object qryEspEmbmaterialb: TStringField
      FieldName = 'materialb'
      Size = 25
    end
    object qryEspEmbcorb: TStringField
      FieldName = 'corb'
      Size = 25
    end
    object qryEspEmbcarctcorb: TStringField
      FieldName = 'carctcorb'
      Size = 25
    end
    object qryEspEmbodorb: TStringField
      FieldName = 'odorb'
      Size = 25
    end
    object qryEspEmbtoxidadeb: TStringField
      FieldName = 'toxidadeb'
      Size = 25
    end
    object qryEspEmbpesobref: TStringField
      FieldName = 'pesobref'
      Size = 25
    end
    object qryEspEmbpesobmin: TStringField
      FieldName = 'pesobmin'
      Size = 25
    end
    object qryEspEmbpesobmax: TStringField
      FieldName = 'pesobmax'
      Size = 25
    end
    object qryEspEmbalturabref: TStringField
      FieldName = 'alturabref'
      Size = 25
    end
    object qryEspEmbalturabmin: TStringField
      FieldName = 'alturabmin'
      Size = 25
    end
    object qryEspEmbalturabmax: TStringField
      FieldName = 'alturabmax'
      Size = 25
    end
    object qryEspEmblarguraombrobref: TStringField
      FieldName = 'larguraombrobref'
      Size = 25
    end
    object qryEspEmblarguraombrobmin: TStringField
      FieldName = 'larguraombrobmin'
      Size = 25
    end
    object qryEspEmblarguraombrobmax: TStringField
      FieldName = 'larguraombrobmax'
      Size = 25
    end
    object qryEspEmbmaterialc: TStringField
      FieldName = 'materialc'
      Size = 25
    end
    object qryEspEmbcorc: TStringField
      FieldName = 'corc'
      Size = 25
    end
    object qryEspEmbcarctcorc: TStringField
      FieldName = 'carctcorc'
      Size = 25
    end
    object qryEspEmbodorc: TStringField
      FieldName = 'odorc'
      Size = 25
    end
    object qryEspEmbtoxidadec: TStringField
      FieldName = 'toxidadec'
      Size = 25
    end
    object qryEspEmbpesocref: TStringField
      FieldName = 'pesocref'
      Size = 25
    end
    object qryEspEmbpesocmin: TStringField
      FieldName = 'pesocmin'
      Size = 25
    end
    object qryEspEmbpesocmax: TStringField
      FieldName = 'pesocmax'
      Size = 25
    end
  end
  object dspEspEmb: TDataSetProvider
    DataSet = qryEspEmb
    Left = 464
    Top = 608
  end
  object qryEmbalagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblinsumos"."id", "tblinsumos"."descricao", "tblinsumos"' +
        '."codigo"'
      'from "tblinsumos"'
      'where "tblinsumos"."tipo" = '#39'Embalagem'#39)
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 120
    object qryEmbalagemid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryEmbalagemdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qryEmbalagemcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
  end
  object dspEmbalagem: TDataSetProvider
    DataSet = qryEmbalagem
    Left = 560
    Top = 120
  end
  object qryEspEmbList: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select emb.*, frasco."codigo" as frasccod, frasco."descricao" as' +
        ' frasdesc, tampa."codigo" as tamcod, tampa."descricao" as tamdes' +
        'c,'
      
        'bato."codigo" as batocod, bato."descricao" as batodesc, cart."co' +
        'digo" as cartcod, cart."descricao" as cartdesc,'
      'produto."nomeprodutopedido" as produtonome'
      'from "tblespemb" as emb'
      'inner join "tblinsumos" as frasco on frasco."id" = emb."idembf"'
      'inner join "tblinsumos" as tampa on tampa."id" = emb."idembt"'
      'inner join "tblinsumos" as bato on bato."id" = emb."idembb"'
      'inner join "tblinsumos" as cart on cart."id" = emb."idembc"'
      
        'inner join "tblprodutos" as produto on produto."id" = emb."idpro' +
        'duto"')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 176
    object qryEspEmbListid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryEspEmbListidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qryEspEmbListidembf: TIntegerField
      FieldName = 'idembf'
    end
    object qryEspEmbListidembt: TIntegerField
      FieldName = 'idembt'
    end
    object qryEspEmbListidembb: TIntegerField
      FieldName = 'idembb'
    end
    object qryEspEmbListidembc: TIntegerField
      FieldName = 'idembc'
    end
    object qryEspEmbListmaterialf: TStringField
      FieldName = 'materialf'
      Size = 25
    end
    object qryEspEmbListcorf: TStringField
      FieldName = 'corf'
      Size = 25
    end
    object qryEspEmbListcarctcorf: TStringField
      FieldName = 'carctcorf'
      Size = 25
    end
    object qryEspEmbListodorf: TStringField
      FieldName = 'odorf'
      Size = 25
    end
    object qryEspEmbListtoxidadef: TStringField
      FieldName = 'toxidadef'
      Size = 25
    end
    object qryEspEmbListpesofref: TStringField
      FieldName = 'pesofref'
      Size = 25
    end
    object qryEspEmbListpesofmin: TStringField
      FieldName = 'pesofmin'
      Size = 25
    end
    object qryEspEmbListpesofmax: TStringField
      FieldName = 'pesofmax'
      Size = 25
    end
    object qryEspEmbListalturafref: TStringField
      FieldName = 'alturafref'
      Size = 25
    end
    object qryEspEmbListalturafmin: TStringField
      FieldName = 'alturafmin'
      Size = 25
    end
    object qryEspEmbListalturafmax: TStringField
      FieldName = 'alturafmax'
      Size = 25
    end
    object qryEspEmbListlarguraombrofref: TStringField
      FieldName = 'larguraombrofref'
      Size = 25
    end
    object qryEspEmbListlarguraombrofmin: TStringField
      FieldName = 'larguraombrofmin'
      Size = 25
    end
    object qryEspEmbListlarguraombrofmax: TStringField
      FieldName = 'larguraombrofmax'
      Size = 25
    end
    object qryEspEmbListlarguracorpomediofref: TStringField
      FieldName = 'larguracorpomediofref'
      Size = 25
    end
    object qryEspEmbListlarguracorpomediofmin: TStringField
      FieldName = 'larguracorpomediofmin'
      Size = 25
    end
    object qryEspEmbListlarguracorpomediofmax: TStringField
      FieldName = 'larguracorpomediofmax'
      Size = 25
    end
    object qryEspEmbListdiametroroscafref: TStringField
      FieldName = 'diametroroscafref'
      Size = 25
    end
    object qryEspEmbListdiametroroscafmin: TStringField
      FieldName = 'diametroroscafmin'
      Size = 25
    end
    object qryEspEmbListdiametroroscafmax: TStringField
      FieldName = 'diametroroscafmax'
      Size = 25
    end
    object qryEspEmbListdiametroextroscafref: TStringField
      FieldName = 'diametroextroscafref'
      Size = 25
    end
    object qryEspEmbListdiametroextroscafmin: TStringField
      FieldName = 'diametroextroscafmin'
      Size = 25
    end
    object qryEspEmbListdiametroextroscafmax: TStringField
      FieldName = 'diametroextroscafmax'
      Size = 25
    end
    object qryEspEmbListdiametroextgargfref: TStringField
      FieldName = 'diametroextgargfref'
      Size = 25
    end
    object qryEspEmbListdiametroextgargfmin: TStringField
      FieldName = 'diametroextgargfmin'
      Size = 25
    end
    object qryEspEmbListdiametroextgargfmax: TStringField
      FieldName = 'diametroextgargfmax'
      Size = 25
    end
    object qryEspEmbListdiametrointgargfref: TStringField
      FieldName = 'diametrointgargfref'
      Size = 25
    end
    object qryEspEmbListdiametrointgargfmin: TStringField
      FieldName = 'diametrointgargfmin'
      Size = 25
    end
    object qryEspEmbListdiametrointgargfmax: TStringField
      FieldName = 'diametrointgargfmax'
      Size = 25
    end
    object qryEspEmbListdiametrotravafref: TStringField
      FieldName = 'diametrotravafref'
      Size = 25
    end
    object qryEspEmbListdiametrotravafmin: TStringField
      FieldName = 'diametrotravafmin'
      Size = 25
    end
    object qryEspEmbListdiametrotravafmax: TStringField
      FieldName = 'diametrotravafmax'
      Size = 25
    end
    object qryEspEmbListvolumefref: TStringField
      FieldName = 'volumefref'
      Size = 25
    end
    object qryEspEmbListvolumefmin: TStringField
      FieldName = 'volumefmin'
      Size = 25
    end
    object qryEspEmbListvolumefmax: TStringField
      FieldName = 'volumefmax'
      Size = 25
    end
    object qryEspEmbListmaterialt: TStringField
      FieldName = 'materialt'
      Size = 25
    end
    object qryEspEmbListcort: TStringField
      FieldName = 'cort'
      Size = 25
    end
    object qryEspEmbListcarctcort: TStringField
      FieldName = 'carctcort'
      Size = 25
    end
    object qryEspEmbListodort: TStringField
      FieldName = 'odort'
      Size = 25
    end
    object qryEspEmbListtoxidadet: TStringField
      FieldName = 'toxidadet'
      Size = 25
    end
    object qryEspEmbListpesotref: TStringField
      FieldName = 'pesotref'
      Size = 25
    end
    object qryEspEmbListpesotmin: TStringField
      FieldName = 'pesotmin'
      Size = 25
    end
    object qryEspEmbListpesotmax: TStringField
      FieldName = 'pesotmax'
      Size = 25
    end
    object qryEspEmbListalturatref: TStringField
      FieldName = 'alturatref'
      Size = 25
    end
    object qryEspEmbListalturatmin: TStringField
      FieldName = 'alturatmin'
      Size = 25
    end
    object qryEspEmbListalturatmax: TStringField
      FieldName = 'alturatmax'
      Size = 25
    end
    object qryEspEmbListlarguraombrotref: TStringField
      FieldName = 'larguraombrotref'
      Size = 25
    end
    object qryEspEmbListlarguraombrotmin: TStringField
      FieldName = 'larguraombrotmin'
      Size = 25
    end
    object qryEspEmbListlarguraombrotmax: TStringField
      FieldName = 'larguraombrotmax'
      Size = 25
    end
    object qryEspEmbListlarguracorpomediotref: TStringField
      FieldName = 'larguracorpomediotref'
      Size = 25
    end
    object qryEspEmbListlarguracorpomediotmin: TStringField
      FieldName = 'larguracorpomediotmin'
      Size = 25
    end
    object qryEspEmbListlarguracorpomediotmax: TStringField
      FieldName = 'larguracorpomediotmax'
      Size = 25
    end
    object qryEspEmbListdiametrotref: TStringField
      FieldName = 'diametrotref'
      Size = 25
    end
    object qryEspEmbListdiametrotmin: TStringField
      FieldName = 'diametrotmin'
      Size = 25
    end
    object qryEspEmbListdiametrotmax: TStringField
      FieldName = 'diametrotmax'
      Size = 25
    end
    object qryEspEmbListdiametroroscatref: TStringField
      FieldName = 'diametroroscatref'
      Size = 25
    end
    object qryEspEmbListdiametroroscatmin: TStringField
      FieldName = 'diametroroscatmin'
      Size = 25
    end
    object qryEspEmbListdiametroroscatmax: TStringField
      FieldName = 'diametroroscatmax'
      Size = 25
    end
    object qryEspEmbListmaterialb: TStringField
      FieldName = 'materialb'
      Size = 25
    end
    object qryEspEmbListcorb: TStringField
      FieldName = 'corb'
      Size = 25
    end
    object qryEspEmbListcarctcorb: TStringField
      FieldName = 'carctcorb'
      Size = 25
    end
    object qryEspEmbListodorb: TStringField
      FieldName = 'odorb'
      Size = 25
    end
    object qryEspEmbListtoxidadeb: TStringField
      FieldName = 'toxidadeb'
      Size = 25
    end
    object qryEspEmbListpesobref: TStringField
      FieldName = 'pesobref'
      Size = 25
    end
    object qryEspEmbListpesobmin: TStringField
      FieldName = 'pesobmin'
      Size = 25
    end
    object qryEspEmbListpesobmax: TStringField
      FieldName = 'pesobmax'
      Size = 25
    end
    object qryEspEmbListalturabref: TStringField
      FieldName = 'alturabref'
      Size = 25
    end
    object qryEspEmbListalturabmin: TStringField
      FieldName = 'alturabmin'
      Size = 25
    end
    object qryEspEmbListalturabmax: TStringField
      FieldName = 'alturabmax'
      Size = 25
    end
    object qryEspEmbListlarguraombrobref: TStringField
      FieldName = 'larguraombrobref'
      Size = 25
    end
    object qryEspEmbListlarguraombrobmin: TStringField
      FieldName = 'larguraombrobmin'
      Size = 25
    end
    object qryEspEmbListlarguraombrobmax: TStringField
      FieldName = 'larguraombrobmax'
      Size = 25
    end
    object qryEspEmbListmaterialc: TStringField
      FieldName = 'materialc'
      Size = 25
    end
    object qryEspEmbListcorc: TStringField
      FieldName = 'corc'
      Size = 25
    end
    object qryEspEmbListcarctcorc: TStringField
      FieldName = 'carctcorc'
      Size = 25
    end
    object qryEspEmbListodorc: TStringField
      FieldName = 'odorc'
      Size = 25
    end
    object qryEspEmbListtoxidadec: TStringField
      FieldName = 'toxidadec'
      Size = 25
    end
    object qryEspEmbListpesocref: TStringField
      FieldName = 'pesocref'
      Size = 25
    end
    object qryEspEmbListpesocmin: TStringField
      FieldName = 'pesocmin'
      Size = 25
    end
    object qryEspEmbListpesocmax: TStringField
      FieldName = 'pesocmax'
      Size = 25
    end
    object qryEspEmbListFRASCCOD: TStringField
      FieldName = 'FRASCCOD'
      Size = 30
    end
    object qryEspEmbListFRASDESC: TStringField
      FieldName = 'FRASDESC'
      Size = 100
    end
    object qryEspEmbListTAMCOD: TStringField
      FieldName = 'TAMCOD'
      Size = 30
    end
    object qryEspEmbListTAMDESC: TStringField
      FieldName = 'TAMDESC'
      Size = 100
    end
    object qryEspEmbListBATOCOD: TStringField
      FieldName = 'BATOCOD'
      Size = 30
    end
    object qryEspEmbListBATODESC: TStringField
      FieldName = 'BATODESC'
      Size = 100
    end
    object qryEspEmbListCARTCOD: TStringField
      FieldName = 'CARTCOD'
      Size = 30
    end
    object qryEspEmbListCARTDESC: TStringField
      FieldName = 'CARTDESC'
      Size = 100
    end
    object qryEspEmbListPRODUTONOME: TStringField
      FieldName = 'PRODUTONOME'
      Size = 50
    end
  end
  object dspEspEmbList: TDataSetProvider
    DataSet = qryEspEmbList
    Left = 560
    Top = 176
  end
  object qryProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select "id", "nomeprodutopedido" from "tblprodutos"')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 224
    object qryProdid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryProdnomeprodutopedido: TStringField
      FieldName = 'nomeprodutopedido'
      Size = 50
    end
  end
  object dspProd: TDataSetProvider
    DataSet = qryProd
    Left = 560
    Top = 224
  end
  object qryCIInt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select comu.*,usr."nome" from "tblcomunicado" as comu'
      'inner join "tblusuarios" as usr on usr."id" = comu."idusuario"'
      'order by comu."data" desc')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 280
    object qryCIIntid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryCIIntseqci: TIntegerField
      FieldName = 'seqci'
    end
    object qryCIIntdata: TDateField
      FieldName = 'data'
    end
    object qryCIIntidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object qryCIIntobs: TStringField
      FieldName = 'obs'
      Size = 255
    end
    object qryCIIntusado: TIntegerField
      FieldName = 'usado'
    end
    object qryCIIntnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
  end
  object dspCIInt: TDataSetProvider
    DataSet = qryCIInt
    Left = 560
    Top = 280
  end
  object qryListaLote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblestoqueinsumos".*, "tblinsumos"."descricao", "tblinsu' +
        'mos"."codigo", "tblinsumos"."tipo" from "tblestoqueinsumos"'
      
        'inner join "tblinsumos" on "tblinsumos"."id" = "tblestoqueinsumo' +
        's"."idinsumo"'
      'where "tblinsumos"."tipo" = '#39'Mat. Prima'#39
      'and "tblestoqueinsumos"."tipo" = '#39'Mat. Prima'#39
      'order by "tblestoqueinsumos"."data" asc')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 336
    object qryListaLoteid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryListaLoteidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object qryListaLoteidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object qryListaLotetipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object qryListaLotedata: TDateField
      FieldName = 'data'
    end
    object qryListaLoteobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object qryListaLotequantd: TSingleField
      FieldName = 'quantd'
    end
    object qryListaLoteidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
    object qryListaLoteidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object qryListaLoteidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qryListaLotelote: TStringField
      FieldName = 'lote'
      Size = 40
    end
    object qryListaLotedataval: TDateField
      FieldName = 'dataval'
    end
    object qryListaLotedescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qryListaLotecodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object qryListaLotetipo_1: TStringField
      FieldName = 'tipo_1'
      Size = 15
    end
  end
  object dspListaLote: TDataSetProvider
    DataSet = qryListaLote
    Left = 560
    Top = 336
  end
  object qryOPExp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblordemexpedicao";')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 392
    object qryOPExpid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryOPExpidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qryOPExpidformula: TIntegerField
      FieldName = 'idformula'
    end
    object qryOPExpdescricaoprod: TStringField
      FieldName = 'descricaoprod'
      Size = 50
    end
    object qryOPExpcodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object qryOPExpcodformula: TStringField
      FieldName = 'codformula'
      Size = 10
    end
    object qryOPExpdataop: TDateField
      FieldName = 'dataop'
    end
    object qryOPExpquantidade: TSingleField
      FieldName = 'quantidade'
    end
    object qryOPExpnumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
  end
  object dspOPExp: TDataSetProvider
    DataSet = qryOPExp
    Left = 560
    Top = 392
  end
  object qryOPExpDetalhe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idexp'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'select * from "tblordemexpedicaodetalhe" where "idexpedicao" = :' +
        'idexp')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 448
    object qryOPExpDetalheid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryOPExpDetalheidexpedicao: TIntegerField
      FieldName = 'idexpedicao'
    end
    object qryOPExpDetalheidinsumo: TIntegerField
      FieldName = 'idinsumo'
    end
    object qryOPExpDetalhedescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object qryOPExpDetalhecodigo: TStringField
      FieldName = 'codigo'
      Size = 10
    end
    object qryOPExpDetalhequantidade: TSingleField
      FieldName = 'quantidade'
    end
  end
  object dspOPExpDetalhe: TDataSetProvider
    DataSet = qryOPExpDetalhe
    Left = 560
    Top = 448
  end
  object qryInsuProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idprodl'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select "tblinsumos".* from "tblinsumos"'
      
        'inner join "tblprodutosxinsumos" as prin on prin."insumosid" = "' +
        'tblinsumos"."id"'
      'where prin."produtoid" = :idprodl')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 504
    object qryInsuProdid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryInsuProdcodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object qryInsuProdue: TStringField
      FieldName = 'ue'
      Size = 10
    end
    object qryInsuProdlitragem: TSingleField
      FieldName = 'litragem'
    end
    object qryInsuProddescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qryInsuProdtipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
    object qryInsuProdestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object qryInsuProdestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
    object qryInsuProdlote: TStringField
      FieldName = 'lote'
      Size = 50
    end
  end
  object dspInsuProd: TDataSetProvider
    DataSet = qryInsuProd
    Left = 560
    Top = 504
  end
  object qryExpFinalizado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select envase."id",envase."codopenvase", envase."idprodutos", en' +
        'vase."qtdreal", envase."data", envase."lote", produto."descricao' +
        '"'
      'from "tblordemenvase" as envase'
      
        'inner join "tblprodutos" as produto on produto."id" = envase."id' +
        'produtos"'
      
        'where envase."status" = '#39'Finalizada'#39' or envase."status" = '#39'Estoq' +
        'ue'#39' ')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 552
    object qryExpFinalizadoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryExpFinalizadocodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object qryExpFinalizadoidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object qryExpFinalizadoqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object qryExpFinalizadodata: TDateField
      FieldName = 'data'
    end
    object qryExpFinalizadolote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object qryExpFinalizadodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dspExpFinalizado: TDataSetProvider
    DataSet = qryExpFinalizado
    Left = 560
    Top = 552
  end
  object qryBaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblestoqueexp";')
    SQLConnection = DMCnn.dbxCnn
    Left = 512
    Top = 608
    object qryBaixaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryBaixaidop: TIntegerField
      FieldName = 'idop'
    end
    object qryBaixaidprod: TIntegerField
      FieldName = 'idprod'
    end
    object qryBaixaqtd: TSingleField
      FieldName = 'qtd'
    end
    object qryBaixadataexp: TDateField
      FieldName = 'dataexp'
    end
    object qryBaixahoraexp: TTimeField
      FieldName = 'horaexp'
    end
    object qryBaixanumnf: TStringField
      FieldName = 'numnf'
      Size = 15
    end
    object qryBaixanomecliente: TStringField
      FieldName = 'nomecliente'
      Size = 150
    end
    object qryBaixaobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
  end
  object dspBaixa: TDataSetProvider
    DataSet = qryBaixa
    Left = 560
    Top = 608
  end
  object qrySaidaProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblordemenvase".*, "tblprodutos"."descricao", "tblcontro' +
        'leop"."qtd", "tblcontroleop"."datains", "tblcontroleop"."id" as ' +
        'idcontrole, "tblcontroleop"."horains" from "tblordemenvase"'
      
        'left outer join "tblprodutos" on "tblprodutos"."id" = "tblordeme' +
        'nvase"."idprodutos"'
      
        'left outer join "tblcontroleop" on "tblcontroleop"."idop" = "tbl' +
        'ordemenvase"."id"'
      
        'where "status" = '#39'Aberto'#39' or "status" = '#39'Produzindo'#39' order by "d' +
        'ata"  desc , "hora" desc')
    SQLConnection = DMCnn.dbxCnn
    Left = 888
    Top = 336
    object qrySaidaProducaoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qrySaidaProducaocodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object qrySaidaProducaoidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object qrySaidaProducaoqtdprevista: TSingleField
      FieldName = 'qtdprevista'
    end
    object qrySaidaProducaoqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object qrySaidaProducaohora: TTimeField
      FieldName = 'hora'
    end
    object qrySaidaProducaodata: TDateField
      FieldName = 'data'
    end
    object qrySaidaProducaoue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object qrySaidaProducaolote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object qrySaidaProducaocpa: TStringField
      FieldName = 'cpa'
      Size = 5
    end
    object qrySaidaProducaooperador: TStringField
      FieldName = 'operador'
      Size = 30
    end
    object qrySaidaProducaostatus: TStringField
      FieldName = 'status'
      Size = 15
    end
    object qrySaidaProducaodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object qrySaidaProducaoqtd: TSingleField
      FieldName = 'qtd'
    end
    object qrySaidaProducaodatains: TDateField
      FieldName = 'datains'
    end
    object qrySaidaProducaoIDCONTROLE: TIntegerField
      FieldName = 'IDCONTROLE'
      Required = True
    end
    object qrySaidaProducaohorains: TTimeField
      FieldName = 'horains'
    end
  end
  object dspSaidaProducao: TDataSetProvider
    DataSet = qrySaidaProducao
    Left = 936
    Top = 336
  end
  object SaidaProducaoBT: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblordemenvase"')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 64
    object SaidaProducaoBTid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object SaidaProducaoBTcodopenvase: TIntegerField
      FieldName = 'codopenvase'
    end
    object SaidaProducaoBTidprodutos: TIntegerField
      FieldName = 'idprodutos'
    end
    object SaidaProducaoBTqtdprevista: TSingleField
      FieldName = 'qtdprevista'
    end
    object SaidaProducaoBTqtdreal: TSingleField
      FieldName = 'qtdreal'
    end
    object SaidaProducaoBThora: TTimeField
      FieldName = 'hora'
    end
    object SaidaProducaoBTdata: TDateField
      FieldName = 'data'
    end
    object SaidaProducaoBTue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object SaidaProducaoBTlote: TStringField
      FieldName = 'lote'
      Size = 8
    end
    object SaidaProducaoBTcpa: TStringField
      FieldName = 'cpa'
      Size = 5
    end
    object SaidaProducaoBToperador: TStringField
      FieldName = 'operador'
      Size = 30
    end
    object SaidaProducaoBTstatus: TStringField
      FieldName = 'status'
      Size = 15
    end
  end
  object dspSaidaProducaoBT: TDataSetProvider
    DataSet = SaidaProducaoBT
    Left = 672
    Top = 64
  end
  object sqlSaidaProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idenv'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'idcontr'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'select "tblinsumos"."descricao","tblestoqueinsumos"."quantd","tb' +
        'lestoqueinsumos"."data", "tblestoqueinsumos"."hora", "tblestoque' +
        'insumos"."idordemenvase" from "tblestoqueinsumos"'
      
        'inner join "tblinsumos" on "tblestoqueinsumos"."idinsumo" = "tbl' +
        'insumos"."id"'
      
        'where "tblestoqueinsumos"."idordemenvase" = :idenv and "tblestoq' +
        'ueinsumos"."idcontrole" = :idcontr and ("local" <> '#39'envase'#39' or "' +
        'local" is null)'
      'order by "data"  desc , "hora" desc')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 120
    object sqlSaidaProddescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlSaidaProdquantd: TSingleField
      FieldName = 'quantd'
    end
    object sqlSaidaProddata: TDateField
      FieldName = 'data'
    end
    object sqlSaidaProdhora: TTimeField
      FieldName = 'hora'
    end
    object sqlSaidaProdidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
  end
  object dspSaidaProd: TDataSetProvider
    DataSet = sqlSaidaProd
    Left = 672
    Top = 120
  end
  object sqlOPExpedicao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'select "qtd" from "tblestoqueexp" where "id" = :id')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 176
    object sqlOPExpedicaoqtd: TSingleField
      FieldName = 'qtd'
    end
  end
  object dspOPExpedicao: TDataSetProvider
    DataSet = sqlOPExpedicao
    Left = 672
    Top = 176
  end
  object sqlPermissoes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select * from "tblpermissao" where "tblpermissao"."idusuario" = ' +
        ':id')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 232
    object sqlPermissoesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlPermissoesidusuario: TIntegerField
      FieldName = 'idusuario'
      Required = True
    end
    object sqlPermissoesidtipo: TIntegerField
      FieldName = 'idtipo'
      Required = True
    end
    object sqlPermissoesnomeform: TStringField
      FieldName = 'nomeform'
      Size = 30
    end
  end
  object dspPermissoes: TDataSetProvider
    DataSet = sqlPermissoes
    Left = 672
    Top = 232
  end
  object sqlCalculaTotal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        ' select sum ("tblestoqueinsumos"."quantd") as total from "tblest' +
        'oqueinsumos"'
      ' where "local" is null and "idordemenvase" = :id')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 280
    object sqlCalculaTotalTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object dspCalculaTotal: TDataSetProvider
    DataSet = sqlCalculaTotal
    Left = 672
    Top = 280
  end
  object qryEstoqueExp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblprodutos"."descricao", "tblprodutos"."codproduto", "t' +
        'blestoqueexp".*'
      'from "tblestoqueexp"'
      
        'inner join "tblprodutos" on ("tblprodutos"."id" = "tblestoqueexp' +
        '"."idprod")')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 336
    object qryEstoqueExpdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object qryEstoqueExpidprod: TIntegerField
      FieldName = 'idprod'
    end
    object qryEstoqueExpcodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object qryEstoqueExpqtd: TSingleField
      FieldName = 'qtd'
    end
    object qryEstoqueExpid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryEstoqueExpidop: TIntegerField
      FieldName = 'idop'
    end
    object qryEstoqueExpdataexp: TDateField
      FieldName = 'dataexp'
    end
    object qryEstoqueExphoraexp: TTimeField
      FieldName = 'horaexp'
    end
    object qryEstoqueExpnumnf: TStringField
      FieldName = 'numnf'
      Size = 15
    end
    object qryEstoqueExpnomecliente: TStringField
      FieldName = 'nomecliente'
      Size = 150
    end
    object qryEstoqueExpobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
  end
  object dspEstoqueExp: TDataSetProvider
    DataSet = qryEstoqueExp
    Left = 672
    Top = 336
  end
  object qryExpSaida: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblprodutos"."descricao", "tblprodutos"."codproduto","tb' +
        'lestoqueexp".*'
      'from "tblestoqueexp"'
      
        'inner join "tblprodutos" on ("tblprodutos"."id" = "tblestoqueexp' +
        '"."idprod")'
      'where "tblestoqueexp"."qtd" < 0')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 392
    object StringField1: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'idprod'
    end
    object IntegerField2: TIntegerField
      FieldName = 'codproduto'
    end
    object SingleField1: TSingleField
      FieldName = 'qtd'
    end
    object qryExpSaidaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryExpSaidaidop: TIntegerField
      FieldName = 'idop'
    end
    object qryExpSaidadataexp: TDateField
      FieldName = 'dataexp'
    end
    object qryExpSaidahoraexp: TTimeField
      FieldName = 'horaexp'
    end
    object qryExpSaidanumnf: TStringField
      FieldName = 'numnf'
      Size = 15
    end
    object qryExpSaidanomecliente: TStringField
      FieldName = 'nomecliente'
      Size = 150
    end
    object qryExpSaidaobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
  end
  object dspExpSaida: TDataSetProvider
    DataSet = qryExpSaida
    Left = 672
    Top = 392
  end
  object qryClienteExp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select "tblestoqueexp"."nomecliente" from "tblestoqueexp"'
      'group by "tblestoqueexp"."nomecliente"')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 448
    object qryClienteExpnomecliente: TStringField
      FieldName = 'nomecliente'
      Size = 150
    end
  end
  object qryRelatExpClient: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nomecli'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select "tblestoqueexp".*, "tblprodutos"."descricao", "tblproduto' +
        's"."codproduto" from "tblestoqueexp"'
      
        'inner join "tblprodutos" on ("tblprodutos"."id" = "tblestoqueexp' +
        '"."idprod")'
      'where "tblestoqueexp"."nomecliente" = :nomecli')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 504
    object qryRelatExpClientid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryRelatExpClientidop: TIntegerField
      FieldName = 'idop'
    end
    object qryRelatExpClientidprod: TIntegerField
      FieldName = 'idprod'
    end
    object qryRelatExpClientqtd: TSingleField
      FieldName = 'qtd'
    end
    object qryRelatExpClientdataexp: TDateField
      FieldName = 'dataexp'
    end
    object qryRelatExpClienthoraexp: TTimeField
      FieldName = 'horaexp'
    end
    object qryRelatExpClientnumnf: TStringField
      FieldName = 'numnf'
      Size = 15
    end
    object qryRelatExpClientnomecliente: TStringField
      FieldName = 'nomecliente'
      Size = 150
    end
    object qryRelatExpClientobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object qryRelatExpClientdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object qryRelatExpClientcodproduto: TIntegerField
      FieldName = 'codproduto'
    end
  end
  object dspClienteExp: TDataSetProvider
    DataSet = qryClienteExp
    Left = 672
    Top = 448
  end
  object dspRelatExpClient: TDataSetProvider
    DataSet = qryRelatExpClient
    Left = 672
    Top = 504
  end
  object sqlEstQuimico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select estoque.*, insumo."descricao"'
      'from "tblestoqueinsumos" as estoque'
      
        'inner join "tblinsumos" as insumo on insumo."id" = estoque."idin' +
        'sumo" '
      
        'where estoque."idnfeentrada" = -1 and estoque."tipo" = '#39'Mat. Pri' +
        'ma'#39' and'
      ' estoque."obs" is not null')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 552
    object sqlEstQuimicoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlEstQuimicoidnfeentrada: TIntegerField
      FieldName = 'idnfeentrada'
      Required = True
    end
    object sqlEstQuimicoidinsumo: TIntegerField
      FieldName = 'idinsumo'
      Required = True
    end
    object sqlEstQuimicotipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object sqlEstQuimicodata: TDateField
      FieldName = 'data'
    end
    object sqlEstQuimicoobs: TStringField
      FieldName = 'obs'
      Size = 200
    end
    object sqlEstQuimicoquantd: TSingleField
      FieldName = 'quantd'
    end
    object sqlEstQuimicoidordemenvase: TIntegerField
      FieldName = 'idordemenvase'
    end
    object sqlEstQuimicoidordemquimico: TIntegerField
      FieldName = 'idordemquimico'
    end
    object sqlEstQuimicoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object sqlEstQuimicolote: TStringField
      FieldName = 'lote'
      Size = 40
    end
    object sqlEstQuimicodataval: TDateField
      FieldName = 'dataval'
    end
    object sqlEstQuimicolocal: TStringField
      FieldName = 'local'
      Size = 10
    end
    object sqlEstQuimicohora: TTimeField
      FieldName = 'hora'
    end
    object sqlEstQuimicodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dspEstQuimico: TDataSetProvider
    DataSet = sqlEstQuimico
    Left = 672
    Top = 552
  end
  object sqlRelEstoqueInativo: TSQLQuery
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
      
        'where insu."tipo" = '#39'Inativo'#39' and ("local" <> '#39'envase'#39' or "local' +
        '" is null)'
      'group by insu."descricao", insu."codigo", insu."estoqueminimo",'
      'insu."estoquemaximo" order by  insu."codigo"')
    SQLConnection = DMCnn.dbxCnn
    Left = 624
    Top = 608
    object sqlRelEstoqueInativodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object sqlRelEstoqueInativocodigo: TStringField
      FieldName = 'codigo'
      Size = 30
    end
    object sqlRelEstoqueInativoSUM: TFloatField
      FieldName = 'SUM'
    end
    object sqlRelEstoqueInativoestoqueminimo: TSingleField
      FieldName = 'estoqueminimo'
    end
    object sqlRelEstoqueInativoestoquemaximo: TSingleField
      FieldName = 'estoquemaximo'
    end
    object sqlRelEstoqueInativoFALTA: TFloatField
      FieldName = 'FALTA'
    end
  end
  object dspRelEstoqueInativo: TDataSetProvider
    DataSet = sqlRelEstoqueInativo
    Left = 672
    Top = 608
  end
  object qrySumExp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select "tblprodutos"."descricao", "tblprodutos"."codproduto", Su' +
        'm("tblestoqueexp"."qtd")'
      'from "tblestoqueexp"'
      
        'inner join "tblprodutos" on ("tblprodutos"."id" = "tblestoqueexp' +
        '"."idprod")'
      'group by "tblprodutos"."descricao", "tblprodutos"."codproduto"')
    SQLConnection = DMCnn.dbxCnn
    Left = 736
    Top = 64
    object qrySumExpdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object qrySumExpcodproduto: TIntegerField
      FieldName = 'codproduto'
    end
    object qrySumExpSUM: TFloatField
      FieldName = 'SUM'
    end
  end
  object dspSumExp: TDataSetProvider
    DataSet = qrySumExp
    Left = 784
    Top = 64
  end
  object qrySearchNFe: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'search'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'select N."id", N."nronfe", N."serienfe", N."data", N."codfiscal"' +
        ', F."nome_razaosocial", F."codfornecedor",'
      
        'F."id", N."condpagamento", N."detalhepagamento", N."obs", sum(I.' +
        '"valortotal") as ValorTotal'
      
        'from "tblnfeentrada" N, "tblnfeentradaitens" I, "tblfornecedor" ' +
        'F'
      'where N."id" = I."codnfeentrada"'
      'and N."codfornecedor" = F."id"'
      'and N."nronfe" like :search'
      
        'group by N."id",N."nronfe", N."serienfe", N."data", N."codfiscal' +
        '", F."nome_razaosocial", N."condpagamento",'
      'N."detalhepagamento", N."obs", F."codfornecedor", F."id"')
    SQLConnection = DMCnn.dbxCnn
    Left = 736
    Top = 120
    object qrySearchNFeid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qrySearchNFenronfe: TIntegerField
      FieldName = 'nronfe'
    end
    object qrySearchNFeserienfe: TIntegerField
      FieldName = 'serienfe'
    end
    object qrySearchNFedata: TDateField
      FieldName = 'data'
    end
    object qrySearchNFecodfiscal: TIntegerField
      FieldName = 'codfiscal'
    end
    object qrySearchNFenome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Size = 50
    end
    object qrySearchNFecodfornecedor: TIntegerField
      FieldName = 'codfornecedor'
    end
    object qrySearchNFeid_1: TIntegerField
      FieldName = 'id_1'
      Required = True
    end
    object qrySearchNFecondpagamento: TStringField
      FieldName = 'condpagamento'
      Size = 30
    end
    object qrySearchNFedetalhepagamento: TStringField
      FieldName = 'detalhepagamento'
      Size = 50
    end
    object qrySearchNFeobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
      Size = 1
    end
    object qrySearchNFeVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
  end
  object dspSearchNFe: TDataSetProvider
    DataSet = qrySearchNFe
    Left = 784
    Top = 120
  end
  object qryControleOp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from "tblcontroleop";')
    SQLConnection = DMCnn.dbxCnn
    Left = 736
    Top = 176
    object qryControleOpid: TIntegerField
      FieldName = 'id'
    end
    object qryControleOpidop: TIntegerField
      FieldName = 'idop'
    end
    object qryControleOpqtd: TSingleField
      FieldName = 'qtd'
    end
    object qryControleOpdatains: TDateField
      FieldName = 'datains'
    end
    object qryControleOphorains: TTimeField
      FieldName = 'horains'
    end
  end
  object dspControleOp: TDataSetProvider
    DataSet = qryControleOp
    Left = 784
    Top = 176
  end
  object qrySaidaDetalheBt2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_controle'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'select "tblenvasedetalhe".*,"tblcontroleop"."qtd" as qtdinst fro' +
        'm "tblenvasedetalhe"'
      
        'left outer join "tblcontroleop" on "tblcontroleop"."idop" = "tbl' +
        'envasedetalhe"."idordemproducao"'
      'where "tblcontroleop"."id" = :id_controle')
    SQLConnection = DMCnn.dbxCnn
    Left = 880
    Top = 456
    object qrySaidaDetalheBt2id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qrySaidaDetalheBt2codproduto: TStringField
      FieldName = 'codproduto'
      Size = 50
    end
    object qrySaidaDetalheBt2qtd: TSingleField
      FieldName = 'qtd'
    end
    object qrySaidaDetalheBt2ue: TStringField
      FieldName = 'ue'
      Size = 5
    end
    object qrySaidaDetalheBt2preco: TSingleField
      FieldName = 'preco'
    end
    object qrySaidaDetalheBt2valortotal: TSingleField
      FieldName = 'valortotal'
    end
    object qrySaidaDetalheBt2idordemproducao: TIntegerField
      FieldName = 'idordemproducao'
    end
    object qrySaidaDetalheBt2idcodproduto: TIntegerField
      FieldName = 'idcodproduto'
    end
    object qrySaidaDetalheBt2QTDINST: TSingleField
      FieldName = 'QTDINST'
    end
  end
  object dspSaidaDetalheBt2: TDataSetProvider
    DataSet = qrySaidaDetalheBt2
    Left = 928
    Top = 456
  end
  object qryAux2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DMCnn.dbxCnn
    Left = 926
    Top = 48
  end
end
