object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 343
  Width = 653
  object fdCon: TFDConnection
    Params.Strings = (
      
        'Database=E:\_01-Projetos\Delphi10\ProjetoCursoBasico\Banco de da' +
        'dos\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 104
  end
end
