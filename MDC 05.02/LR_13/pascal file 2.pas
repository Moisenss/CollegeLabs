var
  inputFile, oddFile, evenFile: TextFile;
  number: Real;
  index: Integer;
begin
  AssignFile(inputFile, 'input.txt');
  AssignFile(oddFile, 'odd_numbers.txt');
  AssignFile(evenFile, 'even_numbers.txt');
  Rewrite(oddFile);  
  Rewrite(evenFile); 
  Reset(inputFile);
  index := 1;
  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, number);
    if index mod 2 = 1 then
      WriteLn(oddFile, number)   
    else
      WriteLn(evenFile, number);  
    index := index + 1;
  end;
  CloseFile(inputFile);
  CloseFile(oddFile);
  CloseFile(evenFile);
  WriteLn('Файлы созданы');
end.
