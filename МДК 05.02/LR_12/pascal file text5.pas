var
  A: array[1..100] of integer;
  f: text;
  N, i, j, temp: integer;
  min, max: integer;
function ReadFromFile: integer;
var
  i: integer;
begin
  assign(f, 'input.txt');
  reset(f); 
  i := 0;
  while not eof(f) do begin  
    i := i + 1;
    readln(f, A[i]); 
  end;
  close(f);
  ReadFromFile := i;  
end;
begin
  N := ReadFromFile; 
  for i := 1 to N - 1 do
    for j := 1 to N - i do
      if A[j] > A[j + 1] then
      begin
        temp := A[j];
        A[j] := A[j + 1];
        A[j + 1] := temp;
      end;
  min := A[1];  
  max := A[N];  
  assign(f, 'output.txt');
  rewrite(f); 
  writeln(f, '', min);
  writeln(f, '', max);
  close(f);
end.
