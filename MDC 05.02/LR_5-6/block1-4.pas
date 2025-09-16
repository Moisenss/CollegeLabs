program adkwbd;

const
  N = 30;

var
  A: array[1..N] of integer;
  B: array[1..N] of integer;
  i, j: integer;

begin
  randomize;
  
  writeln('Массив A:');
  j := 0;

  for i := 1 to N do
  begin
    A[i] := random(167) - 99;
    write(A[i]:4);
    
    if A[i] mod 2 = 0 then
    begin
      j := j + 1;
      B[j] := A[i];
    end;
  end;

  writeln;
  writeln('Массив B (только четные числа):');

  for i := 1 to j do
    write(B[i]:4);

  writeln;
  readln;
end.
