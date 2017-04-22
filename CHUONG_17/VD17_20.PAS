Program Hinh_Chu_Nhat;
Uses Crt,Graph;
{---------------------------}
	Function RandColor : Byte;
   Begin
   	RandColor := Random(MaxColors-1)+1;
   End;
{---------------------------}
   Procedure EnterGraph(Path: String);
   Var
   	Gd,Gm : Integer;
   Begin
   	DetectGraph(Gd,Gm);
      InitGraph(Gd,Gm,Path);
      If GraphResult <> 0 Then
      	Halt(1);
   End;
{---------------------------}
   Procedure BoxDemo;
   Var
   	x1,x2,y1,y2 : Integer;
      i : Byte;
   Begin
   	Randomize;
      i := 1;
      Repeat
      	x1 := Random(GetMaxX);
         Y1 := Random(GetMaxY);
         x2 := Random(GetMaxX-x1)+x1;
         Y2 := Random(GetMaxY-y1)+y1;
         SetColor(RandColor);
         Rectangle(x1,y1,x2,y2);
         Delay(500);
         Inc(i);
         If i > 20 Then
         	Begin
            	Delay(500);
               ClearDevice;
               i := 1;
            End;
      Until KeyPressed;
   End;
{---------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   BoxDemo;
   CloseGraph;
END.