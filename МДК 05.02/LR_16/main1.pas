var
  i: Integer;
  i_ptr: ^Integer;
begin
  i := 5;
  i_ptr := @i;
  Writeln('Значение по адресу: ', i_ptr^);
end.
