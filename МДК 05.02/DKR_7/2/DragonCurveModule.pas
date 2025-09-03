unit DragonCurveModule;
interface
uses GraphABC;
procedure DrawDragonCurve(depth: integer; scale: real; offsetX, offsetY: integer);
implementation
procedure DragonCurve(x, y, dx, dy, depth: integer; scale: real; offsetX, offsetY: integer);
begin
  if depth = 0 then
  begin
    LineTo(Round((x + dx) * scale) + offsetX, Round((y + dy) * scale) + offsetY);
  end
  else
  begin
    DragonCurve(x, y, (dx - dy) div 2, (dy + dx) div 2, depth - 1, scale, offsetX, offsetY);
    DragonCurve(x + (dx - dy) div 2, y + (dy + dx) div 2, (dx + dy) div 2, (dy - dx) div 2, depth - 1, scale, offsetX, offsetY);
  end;
end;
procedure DrawDragonCurve(depth: integer; scale: real; offsetX, offsetY: integer);
begin
  ClearWindow; 
  MoveTo(Round(325 * scale) + offsetX, Round(300 * scale) + offsetY);
  DragonCurve(325, 300, 200, 0, depth, scale, offsetX, offsetY);
  Redraw;
end;
end.