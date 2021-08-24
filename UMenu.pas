unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    Menu: TMainMenu;
    mnFerramentas: TMenuItem;
    mnCadastros: TMenuItem;
    mnCadUsuario: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnCadUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation
uses ULogin, UCadUsuario;

{$R *.dfm}

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FRMLogin.btCancelClick(nil);
end;

procedure TfrmMenu.mnCadUsuarioClick(Sender: TObject);
begin
  FRMCadUsuario.Show;
end;

end.
