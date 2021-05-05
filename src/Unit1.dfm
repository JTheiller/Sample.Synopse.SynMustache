object Form1: TForm1
  Left = 192
  Top = 117
  Width = 800
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 200
    Top = 73
    Width = 300
    Height = 376
    Align = alLeft
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 298
      Height = 374
      Align = alClient
      Lines.Strings = (
        'Hello {{name}}'
        'You have just won {{value}} dollars!'
        ''
        'By {{name}} - {{other}}.')
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = Memo1Change
    end
  end
  object Panel4: TPanel
    Left = 500
    Top = 73
    Width = 292
    Height = 376
    Align = alClient
    TabOrder = 3
    object Memo2: TMemo
      Left = 1
      Top = 1
      Width = 290
      Height = 374
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 200
    Height = 376
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Name'
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 27
      Height = 13
      Caption = 'Value'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 26
      Height = 13
      Caption = 'Other'
    end
    object edtName: TEdit
      Left = 56
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Joathan Theiller'
      OnChange = edtNameChange
    end
    object edtValue: TEdit
      Left = 56
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '1000'
      OnChange = edtValueChange
    end
    object edtOther: TEdit
      Left = 56
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'BRASIL'
      OnChange = edtValueChange
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 1
      Top = 28
      Width = 790
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'Synopse - SynMustache - https://github.com/synopse/dmustache'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1
      Top = 55
      Width = 790
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 
        '[Delphi] [FPC] Delphi implementation of the Mustache template la' +
        'nguage, supporting Delphi 6 up to Delphi 10 Seattle (and FPC/Laz' +
        'arus compilation).'
    end
    object Label6: TLabel
      Left = 1
      Top = 1
      Width = 790
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'GitHub - JTheiller - Sample.Synopse.SynMustache'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
