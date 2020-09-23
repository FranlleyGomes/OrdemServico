unit FormaPagamentoDtm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmFormaPagamento = class(TDataModule)
    qryFormaPagamento: TFDQuery;
    qryFormaPagamentoidforma_pagamento: TFDAutoIncField;
    qryFormaPagamentonome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmFormaPagamento: TdtmFormaPagamento;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses ConexaoDtm;

{$R *.dfm}

end.
