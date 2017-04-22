Program Ve_Dong_ho;
Uses Graph, Crt;
Const
	x : Integer = -90;
Var
	Gd,Gm : Integer;
   CenterX,CenterY,R : Integer;
   C : Real;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt;
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   SetAspectRatio(1,2);
   R := GetMaxY Div 3;
   Circle(CenterX,CenterY,R);
   C := pi/180;
   SetLineStyle(Solidln,0,ThickWidth);
   Repeat
   	Moveto(CenterX,CenterY);
      SetColor(13);
      LineRel(Trunc((R-5)*Cos(c*x)),Trunc((R-5)*Sin(c*x)) Div 2);
      Delay(1000);
      SetColor(0);
      Moveto(CenterX,CenterY);
      LineRel(Trunc((R-5)*Cos(c*x)),Trunc((R-5)*Sin(c*x)) Div 2);
      Inc(x,6);
   Until KeyPressed;
   CloseGraph;
End.