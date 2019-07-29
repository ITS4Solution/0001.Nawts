object FSisNFServidor: TFSisNFServidor
  Left = 0
  Top = 0
  Caption = 'Servidor.....'
  ClientHeight = 283
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    510
    283)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 74
    Width = 132
    Height = 13
    Caption = 'Active TCP/IP Connections:'
  end
  object Label2: TLabel
    Left = 260
    Top = 74
    Width = 78
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Active Sessions:'
  end
  object KAIdleLabel: TLabel
    Left = 292
    Top = 257
    Width = 119
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'KeepAlive Idle time (ms):'
    Enabled = False
    ExplicitTop = 227
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 134
    Height = 13
    Caption = 'Hit count window (minutes):'
  end
  object Label4: TLabel
    Left = 240
    Top = 8
    Width = 112
    Height = 13
    Caption = 'Max. allowed requests:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 31
    Width = 416
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Shape = bsTopLine
    ExplicitWidth = 471
  end
  object lblServidor: TLabel
    Left = 8
    Top = 39
    Width = 288
    Height = 19
    Anchors = [akLeft, akBottom]
    Caption = 'DataSnap Server Vers'#227'o 1.0 build 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ConnectionsList: TListBox
    Left = 8
    Top = 91
    Width = 245
    Height = 158
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    PopupMenu = KeepAlivePopup
    TabOrder = 0
    OnClick = ConnectionsListClick
    OnContextPopup = ConnectionsListContextPopup
  end
  object SessionIdList: TListBox
    Left = 259
    Top = 91
    Width = 232
    Height = 158
    Anchors = [akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 1
    OnClick = SessionIdListClick
  end
  object useKeepAliveCheck: TCheckBox
    Left = 186
    Top = 258
    Width = 100
    Height = 17
    Alignment = taLeftJustify
    Anchors = [akRight, akBottom]
    BiDiMode = bdLeftToRight
    Caption = 'Use KeepAlive'
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = useKeepAliveCheckClick
  end
  object KAIdleMS: TEdit
    Left = 436
    Top = 251
    Width = 56
    Height = 21
    Anchors = [akRight, akBottom]
    Enabled = False
    NumbersOnly = True
    TabOrder = 3
    Text = '5000'
  end
  object thrashCountEdit: TEdit
    Left = 173
    Top = 5
    Width = 41
    Height = 21
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 4
    Text = '1'
    OnChange = thrashCountEditChange
  end
  object maxRequestsEdit: TEdit
    Left = 371
    Top = 5
    Width = 48
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    Text = '200'
    OnChange = maxRequestsEditChange
  end
  object thrashUpdate: TButton
    Left = 425
    Top = 5
    Width = 54
    Height = 23
    Caption = 'update'
    Enabled = False
    TabOrder = 6
    OnClick = thrashUpdateClick
  end
  object Button1: TButton
    Left = 376
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button1'
    Enabled = False
    TabOrder = 7
    Visible = False
    OnClick = Button1Click
  end
  object KeepAlivePopup: TPopupMenu
    Left = 192
    Top = 96
    object EnableKAItem: TMenuItem
      Caption = 'Enable keep-alive'
      OnClick = EnableKAItemClick
    end
    object DisableKAItem: TMenuItem
      Caption = 'Disable keep-alive'
      OnClick = DisableKAItemClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object closeConnItem: TMenuItem
      Caption = 'Close Connection'
      OnClick = closeConnItemClick
    end
  end
end
