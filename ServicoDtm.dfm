object dmServico: TdmServico
  OldCreateOrder = False
  Height = 150
  Width = 215
  object qryServico: TFDQuery
    Connection = dtmConexao.cnnConexao
    SQL.Strings = (
      'select idservico, nome from c_servico')
    Left = 88
    Top = 56
  end
end
