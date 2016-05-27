unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);

begin
with Canvas do
begin
//тело
Pen.color:=RGB(219,148,61);
moveto(120,260);
lineto(120,260);
lineto(140,230);
lineto(130,210);
lineto(120,260);
Brush.Color:=RGB(219,148,61);
floodfill(130,240,RGB(219,148,61),fsBorder);
Pen.color:=RGB(254,183,97);
moveto(160,270);
lineto(160,270);
lineto(140,230);
lineto(130,210);
lineto(150,160);
lineto(190,150);
lineto(200,100);
lineto(190,90);
lineto(180,70);
lineto(190,40);
lineto(210,50);
lineto(220,60);
lineto(240,60);
lineto(260,70);
lineto(270,80);
lineto(270,70);
lineto(290,80);
lineto(300,90);
lineto(310,110);
lineto(310,120);
lineto(300,140);
lineto(290,150);
lineto(270,160);
lineto(250,158);
lineto(240,170);
lineto(270,190);
lineto(270,230);
lineto(250,200);
lineto(230,190);
lineto(205,260);
lineto(199,200);
lineto(160,210);
lineto(160,270);
Brush.Color:=RGB(254,183,97);
floodfill(190,200,RGB(254,183,97),fsBorder);
//smile
Pen.color:=RGB(219,148,61);
moveto(290,140);
lineto(290,140);
lineto(272,150);
lineto(260,135);
//глаз
Pen.color:=RGB(108,153,95);
moveto(240,80);
lineto(240,80);
lineto(250,85);
lineto(260,90);
lineto(272,100);
lineto(275,110);
lineto(272,130);
lineto(260,140);
lineto(240,135);
lineto(232,130);
lineto(220,120);
lineto(218,110);
lineto(217,90);
lineto(240,80);
Brush.Color:=RGB(108,153,95);
floodfill(220,100,RGB(108,153,95),fsBorder);
//зрачек
Pen.color:=RGB(255,255,255);
moveto(272,100);
lineto(272,100);
lineto(275,110);
lineto(272,130);
lineto(263,132);
lineto(256,129);
lineto(248,110);
lineto(260,90);
lineto(272,100);
Brush.Color:=RGB(255,255,255);
floodfill(270,100,RGB(255,255,255),fsBorder);
//грива
Pen.color:=RGB(246,237,108);
moveto(300,90);
lineto(300,90);
lineto(330,83);
lineto(320,70);
lineto(300,50);
lineto(290,32);
lineto(300,35);
lineto(290,20);
lineto(250,18);
lineto(220,30);
lineto(210,40);
lineto(210,50);
lineto(220,60);
lineto(240,60);
lineto(260,70);
lineto(270,80);
lineto(270,70);
lineto(290,80);
lineto(300,90);
Brush.Color:=RGB(246,237,108);
floodfill(250,30,RGB(246,237,108),fsBorder);
//глаз 2
Pen.color:=RGB(108,153,95);
moveto(290,85);
lineto(290,85);
lineto(300,100);
lineto(297,110);
lineto(295,115);
lineto(290,120);
lineto(282,110);
lineto(280,100);
lineto(281,90);
lineto(290,85);
Brush.Color:=RGB(108,153,95);
floodfill(290,86,RGB(108,153,95),fsBorder);
//зрачек 2
Pen.color:=RGB(255,255,255);
moveto(300,100);
lineto(300,100);
lineto(297,110);
lineto(290,105);
lineto(291,98);
lineto(300,100);
Brush.Color:=RGB(255,255,255);
floodfill(295,105,RGB(255,255,255),fsBorder);
//хвост
Pen.color:=RGB(246,237,108);
moveto(150,160);
lineto(150,160);
lineto(130,130);
lineto(70,140);
lineto(40,180);
lineto(80,190);
lineto(141,185);
lineto(150,160);
Brush.Color:=RGB(246,237,108);
floodfill(139,180,RGB(246,237,108),fsBorder);
//грива 2
Pen.color:=RGB(246,237,108);
moveto(190,150);
lineto(190,150);
lineto(200,100);
lineto(190,90);
lineto(150,130);
lineto(170,150);
lineto(190,150);
Brush.Color:=RGB(246,237,108);
floodfill(190,120,RGB(246,237,108),fsBorder);
end;
end;
end.
