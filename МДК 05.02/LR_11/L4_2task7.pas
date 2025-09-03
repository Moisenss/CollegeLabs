uses GraphABC;
var 
x, x1, y1, x2, y2, y: integer;
begin
  x:= 100;
  y:= 400;
  x1:= 50;
  y1:= 450;
  x2:= 150;
  y2:= 350;
  repeat 
    ClearWindow; 
    SetPenColor(clBlack);
    Circle(x, y, 1); 
    SetBrushColor(clBlack); 
    Rectangle(x1, y1, x2, y2); 
    x:=x+1;
    y:=y-1;
    x1:=x1+1;
    y1:=y1-1;
    x2:=x2+1;
    y2:=y2-1;
  until x > 300;
  repeat 
    ClearWindow;
    SetPenColor(clBlack);
    Circle(x, y, 1); 
    SetBrushColor(clBlack); 
    Rectangle(x1, y1, x2, y2); 
    x:=x+1;
    y:=y+1;
    x1:=x1+1;
    y1:=y1+1;
    x2:=x2+1;
    y2:=y2+1;
  until x > 500;
end.
