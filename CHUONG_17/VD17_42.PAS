Program Hinh_Quat_Ellipse;
Uses Graph;
Const R = 50;
Var
	Gd,Gm : Integer;
   Xasp,Yasp :Word;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt(1);
   SetColor(Yellow);
	Sector(GetMaxX Div 2, GetMaxY Div 2,0,45,R,R);
   GetAspectRatio(Xasp,Yasp);
   SetColor(Magenta);
   Sector(GetMaxX Div 2,GetMaxY Div 2,180,135,R,R*LongInt(Xasp) Div Yasp);
   Readln;
   CloseGraph;
End.