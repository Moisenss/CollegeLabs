program zqw;

uses
  Math;

var
  x, result: Real;

begin
  Write('Введите значение x: ');
  ReadLn(x);

  if x < -9 then
    result := tan(x) / -x
  else if (x >= -9) and (x < -1) then
    result := tan(x) + x
  else if (x >= -1) and (x < 3) then
    result := (x * x * x) / (2 * x * x)
  else if x >= 3 then
    result := exp(x) * Power(x, 0.1 * x) - Log10(x)
  else
    result := 0;

  WriteLn('Результат: ', result:0:4);
end.
