var
  F_in, F_out: File of Char;
  C: Char;
  LastSpacePos, CurrentPos: Integer
begin
  Assign(F_in, 'C:\PABCWork.NET\text.txt'); 
  Reset(F_in);
  LastSpacePos := -1;
  CurrentPos := 0;
  while not eof(F_in) do
  begin
    Read(F_in, C);
    if C = ' ' then
      LastSpacePos := CurrentPos; 
    Inc(CurrentPos);
  end;
  if LastSpacePos <> -1 then
  begin
    Reset(F_in); 
    Assign(F_out, 'C:\PABCWork.NET\temp.txt'); 
    Rewrite(F_out);
    CurrentPos := 0; 
    while not eof(F_in) do
    begin
      Read(F_in, C);
      Write(F_out, C);
      Inc(CurrentPos);
      if CurrentPos > LastSpacePos then
        Break; 
    end;
    Close(F_out);
    Close(F_in);
    Erase(F_in);
    Rename(F_out, 'C:\PABCWork.NET\text.txt'); 
  end
  else
    Writeln('В файле нет пробелов.');
end.
