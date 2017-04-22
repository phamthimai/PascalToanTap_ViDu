Program Chieu_Cao_Chu;
Uses Graph;
Var
	Gd,Gm : Integer;
   Y,Size : Integer;
Begin
	Gd := Detect;
	InitGraph(Gd,Gm,'C:\BP\BGI');
	If GraphResult <> GrOk Then
		Halt;
   y := 0;
   For size := 1 To 9 Do
   	Begin
      	SetColor(Size);
         SetTextStyle(DefaultFont,HorizDir,Size);
         OutTextXY(0,y,'Do hoa Pascal');
         Inc(y,TextHeight('Do hoa Pascal'));
      End;
   Readln;
   CloseGraph;
End.