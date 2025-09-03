type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

var
  stud: array[1..100] of anketa;
  n, s, i: integer;

begin
  writeln('Введите количество студентов: ');
  readln(s);

  for i := 1 to s do
  begin
    writeln('Введите ФИО студента #', i, ': ');
    readln(stud[i].fio);

    writeln('Введите дату рождения студента #', i, ': ');
    readln(stud[i].birth);

    writeln('Введите курс студента #', i, ' (1-5): ');
    readln(stud[i].kurs);
  end;

  writeln('Введите номер студента, чтобы просмотреть его данные: ');
  readln(n);

  if (n >= 1) and (n <= s) then
  begin
    writeln('ФИО: ', stud[n].fio);
    writeln('Дата рождения: ', stud[n].birth);
    writeln('Курс: ', stud[n].kurs);
  end
  else
    writeln('Номер студента вне допустимого диапазона.');
end.
