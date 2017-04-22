Program Thu_Tuc_Release;
Uses Graph, Crt;
TYPE
	Location = OBJECT
   	X,Y : Integer;
      Constructor Init(InitX,InitY: Integer);
      End;

   ConTroCircle = ^Circle;

   Circle = OBJECT(Location)
   	Radius : Integer;
      Constructor Init(InitX,InitY,InitR : Integer);
      Procedure Show;
      End;

VAR
	P                 : Array[1..100] Of ConTroCircle;
   GrDriver,GrMode,k : Integer;
   HeapTop           : ConTroCircle;
{------------------------------------}
	Constructor Location.Init;
   Begin
   	X := InitX;
      Y := InitY
   End;
{------------------------------------}
	Constructor Circle.Init;
   Begin
   	Location.Init(InitX,InitY);
      Radius := InitR
   End;
{------------------------------------}
	Procedure Circle.Show;
   Var
   	Color : Integer;
   Begin
   	Color := Random(3) + 1;
      SetColor(Color);
      Graph.Circle(X,Y,Radius)
   End;
{------------------------------------}
BEGIN
   GrDriver := CGA;
   GrMode   := CGAC0;
   InitGraph(GrDriver,GrMode,'C:\BP\BGI');
   SetBKColor(Blue);
   Rectangle(0,0,GetMaxX,GetMaxY);
   SetViewport(1,1,GetMaxX-1,GetMaxY-1,Clipon);
   Randomize;
   Mark(HeapTop);
   For k := 1 To 100 Do
   	Begin
      	New(p[k],Init(Random(GetMaxX)+1,Random(GetMaxY)+1,
         	Random(GetMaxY Div 2)));
         P[k]^.Show
      End;
   Readln;
   CloseGraph;
   Release(HeapTop);
END.