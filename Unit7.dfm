object Form7: TForm7
  Left = 744
  Top = 200
  Width = 680
  Height = 572
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 610
    Height = 20
    Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1099#1093' '#1087#1088#1086#1076#1091#1082#1090#1086#1074' '#1082#1072#1078#1076#1086#1075#1086' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 24
    Top = 64
    Width = 609
    Height = 393
  end
  object ExitButton: TButton
    Left = 488
    Top = 472
    Width = 97
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = ExitButtonClick
  end
  object TChart: TChart
    Left = 32
    Top = 72
    Width = 593
    Height = 377
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = clWhite
    LeftWall.Color = clWhite
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = []
    Title.Text.Strings = (
      #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1082#1086#1083#1083#1080#1095#1077#1089#1090#1074#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1099#1093' '#1087#1088#1086#1076#1091#1082#1090#1086#1074)
    BottomAxis.Title.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072
    LeftAxis.Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1075#1088#1072#1084#1084
    Legend.Visible = False
    View3D = False
    View3DOptions.Elevation = 339
    TabOrder = 1
    Visible = False
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object StartButton: TButton
    Left = 88
    Top = 472
    Width = 97
    Height = 41
    Caption = #1053#1072#1095#1072#1090#1100
    TabOrder = 2
    OnClick = StartButtonClick
  end
end
