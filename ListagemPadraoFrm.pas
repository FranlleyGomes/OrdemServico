unit ListagemPadraoFrm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TfrmListagemPadrao = class(TForm)
    lytBase: TLayout;
    tblBarraFerramentas: TToolBar;
    Button1: TButton;
    Button2: TButton;
    btnExcluir: TButton;
    pnlPesquisa: TPanel;
    grdDados: TGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemPadrao: TfrmListagemPadrao;

implementation

{$R *.fmx}

end.
