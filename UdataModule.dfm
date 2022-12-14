object dm: Tdm
  OldCreateOrder = False
  Height = 571
  Width = 909
  object dsLogin: TDataSource
    DataSet = qryLogin
    Left = 104
    Top = 32
  end
  object qryLogin: TFDQuery
    Connection = frmMenu.FDconexao
    SQL.Strings = (
      
        'select * from usuario where (usuario = :usuario) and (senha = :s' +
        'enha)')
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 64
      end>
    object qryLoginUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Origin = 'USUARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLoginNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
    end
    object qryLoginUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object qryLoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qryLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 64
    end
  end
  object qryVencimentos: TFDQuery
    Connection = frmMenu.FDconexao
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      'select'
      
        '     pp.qtde_parcelas, pp.valor_parcela, pp.data_parcela, pp.vol' +
        'ume_parcelado, pp.nf, pp.emissao_nf, pp.parcela, pp.status,'
      '     vv.postoid, vv.status as statusvenda,'
      '     pto.postoid as idposto, pto.nome_fantasia'
      ''
      
        ' from parcela_venda_para_postos pp, venda_para_postos vv, posto ' +
        'pto'
      'where'
      '(pp.vendaid = vv.vendaid) and'
      '(pto.postoid = vv.postoid) and'
      '(data_parcela <= :date) and'
      '(pp.status = '#39'ABERTO'#39')'
      '')
    Left = 72
    Top = 216
    ParamData = <
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryVencimentosQTDE_PARCELAS: TIntegerField
      FieldName = 'QTDE_PARCELAS'
      Origin = 'QTDE_PARCELAS'
    end
    object qryVencimentosVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Precision = 18
      Size = 2
    end
    object qryVencimentosDATA_PARCELA: TDateField
      FieldName = 'DATA_PARCELA'
      Origin = 'DATA_PARCELA'
    end
    object qryVencimentosVOLUME_PARCELADO: TFMTBCDField
      FieldName = 'VOLUME_PARCELADO'
      Origin = 'VOLUME_PARCELADO'
      Precision = 18
      Size = 2
    end
    object qryVencimentosNF: TIntegerField
      FieldName = 'NF'
      Origin = 'NF'
    end
    object qryVencimentosEMISSAO_NF: TDateField
      FieldName = 'EMISSAO_NF'
      Origin = 'EMISSAO_NF'
    end
    object qryVencimentosPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 5
    end
    object qryVencimentosSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object qryVencimentosPOSTOID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POSTOID'
      Origin = 'POSTOID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryVencimentosSTATUSVENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUSVENDA'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qryVencimentosIDPOSTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPOSTO'
      Origin = 'POSTOID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryVencimentosNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object dsVencimentos: TDataSource
    DataSet = qryVencimentos
    Left = 168
    Top = 216
  end
end
