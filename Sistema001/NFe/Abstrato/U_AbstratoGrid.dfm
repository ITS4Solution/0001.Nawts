inherited F_AbstratoGrid: TF_AbstratoGrid
  Caption = 'F_AbstratoGrid'
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    ExplicitWidth = 546
  end
  inherited Panel1: TPanel
    object AdvGlassButton2: TAdvGlassButton
      Left = 332
      Top = 14
      Width = 100
      Height = 32
      BackColor = 6052956
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 1
      Version = '1.3.0.2'
      OnClick = AdvGlassButton2Click
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 546
    Height = 301
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.GridMode = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object oCds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 8
  end
  object oDS: TDataSource
    AutoEdit = False
    DataSet = oCds
    Left = 40
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Left = 304
    Top = 128
  end
end
