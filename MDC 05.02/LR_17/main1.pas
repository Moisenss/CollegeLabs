type
  PNode = ^TNode;
  TNode = record
    Data: Integer;
    Next: PNode;
  end;
var
  InputFile, OutputFile: Text;
  StackTop: PNode;
  TempNode: PNode;
  Number: Integer;
  Line: string;
  NumberStr: string;
  PosSpace: Integer;
begin
  StackTop := nil;
  Assign(InputFile, 'input.txt');
  Reset(InputFile);
  while not EOF(InputFile) do
  begin
    Readln(InputFile, Line);
    Line := Trim(Line);
    while Length(Line) > 0 do
    begin
      PosSpace := Pos(' ', Line);
      if PosSpace > 0 then
      begin
        NumberStr := Copy(Line, 1, PosSpace - 1);
        Delete(Line, 1, PosSpace);
      end
      else
      begin
        NumberStr := Line;
        Line := '';
      end;
      if TryStrToInt(NumberStr, Number) then
      begin
        New(TempNode);
        TempNode^.Data := Number;
        TempNode^.Next := StackTop;
        StackTop := TempNode;
      end;
    end;
  end;
  Close(InputFile);
  Assign(OutputFile, 'output.txt');
  Rewrite(OutputFile);
  while StackTop <> nil do
  begin
    Writeln(OutputFile, StackTop^.Data);
    TempNode := StackTop;
    StackTop := StackTop^.Next;
    Dispose(TempNode);
  end;
  Close(OutputFile);
  Writeln('Готово');
end.
