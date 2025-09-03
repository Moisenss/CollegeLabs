procedure fib(i, n: integer); // параметризация
begin
  if i > 21 then // база
    exit;
  
  writeln(i, ' ');
    fib(n, i + n); // декомпозиция
end;

begin
  fib(1, 2);
end.
