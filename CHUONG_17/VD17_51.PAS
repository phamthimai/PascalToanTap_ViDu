Program Chuoi_Doc;
Uses Graph;
Var
	Gd,Gm : Integer;
{-------------------------------}
	Procedure WriteVert(x,y,Colo,Font,Size:Integer;St: String);
   Var
   	i : Byte;
   Begin
   	SetTextStyle(Font,0,Size);
      If Size = 0 Then
      	SetUserCharSize(2,1,1,1);
      SetTextJustify(LeftText,TopText);
      SetColor(Colo);
      For i := 1 To Length(St) Do
      	Begin
         	OutTextXY(x,y,St[i]);
            y := y+3*(TextHeight('T') Div 2);
         End;
   End;
{-------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   WriteVert(0,0,14,GothicFont,3,'Turbo Pascal');
   Readln;
   CloseGraph;
END.
