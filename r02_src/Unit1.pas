unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
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
//��������� ����������
Var A,B,SUM:integer;
begin
  A:=Strtoint(Edit1.TEXT);
  B:=Strtoint(Edit2.TEXT);
  //�������� 80 ������
  SUM:=A+B;
  //������� ��� � Label3
  Label3.Caption:=inttostr(SUM);

end;

end.
