unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    procedure CalculateValues;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalculateValues;
var
  S, a, d, S1: Double;
begin
  try
    S := StrToFloat(Edit1.Text);
    a := Sqrt(S);
    d := a * Sqrt(2);
    S1 := Pi * Power(d/2, 2);
    Edit2.Text := FormatFloat('0', a);
    Edit3.Text := FormatFloat('0', d);
    Edit4.Text := FormatFloat('0', S1);
  except
    on E: Exception do
    begin
      Edit2.Text := '';
      Edit3.Text := '';
      Edit4.Text := '';
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  CalculateValues;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  CalculateValues;
end;


end.
