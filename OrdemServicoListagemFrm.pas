unit OrdemServicoListagemFrm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  ListagemPadraoFrm, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  FMX.Controls.Presentation, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Edit;

type
  TfrmOrdemServicoListagem = class(TfrmListagemPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    edtNumero: TEdit;
    btnPesquisar: TButton;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdemServicoListagem: TfrmOrdemServicoListagem;

implementation

{$R *.fmx}

uses OrdemServicoDtm;

procedure TfrmOrdemServicoListagem.btnPesquisarClick(Sender: TObject);
var
   ASql: String;
 begin
   inherited;
   ASql := 'select ors.idordem_servico, cln.nome as cliente, vlc.placa as veiculo, fpg.nome as forma_pagamento, ';
   ASql := ASql + ' ors.numero, ors.data_ordem_servico from m_ordem_servico ors ';
   ASql := ASql + ' inner join c_cliente cln on ors.idcliente = cln.idcliente ';
   ASql := ASql + ' inner join c_veiculo vlc on ors.idveiculo = vlc.idveiculo ';
   ASql := ASql + ' inner join c_forma_pagamento fpg on ors.idforma_pagamento = fpg.idforma_pagamento';
   if Trim(edtNumero.Text) <> '' then
     ASql := ASql + ' where ors.numero = ' + QuotedStr(edtNumero.Text);
   dtmOrdemServico.qryOrdemServico.SQL.Text := ASql;
   dtmOrdemServico.qryOrdemServico.Open();


end;

procedure TfrmOrdemServicoListagem.FormCreate(Sender: TObject);
begin
  inherited;
   dtmOrdemServico := TdtmOrdemServico.Create(Self);
end;

procedure TfrmOrdemServicoListagem.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmOrdemServico.DisposeOf;
end;

end.
