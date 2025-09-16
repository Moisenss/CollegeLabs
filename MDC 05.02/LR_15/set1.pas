var
  numYears: Integer;
  ending: String;

begin
  Write('Введите количество лет: ');
  ReadLn(numYears);

  if (numYears mod 100 >= 11) and (numYears mod 100 <= 14) then
    ending := 'лет'
  else
    case numYears mod 10 of
      1: ending := 'год';   
      2..4: ending := 'года'; 
    else
      ending := 'лет';     
    end;

  Writeln(numYears, ' ', ending);
end.
