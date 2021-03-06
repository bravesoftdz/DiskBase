object FormDBase: TFormDBase
  Left = 607
  Height = 417
  Top = 265
  Width = 495
  HelpContext = 130
  Caption = 'Database'
  ClientHeight = 417
  ClientWidth = 495
  Color = clWhite
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  FormStyle = fsMDIChild
  Icon.Data = {
    360400000000010002002020100000000000E802000026000000101010000000
    0000280100000E03000028000000200000004000000001000400000000008002
    0000000000000000000000000000000000000000000000008000008000000080
    8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
    FF00FF000000FF00FF00FFFF0000FFFFFF006666666666666666666666666666
    66666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66FFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFF66FF88888888880000000000000000FF66FFFFFFFFFFFF078888888888888
    0FF66FFFFFFFFFFFF0F77770007799780FF66FF88888888880F7700FFF007778
    0FF66FFFFFFFFFFFF0F70FFF0FFF07780FF66FFFFFFFFFFFF0F0000000000078
    0FF66FF88888888880F77777777777780FF66FFFFFFF0000000000000000FFF7
    0FF66FFFFFFF078888888888888000000FF66FF888880F799777777777808888
    8FF66FFFFFFF0F00000000000780FFFFFFF66FFFFFFF0F77777777777780FFFF
    FFF66FF888880F0000000000078088888FF66FFFFFFF0F77777777777780FFFF
    FFF66FF0000000000000000FFF70FFFFFFF66FF0788888888888880000008888
    8FF66FF0F77777777777780FFFFFFFFFFFF66FF0F77700000077780FFFFFFFFF
    FFF66FF0F000000000000808888888888FF66FF0F77700000077780FFFFFFFFF
    FFF66FF0F77777777799780FFFFFFFFFFFF66FF0FFFFFFFFFFFFF70888888888
    8FF66FF0000000000000000FFFFFFFFFFFF66FFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFF66FF77F77F77F77F77F77F77F77F77FF66FF07F07F07F07F07F07F07F07F0
    7FF66FF0FF0FF0FF0FF0FF0FF0FF0FF0FFF66666066066066066066066066066
    0666000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000F6DB6DB72800000010000000200000000100
    040000000000C000000000000000000000000000000000000000000000000000
    80000080000000808000800000008000800080800000C0C0C000808080000000
    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000009006F7777
    77770009906FFFFFFFFF0999996F777777770909906FFFFFFFFF0909006F0F0F
    0F0F090000666060606000000000000000000000000000000000078888888888
    88800F777700077AA7800F7700FFF00777800F70FFF0FFF077800F0000000000
    00800F777777777777800FFFFFFFFFFFFF700000000000000000EC000000E400
    000080000000A4000000AC000000BC000000FFFF000000000000000000000000
    0000000000000000000000000000000000000000000000000000
  }
  KeyPreview = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  Position = poDefault
  LCLVersion = '1.8.0.4'
  Visible = True
  object Splitter1: TSplitter
    Left = 280
    Height = 375
    Top = 21
    Width = 2
    Color = clBtnFace
    OnMoved = SplitterMoved
    ParentColor = False
  end
  object Splitter2: TSplitter
    Left = 282
    Height = 375
    Top = 21
    Width = 2
    Color = clBtnFace
    OnMoved = SplitterMoved
    ParentColor = False
  end
  object HeaderTop: THeaderControl
    Left = 0
    Height = 21
    Top = 0
    Width = 495
    DragReorder = False
    Sections = <    
      item
        Alignment = taLeftJustify
        Text = 'Disk'
        Width = 93
        Visible = True
      end    
      item
        Alignment = taLeftJustify
        Text = 'Tree'
        Width = 152
        Visible = True
      end    
      item
        Alignment = taLeftJustify
        Text = 'Files'
        Width = 66
        Visible = True
      end>
    Align = alTop
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OutlineTree: TTreeView
    Tag = 2
    Left = 106
    Height = 375
    Top = 21
    Width = 174
    HelpContext = 160
    Align = alLeft
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Liberation Mono'
    Images = ImageList
    ParentFont = False
    PopupMenu = PopupMenuTree
    ScrollBars = ssAutoBoth
    TabOrder = 2
    OnClick = OutlineTreeClick
    OnEnter = ChangePanel
  end
  object DrawGridDisks: TDrawGrid
    Tag = 1
    Left = 0
    Height = 375
    Top = 21
    Width = 106
    HelpContext = 150
    Align = alLeft
    ColCount = 1
    DefaultRowHeight = 15
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sans'
    Options = [goFixedVertLine, goFixedHorzLine, goDrawFocusSelected, goThumbTracking]
    ParentFont = False
    PopupMenu = PopupMenuDisk
    RowCount = 1
    ScrollBars = ssAutoVertical
    TabOrder = 1
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Sans'
    OnDblClick = DrawGridDisksDblClick
    OnDrawCell = DrawGridDisksDrawCell
    OnEnter = ChangePanel
    OnKeyDown = DrawGridDisksKeyDown
    OnMouseDown = DrawGridDisksMouseDown
    OnSelectCell = DrawGridDisksSelectCell
  end
  object DrawGridFiles: TDrawGrid
    Tag = 3
    Left = 284
    Height = 375
    Top = 21
    Width = 211
    HelpContext = 170
    Align = alClient
    ColCount = 1
    DefaultColWidth = 30
    DefaultRowHeight = 15
    ExtendedSelect = False
    FixedCols = 0
    FixedRows = 0
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Sans'
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goThumbTracking]
    ParentFont = False
    PopupMenu = PopupMenuFiles
    RowCount = 1
    TabOrder = 3
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Sans'
    OnDblClick = DrawGridFilesDblClick
    OnDrawCell = DrawGridFilesDrawCell
    OnEnter = ChangePanel
    OnKeyDown = DrawGridFilesKeyDown
    OnMouseDown = DrawGridFilesMouseDown
    OnMouseMove = DrawGridFilesMouseMove
    OnSelectCell = DrawGridFilesSelectCell
  end
  object HeaderBottom: THeaderControl
    Left = 0
    Height = 21
    Top = 396
    Width = 495
    DragReorder = False
    Sections = <    
      item
        Alignment = taLeftJustify
        Text = 'Subtotals'
        Width = 52
        Visible = True
      end    
      item
        Alignment = taLeftJustify
        Text = 'Current file'
        Width = 104
        Visible = True
      end>
    Align = alBottom
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Ms Sans Serif'
    ParentFont = False
  end
  object PopupMenuDisk: TPopupMenu
    OnPopup = PopupMenuDiskPopup
    left = 48
    top = 48
    object MenuCopyDisk: TMenuItem
      Caption = '&Copy'
      ShortCut = 16451
      OnClick = MenuCopyDiskClick
    end
    object MenuRescan: TMenuItem
      Caption = 'Rescan disk...'
      ShortCut = 8307
      OnClick = MenuRescanClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object MenuDeleteDisk: TMenuItem
      Caption = '&Delete disk'
      ShortCut = 46
      OnClick = MenuDeleteDiskClick
    end
    object MenuUndeleteDisk: TMenuItem
      Caption = '&Undelete disk'
      ShortCut = 16474
      OnClick = MenuUndeleteDiskClick
    end
    object MenuRenameDisk: TMenuItem
      Caption = '&Rename disk'
      ShortCut = 117
      OnClick = MenuRenameDiskClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object MenuSelectDisks: TMenuItem
      Caption = '&Select disks...'
      ShortCut = 16452
      OnClick = MenuSelectDisksClick
    end
    object MenuSelectAllDisks: TMenuItem
      Caption = 'Select &all'
      ShortCut = 16449
      OnClick = MenuSelectAllDisksClick
    end
    object MenuDeselectDisk: TMenuItem
      Caption = 'U&nselect all disks'
      ShortCut = 16469
      OnClick = MenuDeselectDiskClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object MenuInfoDisk: TMenuItem
      Caption = 'Disk &information...'
      ShortCut = 16457
      OnClick = MenuInfoDiskClick
    end
    object MenuPrintDisks: TMenuItem
      Caption = '&Print disks...'
      ShortCut = 16464
      OnClick = MenuPrintDisksClick
    end
    object MenuHelpDisks: TMenuItem
      Caption = '&Help'
      ShortCut = 112
      OnClick = MenuHelpDisksClick
    end
  end
  object PopupMenuTree: TPopupMenu
    OnPopup = PopupMenuTreePopup
    left = 208
    top = 48
    object MenuShowTree: TMenuItem
      Caption = 'Show &tree'
      Checked = True
      ShortCut = 123
      OnClick = MenuShowTreeClick
    end
    object MenuExpandTree: TMenuItem
      Caption = '&Expand tree'
      OnClick = MenuExpandTreeClick
    end
    object MenuCollapseTree: TMenuItem
      Caption = '&Collapse tree'
      OnClick = MenuCollapseTreeClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object MenuPrintTree: TMenuItem
      Caption = '&Print tree...'
      ShortCut = 16464
      OnClick = MenuPrintTreeClick
    end
    object MenuHelpTree: TMenuItem
      Caption = '&Help'
      ShortCut = 112
      OnClick = MenuHelpTreeClick
    end
  end
  object PopupMenuFiles: TPopupMenu
    OnPopup = PopupMenuFilesPopup
    left = 360
    top = 48
    object MenuOpen: TMenuItem
      Caption = 'Open'
      ShortCut = 8205
      OnClick = MenuOpenClick
    end
    object MenuCopyFile: TMenuItem
      Caption = '&Copy'
      ShortCut = 16451
      OnClick = MenuCopyFileClick
    end
    object MenuDeleteFile: TMenuItem
      Caption = '&Delete'
      ShortCut = 46
      OnClick = MenuDeleteFileClick
    end
    object MenuEditDesc: TMenuItem
      Caption = '&Description...'
      ShortCut = 113
      OnClick = MenuEditDescClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MenuSelectFiles: TMenuItem
      Caption = 'Select &files...'
      ShortCut = 16452
      OnClick = MenuSelectFilesClick
    end
    object MenuSelectAllFiles: TMenuItem
      Caption = 'Select &all'
      ShortCut = 16449
      OnClick = MenuSelectAllFilesClick
    end
    object MenuUnselectFiles: TMenuItem
      Caption = 'Unse&lect all files'
      ShortCut = 16469
      OnClick = MenuUnselectFilesClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MenuBrief: TMenuItem
      Caption = 'File names &only'
      ShortCut = 8314
      OnClick = MenuBriefClick
    end
    object MenuDetailed: TMenuItem
      Caption = 'Det&ailed display'
      ShortCut = 8315
      OnClick = MenuDetailedClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuSortName: TMenuItem
      Caption = 'Sort by &name'
      ShortCut = 8306
      OnClick = MenuSortNameClick
    end
    object MenuSortExt: TMenuItem
      Caption = 'Sort by &extension'
      ShortCut = 8307
      OnClick = MenuSortExtClick
    end
    object MenuSortTime: TMenuItem
      Caption = 'Sort by &time'
      ShortCut = 8308
      OnClick = MenuSortTimeClick
    end
    object MenuSortSize: TMenuItem
      Caption = 'Sort by &size'
      ShortCut = 8309
      OnClick = MenuSortSizeClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MenuPrintFiles: TMenuItem
      Caption = '&Print files...'
      ShortCut = 16464
      OnClick = MenuPrintFilesClick
    end
    object MenuHelpFiles: TMenuItem
      Caption = '&Help'
      ShortCut = 112
      OnClick = MenuHelpFilesClick
    end
  end
  object PrintDialog: TPrintDialog
    FromPage = 1
    ToPage = 1
    left = 360
    top = 224
  end
  object ImageList: TImageList
    left = 208
    top = 224
    Bitmap = {
      4C690500000010000000100000000080800000808000808080FF808080FF8080
      80FF808080FF0080800000808000008080000080800000808000008080000080
      800000000000000000000000000000808000808080FFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFF808080FF00808000008080000080800000808000008080000080
      8000000000000000000000000000808080FFC0C0C0FF00FFFFFFC0C0C0FF8000
      80FFC0C0C0FF00FFFFFF808080FF808080FF808080FF808080FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFFFFFFFFF800080FF8000
      80FF800080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF800080FF800080FF8000
      80FF800080FF800080FFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFF8000
      80FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF8000
      80FFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFF8000
      80FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF8000
      80FF800080FF800080FF800080FF800080FFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008080000080
      8000000000000000000000000000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000808000808080FF808080FF8080
      80FF808080FF0080800000808000008080000080800000808000008080000080
      800000000000000000000000000000808000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080FF00808000008080000080800000808000008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFFFFFFFFF808080FF808080FF808080FF00808000008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFFFFFFFFFFFFFFFFFF808080FF00808000008080000080
      8000000000000000000000000000808080FFFFFFFFFF808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF0080
      8000000000000000000000000000808080FFFFFFFFFF808080FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF0080
      8000000000000000000000000000808080FFFFFFFFFF808080FFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF0080
      8000000000000000000000000000808080FF808080FFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FF808080FF00FFFFFFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FF00FFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF00808000008080000080
      8000000000000000000000000000808080FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00808000008080000080
      8000000000000000000000000000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000808000808080FF808080FF8080
      80FF800000FF0080800000808000008080000080800000808000008080000080
      800000000000000000000000000000808000808080FFC0C0C0FF00FFFFFFC0C0
      C0FFFF0000FF808080FF00808000008080000080800000808000008080000080
      8000000000000000000000000000808080FFC0C0C0FF00FFFFFFC0C0C0FF00FF
      FFFFFF0000FF00FFFFFF808080FF808080FF808080FF808080FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFFFF0000FFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFFF00
      00FFFF0000FFFF0000FFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000800000FFFF0000FFFF0000FFFF0000FFFF00
      00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF800000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FFFF00
      00FFFF0000FFFF0000FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FFFF0000FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFFFF0000FFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FF000000FF000000FF000000FF0000
      00FF800000FF000000FF000000FF000000FF000000FF000000FF008080000080
      8000000000000000000000000000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000808000808080FF808080FF8080
      80FF808080FF0080800000808000008080000080800000808000008080000080
      800000000000000000000000000000808000808080FFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFF808080FF00808000008080000080800000808000008080000080
      8000000000000000000000000000808080FFC0C0C0FF00FFFFFFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFF808080FF808080FF808080FF808080FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008080000080
      8000000000000000000000000000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000808000808080FF808080FF8080
      80FF808080FF0080800000808000008080000080800000808000008080000080
      800000000000000000000000000000808000808080FFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFF808080FF00808000008080000080800000808000008080000080
      8000000000000000000000000000808080FFC0C0C0FF00FFFFFFC0C0C0FF00FF
      FFFFC0C0C0FF00FFFFFF808080FF808080FF808080FF808080FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFF000000FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF000000FFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFF000000FF0000
      00FF000000FF000000FF000000FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF000000FFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFF00FFFFFFC0C0C0FF00FF
      FFFF000000FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF000000FF008080000080
      8000000000000000000000000000808080FFFFFFFFFFC0C0C0FF00FFFFFFC0C0
      C0FF00FFFFFFC0C0C0FF00FFFFFFC0C0C0FF00FFFFFF000000FF008080000080
      8000000000000000000000000000808080FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008080000080
      8000000000000000000000000000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000
    }
  end
end
