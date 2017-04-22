Program To_mau_Hinh_Tron;
Uses Graph;
Var
	Gd,Gm: Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   SetColor(GetMaxColor);
   CirCle(50,50,20);
   FloodFill(50,50,GetMaxColor);
   Readln;
   ClearDevice;
   CloseGraph;
End.