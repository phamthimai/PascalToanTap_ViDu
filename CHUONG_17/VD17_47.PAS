Program Chieu_Rong_Chu;
Uses Graph;
Var
	Gd,Gm : Integer;
   Row : Integer;
   Title : String;
   Size : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt;
   Row := 0;
   Title :='Do hoa Pascal';
   Size := 1;
   While TextWidth(Title) < GetMaxX Do
   	Begin
      	OutTextXY(0,Row,Title);
         Inc(Row,TextHeight('M'));
         Inc(Size);
         SetTextStyle(DefaultFont,HorizDir,Size);
      End;
   Readln;
   CloseGraph;
End.