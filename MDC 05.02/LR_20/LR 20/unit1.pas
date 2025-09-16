unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    But1: TButton;
    But10: TButton;
    But11: TButton;
    But12: TButton;
    But13: TButton;
    But14: TButton;
    But15: TButton;
    But16: TButton;
    But17: TButton;
    But18: TButton;
    But19: TButton;
    But2: TButton;
    But20: TButton;
    But21: TButton;
    But22: TButton;
    But3: TButton;
    But4: TButton;
    But5: TButton;
    But6: TButton;
    But7: TButton;
    But8: TButton;
    But9: TButton;
    Edit1: TEdit;
    procedure But16Click(Sender: TObject);
    procedure But17Click(Sender: TObject);
    procedure But18Click(Sender: TObject);
    procedure But19Click(Sender: TObject);
    procedure But20Click(Sender: TObject);
    procedure But21Click(Sender: TObject);
    procedure But22Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a, b, c: Real;
  znak: String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ClickZnak(Sender: TObject);
begin
  if Edit1.Text = '' then Exit; // Добавлена проверка на пустую строку

  try
    a := StrToFloat(Edit1.Text);
    Edit1.Clear;
    znak := (Sender as TButton).Caption;
  except
    on E: EConvertError do
      ShowMessage('Введите число перед выбором операции');
  end;
end;

procedure TForm1.ClickBut(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + (Sender as TButton).Caption;
end;

procedure TForm1.But22Click(Sender: TObject);
var
  str: String;
begin
  str := Edit1.Text;
  if str <> '' then
    Delete(str, Length(str), 1);
  Edit1.Text := str;
end;

procedure TForm1.But21Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.But16Click(Sender: TObject);
begin
  if Edit1.Text = '' then Exit; // Добавлена проверка на пустую строку

  try
    b := StrToFloat(Edit1.Text);
    Edit1.Clear;

    case znak of
      '+': c := a + b;
      '-': c := a - b;
      '*': c := a * b;
      '/':
        if b <> 0 then
          c := a / b
        else
          ShowMessage('Деление на ноль невозможно');
    end;

    Edit1.Text := FloatToStr(c);
  except
    on E: EConvertError do
      ShowMessage('Введите корректное число');
  end;
end;

procedure TForm1.But17Click(Sender: TObject);
begin
  if Edit1.Text = '' then Exit; // Добавлена проверка на пустую строку

  try
    a := StrToFloat(Edit1.Text);
    if a <> 0 then
    begin
      a := 1 / a;
      Edit1.Text := FloatToStr(a);
    end
    else
      ShowMessage('Деление на ноль невозможно');
    a := 0;
  except
    on E: EConvertError do
      ShowMessage('Введите корректное число');
  end;
end;

procedure TForm1.But18Click(Sender: TObject);
begin
  if Edit1.Text = '' then Exit; // Добавлена проверка на пустую строку

  try
    a := StrToFloat(Edit1.Text);
    a := sqr(a);
    Edit1.Text := FloatToStr(a);
    a := 0;
  except
    on E: EConvertError do
      ShowMessage('Введите корректное число');
  end;
end;

procedure TForm1.But19Click(Sender: TObject);
begin
  if Edit1.Text = '' then Exit; // Добавлена проверка на пустую строку

  try
    a := StrToFloat(Edit1.Text);
    if a >= 0 then
    begin
      a := sqrt(a);
      Edit1.Text := FloatToStr(a);
    end
    else
      ShowMessage('Корень из отрицательного числа невозможен');
    a := 0;
  except
    on E: EConvertError do
      ShowMessage('Введите корректное число');
  end;
end;

procedure TForm1.But20Click(Sender: TObject);
begin
  Edit1.Clear;
  a := 0;
  b := 0;
  c := 0;
end;

end.
