unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtDlgs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    MUATCITRA1: TMenuItem;
    EXIT1: TMenuItem;
    OPERASI1: TMenuItem;
    KEABUANREARATA1: TMenuItem;
    CITRANEGATIF1: TMenuItem;
    procedure MUATCITRA1Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
    procedure KEABUANREARATA1Click(Sender: TObject);
    procedure CITRANEGATIF1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadImage(const AImage: TImage);
    procedure ApplyGrayscale(const ASource, ADestination: TImage);
    procedure ApplyNegative(const ASource, ADestination: TImage);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.MUATCITRA1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    LoadImage(Image1);
end;

procedure TForm1.EXIT1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.KEABUANREARATA1Click(Sender: TObject);
begin
  ApplyGrayscale(Image1, Image2);
end;

procedure TForm1.CITRANEGATIF1Click(Sender: TObject);
begin
  ApplyNegative(Image1, Image2);
end;

procedure TForm1.LoadImage(const AImage: TImage);
begin
  if OpenPictureDialog1.FileName <> '' then
    AImage.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm1.ApplyGrayscale(const ASource, ADestination: TImage);
var
  X, Y: Integer;
  GrayValue: Byte;
begin
  ADestination.Picture.Bitmap.Assign(ASource.Picture.Bitmap);
  for Y := 0 to ADestination.Picture.Height - 1 do
  begin
    for X := 0 to ADestination.Picture.Width - 1 do
    begin
      GrayValue := (ASource.Picture.Bitmap.Canvas.Pixels[X, Y] shr 16) and $FF;
      ADestination.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB(GrayValue, GrayValue, GrayValue);
    end;
  end;
end;

procedure TForm1.ApplyNegative(const ASource, ADestination: TImage);
var
  X, Y: Integer;
  R, G, B: Byte;
begin
  ADestination.Picture.Bitmap.Assign(ASource.Picture.Bitmap);
  for Y := 0 to ADestination.Picture.Height - 1 do
  begin
    for X := 0 to ADestination.Picture.Width - 1 do
    begin
      R := 255 - (ASource.Picture.Bitmap.Canvas.Pixels[X, Y] and $000000FF);
      G := 255 - ((ASource.Picture.Bitmap.Canvas.Pixels[X, Y] shr 8) and $000000FF);
      B := 255 - ((ASource.Picture.Bitmap.Canvas.Pixels[X, Y] shr 16) and $000000FF);
      ADestination.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB(R, G, B);
    end;
  end;
end;

end.

