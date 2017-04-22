Program Ve_Cung;
Uses Graph;
Var
	Gd,Gm : Integer;
   Radius,i : Integer;
Begin
	Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt(1);
   For Radius := 1 To 50 Do
   	For i := 1 To 100 Do
   		Begin
  				SetColor(14);
				Arc(0,GetMaxY,20,70,Radius*10);
      	End;
   Readln;
   CloseGraph;
End.