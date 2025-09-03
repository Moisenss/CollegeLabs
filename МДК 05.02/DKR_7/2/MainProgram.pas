uses
  GraphABC, DragonCurveModule;
var
  depth: integer; 
  scale: real; 
  offsetX, offsetY: integer; 
procedure KeyDown(Key: integer);
begin
  case Key of
    VK_Add, VK_PageUp:
      begin
        depth := depth + 1;
        DrawDragonCurve(depth, scale, offsetX, offsetY);
      end;
    VK_Subtract, VK_PageDown:
      begin
        if depth > 0 then
          depth := depth - 1;
        DrawDragonCurve(depth, scale, offsetX, offsetY);
      end;
    VK_Up:
      begin
        offsetY := offsetY - 10;
        DrawDragonCurve(depth, scale, offsetX, offsetY);
      end;
    VK_Down:
      begin
        offsetY := offsetY + 10;
        DrawDragonCurve(depth, scale, offsetX, offsetY);
      end;
    VK_Left: 
      begin
        offsetX := offsetX - 10;
        DrawDragonCurve(depth, scale, offsetX, offsetY);
      end;
    VK_Right:
      begin
        offsetX := offsetX + 10;
        DrawDragonCurve(depth, scale, offsetX, offsetY);
      end;
  end;
end;
begin
  depth := 8;
  scale := 1.0;
  offsetX := 0;
  offsetY := 0;
  SetWindowSize(800, 600);
  SetWindowTitle('Кривая Хартера-Хейтуэя (Управление: +/-, стрелки, Page Up/Page Down)');
  OnKeyDown := KeyDown;
  DrawDragonCurve(depth, scale, offsetX, offsetY);
end.