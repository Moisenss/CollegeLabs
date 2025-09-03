uses GraphABC;

var 
  i, h,g, z, x, y: integer;

begin
  SetWindowWidth(1000);
  SetWindowHeight(700);
  
  i := 5;
  z := 5;
  x := 100;
  y := 50;
  h := 2;
  g:=18;
  while i < 15 do
  begin
    Circle(x, y, z);
    FloodFill(x, y, clrandom);
    z := z + i;
    x := x + h;
    y := y + h;
    i := i + 1;
    h := h+g;
    g := g - 3
  end;
end.