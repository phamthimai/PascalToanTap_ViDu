Program Ve_Tam_Giac;
Uses Graph;
Const
	Triangle : Array[1..4] Of PointType =
	           ((x:50;y:100),(x:100;y:100),
              (x:150;y:150),(x:50;y:100));
Var
	Gd,Gm : Integer;
Begin
   Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt(1);
   SetColor(14);
   DrawPoly(4,TriAngle);
   Readln;
   CloseGraph;
End.