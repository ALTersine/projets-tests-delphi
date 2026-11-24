object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LabelH1Menu: TLabel
    Left = 0
    Top = 0
    Width = 624
    Height = 32
    Align = alTop
    Alignment = taCenter
    Caption = 'Hello World !'
    Color = clFuchsia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 140
  end
  object LabelH2Menu: TLabel
    Left = 0
    Top = 32
    Width = 624
    Height = 409
    Align = alClient
    Alignment = taCenter
    Caption = 'Voici mes quelques programmes de tests :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOrchid
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 390
    ExplicitHeight = 30
  end
  object BtnCalculatrice: TButton
    Left = 32
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Calculatrice'
    TabOrder = 0
    OnClick = BtnCalculatriceClick
  end
end
