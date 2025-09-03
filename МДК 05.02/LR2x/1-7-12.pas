program program12;

var
  x, y, r: Real;
  T: Boolean;

begin

  Write('Введите x: ');
  ReadLn(x);
  Write('Введите y: ');
  ReadLn(y);
  Write('Введите r: ');
  ReadLn(r);

  T := (x * x + y * y) > (r * r);

  if T then
    WriteLn('Точка лежит вне круга.')
  else
    WriteLn('Точка лежит внутри круга.');
end.
