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
    Left = 8
    Top = 239
    Width = 305
    Height = 39
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 0
  end
  object VirtualStringTree1: TVirtualStringTree
    Left = 8
    Top = 40
    Width = 872
    Height = 146
    Alignment = taCenter
    DrawSelectionMode = smBlendedRectangle
    Header.AutoSizeIndex = 0
    HotCursor = crHandPoint
    LineMode = lmBands
    TabOrder = 1
    TreeOptions.SelectionOptions = [toFullRowSelect]
    OnAddToSelection = VirtualStringTree1AddToSelection
    OnGetText = VirtualStringTree1GetText
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    Columns = <
      item
        Position = 0
        Text = 'ID'
        Width = 250
      end
      item
        Position = 1
        Text = 'Name'
        Width = 250
      end
      item
        Position = 2
        Text = 'Country'
        Width = 250
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 192
    Width = 872
    Height = 41
    BorderStyle = bsSingle
    Caption = 'Panel1'
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 8
    Top = 9
    Width = 872
    Height = 25
    BorderStyle = bsSingle
    Caption = #1051#1040#1041#1054#1056#1040#1058#1054#1056#1053#1040#1071' '#1056#1040#1041#1054#1058#1040', '#1040#1053#1053#1040' '#1053#1048#1050#1054#1051#1040#1045#1042#1040', '#1056#1040#1041#1054#1058#1040' '#1057' SQLITE'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 319
    Top = 239
    Width = 290
    Height = 39
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    TabOrder = 4
  end
  object Button3: TButton
    Left = 615
    Top = 239
    Width = 265
    Height = 39
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
  end
end
