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
 //���������� ����� � 1-�� ������
procedure TForm1.FormActivate(Sender: TObject);
var
   i: integer;
begin
   StringGrid1.Cells [0,0] :='� �� �������';
   StringGrid1.Cells [1,0] :='������';
   For i:=1 to 15 do
     StringGrid1.Cells [0,i] := IntToStr(i);
end;
//��������� ������� ������
procedure TForm1.Button1Click(Sender: TObject);
var
   A : array[1..15] of integer;
   i, k : integer;
begin
{ ���� ��������� �������  � }
    For i:=1 to 15 do
     A [i] := StrToInt(StringGrid1.Cells[1,i]);
{ ������� ���������� ��������� �������  �, ������ 5 }
    k:=0;
    For i:=1 to 15 do if A[i]=5 then k:=k+1;
{ ����� ����������  - ��������� � ���������� ��������� � ��������� �������� }
  ShowMessage ('�������� ������ �������� '+ IntToStr (k)+ '  ���������');
end;

end.
