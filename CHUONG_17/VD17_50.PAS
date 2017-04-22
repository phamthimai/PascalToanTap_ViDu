Program So_Chu;
Uses Graph;
Var
	Gd,Gm : Integer;
   W,H,X,Y,I,J,Size : Integer;
   St : String;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt;
   Y := 0;
   X := 0;
   Size :=6;
   SetTextJustify(LeftText,BottomText);
   SetTextStyle(DefaultFont,HorizDir,Size);
   St := Chr(15);
   H := TextHeight(St);
   W := TextWidth(St);
   For J := 0 To (GetMaxY Div H) + 1 Do
   	For I := 0 To (GetMaxX Div W) Do
      	Begin
         	SetColor(( I Mod 15)+1);
            OutTextXY(X+I*W,Y+J*H,St);
         End;
   Readln;
   CloseGraph;
End.