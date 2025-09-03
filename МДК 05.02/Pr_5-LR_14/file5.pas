function GCD(a, b: integer): integer; // параметризация
begin
  if b = 0 then // база
    GCD := a
  else
    GCD := GCD(b, a mod b);
end;

var
  num1, num2, result: integer;

begin
  num1 := 3430;
  num2 := 1365;

  result := GCD(num1, num2);

  writeln(result);
end.
