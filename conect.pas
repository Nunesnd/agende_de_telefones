unit conect;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModel = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    tbl_contatos: TFDTable;
    DataSourceContato: TDataSource;
    tbl_contatoscodigo: TIntegerField;
    tbl_contatosnome: TWideStringField;
    tbl_contatostelefone: TWideStringField;
    tbl_contatosbloqueado: TBooleanField;
    tbl_contatosdata: TSQLTimeStampField;
    tbl_contatosobservacoes: TWideMemoField;
    procedure tbl_contatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModel: TDataModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModel.tbl_contatosAfterInsert(DataSet: TDataSet);

var
  ContatosData: TDateTime;
begin
  ContatosData := Now();
  tbl_contatosdata.AsDateTime := ContatosData;
end;
end.
