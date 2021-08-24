unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFRMLogin = class(TForm)
    lbUsuario: TLabel;
    lbSenha: TLabel;
    edUsuario: TEdit;
    edSenha: TEdit;
    btOK: TButton;
    btCancel: TButton;
    procedure btOKClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMLogin: TFRMLogin;

implementation
uses UMenu, UDM;

{$R *.dfm}

procedure TFRMLogin.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFRMLogin.btOKClick(Sender: TObject);
begin
  if (edUsuario.Text = 'JESSE') and (edSenha.Text = '123') then
  begin
    FRMLogin.Hide;

    frmMenu.ShowModal;
  end else
  begin
    ShowMessage('Atenão, login inválido!');
    Abort;
  end;

end;

end.
