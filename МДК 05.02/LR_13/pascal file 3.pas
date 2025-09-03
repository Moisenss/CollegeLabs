var
  f: Text;
  filename: string;
  num: real;
  sum: real;
  i, count: integer;
begin
  filename := 'numbers.txt';
  Assign(f, filename);
  Rewrite(f);
  WriteLn('Введите количество чисел:');
  ReadLn(count);
  WriteLn('Введите ', count, ' вещественных чисел:');
  for i := 1 to count do
  begin
    ReadLn(num);
    WriteLn(f, num:0:2);
  end;
  Close(f);
  Reset(f);
  i := 0;
  sum := 0;
  while not Eof(f) do
  begin
    ReadLn(f, num);
    i := i + 1;
    if (i mod 2 = 0) then
      sum := sum + num;
  end;
  Close(f);
  WriteLn('Сумма элементов с четными номерами: ', sum:0:0);
end.
