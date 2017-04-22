Program Chu_Nhat;
Uses Graph;
{---------------------------}
	Procedure EnterGraph(Path:String);
   Var
   	Gd,Gm : Integer;
   Begin
   	Gd :=Detect;
      InitGraph(Gd,Gm,Path);
      If GraphResult <> GrOk Then
      	Halt(1);
   End;
{---------------------------}
   Procedure Frame1(x1,y1,x2,y2:Integer;Colo: Word);
   Begin
   	SetLineStyle(DottedLn,0,NormWidth); {net roi}
      SetColor(Colo);
      RecTangle(x1,y1,x2,y2);
   End;
{---------------------------}
   Procedure Frame2(x1,y1,x2,y2:Integer;Colo: Word);
   Begin
      SetLineStyle(UserBitLn,$C3,ThickWidth); {net tu dinh nghia}
      SetColor(Colo);
      RecTangle(x1,y1,x2,y2);
   End;
{---------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   Frame1(10,10,200,150,Yellow);
   Readln;
   Frame2(50,50,500,300,Magenta);
   readln;
   CloseGraph;
END.
