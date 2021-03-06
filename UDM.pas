unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, Data.DB,
  FireDAC.Comp.Client,  Vcl.Forms, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    driver: TFDPhysSQLiteDriverLink;
    conexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  conexao.Params.Values['DriverID'] := 'SQLite';
  conexao.LoginPrompt := False;
  conexao.Params.Values['DataBase'] := GetHomePath + PathDelim + 'bd_erp'; //ExtractFileDir(Application.ExeName) + 'bd_erp';
  conexao.Connected := True;

end;

end.
