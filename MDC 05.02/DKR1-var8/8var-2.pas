program qwe12;

uses
  Math;

var
  x, result: Real;

begin
  x := -11;
  WriteLn('Значение функции на интервале [-11; 5]:');
  
  while x <= 5 do
  begin
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

    WriteLn('x = ', x:0:1, ' : f(x) = ', result:0:4);
    x := x + 0.1;
  end;
end.
