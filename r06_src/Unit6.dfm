object Form1: TForm1
  Left = 548
  Top = 193
  Width = 362
  Height = 583
  Caption = #1048#1085#1092#1086#1088#1084#1072#1090#1080#1082#1072'!'
  Color = clBackground
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
    Left = 24
    Top = 32
    Width = 193
    Height = 20
    Caption = #1054#1094#1077#1085#1082#1080' '#1055#1086' '#1048#1085#1092#1086#1088#1084#1072#1090#1080#1082#1077
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 32
    Top = 88
    Width = 161
    Height = 409
    ColCount = 2
    FixedCols = 0
    RowCount = 16
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 208
    Top = 184
    Width = 105
    Height = 33
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072
    TabOrder = 1
    OnClick = Button1Click
  end
end
