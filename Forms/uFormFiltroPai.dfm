object FormFiltroPai: TFormFiltroPai
  Left = 0
  Top = 0
  Caption = 'FormFiltroPai'
  ClientHeight = 346
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtFiltro: TEdit
      Left = 24
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnFiltro: TButton
      Left = 320
      Top = 24
      Width = 75
      Height = 25
      Caption = 'btnFiltro'
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 760
      Top = 1
      Width = 80
      Height = 87
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Button1: TButton
        Left = 0
        Top = 23
        Width = 80
        Height = 25
        Caption = 'SAIR'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object fdQryFiltro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    Left = 760
    Top = 128
  end
  object dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 760
    Top = 192
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 760
    Top = 264
  end
end
