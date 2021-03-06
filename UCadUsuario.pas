unit UCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRMCadUsuario = class(TForm)
    sDados: TDataSource;
    pcUsuario: TPageControl;
    tsLista: TTabSheet;
    tsDados: TTabSheet;
    pnFiltro: TPanel;
    lbFIltroID: TLabel;
    lbFiltroUsuario: TLabel;
    edFiltroID: TEdit;
    edFiltroUsuario: TEdit;
    btFiltrar: TButton;
    pnBottom: TPanel;
    pnBackGround: TPanel;
    btIncluir: TButton;
    btAlterar: TButton;
    btConsultar: TButton;
    btExcluir: TButton;
    gFIltro: TDBGrid;
    qDados: TFDQuery;
    qDadosid: TIntegerField;
    qDadosusuario: TWideStringField;
    qDadossenha: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadUsuario: TFRMCadUsuario;

implementation
uses UDM;

{$R *.dfm}

procedure TFRMCadUsuario.btFiltrarClick(Sender: TObject);
begin
  qdados.Close;
  qDados.Active := True;
end;

procedure TFRMCadUsuario.FormShow(Sender: TObject);
begin
  pcUsuario.ActivePageIndex  := 0;

  qDados.Close;

  edFiltroID.SetFocus;
end;

end.
