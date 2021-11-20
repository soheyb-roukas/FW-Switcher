object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '                     .: Firewall Switcher :.'
  ClientHeight = 148
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  ScreenSnap = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 30
    Width = 188
    Height = 18
    Caption = 'Net Firewall    [DOMAIN]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 64
    Width = 185
    Height = 18
    Caption = 'Net Firewall   [PRIVATE]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 97
    Width = 184
    Height = 18
    Caption = 'Net Firewall     [PUBLIC]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ts1: TToggleSwitch
    Left = 216
    Top = 30
    Width = 72
    Height = 20
    TabOrder = 0
    OnClick = ts1Click
  end
  object ts2: TToggleSwitch
    Left = 216
    Top = 64
    Width = 72
    Height = 20
    TabOrder = 1
    OnClick = ts1Click
  end
  object ts3: TToggleSwitch
    Left = 216
    Top = 97
    Width = 72
    Height = 20
    TabOrder = 2
    OnClick = ts1Click
  end
end
