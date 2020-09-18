object dmVeiculo: TdmVeiculo
  OldCreateOrder = False
  Height = 150
  Width = 215
  object qryVeiculo: TFDQuery
    Connection = dtmConexao.cnnConexao
    SQL.Strings = (
      'select idveiculo, placa, modelo from c_veiculo')
    Left = 88
    Top = 48
    object qryVeiculoidveiculo: TFDAutoIncField
      FieldName = 'idveiculo'
      Origin = 'idveiculo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryVeiculoplaca: TStringField
      FieldName = 'placa'
      Origin = 'placa'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qryVeiculomodelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Required = True
      Size = 25
    end
  end
end
