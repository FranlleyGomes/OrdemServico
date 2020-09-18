unit OrdemServicoDtm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmOrdemServico = class(TDataModule)
    qryOrdemServico: TFDQuery;
    qryOrdemServicoidordem_servico: TFDAutoIncField;
    qryOrdemServicocliente: TStringField;
    qryOrdemServicoveiculo: TStringField;
    qryOrdemServicoforma_pagamento: TStringField;
    qryOrdemServiconumero: TStringField;
    qryOrdemServicodata_ordem_servico: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmOrdemServico: TdtmOrdemServico;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses ConexaoDtm;

{$R *.dfm}

end.
