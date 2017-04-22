Program Hinh_Tam_Giac;
Uses Graph;
Const
	Triangle : Array[1..3] Of  PointType= ((x:50;y:100),
                     (x:100;y:100),(x:150;y:150));
Var
   Gd,Gm : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   SetColor(Yellow);
   FillPoly(SizeOf(Triangle) Div SizeOf(PointType),Triangle);
   Readln;
   CloseGraph;
End.