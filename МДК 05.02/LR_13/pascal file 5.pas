var
  inputFile, tempFile: TextFile;
  value, minValue, maxValue: Real;
  minIndex, maxIndex, currentIndex: Integer;
  tempFileName: string;
begin
  AssignFile(inputFile, 'numbers.txt');
  Reset(inputFile);
  minValue := MaxInt;
  maxValue := -MaxInt;
  minIndex := -1;
  maxIndex := -1;
  currentIndex := 0;
  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, value);
    if value < minValue then
    begin
      minValue := value;
      minIndex := currentIndex;
    end;
    if value > maxValue then
    begin
      maxValue := value;
      maxIndex := currentIndex;
    end;
    Inc(currentIndex);
  end;
  CloseFile(inputFile);
  if (minIndex = -1) or (maxIndex = -1) then
  begin
    WriteLn('Файл пуст или содержит недостаточно данных.');
    Exit;
  end;
  tempFileName := 'temp.txt';
  AssignFile(tempFile, tempFileName);
  Rewrite(tempFile);

  Reset(inputFile);
  currentIndex := 0;
  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, value);

    if currentIndex = minIndex then
      WriteLn(tempFile, maxValue)
    else if currentIndex = maxIndex then
      WriteLn(tempFile, minValue)
    else
      WriteLn(tempFile, value);
    Inc(currentIndex);
  end;
  CloseFile(inputFile);
  CloseFile(tempFile);
  AssignFile(tempFile, tempFileName);
  Reset(tempFile);
  Rewrite(inputFile);
  while not Eof(tempFile) do
  begin
    ReadLn(tempFile, value);
    WriteLn(inputFile, value);
  end;
  CloseFile(inputFile);
  CloseFile(tempFile);
  DeleteFile(tempFileName);
  WriteLn('Минимальный и максимальный элементы поменяны местами.');
end.
