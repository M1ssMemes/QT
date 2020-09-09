object MainForm: TMainForm
  Left = 219
  Top = 121
  Width = 529
  Height = 630
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 40
    Top = 40
    Width = 433
    Height = 465
  end
  object CaptionLabel: TLabel
    Left = 96
    Top = 16
    Width = 309
    Height = 20
    Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1099#1093' '#1087#1088#1086#1076#1091#1082#1090#1072#1093
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object AddBatton: TButton
    Left = 80
    Top = 72
    Width = 353
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1074#1077#1076#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = AddBattonClick
  end
  object ExitButton: TButton
    Left = 208
    Top = 528
    Width = 97
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ExitButtonClick
  end
  object RazrabButton: TButton
    Left = 80
    Top = 288
    Width = 353
    Height = 41
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = RazrabButtonClick
  end
  object YearButton: TButton
    Left = 80
    Top = 432
    Width = 353
    Height = 41
    Caption = #1043#1088#1072#1092#1080#1082' '#1087#1086' '#1087#1088#1086#1076#1091#1082#1090#1072#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = YearButtonClick
  end
  object InfoButton: TButton
    Left = 80
    Top = 216
    Width = 353
    Height = 41
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1086#1076#1091#1082#1090#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = InfoButtonClick
  end
  object MemoryButton: TButton
    Left = 80
    Top = 360
    Width = 353
    Height = 41
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1087#1072#1084#1103#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = MemoryButtonClick
  end
  object DeleteButton: TButton
    Left = 80
    Top = 144
    Width = 353
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1074#1077#1076#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = DeleteButtonClick
  end
end
