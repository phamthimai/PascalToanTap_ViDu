Program LineDemo;
Uses Crt,Graph;
Var
	MaxX,MaxY,ErrorCode,Gd,Gm : Integer;
{-----------------------------------------}
	Procedure PlotLine(x1,y1,x2,y2,Color : Integer);
   Var
   	a,b : Real;
      Dx,Dy,x,y,i : Integer;

{-----------------------------------------}
   Procedure Switch(Var x,y : Integer);
   Var
   	t : Word;
   Begin
   	t := x;
      x := y;
      y := t;
   End;

{-----------------------------------------}
   Begin
   	If Abs(x1-x2) > Abs(y1-y2) Then
      	Begin
         	If x1 > x2 Then
            	Begin
               	Switch(x1,x2);
                  Switch(y1,y2);
               End;
            Dx := (x2-x1);
            Dy := (y2-y1);
            If Dx <> 0 Then
            	b :=Dy /Dx
            Else
            	b := 0;
            a := y1 -x1*b;
            For x := x1 To x2 Do
            	Begin
               	y := Round(a+x*b);
                  PutPixel(x,y,Color);
               End;
         End
      Else
      	Begin
         	If y1 > y2 Then
            	Begin
               	Switch(y2,y1);
                  Switch(x1,x2);
               End;
           	Dx := (x2-x1);
           	Dy := (y2-y1);
            If Dx <> 0 Then
            	b := Dy / Dx
            Else
            	b := 0;
            a :=y1 - x1*b;
            For y := y1 To y2 Do
            	Begin
               	If b <> 0 Then
                  	x := Round((y-a)/b)
                  Else
                  	x := 0;
                  PutPixel(x,y,Color);
               End;

         End;
   End;
{-----------------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   ErrorCode := GraphResult;
   If ErrorCode <> GrOk Then
   	Begin
      	Writeln('Loi do hoa: ',GraphErrorMsg(ErrorCode));
         Halt;
      End;
   MaxX := GetMaxX;
   MaxY := GetMaxY;
   Repeat
   	Plotline(Random(MaxX),
      			Random(MaxY),
               Random(maxX),
               Random(MaxY),
               Magenta);

   Until KeyPressed;
   CloseGraph;
END.