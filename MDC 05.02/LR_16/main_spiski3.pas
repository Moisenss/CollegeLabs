type
  PNode = ^TNode;
  TNode = record
    Data: Integer;
    Next: PNode;
  end;

var
  Head, CurrentNode: PNode;
  i: Integer;
  MaxValue, MinValue: Integer;

begin
  Head := nil;
  for i := 1 to 10 do
  begin
    New(CurrentNode);
    CurrentNode^.Data := Random(100);
    CurrentNode^.Next := Head;
    Head := CurrentNode;
  end;

  Writeln('Список:');
  CurrentNode := Head;
  while CurrentNode <> nil do
  begin
    Write(CurrentNode^.Data, ' ');
    CurrentNode := CurrentNode^.Next;
  end;
  Writeln;

  if Head <> nil then
  begin
    MaxValue := Head^.Data;
    MinValue := Head^.Data;
    CurrentNode := Head^.Next;
    while CurrentNode <> nil do
    begin
      if CurrentNode^.Data > MaxValue then
        MaxValue := CurrentNode^.Data;
      if CurrentNode^.Data < MinValue then
        MinValue := CurrentNode^.Data;
      CurrentNode := CurrentNode^.Next;
    end;

    Writeln('Максимальный элемент: ', MaxValue);
    Writeln('Минимальный элемент: ', MinValue);
  end
  else
    Writeln('Список пуст.');

  while Head <> nil do
  begin
    CurrentNode := Head;
    Head := Head^.Next;
    Dispose(CurrentNode);
  end;
end.
