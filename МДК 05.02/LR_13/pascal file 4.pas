var
  f: TextFile;
  numbers: array of Real;
  i, n: Integer;
  lastLocalMax: Real;
  found: Boolean;
begin
  AssignFile(f, 'numbers1.txt');
  Reset(f);
  n := 0;
  while not EOF(f) do
  begin
    SetLength(numbers, n + 1);
    ReadLn(f, numbers[n]);
    Inc(n);
  end;
  CloseFile(f);
  found := False;
  lastLocalMax := 0;
  
  for i := 1 to n - 2 do
  begin
    if (numbers[i] > numbers[i - 1]) and (numbers[i] > numbers[i + 1]) then
    begin
      lastLocalMax := numbers[i];
      found := True;
    end;
  end;
  if found then
    WriteLn('Последний локальный максимум: ', lastLocalMax:0:2)
  else
    WriteLn('Локальных максимумов не найдено.');
end.
