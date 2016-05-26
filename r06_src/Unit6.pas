unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
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
 //заполнение шапки и 1-го стобца
procedure TForm1.FormActivate(Sender: TObject);
var
   i: integer;
begin
   StringGrid1.Cells [0,0] :='№ по порядку';
   StringGrid1.Cells [1,0] :='Оценка';
   For i:=1 to 15 do
     StringGrid1.Cells [0,i] := IntToStr(i);
end;
//процедура нажатия кнопки
procedure TForm1.Button1Click(Sender: TObject);
var
   A : array[1..15] of integer;
   i, k : integer;
begin
{ Ввод элементов массива  А }
    For i:=1 to 15 do
     A [i] := StrToInt(StringGrid1.Cells[1,i]);
{ Подсчет количества элементов массива  А, равных 5 }
    k:=0;
    For i:=1 to 15 do if A[i]=5 then k:=k+1;
{ Вывод результата  - сообщения о количестве студентов с отличными оценками }
  ShowMessage ('Отличные оценки получили '+ IntToStr (k)+ '  студентов');
end;

end.
