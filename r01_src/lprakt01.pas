unit lprakt01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
//Код 80 уровня... Прост, как 3 копейки.
//Поменял и заработало!
//Приветствие
Edit1.Text:='Asd_Hello_World';
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
//Прощание
Edit1.Text:='ДО СВИДАНИЯ!';
end;

end.
