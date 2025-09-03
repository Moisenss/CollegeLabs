program program4;

var
  num1, num2: Real;
  choice: Integer;
  result: Real;

begin
  WriteLn('Для любых двух чисел вычисляю:');
  WriteLn('1) сумму');
  WriteLn('2) разность');
  WriteLn('3) произведение');
  WriteLn('4) частное');
  Write('Выберите нужный номер: ');
  ReadLn(choice);

  Write('Введите первое число: ');
  ReadLn(num1);
  Write('Введите второе число: ');
  ReadLn(num2);
  
  case choice of
    1: 
      begin
        result := num1 + num2;
        WriteLn('Сумма: ', result:0:2);
      end;
    2: 
      begin
        result := num1 - num2;
        WriteLn('Разность: ', result:0:2);
      end;
    3: 
      begin
        result := num1 * num2;
        WriteLn('Произведение: ', result:0:2);
      end;
    4: 
      begin
        if num2 <> 0 then
        begin
          result := num1 / num2;
          WriteLn('Частное: ', result:0:2);
        end
        else
          WriteLn('Ошибка: деление на ноль.');
      end;
    else
      WriteLn('Некорректный номер. Пожалуйста, выберите от 1 до 4.');
  end;
end.
