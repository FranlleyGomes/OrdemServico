object dtmFormaPagamento: TdtmFormaPagamento
  OldCreateOrder = False
  Height = 150
  Width = 215
  object qryFormaPagamento: TFDQuery
    Connection = dtmConexao.cnnConexao
    SQL.Strings = (
      'select idforma_pagamento, nome from c_forma_pagamento')
    Left = 88
    Top = 72
    object qryFormaPagamentoidforma_pagamento: TFDAutoIncField
      FieldName = 'idforma_pagamento'
      Origin = 'idforma_pagamento'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryFormaPagamentonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
    end
  end
end
