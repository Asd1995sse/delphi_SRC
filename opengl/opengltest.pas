unit opengltest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpenGL, DGLUT;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
     { Public declarations }
  end;

var
  Form1: TForm1;
  HRC: HGLRC;

implementation

{$R *.dfm}
procedure SetDCPixelFormat(hdc:HDC);
var
pfd: TPixelFormatDescriptor;
nPixelFormat : integer;
begin
FillChar (pfd, SizeOf (pfd), 0);
nPixelFormat := ChoosePixelFormat (hdc, @pfd);
SetPixelFormat (hdc, nPixelFormat, @pfd);
pfd.dwFlags  := PFD_DRAW_TO_WINDOW or PFD_SUPPORT_OPENGL or PFD_DOUBLEBUFFER;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
glEnable(GL_DEPTH_TEST);
glDepthFunc(GL_LEQUAL);
SetDCPixelFormat(Canvas.Handle);
hrc:= wglCreateContext(Canvas.Handle);
wglMakeCurrent(Canvas.Handle, hrc);


end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  glClearColor(0.5, 0.5, 0.9, 1.0);
  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
  FormResize(Sender);
  glBegin(GL_QUADS);
  glColor3f(1,0,0);
  glVertex(-1,1,0);
  glColor3f(0,1,0);
  glVertex(1,1,-0);
  glColor3f(0,1,1);
  glVertex(1,-1,0);
  glColor3f(0,0,1);
  glVertex(-1,-1,0);
  glEnable(GL_LIGHTING);
  glEnable(GL_LIGHT0);

  glEnd;
  glEnable(GL_LIGHTING);
  glEnable(GL_LIGHT0);
  glpushMatrix;
  glTranslatef(5,0,0);
  glutSolidSphere(2,20,20);
  glPopmatrix;
  glpushMatrix;
  glTranslatef(0,-5,0);
  glutSolidDodecahedron();
  glPopmatrix;


     wglMakeCurrent(0, 0);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
glViewport(0, 0, ClientWidth, ClientHeight);
glMatrixMode ( GL_PROJECTION );
glLoadIdentity;
glFrustum ( -1 , 1 , -1 , 1 , 1.25 , 100.0 );
glMatrixMode ( GL_MODELVIEW );
glLoadIdentity;
gluLookAt(5,5,5,0,0,0,0,0,1);
InvalidateRect ( Handle,nil,False );

end;

end.
