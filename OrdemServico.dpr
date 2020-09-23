program OrdemServico;

uses
  System.StartUpCopy,
  FMX.Forms,
  PrincipalFrm in 'PrincipalFrm.pas' {frmPrincipal},
  ConexaoDtm in 'ConexaoDtm.pas' {dtmConexao: TDataModule},
  ListagemPadraoFrm in 'ListagemPadraoFrm.pas' {frmListagemPadrao},
  OrdemServicoDtm in 'OrdemServicoDtm.pas' {dtmOrdemServico: TDataModule},
  OrdemServicoListagemFrm in 'OrdemServicoListagemFrm.pas' {frmOrdemServicoListagem},
  ClienteDtm in 'ClienteDtm.pas' {dtmCliente: TDataModule},
  FormaPagamentoDtm in 'FormaPagamentoDtm.pas' {dtmFormaPagamento: TDataModule},
  VeiculoDtm in 'VeiculoDtm.pas' {dmVeiculo: TDataModule},
  ServicoDtm in 'ServicoDtm.pas' {dmServico: TDataModule},
  ClienteListagemFrm in 'ClienteListagemFrm.pas' {frmClienteListagem},
  FormaPagamentoListagemFrm in 'FormaPagamentoListagemFrm.pas' {FrmFormaPagamentoListagem},
  ServicoListagemFrm in 'ServicoListagemFrm.pas' {FrmServicoListagem},
  VeiculoListagemFrm in 'VeiculoListagemFrm.pas' {FrmVeiculoListagem};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
