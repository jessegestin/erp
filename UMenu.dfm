object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Menu'
  ClientHeight = 515
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 148
    Top = 88
    object mnFerramentas: TMenuItem
      Caption = 'Ferramentas'
      object mnCadastros: TMenuItem
        Caption = 'Cadastros'
        object mnCadUsuario: TMenuItem
          Caption = 'Usu'#225'rio'
          OnClick = mnCadUsuarioClick
        end
      end
    end
  end
end
