object Form1: TForm1
  Left = 294
  Top = 186
  Width = 748
  Height = 662
  Caption = 'Form1'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 161
    Height = 25
    Caption = #1054#1089#1072#1076#1082#1080' '#1074' '#1052#1072#1088#1090#1077
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 136
    Width = 104
    Height = 24
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    Color = clFuchsia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 32
    Top = 56
    Width = 161
    Height = 537
    ColCount = 2
    FixedCols = 0
    RowCount = 32
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 368
    Top = 56
    Width = 129
    Height = 41
    Caption = #1057#1091#1084#1084#1080#1088#1086#1074#1072#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
