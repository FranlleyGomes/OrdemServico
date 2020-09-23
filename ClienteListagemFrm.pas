unit ClienteListagemFrm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  ListagemPadraoFrm, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  FMX.Controls.Presentation, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmClienteListagem = class(TfrmListagemPadrao)
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
  frmClienteListagem: TfrmClienteListagem;

implementation

{$R *.fmx}

uses ClienteDtm;

procedure TfrmClienteListagem.FormCreate(Sender: TObject);
begin
  inherited;
   dtmCliente := TdtmCliente.Create(Self);
   dtmCliente.qryCliente.Open();
end;

procedure TfrmClienteListagem.FormDestroy(Sender: TObject);
begin
  inherited;
dtmCliente.DisposeOf;
end;

end.
