Program Goi_Phuong_Thuc;
Uses Graph;  {Su dung Unit Grap}
TYPE
	Point = OBJECT
   	X,Y : Integer;
      Procedure Init(IntX, IntY : Integer);
      End;
   Circle = OBJECT(Point)
   	Radius : Integer;
      Procedure Init(IntX, IntY, IntRadius : Integer);
      Procedure Show;
      Procedure ConStract(ConstractBy : Integer);
      End;
VAR
	C : Circle;
	GrDriver, GrMode : Integer; {Kieu thiet bi va man hinh }
   k : Integer;
{-------------------------------------}
	Procedure Point.Init(IntX, IntY : Integer);
   Begin
   	X := IntX;
      Y := IntY;
   End;
{-------------------------------------}
	Procedure Circle.Init(IntX, IntY, IntRadius : Integer);
   Begin
   	Point.Init(IntX,IntY);
      Radius := IntRadius;
   End;
{-------------------------------------}
	Procedure Circle.Show;
   Begin
   	Graph.Circle(X,Y,Radius); {Lenh Circle trong Graph.TPU}
   End;
{-------------------------------------}
	Procedure Circle.ConStract(ConstractBy: Integer);
   Begin
   	Dec(Radius,ConstractBy);
      Show;
   End;
{-------------------------------------}
BEGIN
	GrDriver := CGA;  {Card man hinh}
   GrMode := CGAC0;   {Kieu man hinh mau}
   InitGraph(GrDriver, GrMode,'C:\BP\BGI'); {Khoi tao che do do hoa}
   SetBkColor(Blue);
   With C Do
   	Begin
      	Init(GetMaxX Div 2, GetMaxY Div 2, GetMaxX Div 2);
         		{ Mac nhien hieu la C.Init}
         For k :=1 To 7 Do
         	Begin
            	SetColor((k Mod 3) + 1);
               SetFillStyle(SolidFill, k Mod 3);
               Constract(20);
               FloodFill(GetMaxX Div 2, GetMaxY Div 2,( k Mod 3) +1);
            End;
         Readln;
      End;
   CloseGraph;
END.

