const
  MAX_SIZE = 100; // Глобальная

var
  array1, array2: array[1..MAX_SIZE] of Integer; // Глобальная
  size1, size2: Integer; // Глобальная


procedure InputArray(var arr: array of Integer; var size: Integer); // передача по ссылке, формальная
var
  i: Integer; // Локальная
begin
  Write('Введите размер массива (макс ', MAX_SIZE, '): ');
  ReadLn(size);
  if size > MAX_SIZE then
    size := MAX_SIZE; // Ограничение

  for i := 1 to size do
  begin
    Write('Введите элемент ', i, ': ');
    ReadLn(arr[i]);
  end;
end;

function SumPositiveElements(const arr: array of Integer; size: Integer): Integer; // передача по ссылке, формальная
var
  i, sum: Integer; // Локальная 
begin
  sum := 0;
  for i := 1 to size do
    if arr[i] > 0 then
      sum := sum + arr[i];
  SumPositiveElements := sum;
end;

procedure MultiplyArray(var arr: array of Integer; size: Integer); // передача по ссылке, формальная
var
  i: Integer; // Локальная
begin
  for i := 1 to size do
    arr[i] := arr[i] * 10;
end;

procedure PrintArray(const arr: array of Integer; size: Integer); // передача по ссылке, формальная
var
  i: Integer; // Локальная 
begin
  for i := 1 to size do
    Write(arr[i], ' ');
  WriteLn;
end;

begin
  InputArray(array1, size1); // фактическая
  InputArray(array2, size2); // фактическая

  if SumPositiveElements(array1, size1) < SumPositiveElements(array2, size2) then
    MultiplyArray(array1, size1) // фактические 
  else
    MultiplyArray(array2, size2); // фактические

  WriteLn('Первый массив после изменения: ');
  PrintArray(array1, size1); // фактические

  WriteLn('Второй массив после изменения: ');
  PrintArray(array2, size2); // фактические
end.
