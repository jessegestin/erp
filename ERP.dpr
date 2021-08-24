program ERP;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FRMLogin},
  UMenu in 'UMenu.pas' {frmMenu},
  UCadUsuario in 'UCadUsuario.pas' {FRMCadUsuario},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMLogin, FRMLogin);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TFRMCadUsuario, FRMCadUsuario);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
