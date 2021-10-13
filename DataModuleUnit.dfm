object DM: TDM
  OldCreateOrder = False
  Height = 279
  Width = 368
  object Conn: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=bdd'
      'User_Name=test'
      'Password=test'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    Connected = True
    Left = 16
    Top = 24
  end
  object DSPv: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = Conn
    DataSet.CommandText = 'select * from `pv_installation`'
    DataSet.DataSource = SrcPv
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 136
    Top = 24
    object DSPvN_Pv_Insta: TIntegerField
      FieldName = 'N_Pv_Insta'
      Required = True
    end
    object DSPvRef_Courri: TStringField
      FieldName = 'Ref_Courri'
      Required = True
      Size = 15
    end
    object DSPvDat_RO: TDateField
      FieldName = 'Dat_RO'
      Required = True
    end
    object DSPvAdrs: TStringField
      FieldName = 'Adrs'
      Required = True
      Size = 30
    end
    object DSPvTele: TIntegerField
      FieldName = 'Tele'
      Required = True
    end
    object DSPvEmail: TStringField
      FieldName = 'Email'
      Required = True
      Size = 30
    end
    object DSPvFax: TIntegerField
      FieldName = 'Fax'
      Required = True
    end
    object DSPvType_Res: TStringField
      FieldName = 'Type_Res'
      Required = True
      Size = 30
    end
    object DSPvTra_eff_desi: TStringField
      FieldName = 'Tra_eff_desi'
      Required = True
      Size = 50
    end
    object DSPvMar: TStringField
      FieldName = 'Mar'
      Required = True
      Size = 15
    end
    object DSPvN_serie: TStringField
      FieldName = 'N_serie'
      Required = True
      Size = 30
    end
    object DSPvQnt: TIntegerField
      FieldName = 'Qnt'
      Required = True
    end
    object DSPvObs: TStringField
      FieldName = 'Obs'
      Required = True
      Size = 100
    end
    object DSPvNum_dep: TIntegerField
      FieldName = 'Num_dep'
      Required = True
    end
    object DSPvNum_serv_com: TIntegerField
      FieldName = 'Num_serv_com'
      Required = True
    end
    object DSPvNum_cl: TIntegerField
      FieldName = 'Num_cl'
      Required = True
    end
  end
  object SrcPv: TDataSource
    DataSet = DSPv
    Left = 224
    Top = 24
  end
  object QueryPv: TSQLQuery
    DataSource = SrcPv
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conn
    Left = 304
    Top = 24
  end
  object DSDecharge: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = Conn
    DataSet.CommandText = 'select * from `decharge`'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 136
    Top = 112
    object DSDechargeN_Dech: TIntegerField
      FieldName = 'N_Dech'
      Required = True
    end
    object DSDechargeRef: TStringField
      FieldName = 'Ref'
      Required = True
      Size = 12
    end
    object DSDechargeQtn: TIntegerField
      FieldName = 'Qtn'
      Required = True
    end
    object DSDechargeNum_deploy: TIntegerField
      FieldName = 'Num_deploy'
      Required = True
    end
    object DSDechargeNum_mag_let: TIntegerField
      FieldName = 'Num_mag_let'
      Required = True
    end
  end
  object SrcDecharge: TDataSource
    DataSet = DSDecharge
    Left = 224
    Top = 112
  end
  object QueryDecharge: TSQLQuery
    DataSource = SrcDecharge
    Params = <>
    Left = 304
    Top = 112
  end
  object DSDodation: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = Conn
    DataSet.CommandText = 'select * from `demande_dodation`'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 136
    Top = 200
  end
  object SrcDodation: TDataSource
    DataSet = DSDodation
    Left = 224
    Top = 200
  end
  object QueryDodation: TSQLQuery
    DataSource = SrcDodation
    Params = <>
    Left = 304
    Top = 200
  end
end
