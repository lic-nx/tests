object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 560
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ListView1: TListView
    Left = 8
    Top = 200
    Width = 825
    Height = 352
    Columns = <>
    TabOrder = 0
  end
  object Button1: TButton
    Left = 496
    Top = 112
    Width = 209
    Height = 33
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Query1: TSQLQuery
    Params = <>
    Left = 704
    Top = 32
  end
  object Query2: TSQLQuery
    Params = <>
    Left = 736
    Top = 112
  end
end
