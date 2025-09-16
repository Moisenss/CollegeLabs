program aknjdkjawd;

procedure PrintSequence(n: integer); // параметризация
begin
    if n < 0 then // база
        exit;
    write(n, ' ');
    PrintSequence(n - 2); // декомпозиция
end;

begin
    PrintSequence(25);
end.
