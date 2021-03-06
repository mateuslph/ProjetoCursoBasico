inherited FormCadastroCidade: TFormCadastroCidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 198
  ClientWidth = 473
  ExplicitWidth = 479
  ExplicitHeight = 227
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 22
    Top = 72
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 22
    Top = 112
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  inherited pnCabecalho: TPanel
    Width = 473
    inherited btnSair: TBitBtn
      Left = 359
      ExplicitLeft = 359
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 22
    Top = 88
    Width = 107
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 22
    Top = 128
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 216
    Top = 56
    object fdQryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 296
    Top = 56
  end
  inherited fdTransection: TFDTransaction
    Left = 368
    Top = 56
  end
  inherited dsCadastro: TDataSource
    Left = 152
    Top = 56
  end
end
