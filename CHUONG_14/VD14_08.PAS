Program ND_Constructor;
Uses Graph;
TYPE
	Point = OBJECT
   	X,Y : Integer;
      Constructor Init(InitX,InitY : Integer);
      Procedure Show; Virtual;
      Procedure MoveTo(NewX,NewY: Integer);
      End;

   Circle = OBJECT(Point)
   	Radius : Integer;
      Constructor Init(InitX,InitY,InitRadius : Integer);
      Procedure Show;Virtual;
      End;

   Arc = OBJECT(Circle)
   	StartAngle,EndAngle : Integer;
      Constructor Init(InitX,InitY,InitRadius,InitS,InitE:Integer);
      Procedure Show;Virtual;
      End;
VAR
	M : Point;
   C : Circle;
   A : Arc;
   GrDriver,GrMode : Integer;
{-------------------------------------}
	Constructor Point.Init;
   Begin
   	X := InitX;
      Y := InitY;
   End;
{-------------------------------------}
	Procedure Point.Show;
   Begin
   	PutPixel(X,Y,1);
   End;
{-------------------------------------}
	Procedure Point.MoveTo;
   Begin
   	X := NewX;
      Y := NewY;
   End;
{-------------------------------------}
	Constructor Circle.Init;
   Begin
   	Point.Init(InitX,InitY);
      Radius := InitRadius;
   End;
{-------------------------------------}
	Procedure Circle.Show;
   Begin
   	Graph.Circle(X,Y,Radius);
   End;
{-------------------------------------}
	Constructor Arc.Init;
   Begin
   	Circle.Init(InitX,InitY,InitRadius);
      StartAngle := InitS;
      EndAngle := InitE;
   End;
{-------------------------------------}
	Procedure Arc.Show;
   Begin
   	Graph.Arc(X,Y,Radius,StartAngle,EndAngle);
   End;
{-------------------------------------}
BEGIN
	GrDriver := CGA;
   GrMode := CGAC0;
   InitGraph(GrDriver,GrMode,'C:\BP\BGI');
   SetBkColor(Blue);
   M.Init(GetMaxX Div 2, GetMaxY Div 2);
   M.Show;
   C.Init(GetMaxX Div 2, GetMaxY Div 2, GetMaxY Div 2);
   C.Show;
	A.Init(GetMaxX Div 2, GetMaxY Div 2, GetMaxX Div 4,0,60);
   A.Show;
   A.MoveTo(GetMaxX Div 3,GetMaxY Div 2);
   A.Show;
   Readln;
   CloseGraph;
END.
