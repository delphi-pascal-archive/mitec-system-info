object frmSubInfo: TfrmSubInfo
  Left = 302
  Top = 440
  BorderStyle = bsDialog
  Caption = 'frmSubInfo'
  ClientHeight = 276
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 239
    Width = 397
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 397
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 311
      Top = 3
      Width = 86
      Height = 34
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object bOK: TButton
        Left = 4
        Top = 6
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = 'OK'
        Default = True
        ModalResult = 1
        TabOrder = 0
      end
    end
  end
  object Notebook: TNotebook
    Left = 0
    Top = 0
    Width = 397
    Height = 239
    Align = alClient
    TabOrder = 1
    object TPage
      Left = 0
      Top = 0
      Caption = 'Memo'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 397
        Height = 239
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 5
        Caption = 'Panel3'
        TabOrder = 0
        object Memo: TMemo
          Left = 6
          Top = 6
          Width = 385
          Height = 227
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'CheckBox'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 397
        Height = 239
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 10
        TabOrder = 0
        object clb: TCheckListBox
          Left = 10
          Top = 10
          Width = 377
          Height = 208
          OnClickCheck = clbClickCheck
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          IntegralHeight = True
          ItemHeight = 13
          TabOrder = 0
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Listbox'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 397
        Height = 239
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 0
        object lb: TListBox
          Left = 6
          Top = 6
          Width = 385
          Height = 227
          Align = alClient
          BorderStyle = bsNone
          ItemHeight = 13
          TabOrder = 0
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'ListView'
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 397
        Height = 239
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 0
        object lv: TListView
          Left = 6
          Top = 6
          Width = 385
          Height = 227
          Align = alClient
          BorderStyle = bsNone
          Columns = <
            item
              Caption = 'Resource'
              Width = -2
              WidthType = (
                -2)
            end
            item
              Caption = 'Value'
              Width = -2
              WidthType = (
                -2)
            end>
          ColumnClick = False
          HideSelection = False
          HotTrackStyles = [htHandPoint, htUnderlineHot]
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
  end
end
