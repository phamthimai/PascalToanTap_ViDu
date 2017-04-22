Program Ve_duong;
Uses Crt,Graph;
Type
	Point = RECORD
   	x,y : Integer;
   End;
Var
	Gd,Gm,k,CenterX,CenterY: Integer;
	M : Point;
	Radius,Color : ShortInt;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   Randomize;
   Color := 0;
   Repeat
   	Color := Color + 1;
      Color := Color Mod 3+1;
      M.x := Random(GetMaxX);
      M.y := Random(GetMaxY);
      SetColor(Color);
      Line(CenterX,CenterY,M.x,M.y);
   Until KeyPressed;
End.