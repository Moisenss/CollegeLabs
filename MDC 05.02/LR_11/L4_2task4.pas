uses GraphABC;
var i,z: integer;
begin
  SetWindowWidth(1000);
  SetWindowHeight(700);
  i:= 1;
  z:= 250;
  while i < 20 do
    begin
  Circle(500,500,z);
  z:= z - 10;
  i:= i + 1
  end;
  end.