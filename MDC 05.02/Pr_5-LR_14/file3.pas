var 
  x, y: integer;

function stepen(a, b: integer): integer; // параметризация
begin
  if b = 0 then 
    stepen := 1 // база
  else if b < 0 then
    stepen := 1 div stepen(a, -b)
  else
    stepen := a * stepen(a, b - 1);
end;

begin
  writeln('число?');
  readln(x);
  writeln('степень?');
  readln(y);
  writeln(stepen(x, y));
end.
