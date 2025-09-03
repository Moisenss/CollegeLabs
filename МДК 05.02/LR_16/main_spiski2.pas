type
  PNode = ^TNode;
  TNode = record
    Data: Integer;
    Next: PNode;
  end;
var
  Head, CurrentNode: PNode;
  i: Integer;
begin
  Head := nil;
  for i := 10 downto 1 do
  begin
    New(CurrentNode);
    CurrentNode^.Data := i;
    CurrentNode^.Next := Head;
    Head := CurrentNode;
  end;
  Writeln('Весь список:');
  CurrentNode := Head;
  while CurrentNode <> nil do
  begin
    Write(CurrentNode^.Data, ' ');
    CurrentNode := CurrentNode^.Next;
  end;
  Writeln;
  Writeln('Четные элементы списка:');
  CurrentNode := Head;
  while CurrentNode <> nil do
  begin
    if CurrentNode^.Data mod 2 = 0 then
      Write(CurrentNode^.Data, ' ');
    CurrentNode := CurrentNode^.Next;
  end;
  Writeln;
  while Head <> nil do
  begin
    CurrentNode := Head;
    Head := Head^.Next;
    Dispose(CurrentNode);
  end;
end.
