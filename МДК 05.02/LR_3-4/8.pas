program akswaw;

uses math;

var
  Tc, Tf: Integer; // integer используется для определения целых чисел

begin
  writeln('Таблица температуры');
  writeln('Цельсия и Фаренгейта');

  for Tc := 0 to 25 do // фор - опертор цикла
  begin
    Tf := (9 * Tc div 5) + 32; 
    writeln(Tc:8, '  |  ', Tf:10);
  end;

  readln;
end.
