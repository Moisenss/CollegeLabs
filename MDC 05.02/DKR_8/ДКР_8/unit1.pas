unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math; // Добавляем Math

type
  TForm1 = class(TForm)
    ButtonCalculate: TButton;
    ComboBoxFigures: TComboBox;
    EditParam1: TEdit;
    EditParam2: TEdit;
    LabelParam1: TLabel;
    LabelParam2: TLabel;
    LabelResult: TLabel;
    LabelResultCaption: TLabel;
    procedure ButtonCalculateClick(Sender: TObject);
    procedure ComboBoxFiguresChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure UpdateParameterFields;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBoxFigures.Items.Add('Куб');
  ComboBoxFigures.Items.Add('Сфера');
  ComboBoxFigures.Items.Add('Цилиндр');
  ComboBoxFigures.Items.Add('Конус');
  ComboBoxFigures.ItemIndex := 0;
  UpdateParameterFields;
end;

procedure TForm1.ComboBoxFiguresChange(Sender: TObject);
begin
  UpdateParameterFields;
end;

procedure TForm1.UpdateParameterFields;
begin
  case ComboBoxFigures.ItemIndex of
    0: // Куб
    begin
      LabelParam1.Caption := 'Сторона:';
      LabelParam2.Visible := False;
      EditParam2.Visible := False;
    end;
    1: // Сфера
    begin
      LabelParam1.Caption := 'Радиус:';
      LabelParam2.Visible := False;
      EditParam2.Visible := False;
    end;
    2, 3: // Цилиндр и Конус
    begin
      LabelParam1.Caption := 'Радиус:';
      LabelParam2.Caption := 'Высота:';
      LabelParam2.Visible := True;
      EditParam2.Visible := True;
    end;
  end;
  EditParam1.Text := '';
  EditParam2.Text := '';
  LabelResult.Caption := '';
end;

procedure TForm1.ButtonCalculateClick(Sender: TObject);
var
  Param1, Param2, Volume: Double;
begin
  try
    Param1 := StrToFloat(EditParam1.Text);
    if (ComboBoxFigures.ItemIndex in [2, 3]) then
      Param2 := StrToFloat(EditParam2.Text)
    else
      Param2 := 0;

    case ComboBoxFigures.ItemIndex of
      0: Volume := Power(Param1, 3); // Куб: V = a^3
      1: Volume := (4/3) * Pi * Power(Param1, 3); // Сфера: V = (4/3)πr^3
      2: Volume := Pi * Power(Param1, 2) * Param2; // Цилиндр: V = πr^2h
      3: Volume := (1/3) * Pi * Power(Param1, 2) * Param2; // Конус: V = (1/3)πr^2h
    end;

    LabelResult.Caption := FormatFloat('0.##', Volume);
  except
    LabelResult.Caption := 'Ошибка ввода!';
  end;
end;

end.
