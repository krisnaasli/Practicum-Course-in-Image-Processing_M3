object Form1: TForm1
  Left = 831
  Top = 283
  Width = 546
  Height = 328
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 257
    Height = 257
  end
  object Image2: TImage
    Left = 272
    Top = 8
    Width = 257
    Height = 257
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 48
    Top = 232
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 232
    object FILE1: TMenuItem
      Caption = 'FILE'
      object MUATCITRA1: TMenuItem
        Caption = 'MUAT CITRA'
        OnClick = MUATCITRA1Click
      end
      object EXIT1: TMenuItem
        Caption = 'EXIT'
        OnClick = EXIT1Click
      end
    end
    object OPERASI1: TMenuItem
      Caption = 'OPERASI'
      object KEABUANREARATA1: TMenuItem
        Caption = 'KONVERSI TRUE COLOR KE SKALA KEABUAN'
        OnClick = KEABUANREARATA1Click
      end
      object CITRANEGATIF1: TMenuItem
        Caption = 'CITRA NEGATIF'
        OnClick = CITRANEGATIF1Click
      end
    end
  end
end
