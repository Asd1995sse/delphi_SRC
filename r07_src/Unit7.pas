unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
//� ����� ��������� ����� � �.�.
procedure TForm1.FormActivate(Sender: TObject);
var
   i: integer;
begin
   StringGrid1.Cells [0,0] :='� �� �������';
   StringGrid1.Cells [1,0] :='�������';
   StringGrid1.Cells [2,0] :='������';
   For i:=1 to 15 do
     StringGrid1.Cells [0,i] := IntToStr(i);
end;
//��������� ������� ������
procedure TForm1.BitBtn1Click(Sender: TObject);
Var
//���������� ����������
		FAM : array [1..15] of string;
		A : array[1..15] of integer;
		i, min ,kmin : integer;
begin
//���� ���������
for i:=1 to 15 do
begin
  FAM[i]:=stringGrid1.Cells[1,i];
  A[i]:=strtoint(stringGrid1.Cells[2,i]);
end;

Min:=A[1];kmin:=1;
For i:=2 to 10 do
  If A[i]<min then
  Begin
    Min:=A[i];Kmin:=i;
  end;
//����� ��������� �� �����
ShowMessage ('����� ������ ���� � �������� ' + FAM[kmin]);
End;

end.
