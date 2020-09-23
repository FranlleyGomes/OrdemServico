unit ClienteDtm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmCliente = class(TDataModule)
    qryCliente: TFDQuery;
    qryClienteidcliente: TFDAutoIncField;
    qryClientenome: TStringField;
    qryClientedata_nascimento: TDateField;
    qryClientecpf: TStringField;
    qryClienterg: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmCliente: TdtmCliente;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses ConexaoDtm;

{$R *.dfm}

end.
