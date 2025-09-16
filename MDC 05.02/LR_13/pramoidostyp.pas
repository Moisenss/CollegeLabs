var
  f: file of char;
  c: char;
  position: integer;
begin
  Assign(f, 'C:\awdawd\text.txt');
  Reset(f);
  position := 0;
  while position < FileSize(f) do
  begin
    if position mod 2 = 1 then
    begin
      Seek(f, position);
      c := '!';
      Write(f, c);
    end;
    position := position + 1;
  end;
  Close(f);
  WriteLn('Все символы на четных позициях заменены на !.');
end.
