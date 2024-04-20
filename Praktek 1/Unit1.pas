unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    ButtonMuatCitra: TButton;
    LabelPosisi: TLabel;
    Image1: TImage;
    Label2: TLabel;
    EditR: TEdit;
    Label3: TLabel;
    EditG: TEdit;
    Label4: TLabel;
    EditB: TEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure ButtonMuatCitraClick(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonMuatCitraClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  PC: PByteArray;
  R, G, B: Byte;
begin
  if (Image1.Picture.Bitmap.PixelFormat = pf24bit) then
  begin
    PC := Image1.Picture.Bitmap.ScanLine[Y];
    R := PC[3 * X + 2];
    G := PC[3 * X + 1];
    B := PC[3 * X];
    LabelPosisi.Caption := 'Posisi: (' + IntToStr(X) + ',' + IntToStr(Y) + ')';
    EditR.Text := IntToStr(R);
    EditG.Text := IntToStr(G);
    EditB.Text := IntToStr(B);
  end;
end;

end.

