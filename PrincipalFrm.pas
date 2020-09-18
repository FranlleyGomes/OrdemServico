unit PrincipalFrm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts, System.Actions,
  FMX.ActnList;

type
  TfrmPrincipal = class(TForm)
    tlbBarraFerramentas: TToolBar;
    Button1: TButton;
    btnOrdemServico: TButton;
    menu: TMainMenu;
    Cadastros: TMenuItem;
    Clientes: TMenuItem;
    Veículos: TMenuItem;
    FormasDePagamento: TMenuItem;
    Serviços: TMenuItem;
    Movimentações: TMenuItem;
    OrdemDeServiço: TMenuItem;
    lytPrincipal: TLayout;
    actAcoes: TActionList;
    actClients: TAction;
    actFormasPagamento: TAction;
    actServicos: TAction;
    actVeiculos: TAction;
    actOrdensServicos: TAction;
    procedure actOrdensServicosExecute(Sender: TObject);
    procedure actClientsExecute(Sender: TObject);
    procedure actFormasPagamentoExecute(Sender: TObject);
    procedure actServicosExecute(Sender: TObject);
    procedure actVeiculosExecute(Sender: TObject);
  private
   FFormularioAtivo: TForm;
   procedure AbrirJanela(AClasseFormulario: TComponentClass);
  public
    { Public declarations }
  { TfrmPrincipal }
end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses OrdemServicoListagemFrm, ClienteListagemFrm, FormaPagamentoListagemFrm,
  ServicoListagemFrm, VeiculoListagemFrm;

{ TfrmPrincipal }

procedure TfrmPrincipal.AbrirJanela(AClasseFormulario: TComponentClass);
 var
   LayoutBase: TComponent;
 begin
   if Assigned(FFormularioAtivo) then
   begin
     if FFormularioAtivo.ClassType = AClasseFormulario then
       Exit
     else
     begin
       FFormularioAtivo.DisposeOf;
       FFormularioAtivo := nil;
     end;
   end;
   Application.CreateForm(AClasseFormulario, FFormularioAtivo);
   LayoutBase := FFormularioAtivo.FindComponent('lytBase');
   if Assigned(LayoutBase) then
     lytPrincipal.AddObject(TLayout(LayoutBase));

end;

procedure TfrmPrincipal.actClientsExecute(Sender: TObject);
begin
   AbrirJanela(TfrmClienteListagem);
end;

procedure TfrmPrincipal.actFormasPagamentoExecute(Sender: TObject);
begin
  AbrirJanela(TfrmFormaPagamentoListagem);
end;

procedure TfrmPrincipal.actOrdensServicosExecute(Sender: TObject);
begin
   AbrirJanela(TfrmOrdemServicoListagem);
end;

procedure TfrmPrincipal.actServicosExecute(Sender: TObject);
begin
 AbrirJanela(TfrmServicoListagem);
end;

procedure TfrmPrincipal.actVeiculosExecute(Sender: TObject);
begin
   AbrirJanela(TfrmVeiculoListagem);
end;

end.



