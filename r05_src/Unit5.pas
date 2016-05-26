unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
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
//��������� ������ ������� � ����� �������StringGrid)
procedure TForm1.FormActivate(Sender: TObject);
var
   i: integer;
begin
   StringGrid1.Cells [0,0] :='���� ������';
   StringGrid1.Cells [1,0] :='���������� �������, ��';
   For i:=1 to 31 do
     StringGrid1.Cells [0,i] := IntToStr(i);
end;
procedure TForm1.Button1Click(Sender: TObject);
var
   A : array [1..31] of integer;
   i, Sum : integer;
begin
{ ���� ��������� �������  }
    For i:=1 to 31 do
     A[i] := StrToInt(StringGrid1.Cells[1,i]);
{ ������������ �������� ��������� �������  }
    Sum:=0;
    For i:=1 to 31 do Sum:=Sum + A[i];
{ ����� ����������  }
  Label2.Caption := '��������� ���������� ������� � �����'+ IntToStr (Sum);
end;


end.



