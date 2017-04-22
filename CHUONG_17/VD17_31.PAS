Program Ve_Can_NHa;
Uses Graph;
Var
	Ao : Real;
   N,i : Byte;
{--------------------------------}
	Procedure EnterGraph(Path: String);
   Var
   	Gd,Gm : Integer;
   Begin
   	Gd := Detect;
      InitGraph(Gd,Gm,Path);
      If GraphResult <> GrOk Then
      	Halt(1);
   End;
{--------------------------------}
   Procedure TurnRight(Var Ao:Real;Angle : Real);
   Begin
   	Ao := Ao-Angle;
   End;
{--------------------------------}
   Procedure Draw(L,Ao : Real);
   Begin
   	LineTo(GetX+Round(L*Cos(Pi*Ao/180)),
      		 GetY -Round(L*Sin(Pi*Ao/180)));
   End;
{--------------------------------}
   Procedure TurtleHouse(L:Real;Ao:Real);
   Begin
   	Draw(L,Ao); TurnRight(Ao,-90);
      Draw(L,Ao); TurnRight(Ao,-30);
      Draw(L,Ao); TurnRight(Ao,-120);
      Draw(L,Ao); TurnRight(Ao,-30);
      Draw(L,Ao); TurnRight(Ao,-90);
   End;
{--------------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   MoveTo(GetMaxX Div 2,GetMaxY Div 2);
   Ao := 0;
   N := 6;
   For i := 1 To N Do
   	Begin
      	SetColor(14);
      	TurtleHouse(100,Ao);
         TurnRight(Ao,-(360 Div N));
      End;
   Readln;
   CloseGraph;
END.