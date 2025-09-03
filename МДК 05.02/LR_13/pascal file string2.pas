var
  S: String;
  F_in, F_out: Text;
  MaxLen: integer;
  TempStr: String;
  i: integer;
begin
  Assign(F_in, 'C:\PABCWork.NET\text.txt');
  Rewrite(F_in);
  writeln('Введите строки исходного файла:');
  for i := 1 to 5 do
  begin
    readln(S); 
    writeln(F_in, S);
  end;
  Close(F_in); 
  Reset(F_in);
  Assign(F_out, 'C:\PABCWork.NET\text1.txt');
  Rewrite(F_out);
  MaxLen := -1;
  while not eof(F_in) do
  begin
    readln(F_in, TempStr);
    if Length(TempStr) > MaxLen then
      MaxLen := Length(TempStr);
  end;
  Close(F_in);
  Reset(F_in);
  while not eof(F_in) do
  begin
    readln(F_in, TempStr);
    if Length(TempStr) = MaxLen then
      writeln(F_out, TempStr);
  end;
  Close(F_in);
  Close(F_out); 
end.
