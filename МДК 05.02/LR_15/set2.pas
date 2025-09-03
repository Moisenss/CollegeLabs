type
  t_chs = set of Char;
const
  lett: t_chs = ['a'..'z', 'A'..'Z', '_'];
  num: t_chs = ['0'..'9'];
var
  str: string;
  i: byte;
  flag: boolean;

begin
  Write('Введите строку: ');
  ReadLn(str);

  if (Length(str) > 0) and (str[1] in lett) then
  begin
    flag := True;
    for i := 2 to Length(str) do
    begin
      if not (str[i] in lett + num) then
      begin
        flag := False;
        Break;
      end;
    end;
  end
  else
    flag := False;

  if flag then
    Writeln('Строка корректна.')
  else
    Writeln('Строка содержит недопустимые символы.');
end.
