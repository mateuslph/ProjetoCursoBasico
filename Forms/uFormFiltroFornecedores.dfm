inherited FormFiltroFornecedores: TFormFiltroFornecedores
  Caption = 'Filtro de Fornecedores'
  ClientWidth = 1093
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1109
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1093
    ExplicitTop = -6
    ExplicitWidth = 1093
    inherited Label1: TLabel
      Width = 60
      Caption = 'Raz'#227'o Social'
      ExplicitWidth = 60
    end
    object Label2: TLabel [1]
      Left = 312
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    inherited edtFiltro: TEdit
      Width = 273
      ExplicitWidth = 273
    end
    inherited btnFiltro: TButton
      Left = 512
      Top = 33
      Caption = 'Filtro'
      OnClick = btnFiltroClick
      ExplicitLeft = 512
      ExplicitTop = 33
    end
    inherited Panel2: TPanel
      Left = 1012
    end
    object edtCnpj: TEdit
      Left = 312
      Top = 35
      Width = 153
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 657
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 752
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 89
    Width = 1093
    Height = 257
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    object fdQryFiltroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryFiltroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryFiltroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
end
