object Sub7FormOptionDialog: TSub7FormOptionDialog
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'Options'
  ClientHeight = 237
  ClientWidth = 211
  Color = clGray
  Constraints.MinHeight = 80
  Constraints.MinWidth = 200
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object CaptionBar: TS7CaptionBar
    Left = 0
    Top = 0
    Width = 211
    Height = 19
    Caption = 'Options'
    BorderIcons = [biSystemMenu]
    Dockable = False
    Transparent = False
    Collapsible = True
    TextCenter = False
    MainColor = 16744576
    SecondaryColor = clBlack
    Align = alTop
  end
  object PanelClient: TS7Panel
    Left = 0
    Top = 19
    Width = 211
    Height = 178
    BorderTop = 0
    BorderLeft = 0
    BorderRight = 0
    BorderBottom = 0
    Color = clBlack
    BorderColor = clBlack
    Align = alClient
    TabOrder = 0
  end
  object PanelFooter: TS7Panel
    Left = 0
    Top = 197
    Width = 211
    Height = 40
    BorderTop = 0
    BorderLeft = 0
    BorderRight = 0
    BorderBottom = 0
    Color = clBlack
    BorderColor = clBlack
    Align = alBottom
    TabOrder = 1
    object ButtonOk: TS7Button
      Left = 78
      Top = 4
      Width = 97
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Enabled = True
      TextAlign = taCenter
      Down = False
      Chevron = False
      Caption = '&OK'
      Value = 0
      OnClick = ButtonOkClick
      Busy = False
    end
  end
  object SubSevenForms: TS7Form
    Resizable = True
    ShowBorder = True
    Color = clGray
    Left = 136
    Top = 112
  end
end
