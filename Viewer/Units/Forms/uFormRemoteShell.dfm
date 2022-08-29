object FormRemoteShell: TFormRemoteShell
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'remote shell'
  ClientHeight = 258
  ClientWidth = 513
  Color = clGray
  Constraints.MinHeight = 240
  Constraints.MinWidth = 320
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 14
  object CaptionBar: TS7CaptionBar
    Left = 0
    Top = 0
    Width = 513
    Height = 19
    Caption = 'remote shell'
    BorderIcons = [biSystemMenu, biMinimize, biMaximize]
    S7Form = SubSevenForms
    Dockable = False
    Transparent = False
    Collapsible = True
    TextCenter = False
    MainColor = 16744576
    SecondaryColor = clBlack
    OnClickCaption = CaptionBarClickCaption
    Align = alTop
  end
  object PanelClient: TS7Panel
    Left = 0
    Top = 19
    Width = 513
    Height = 239
    BorderTop = 0
    BorderLeft = 0
    BorderRight = 0
    BorderBottom = 0
    Color = clBlack
    BorderColor = clBlack
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 258
    object PanelCommand: TS7Panel
      AlignWithMargins = True
      Left = 2
      Top = 212
      Width = 509
      Height = 25
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 2
      BorderTop = 0
      BorderLeft = 0
      BorderRight = 0
      BorderBottom = 0
      Color = 8404992
      BorderColor = clBlack
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 231
      object ButtonRun: TS7ImageButton
        AlignWithMargins = True
        Left = 483
        Top = 2
        Width = 24
        Height = 23
        Hint = 'run command to current terminal session'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 0
        Align = alRight
        Background = 8404992
        ImageList = FormMain.ImageSubSeven
        ImageIndex = 13
        OnClick = ButtonRunClick
        Value = 0
        ExplicitLeft = 2
        ExplicitHeight = 645
      end
      object EditCommand: TS7Edit
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 477
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        AutoSize = False
        Color = 8404992
        Enabled = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyDown = EditCommandKeyDown
        OnKeyUp = EditCommandKeyUp
        AlternativeTheme = True
        Status = csNormal
        Validators = []
      end
    end
    object Terminal: TMemo
      AlignWithMargins = True
      Left = 2
      Top = 1
      Width = 509
      Height = 209
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 2
      TabStop = False
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
      OnMouseDown = TerminalMouseDown
      ExplicitHeight = 228
    end
  end
  object SubSevenForms: TS7Form
    Resizable = True
    ShowBorder = True
    Color = clGray
    Left = 472
    Top = 88
  end
end
