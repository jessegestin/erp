object FRMLogin: TFRMLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 391
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbUsuario: TLabel
    Left = 176
    Top = 168
    Width = 29
    Height = 13
    Caption = 'Login:'
  end
  object lbSenha: TLabel
    Left = 176
    Top = 216
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object edUsuario: TEdit
    Left = 224
    Top = 165
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edSenha: TEdit
    Left = 224
    Top = 213
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btOK: TButton
    Left = 176
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btOKClick
  end
  object btCancel: TButton
    Left = 270
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btCancelClick
  end
end
