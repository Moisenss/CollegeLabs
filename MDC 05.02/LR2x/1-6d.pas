program PROGRAMD;

var
  n, hundreds, tens, units, sumOfDigits: Integer;

begin
  Write('Введите трехзначное число: ');
  ReadLn(n);

  if (n >= 100) and (n <= 999) then
  begin
    hundreds := n div 100;
    tens := (n div 10) mod 10;
    units := n mod 10;
    
    sumOfDigits := hundreds + tens + units;

    if (n * n = sumOfDigits * sumOfDigits * sumOfDigits) then
      WriteLn(True)
    else
      WriteLn(False);
  end
  else
    WriteLn('Ошибка: введено не трехзначное число');
end.
