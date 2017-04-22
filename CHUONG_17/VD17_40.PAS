Program Hinh_Quat_Tron;
Uses Graph;
Const Radius = 30;
Var
	Gd,Gm : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   SetColor(14);
   PieSlice(100,100,0,270,Radius);
   Readln;
   CloseGraph;
End.