object DataModel: TDataModel
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    ConnectionName = 'pg-delphi'
    Params.Strings = (
      'User_Name=postgres'
      'Server=localhost'
      'Password=D1360nun#$'
      'Database=agenda')
    Connected = True
    Left = 64
    Top = 64
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\psqlODBC\1302\bin\libpq.dll'
    Left = 80
    Top = 184
  end
  object tbl_contatos: TFDTable
    Active = True
    AfterInsert = tbl_contatosAfterInsert
    IndexFieldNames = 'codigo'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'contato'
    Left = 376
    Top = 80
    object tbl_contatoscodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object tbl_contatosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 85
    end
    object tbl_contatostelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 16
    end
    object tbl_contatosbloqueado: TBooleanField
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object tbl_contatosdata: TSQLTimeStampField
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = [pfInUpdate]
    end
    object tbl_contatosobservacoes: TWideMemoField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftWideMemo
    end
  end
  object DataSourceContato: TDataSource
    DataSet = tbl_contatos
    Left = 232
    Top = 80
  end
end
