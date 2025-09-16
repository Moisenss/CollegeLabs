type
  Toy = record
    Name: string[20];
    Price: Real;
    AgeRange: string[20];
  end;

const
  NumToys = 3;

var
  Toys: array[1..NumToys] of Toy;
  FileName: string;
  f: file of Toy;
  i: Integer;

begin
  Write('Введите имя файла: ');
  Readln(FileName);

  Assign(f, FileName);
  Rewrite(f);

  Toys[1].Name := 'Машинка';
  Toys[1].Price := 200;
  Toys[1].AgeRange := '6-8 года';

  Toys[2].Name := 'Робот';
  Toys[2].Price := 400;
  Toys[2].AgeRange := '8-10  лет';

  Toys[3].Name := 'Кубик-Рубика';
  Toys[3].Price := 700;
  Toys[3].AgeRange := '10-13 лет';

  for i := 1 to NumToys do
    write(f, Toys[i]);

  Close(f);

  Assign(f, FileName);
  Reset(f);

  for i := 1 to NumToys do
  begin
    read(f, Toys[i]);
    Writeln('Название игрушки: ', Toys[i].Name);
    Writeln('Цена: ', Toys[i].Price:0:2);
    Writeln('Возрастной диапазон: ', Toys[i].AgeRange);
    Writeln;
  end;

  Close(f);
end.
