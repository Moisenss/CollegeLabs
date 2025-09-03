uses GraphABC;
begin
  SetWindowWidth(1500);
SetWindowHeight(1500);
   Circle(500,200,50);
   FloodFill(500,200,clred);
      Circle(1000,200,50);
   FloodFill(1000,200,clyellow);
   MoveTo(550,200);
   LineTo(950,200);
   LineTo(750,300);
   LineTo(550,200);
   LineTo(750,100);
   LineTo(950,200);
   FloodFill(700,180,clblue);
   FloodFill(700,220,clgreen);
end.