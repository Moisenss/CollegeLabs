program qweqweqwe;

function SumTo(n: integer): integer; // параметризация
begin
    if n = 1 then // база
        SumTo := 1
    else
        SumTo := n + SumTo(n - 1); // декомпозиция
end;

begin
    writeln(SumTo(5));
end.
