var
  F_in,F_out: Text;
  Name,line: string;
  K,i:integer;

begin
 Write('K: ');
 Readln(K);
 Assign(F_in,'c:\text.txt');
 Assign(F_out,'c:\text1.txt');
 Reset(F_in);
 Rewrite(F_out);

 i:=0;
 While not eof(F_in) do
  begin
   Readln(F_in,line);
   inc(i);
   if i<>K then Writeln(F_out,line);
  end;

 Close(F_in);
 Close(F_out);
 Erase(F_in);
 Rename(F_out,'c:\text.txt');
end.
