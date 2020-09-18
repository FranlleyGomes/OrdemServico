object dtmOrdemServico: TdtmOrdemServico
  OldCreateOrder = False
  Height = 150
  Width = 215
  object qryOrdemServico: TFDQuery
    Connection = dtmConexao.cnnConexao
    SQL.Strings = (
      'select ors.idordem_servico, cln.nome as cliente, vlc.placa as'
      
        'veiculo, fpg.nome as forma_pagamento, ors.numero, ors.data_ordem' +
        '_servico from'
      
        'm_ordem_servico ors inner join c_cliente cln on ors.idcliente = ' +
        'cln.idcliente'
      
        'inner join c_veiculo vlc on ors.idveiculo = vlc.idveiculo inner ' +
        'join'
      
        'c_forma_pagamento fpg on ors.idforma_pagamento = fpg.idforma_pag' +
        'amento')
    Left = 88
    Top = 56
    object qryOrdemServicoidordem_servico: TFDAutoIncField
      FieldName = 'idordem_servico'
      Origin = 'idordem_servico'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryOrdemServicocliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryOrdemServicoveiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veiculo'
      Origin = 'placa'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 8
    end
    object qryOrdemServicoforma_pagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_pagamento'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryOrdemServiconumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      FixedChar = True
      Size = 15
    end
    object qryOrdemServicodata_ordem_servico: TDateField
      FieldName = 'data_ordem_servico'
      Origin = 'data_ordem_servico'
      Required = True
    end
  end
end
