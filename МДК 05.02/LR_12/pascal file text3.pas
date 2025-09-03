var
  InputFile: TextFile;
  S: string;
  InputFileName: string;
begin
  Write('Введите имя файла: ');
  ReadLn(InputFileName);
  Write('Введите строку S: ');
  ReadLn(S);
  AssignFile(InputFile, InputFileName);
  try
    Append(InputFile);
    WriteLn(InputFile, S);
  finally
    CloseFile(InputFile);
  end;

  WriteLn('Строка добавлена в файл');
end.
