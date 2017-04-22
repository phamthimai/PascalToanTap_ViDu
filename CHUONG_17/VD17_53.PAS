Program Chu_Doc_Co_Bong;
Uses Graph;
Var
	Gd,Gm : Integer;
{----------------------------------}
	Procedure WriteVertShade(x,y,Colo1,Colo2,Font,Size:Integer;St:String);
   Var
   	h,i,j,Xo,Yo : Integer;
   Begin
   	SetTextStyle(Font,0,Size);
      If Size = 0 Then
      	SetUserCharSize(19,11,1,1);
      SetTextJusTify(LeftText,TopText);
      h :=TextHeight('T') Div 10;
      If Size < 4 Then
      	h := 2*h;
      SetColor(Colo2);
      Xo := x;
      Yo := y;
      For j := h DownTo 1 Do
      	For i := 1 To Length(St) Do
         	Begin
            	Yo := y + 3*(i-1)*(TextHeight('T') Div 2);
               OutTextXY(Xo+j,Yo+j,St[i]);
            End;
      SetColor(Colo1);
      Xo :=x;
      Yo := y;
      For i := 1 To length(St) Do
      	Begin
         	OutTextXY(Xo,Yo,St[i]);
            Yo := Yo+3*(TextHeight('T') Div 2);
         End;
   End;
{----------------------------------}
BEGIN
	Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   WriteVertShade(0,0,4,14,DefaultFont,5,'Pascal');
   Readln;
   CloseGraph;
END.
{----------------------------------}
