object Lookup: TLookup
  OldCreateOrder = False
  Height = 601
  Width = 695
  object fdQryEstados: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 40
    Top = 328
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 40
    Top = 384
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 40
    Top = 24
  end
  object fdQryCidades: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 40
    Top = 208
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 40
    Top = 264
  end
  object fdQryFornecedor: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 40
    Top = 88
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 40
    Top = 144
  end
  object fdQryClientes: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_CLIENTE,'
      '    DECODE(TIPO_FJ, '#39'F'#39', NOME, RAZAO_SOCIAL) NomeCliente'
      '  FROM CLIENTE'
      '')
    Left = 144
    Top = 88
  end
  object dsClientes: TDataSource
    DataSet = fdQryClientes
    Left = 144
    Top = 144
  end
  object fdQryProdutos: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_PRODUTO,'
      '       DESCRICAO,'
      '       V_UNITARIO'
      'FROM PRODUTO')
    Left = 232
    Top = 88
    object fdQryProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryProdutosDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryProdutosV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
  end
  object dsProdutos: TDataSource
    DataSet = fdQryProdutos
    Left = 232
    Top = 144
  end
end
