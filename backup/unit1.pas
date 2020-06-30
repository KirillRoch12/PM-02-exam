unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses Unit2;

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
var a,d,c:real;
begin
  a:=StrToFloat(Edit1.text);
  d:=StrToFloat(Edit2.text);
  c:=a/d;
  Edit3.text:=FloatToStr( c );
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Unit2.Form2.Showmodal;
end;

procedure TForm1.KeyPress(Sender: TObject; var Key: char);
begin
if not (Key in [#8,'0'..'9',',']) then
begin
MessageDlg('Ошибка ввода, недопустимый символ',mtInformation,[mbOk],0);
Key:=#0;
end;
end;

end.

