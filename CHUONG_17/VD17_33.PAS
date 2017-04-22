Program Mau_UseFill;
Uses Graph;
Const
	Gray50 : FillPatternType = ($AA,$55,$AA,$55,$AA,$55,$AA,$55);
Var
	Gd,Gm : Integer;
   OldPattern : FillPatternType;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	halt(1);
   GetFillPattern(OldPattern);
   SetFillPattern(Gray50,White);
   Bar(0,0,100,100);
   Readln;
   SetFillPattern(OldPattern,White);
   Bar(0,0,100,100);
   Readln;
   CloseGraph;
End.