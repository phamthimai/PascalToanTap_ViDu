Program Dia_Bay;
Uses Crt,Graph;
Const MaxColor = 15;
Var
	Gd,Gm : Integer;
{-------------------------------}
	Function RandColor : Word;
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{-------------------------------}
   Procedure PutImagePlay;
   Const
   	r = 20;
      StartX = 100;
      StartY = 50;
   Var
   	CurPort : ViewPortType;
    {----------------------------}
   Procedure MoveSaucer(Var x,y :Integer;Width,Height : Integer);
   Var
   	Step : Integer;
   Begin
   	Step := Random(2*r);
      If Odd(Step) Then
      	Step := -Step;
      x := x+Step;
      Step := Random(r);
      If Odd(Step) Then
      	Step := -Step;
      y := y + Step;
      With CurPort Do
      	Begin
         	If (x1 + X + Width - 1 > x2) Then
            	X := x2 - x - Width + 1
            Else
            	If (X < 0) Then
               	X := 0;
               If (y1 + Y + Height -1 > y2) Then
               	Y := y2 - y1 - Height + 1
               Else
               	If (Y < 0) Then
                  	Y := 0;
         End;
   End;
{-------------------------------}
	Var
   	PauseTime,UlX,UlY,LrX,LrY,Size,i : Word;
		Saucer : Pointer;
		X,Y : Integer;
   Begin
   	ClearDevice;
      GetViewSettings(CurPort);
      Ellipse(StartX,StartY,0,360,r,(r Div 3)+2);
      Ellipse(StartX,StartY-4,190,357,r,r Div 3);
      Line(StartX+7,StartY-6,StartX+10,StartY-12);
      Circle(StartX+10,StartY-12,2);
      Line(StartX+7,StartY-6,StartX+10,StartY-12);
      Circle(StartX-10,StartY-12,2);
      SetFillStyle(SolidFill,MaxColor);
      FloodFill(StartX+1,StartY+4,GetColor);
      UlX := StartX-(r+1);
      UlY := StartY-14;
      LrX := StartX+(r+1);
      LrY := StartY+(r Div 3)+3;
      Size := ImageSize(UlX,UlY,LrX,LrY);
      GetMem(Saucer,Size);
      GetImage(UlX,UlY,LrX,LrY,Saucer^);
      PutImage(UlX,UlY,Saucer^,XORput);
      For i := 1 To 1000 Do
      PutPixel(Random(GetMaxX),Random(GetMaxY),RandColor);
      X := GetMaxX Div 2;
      Y := GetMaxY Div 2;
      PauseTime := 200;
      Repeat
      	PutImage(X,Y,Saucer^,XORPut);
         Delay(pauseTime);
         PutImage(X,Y,Saucer^,XORPut);
         MoveSaucer(X,Y,LrX-UlX+1,Lry-Uly+1);
      Until KeyPressed;
      FreeMem(Saucer,Size);
   End;
{-------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   PutImagePlay;
   Readln;
   CloseGraph;
END.
