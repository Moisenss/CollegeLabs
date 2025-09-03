var
  N, K, i: Integer;
  f: TextFile;
begin
  Write('Введите количество строк N: ');
  ReadLn(N);
  Write('Введите количество символов K: ');
  ReadLn(K);
  AssignFile(f, 'stars.txt');
  Rewrite(f);
  for i := 1 to N do
  begin
    WriteLn(f, StringOfChar('*', K));
  end;
  CloseFile(f);
  WriteLn('Файл stars.txt успешно создан.');
end.
