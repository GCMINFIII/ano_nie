unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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

procedure TForm1.Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var pom1,pom2,top,left:integer;
begin
top:=button1.Top;
left:=button1.Left;
pom1:=button2.Top;
pom2:=button2.Left;
button1.Top:=pom1;
button1.Left:=pom2;
button2.Top:=top;
button2.Left:=left;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
showmessage('Áno ja som vedel, že Jožo je málo.');
end;

end.
