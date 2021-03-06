object FormScanFolder: TFormScanFolder
  Left = 519
  Height = 136
  Top = 270
  Width = 449
  HelpContext = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Scan Folder As Disk'
  ClientHeight = 136
  ClientWidth = 449
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Sans'
  OnCreate = FormCreate
  OnShow = FormShow
  Position = poDefault
  LCLVersion = '1.8.0.5'
  object LabelScanFolder: TLabel
    Left = 12
    Height = 14
    Top = 8
    Width = 75
    Caption = 'Scan folder:'
    ParentColor = False
  end
  object LabelSaveIt: TLabel
    Left = 9
    Height = 14
    Top = 56
    Width = 202
    Caption = 'and save it to database as disk:'
    ParentColor = False
  end
  object EditFolder: TEdit
    Left = 12
    Height = 20
    Top = 24
    Width = 313
    OnChange = EditFolderChange
    TabOrder = 0
  end
  object EditDiskName: TEdit
    Left = 12
    Height = 20
    Top = 72
    Width = 313
    OnChange = EditDiskNameChange
    TabOrder = 2
  end
  object ButtonOK: TButton
    Left = 288
    Height = 25
    Top = 104
    Width = 75
    Caption = 'OK'
    Default = True
    Enabled = False
    OnClick = ButtonOKClick
    TabOrder = 5
  end
  object ButtonCancel: TButton
    Left = 366
    Height = 25
    Top = 104
    Width = 75
    Cancel = True
    Caption = 'Cancel'
    OnClick = ButtonCancelClick
    TabOrder = 6
  end
  object ButtonHelp: TButton
    Left = 12
    Height = 25
    Top = 104
    Width = 75
    Caption = 'Help'
    OnClick = ButtonHelpClick
    TabOrder = 4
  end
  object ButtonBrowseFolder: TButton
    Left = 332
    Height = 25
    Top = 22
    Width = 109
    Caption = 'Browse &folder...'
    OnClick = ButtonBrowseFolderClick
    TabOrder = 1
  end
  object ButtonCreateDiskName: TButton
    Left = 332
    Height = 25
    Top = 70
    Width = 109
    Caption = '<- Create name'
    OnClick = ButtonCreateDiskNameClick
    TabOrder = 3
  end
end
