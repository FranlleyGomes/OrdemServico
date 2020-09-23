unit FormaPagamentoListagemFrm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  ListagemPadraoFrm, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  FMX.Controls.Presentation, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TFrmFormaPagamentoListagem = class(TfrmListagemPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormaPagamentoListagem: TFrmFormaPagamentoListagem;

implementation

{$R *.fmx}

uses FormaPagamentoDtm;

procedure TFrmFormaPagamentoListagem.FormCreate(Sender: TObject);
begin
  inherited;
    dtmFormaPagamento := TdtmFormaPagamento.Create(Self);
    dtmFormaPagamento.qryFormaPagamento.Open();
end;

procedure TFrmFormaPagamentoListagem.FormDestroy(Sender: TObject);
begin
  inherited;
dtmFormaPagamento.DisposeOf;
end;

end.
