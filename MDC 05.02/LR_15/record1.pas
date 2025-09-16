type anketa = record
    fio: string;
    birth: string;
    kurs: 1..5
end;
var student:  anketa;
begin
  student.fio := 'Иванов Иван Иванович';
  student.birth :='01/01/2000';
  student.kurs:= 1;
  writeln('Введите ФИО студента:');
  readln(student.fio);
  writeln('Введите дату рождения студента:');
  readln(student.birth);
  writeln('Введите курс студента (1-5):');
  readln(student.kurs);
  writeln('ФИО:',' ', student.fio);
  writeln('Дата рождения:',' ', student.birth);
  writeln('Курс студента:',' ', student.kurs);
end.
