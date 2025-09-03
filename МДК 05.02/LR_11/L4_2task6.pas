program ChessBoard;
uses GraphABC;

var
  x, y: Integer;

begin
  for y := 0 to 7 do
    for x := 0 to 7 do
    begin
      if (x + y) mod 2 = 0 then
        Brush.Color := clWhite
      else
        Brush.Color := clBlack;
      FillRect(x * 50, y * 50, (x + 1) * 50, (y + 1) * 50);
    end;
end.