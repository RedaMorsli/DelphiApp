unit DataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, SimpleDS;

type
  TDM = class(TDataModule)
    Conn: TSQLConnection;
    DSPv: TSimpleDataSet;
    DSPvN_Pv_Insta: TIntegerField;
    DSPvRef_Courri: TStringField;
    DSPvDat_RO: TDateField;
    DSPvAdrs: TStringField;
    DSPvTele: TIntegerField;
    DSPvEmail: TStringField;
    DSPvFax: TIntegerField;
    DSPvType_Res: TStringField;
    DSPvTra_eff_desi: TStringField;
    DSPvMar: TStringField;
    DSPvN_serie: TStringField;
    DSPvQnt: TIntegerField;
    DSPvObs: TStringField;
    DSPvNum_dep: TIntegerField;
    DSPvNum_serv_com: TIntegerField;
    DSPvNum_cl: TIntegerField;
    SrcPv: TDataSource;
    QueryPv: TSQLQuery;
    DSDecharge: TSimpleDataSet;
    SrcDecharge: TDataSource;
    QueryDecharge: TSQLQuery;
    DSDechargeN_Dech: TIntegerField;
    DSDechargeRef: TStringField;
    DSDechargeQtn: TIntegerField;
    DSDechargeNum_deploy: TIntegerField;
    DSDechargeNum_mag_let: TIntegerField;
    DSDodation: TSimpleDataSet;
    SrcDodation: TDataSource;
    QueryDodation: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
