object FRMCadUsuario: TFRMCadUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 395
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcUsuario: TPageControl
    Left = 0
    Top = 0
    Width = 691
    Height = 395
    ActivePage = tsLista
    Align = alClient
    TabOrder = 0
    object tsLista: TTabSheet
      Caption = 'tsLista'
      object pnFiltro: TPanel
        Left = 0
        Top = 0
        Width = 683
        Height = 33
        Align = alTop
        TabOrder = 0
        object lbFIltroID: TLabel
          Left = 24
          Top = 4
          Width = 15
          Height = 13
          Caption = 'ID:'
        end
        object lbFiltroUsuario: TLabel
          Left = 128
          Top = 4
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
        end
        object edFiltroID: TEdit
          Left = 45
          Top = 1
          Width = 52
          Height = 21
          TabOrder = 0
        end
        object edFiltroUsuario: TEdit
          Left = 174
          Top = 1
          Width = 183
          Height = 21
          TabOrder = 1
        end
        object btFiltrar: TButton
          Left = 604
          Top = 2
          Width = 75
          Height = 25
          Caption = '&Filtrar'
          TabOrder = 2
          OnClick = btFiltrarClick
        end
      end
      object pnBottom: TPanel
        Left = 0
        Top = 332
        Width = 683
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btIncluir: TButton
          Left = 146
          Top = 6
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
        end
        object btAlterar: TButton
          Left = 242
          Top = 6
          Width = 75
          Height = 25
          Caption = '&Alterar'
          TabOrder = 1
        end
        object btConsultar: TButton
          Left = 346
          Top = 6
          Width = 75
          Height = 25
          Caption = '&Consultar'
          TabOrder = 2
        end
        object btExcluir: TButton
          Left = 450
          Top = 6
          Width = 75
          Height = 25
          Caption = '&Excluir'
          TabOrder = 3
        end
      end
      object pnBackGround: TPanel
        Left = 0
        Top = 33
        Width = 683
        Height = 299
        Align = alClient
        TabOrder = 2
        object gFIltro: TDBGrid
          Left = 1
          Top = 1
          Width = 681
          Height = 297
          Align = alClient
          DataSource = sDados
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usuario'
              Title.Caption = 'Usu'#225'rio'
              Width = 362
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senha'
              Title.Caption = 'Senha'
              Visible = False
            end>
        end
      end
    end
    object tsDados: TTabSheet
      Caption = 'tsDados'
      ImageIndex = 1
    end
  end
  object sDados: TDataSource
    DataSet = qDados
    Left = 480
    Top = 65528
  end
  object qDados: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'select *'
      'from usuarios'
      'order by usuario')
    Left = 520
    Top = 65528
    object qDadosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object qDadosusuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 15
    end
    object qDadossenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 15
    end
  end
end
