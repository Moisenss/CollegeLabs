const
  N = 8;

type
  TArray2D = array[1..N, 1..N] of Integer;
  TArray1D = array[1..N] of Integer;

var
  matrix: TArray2D;
  minElements: TArray1D;
  minIndices: TArray1D;
  average: Real;

procedure FillMatrix(var arr: TArray2D);
var
  i, j: Integer;
begin
  Randomize;
  for i := 1 to N do
    for j := 1 to N do
      arr[i, j] := Random(100);
end;

procedure FindMinInRows(const arr: TArray2D; var minArr: TArray1D; var indicesArr: TArray1D);
var
  i, j: Integer;
begin
  for i := 1 to N do
  begin
    minArr[i] := arr[i, 1];
    indicesArr[i] := 1;
    for j := 2 to N do
    begin
      if arr[i, j] < minArr[i] then
      begin
        minArr[i] := arr[i, j];
        indicesArr[i] := j;
      end;
    end;
  end;
end;

function CalculateAverage(const arr: TArray1D): Real;
var
  sum: Integer;
  i: Integer;
begin
  sum := 0;
  for i := 1 to N do
    sum := sum + arr[i];

  CalculateAverage := sum / N;
end;

function ContainsValue(const arr: TArray1D; value: Integer): Boolean;
var
  i: Integer;
begin
  ContainsValue := False;
  for i := 1 to N do
    if arr[i] = value then
    begin
      ContainsValue := True;
      Break;
    end;
end;

procedure PrintMatrix(const arr: TArray2D);
var
  i, j: Integer;
begin
  WriteLn('Исходный массив:');
  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(arr[i, j]:4);
    WriteLn;
  end;
end;

var
  i: Integer;
begin
  FillMatrix(matrix);

  WriteLn;
  PrintMatrix(matrix);

  FindMinInRows(matrix, minElements, minIndices);

  average := CalculateAverage(minElements);

  if ContainsValue(minElements, Round(average)) then
    WriteLn('Среднее арифметическое (округленное до целого) ', Round(average), ' содержится в массиве минимальных элементов.')
  else
    WriteLn('Среднее арифметическое (округленное до целого) ', Round(average), ' не содержится в массиве минимальных элементов.');

  WriteLn('Минимальные элементы строк и их индексы:');
  for i := 1 to N do
    WriteLn('Строка ', i, ': Минимальный элемент = ', minElements[i], ', Индекс = ', minIndices[i]);
end.
