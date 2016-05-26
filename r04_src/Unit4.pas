unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
//горизонтально
procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
    x1,y1,x2,y2 : integer;
begin
x1:=100;y1:=50;X2:=200;y2:=150;
with Canvas do
begin
 pen.Color:=clBlue;
 Brush.Style:=bsClear;
 for i := 1 to 10 do
 begin
  Ellipse (x1,y1,x2,y2);
  x1:=x1+100;
  x2:=x2+100;
 end;
end;

end;
//диагонально
procedure TForm1.Button2Click(Sender: TObject);
var i: integer;
    x1,y1,x2,y2 : integer;
begin
x1:=100;y1:=50;X2:=200;y2:=150;
with Canvas do
begin
 pen.Color:=clBlue;
 Brush.Style:=bsClear;
 for i := 1 to 10 do
 begin
  Ellipse (x1,y1,x2,y2);
  //тут особо много мозгов не нужно...
  x1:=x1+100;
  x2:=x2+100;
  y1:=y1+100;
  y2:=y2+100;

 end;
end;

end;

end.
