program jawjdkwjd;
uses
  SysUtils;
var
  InputFile, TempFile: TextFile;
  Line: string;
  InputFileName, TempFileName: string;
begin
  InputFileName := 'input.txt';
  TempFileName := 'tempfile.txt';
  AssignFile(InputFile, InputFileName);
  AssignFile(TempFile, TempFileName);
  try
    Reset(InputFile);
    Rewrite(TempFile);
    while not Eof(InputFile) do
    begin
      ReadLn(InputFile, Line);
      if Trim(Line) <> '' then
        WriteLn(TempFile, Line);
    end;
  finally
    CloseFile(InputFile);
    CloseFile(TempFile);
  end;
  if FileExists(InputFileName) then
    DeleteFile(InputFileName);
  RenameFile(TempFileName, InputFileName);
  WriteLn('Пустые строки удалены из файла.');
end.
