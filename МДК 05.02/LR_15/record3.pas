type
  Toy = record
    Name: string;
    Price: Real;
    Age: string;
  end;

const
  NumToys = 3;

var
  Toys: array[1..NumToys] of Toy;
  i: Integer;

begin
  with Toys[1] do
  begin
    Name := 'Машинка';
    Price := 200.00;
    Age := '6-8 года';
  end;

  with Toys[2] do
  begin
    Name := 'Робот';
    Price := 400.00;
    Age := '8-10 лет';
  end;

  with Toys[3] do
  begin
    Name := 'Кубик-Рубика';
    Price := 700.00;
    Age := '10-13 лет';
  end;
  for i := 1 to NumToys do
  begin
    with Toys[i] do
    begin
      Writeln('Название игрушки: ', Name);
      Writeln('Цена: ', Price:0:2);
      Writeln('Возрастной диапазон: ', Age);
      Writeln;
    end;
  end;
end.
