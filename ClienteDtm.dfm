object dtmCliente: TdtmCliente
  OldCreateOrder = False
  Height = 150
  Width = 215
  object qryCliente: TFDQuery
    Connection = dtmConexao.cnnConexao
    SQL.Strings = (
      'select idcliente, nome, data_nascimento, cpf, rg from c_cliente')
    Left = 64
    Top = 56
    object qryClienteidcliente: TFDAutoIncField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryClientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object qryClientedata_nascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
    end
    object qryClientecpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      FixedChar = True
      Size = 11
    end
    object qryClienterg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      FixedChar = True
      Size = 10
    end
  end
end
