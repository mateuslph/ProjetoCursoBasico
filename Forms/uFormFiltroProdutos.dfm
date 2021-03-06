inherited FormFiltroProdutos: TFormFiltroProdutos
  Caption = 'Filtro de Produtos'
  ClientWidth = 1037
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1053
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1037
    ExplicitTop = -6
    ExplicitWidth = 1037
    inherited Label1: TLabel
      Width = 33
      Caption = 'C'#243'digo'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 184
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited edtFiltro: TEdit
      Width = 146
      ExplicitWidth = 146
    end
    inherited btnFiltro: TButton
      Left = 624
      Top = 33
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 624
      ExplicitTop = 33
    end
    inherited Panel2: TPanel
      Left = 956
      inherited Button1: TButton
        Top = 32
        ExplicitTop = 32
      end
    end
    object edtDescricao: TEdit
      Left = 184
      Top = 35
      Width = 353
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 721
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 816
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
    Width = 1037
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
      'SELECT P.ID_PRODUTO,'
      '       P.DESCRICAO,'
      '       P.QTD,'
      '       P.CUSTO,'
      '       P.V_UNITARIO,'
      '       P.UNIDADE,'
      '       P.PESO_LIQUIDO,'
      '       P.PESO_BRUTO,'
      '       P.FABRICANTE,'
      '       P.MARCA_MODELO,'
      '       F.razao_social FORNECEDOR'
      
        '    FROM PRODUTO P LEFT JOIN FORNECEDOR F ON F.id_fornecedor = P' +
        '.id_fornecedor'
      '    WHERE 1 = 1')
    object fdQryFiltroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryFiltroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryFiltroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryFiltroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryFiltroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryFiltroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryFiltroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryFiltroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryFiltroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryFiltroFORNECEDOR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
