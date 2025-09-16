var
  n: Int64;
  sum: Int64;
  i: Int64;
function countDivisors(x: Int64): Int64;
var
  i: Int64;
  count: Int64;
begin
  count := 0;
  for i := 1 to trunc(sqrt(x)) do
    if x mod i = 0 then
    begin
      inc(count, if i * i = x then 1 else 2);
    end;
  countDivisors := count;
end;
begin
  try
    AssignFile(input, 'z3.in');
    Reset(input);
    ReadLn(n);
    CloseFile(input);
    sum := 0;
    for i := 1 to n do
    begin
        if countDivisors(i) = 5 then
            sum := sum + i;
    end;
    AssignFile(output, 'z3.out');
    Rewrite(output);
    WriteLn(output, sum);
    CloseFile(output);
  except
    on E: Exception do
      begin
        WriteLn('Ошибка: ', E.Message);
        Halt(1);
      end;
  end;
end.
