program kjahwdwd;

var
  s: string;
  i: Integer;

begin
  Write('Введите строку: ');
  ReadLn(s);
  
  if Length(s) > 3 then
    WriteLn(Copy(s, 1, 3) + Copy(s, Length(s)-2, 3))
  else
    for i := 1 to Length(s) do
      Write(s[1]);
  
  WriteLn;
end.

