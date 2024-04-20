object Form1: TForm1
  Left = 238
  Top = 439
  Width = 552
  Height = 339
  Caption = 'Konversi True Color ke Skala Keabuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 39
    Width = 257
    Height = 257
    Stretch = True
  end
  object Image2: TImage
    Left = 280
    Top = 40
    Width = 257
    Height = 257
    Stretch = True
  end
  object ButtonMuatCitra: TButton
    Left = 16
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Muat citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object ButtonRerata: TButton
    Left = 112
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Keabuan rerata'
    TabOrder = 1
    OnClick = ButtonRerataClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 24
    Top = 48
  end
end
