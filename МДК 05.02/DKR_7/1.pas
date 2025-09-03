uses GraphABC;
var
  depth: integer; 
  scale: real;    
  offsetX, offsetY: integer; 
procedure DragonCurve(x, y, dx, dy, depth: integer);
begin
  if depth = 0 then
  begin
    LineTo(Round((x + dx) * scale) + offsetX, Round((y + dy) * scale) + offsetY);
  end
  else
  begin
    DragonCurve(x, y, (dx - dy) div 2, (dy + dx) div 2, depth - 1);
    DragonCurve(x + (dx - dy) div 2, y + (dy + dx) div 2, (dx + dy) div 2, (dy - dx) div 2, depth - 1);
  end;
end;
procedure DrawDragonCurve;
begin
  ClearWindow; // Очищаем окно
  MoveTo(Round(325 * scale) + offsetX, Round(300 * scale) + offsetY); 
  DragonCurve(325, 300, 200, 0, depth); 
  Redraw; 
end;
procedure KeyDown(Key: integer);
begin
  case Key of
    VK_Add, VK_PageUp: 
      begin
        depth := depth + 1;
        DrawDragonCurve;
      end;
    VK_Subtract, VK_PageDown:
      begin
        if depth > 0 then
          depth := depth - 1;
        DrawDragonCurve;
      end;
    VK_Up:
      begin
        offsetY := offsetY - 10;
        DrawDragonCurve;
      end;
    VK_Down:
      begin
        offsetY := offsetY + 10;
        DrawDragonCurve;
      end;
    VK_Left:
      begin
        offsetX := offsetX - 10;
        DrawDragonCurve;
      end;
    VK_Right:
      begin
        offsetX := offsetX + 10;
        DrawDragonCurve;
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
  DrawDragonCurve;
end.
