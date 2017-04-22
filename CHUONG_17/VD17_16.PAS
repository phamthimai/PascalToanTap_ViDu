Program Duong_Net;
Uses Graph;
Const
	x : Array[1..4] Of Integer =(10,10,200,150);
Var
	Gd,Gm : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   SetLineStyle(DottedLn,0,NormWidth);
   Rectangle(x[1],x[2],x[3],x[4]);
   Circle(GetMaxX Div 2,GetMaxY Div 2, 80);
   Readln;
   SetLineStyle(UserBitLn,$AA,ThickWidth);
   Rectangle(x[1],x[2],x[3],x[4]);
   Circle(GetMaxX Div 2,GetMaxY Div 2, 80);
   Readln;
   CloseGraph;
End.