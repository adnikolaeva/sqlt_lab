object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 286
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object VirtualStringTree1: TVirtualStringTree
    Left = 8
    Top = 40
    Width = 872
    Height = 146
    Header.AutoSizeIndex = 0
    TabOrder = 1
    OnGetText = VirtualStringTree1GetText
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    Columns = <
      item
        Position = 0
        Text = 'ID'
      end
      item
        Position = 1
        Text = 'Name'
      end
      item
        Position = 2
        Text = 'Country'
      end>
  end
  object StaticText1: TStaticText
    Left = 280
    Top = 8
    Width = 324
    Height = 17
    Caption = #1051#1040#1041#1054#1056#1040#1058#1054#1056#1053#1040#1071' '#1056#1040#1041#1054#1058#1040', '#1040#1053#1053#1040' '#1053#1048#1050#1054#1051#1040#1045#1042#1040', '#1056#1040#1041#1054#1058#1040' '#1057' SQLITE'
    TabOrder = 2
  end
end
