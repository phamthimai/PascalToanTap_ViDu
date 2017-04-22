Program Thanh_3_Chieu;
Uses Crt,Graph;
Const MaxColor = 15;
Var
	Gd,Gm : Integer;
{---------------------------}
	Function Int2Str(L:LongInt):String;
   Var
   	S : String;
   Begin
   	Str(L,S);
      Int2Str := S;
   End;
{---------------------------}
   Function RandColor : Word;
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{---------------------------}
   Procedure Bar3DPlay;
   Const
   	NumBars = 7; {so thanh duoc ve}
      BarHeight : Array[1..NumBars] Of Byte
                = (1,3,2,5,4,2,1);
      YTicks = 5;
   Var
   	ViewInfo : ViewPortType;
      H,Depth,Color : Word;
      Xstep,Ystep : Real;
      i,j : Integer;
   Begin
   	H := 3*TextHeight('M');
      GetViewSettings(ViewInfo);
      SetTextJustify(CenterText,TopText);
      SetTextStyle(TriplexFont,HorizDir,4);
      OutTextXY(GetMaxX Div 2,6,'Hinh Thanh 3 Chieu');
      SetTextStyle(DefaultFont,HorizDir,1);
      With ViewInfo Do
      	SetViewPort(x1+50,y1+40,x2-50,y2-10,ClipOn);
      GetViewSettings(ViewInfo);
      With ViewInfo Do
      	Begin
         	Line(H,H,H,(y2-y1)-H);
            Line(H,(y2-y1), (x2-x1)-H, (y2-y1)-H);
            YStep := ((y2-y1)-(2*H))/YTicks;
            Xstep := ((x2-x1)-(2*H)) / NumBars;
            J := (y2-y1)-H;
            SetTextJustify(CenterText,CenterText);
            {Ve truc x va y}
            For i := 0 To YTicks Do
            	Begin
               	Line(H Div 2,J,H,J);
                  OutTextXY(0,J,Int2Str(I));
                  J := Round(J-Ystep);
               End;
            Depth :=Trunc(0.25*Xstep); {tinh chieu sau cua thanh}
            {Ve truc X, thanh va toa do}
            SetTextJustify(CenterText,CenterText);
            J := H;
            For I := 1 To Succ(Numbars) Do
            	Begin
               	SetColor(MaxColor);
                  Line(J,(y2-y1)-H,J,(y2-y1-3)-(H Div 2));
                  OutTextXY(J,(y2-y1)-(H Div 2),Int2Str(I-1));
                  If I <> Succ(Numbars) Then
                  	Begin
                     	Color :=RandColor;
                        SetFillStyle(1,Color);
                        SetColor(Color);
                        Bar3D(J,Round((y2-y1-H)-(BarHeight[i]*Ystep)),
                        		  Round(j+Xstep-Depth),
                                Round((y2-y1)-H-1),Depth,TopOn);
                        J := Round(J+Xstep);
                     End;
               End;
         End;
   End;
{---------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   Bar3DPlay;
   Readln;
   CloseGraph;
END.