unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
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
Var A,B,C,Mx:integer;
begin
A:=Strtoint(Edit1.TEXT);
B:=Strtoint(Edit2.TEXT);
C:=Strtoint(Edit3.TEXT);
//Простой алгоритм...
if A > B then mx:=A else mx:=B;
if C > mx then mx:=C;
//Вывод в Label
Label4.Caption:='Наибольшее: '+ inttostr(mx);
//Вывод
Showmessage('Наибольшее: '+ inttostr(mx));
end;

end.
