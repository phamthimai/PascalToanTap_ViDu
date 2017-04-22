Program Vong_Tron;
Uses Graph;
Const
	Radius = 10;
Type
	Point = RECORD
   	X,Y : Integer;
   End;
Var
	Gd,Gm : Integer;
   CenterX,CenterY : Integer;
   M : Array[1..15] Of Point;
   i,k : Integer;
   Xasp,Yasp : Word;
{--------------------------------------}
	Function AdJasp(Value : Integer): Integer;
   Begin
   	Adjasp := Longint(Value)*Xasp Div Yasp;
   End;
{--------------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   SetBkColor(Blue);
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   GetAspectRatio(Xasp,Yasp);
   For i := 1 To 15 Do
   	With M[k] Do
      	Begin
         	X := CenterX +Round(Radius*Sin(2*k*pi/15));
            Y := CenterY + AdjAsp(Round(Radius*Cos(2*k*pi/15)));
         End;
   Circle(CenterX,CenterY,Radius);
   For i := 1 To 15 Do
   	For k := 1 To 15 Do
      	Line(M[k].X,M[k].Y,M[i].X,M[i].Y);
   Readln;
   CloseGraph;
END.