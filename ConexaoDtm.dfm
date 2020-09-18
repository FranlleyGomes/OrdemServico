object dtmConexao: TdtmConexao
  OldCreateOrder = False
  Height = 304
  Width = 481
  object cnnConexao: TFDConnection
    Params.Strings = (
      'Database=ordem_servico'
      'User_Name=root'
      'Password=123456'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 160
    Top = 64
  end
  object driver: TFDPhysMySQLDriverLink
    Left = 240
    Top = 64
  end
end
