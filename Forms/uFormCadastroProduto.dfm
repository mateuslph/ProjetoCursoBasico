inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 285
  ClientWidth = 847
  ExplicitWidth = 853
  ExplicitHeight = 314
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 48
    Top = 80
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 360
    Top = 80
    Width = 21
    Height = 13
    Caption = 'QTD'
  end
  object Label3: TLabel [2]
    Left = 471
    Top = 80
    Width = 34
    Height = 13
    Caption = 'CUSTO'
  end
  object Label4: TLabel [3]
    Left = 588
    Top = 80
    Width = 62
    Height = 13
    Caption = 'V_UNITARIO'
  end
  object Label5: TLabel [4]
    Left = 48
    Top = 130
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 110
    Top = 128
    Width = 75
    Height = 13
    Caption = 'PESO_LIQUIDO'
  end
  object Label7: TLabel [6]
    Left = 255
    Top = 130
    Width = 66
    Height = 13
    Caption = 'PESO_BRUTO'
  end
  object Label8: TLabel [7]
    Left = 405
    Top = 128
    Width = 63
    Height = 13
    Caption = 'FABRICANTE'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 48
    Top = 176
    Width = 84
    Height = 13
    Caption = 'MARCA_MODELO'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 705
    Top = 80
    Width = 66
    Height = 13
    Caption = 'ID_PRODUTO'
    FocusControl = DBEdit2
  end
  object Label11: TLabel [10]
    Left = 371
    Top = 179
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
  end
  inherited pnCabecalho: TPanel
    Width = 847
    TabOrder = 9
    ExplicitWidth = 847
  end
  object DBEdit1: TDBEdit [12]
    Left = 48
    Top = 99
    Width = 300
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsCadastro
    TabOrder = 0
  end
  object DBEdit5: TDBEdit [13]
    Left = 48
    Top = 149
    Width = 56
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit8: TDBEdit [14]
    Left = 405
    Top = 149
    Width = 300
    Height = 21
    DataField = 'FABRICANTE'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit9: TDBEdit [15]
    Left = 48
    Top = 195
    Width = 300
    Height = 21
    DataField = 'MARCA_MODELO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBMoneyEdit1: TDBAdvMoneyEdit [16]
    Left = 354
    Top = 101
    Width = 111
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 1
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'QTD'
    DataSource = dsCadastro
  end
  object DBMoneyEdit2: TDBAdvMoneyEdit [17]
    Left = 471
    Top = 99
    Width = 111
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 2
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'CUSTO'
    DataSource = dsCadastro
  end
  object DBMoneyEdit3: TDBAdvMoneyEdit [18]
    Left = 588
    Top = 99
    Width = 111
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 3
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'V_UNITARIO'
    DataSource = dsCadastro
  end
  object DBMoneyEdit4: TDBAdvMoneyEdit [19]
    Left = 255
    Top = 149
    Width = 144
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 6
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'PESO_BRUTO'
    DataSource = dsCadastro
  end
  object DBMoneyEdit5: TDBAdvMoneyEdit [20]
    Left = 110
    Top = 149
    Width = 139
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 5
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'PESO_LIQUIDO'
    DataSource = dsCadastro
  end
  object DBEdit2: TDBEdit [21]
    Left = 705
    Top = 99
    Width = 66
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 10
  end
  object DBLookupComboBox1: TDBLookupComboBox [22]
    Left = 371
    Top = 198
    Width = 211
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    KeyField = 'ID_FORNECEDOR'
    ListField = 'RAZAO_SOCIAL'
    ListSource = Lookup.dsFornecedor
    TabOrder = 11
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 792
    Top = 144
    object fdQryCadastroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryCadastroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryCadastroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryCadastroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryCadastroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryCadastroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryCadastroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryCadastroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryCadastroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 704
    Top = 208
  end
  inherited fdTransection: TFDTransaction
    Left = 784
    Top = 208
  end
  inherited dsCadastro: TDataSource
    Left = 720
    Top = 144
  end
end
