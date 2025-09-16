type
  PNode = ^TNode;
  TNode = record
    Word: string;
    Count: Integer;
    Next: PNode;
  end;
var
  Head: PNode;
  InputText, CurrentWord: string;
  i: Integer;
  CurrentNode: PNode;
  Found: Boolean;
  UniqueWordCount: Integer;
function FindWord(Word: string): PNode;
var
  Node: PNode;
begin
  Node := Head;
  while Node <> nil do
  begin
    if Node^.Word = Word then
    begin
      FindWord := Node;
      Exit;
    end;
    Node := Node^.Next;
  end;
  FindWord := nil;
end;
procedure AddWord(Word: string);
var
  NewNode: PNode;
begin
  New(NewNode);
  NewNode^.Word := Word;
  NewNode^.Count := 1;
  NewNode^.Next := Head;
  Head := NewNode;
  UniqueWordCount := UniqueWordCount + 1;
end;
begin
  Head := nil;
  UniqueWordCount := 0;
  Writeln('Введите текст:');
  Readln(InputText);
  CurrentWord := '';
  for i := 1 to Length(InputText) do
  begin
    if (InputText[i] in ['а'..'я', 'А'..'Я']) then
      CurrentWord := CurrentWord + InputText[i]
    else if CurrentWord <> '' then
    begin
      CurrentNode := FindWord(CurrentWord);
      if CurrentNode <> nil then
        CurrentNode^.Count := CurrentNode^.Count + 1
      else
        AddWord(CurrentWord);

      CurrentWord := '';
    end;
  end;
  if CurrentWord <> '' then
  begin
    CurrentNode := FindWord(CurrentWord);
    if CurrentNode <> nil then
      CurrentNode^.Count := CurrentNode^.Count + 1
    else
      AddWord(CurrentWord);
  end;
  Writeln('Количество различных слов: ', UniqueWordCount);
  Writeln('Слова и их частоты:');
  CurrentNode := Head;
  while CurrentNode <> nil do
  begin
    Writeln(CurrentNode^.Word, ': ', CurrentNode^.Count);
    CurrentNode := CurrentNode^.Next;
  end;
  while Head <> nil do
  begin
    CurrentNode := Head;
    Head := Head^.Next;
    Dispose(CurrentNode);
  end;
end.
