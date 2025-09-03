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
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure CalculateFormula;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalculateFormula;
var
  a, b, f: Double;
begin
  try
    if (Edit1.Text <> '') and (Edit2.Text <> '') then
    begin
      a := StrToFloat(Edit1.Text);
      b := StrToFloat(Edit2.Text);


      f := Sqrt((Pi/8) * Sqrt((a + b)/(a*a + b*b))) - a * Power(b, 3);

      Edit3.Text := FormatFloat('0', f);
    end
    else
      Edit3.Text := '';
  except
    on E: Exception do
      Edit3.Text := '';
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  CalculateFormula;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  CalculateFormula;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.
