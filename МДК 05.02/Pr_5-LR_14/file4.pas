procedure LoopFor(i, n: integer); // параметризация
begin
  if i <= n then // база
  begin
    writeln('привет ', i);
    LoopFor(i + 1, n); // декомпозиция
  end;
end;
begin
  LoopFor(1, 10);
end.
