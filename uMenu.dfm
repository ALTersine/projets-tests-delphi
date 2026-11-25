object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 441
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object LabelH1Menu: TLabel
    Left = 0
    Top = 0
    Width = 622
    Height = 38
    Align = alTop
    Alignment = taCenter
    Caption = 'Hello world !'
    Color = clFuchsia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 158
  end
  object PanelMenu: TPanel
    Left = 0
    Top = 143
    Width = 622
    Height = 298
    Color = clAzure
    ParentBackground = False
    TabOrder = 1
    object LabelH2Menu: TLabel
      Left = 1
      Top = 1
      Width = 620
      Height = 33
      Align = alTop
      Alignment = taCenter
      Caption = 'Voici mes quelques programmes de tests :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOrchid
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 80
      ExplicitTop = 17
      ExplicitWidth = 464
    end
    object ButtonCalculatrice: TButton
      Left = 272
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Calculatrice'
      TabOrder = 0
      OnClick = ButtonCalculatriceClick
    end
  end
  object PanelPresentation: TPanel
    Left = 0
    Top = 44
    Width = 622
    Height = 94
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object LabelH2Presentation: TLabel
      Left = 16
      Top = 13
      Width = 172
      Height = 30
      Caption = 'Qui est connect'#233' ?'
      Color = clMediumorchid
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMediumblue
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object EditPresentation: TEdit
      Left = 16
      Top = 49
      Width = 289
      Height = 23
      AutoSelect = False
      TabOrder = 0
      TextHint = 'Indiquez votre pr'#233'nom'
    end
    object ButtonPresentation: TButton
      Left = 311
      Top = 49
      Width = 75
      Height = 23
      Align = alCustom
      Caption = 'valider'
      Default = True
      TabOrder = 1
      OnClick = ButtonPresentationClick
    end
  end
end
