object NewDodationForm: TNewDodationForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Nouvelle demande de dodation '
  ClientHeight = 279
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 279
    Align = alClient
    Padding.Left = 16
    Padding.Top = 16
    Padding.Right = 16
    Padding.Bottom = 16
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 17
      Top = 17
      Width = 349
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Nouvelle demande de dodation'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 304
    end
    object Label2: TLabel
      Left = 45
      Top = 88
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = 'Num'#233'ro commande'
    end
    object Label3: TLabel
      Left = 50
      Top = 136
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Service commercial'
    end
    object Label4: TLabel
      Left = 67
      Top = 184
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Magasin cenral'
    end
    object Edit1: TEdit
      Left = 160
      Top = 85
      Width = 206
      Height = 21
      TabOrder = 0
      TextHint = 'Saisir num'#233'ro commande'
    end
    object ComboBox1: TComboBox
      Left = 160
      Top = 133
      Width = 206
      Height = 21
      TabOrder = 1
      TextHint = 'S'#233'lectionner le service commercial'
    end
    object ComboBox2: TComboBox
      Left = 160
      Top = 181
      Width = 206
      Height = 21
      TabOrder = 2
      TextHint = 'S'#233'lectionner le magasin central'
    end
    object Button1: TButton
      Left = 128
      Top = 240
      Width = 238
      Height = 25
      Caption = 'Cr'#233'er'
      Default = True
      TabOrder = 3
    end
    object Button2: TButton
      Left = 17
      Top = 240
      Width = 105
      Height = 25
      Caption = 'Annuler'
      ModalResult = 3
      TabOrder = 4
    end
  end
end
