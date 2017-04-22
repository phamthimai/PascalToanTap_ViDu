Program Da_giac_Deu;
Uses Graph;
Const
	Max =10;
Type
	Polygon = Array[1..Max] Of PointType;
Var
	Gd,Gm : Integer;
   Po : PointType;
   P : Polygon;
   Ao,R : Real;
{--------------------------------------}
	Procedure MakeNGon(R:Real;N:Integer;Po:PointType;
   				Ao:Real;Var P:Polygon);
   Var
   	i :Integer;
      Angle : Real;
   Begin
   	If (N < 3) Or (N > Max) Then
      	Halt(1);
      For i := 1 To N Do
      	With P[i] Do
         	Begin
            	Angle := 2*Pi*((i-1)/N+Ao/360);
               x := Round(R*Cos(Angle))+Po.x;
               y := Round(R*Sin(Angle))+Po.y;
            End;
         P[N+1] := P[1];

   End;
{--------------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt(1);
   Po.x := GetMaxX Div 2;
   Po.y := GetMaxY Div 2;
   Ao := 30;
   R := GetMaxY/4;
   MakeNgon(R,5,Po,Ao,P);
   DrawPoly(6,P);
   Readln;
   CloseGraph;
END.
