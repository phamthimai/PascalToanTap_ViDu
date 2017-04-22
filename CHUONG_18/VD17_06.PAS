Program Tao_Cua_So;
Uses Graph,Crt;
Const
	n : Byte = 20;
Var
	Gd,Gm : Integer;
{------------------------------}
	Procedure SetViewBox(x1,y1,x2,y2: Integer; Clip:Boolean);
   Begin
   	SetViewPort(x1,y1,x2,y2,Clip);
      Rectangle(0,0,x2-x1,y2-y1);
   End;
{------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOK Then
   	Halt;
   SetViewBox(2*n,2*n,GetMaxX,GetMaxY,ClipOn);
   OutTextXY(20,2,'Xin Chao nam 2000');
   Repeat
   Until KeyPressed;
   SetPalette(0,1);
   SetViewBox(0,0,GetMaxX-n,GetMaxY-n,ClipOn);
   OutTextXY(30,2,'Xin chao The ky 21');
   Readln;
   CloseGraph;
END.