Program Bieu_Do_Tron;
Uses Crt,Graph;
Const MaxColor = 15;
Var
	Gd,Gm : Integer;
{----------------------------------}
	Function RandColor : Word;
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{----------------------------------}
	Procedure PiePlay;
   Var
   	ViewInfo : ViewPortType;
      CenterX,CenterY,X,Y : Integer;
      Radius,Xasp,Yasp : Word;
{----------------------------------}
   Function AdjAsp(Value : Integer) : Integer;
   Begin
   	AdjAsp := (LongInt(Value)*Xasp) Div Yasp;
   End;
{----------------------------------}
   Procedure GetTextCoords(AngleInDegrees,Radius : Word;
             Var X,Y : Integer);
	Var
		Radians : Real;
	Begin
   	Radians := AngleInDegrees * Pi /180;
      X := Round(Cos(Radians) * Radius);
      Y := Round(Sin(Radians) * Radius);
	End;
{----------------------------------}
   Begin
   	GetAspectRatio(Xasp,Yasp);
      GetViewSettings(ViewInfo);
      With ViewInfo Do
      	Begin
         	CenterX := (x2-x1) Div 2;
            CenterY := ((y2-y1) Div 2) + 20;
            Radius := (y2-y1) Div 3;
            While AdjAsp(Radius) < Round((y2-y1)/3.6) Do
            	Inc(Radius);
         End;
      SetTextStyle(TriplexFont,HorizDir,4);
      SetTextJustify(CenterText,TopText);
      OutTextXY(CenterX,0,'Bieu Do Tron');
      SetTextStyle(TriplexFont,HorizDir,3);
      SetFillStyle(SolidFill,RandColor);
      PieSlice(CenterX+10,CenterY-AdjAsp(10),0,90,Radius);
      GetTextCoords(45,Radius,X,Y);
      SetTextJustify(LeftText,BottomText);
      OutTextXY(CenterX+10+X+TextWidth('H'),CenterY-AdjAsp(10+Y),'25%');
      SetFillStyle(HatchFill, RandColor);
      PieSlice(CenterX,CenterY,225,360,Radius);
      GetTextCoords(293,Radius,X,Y);
      SetTextJustify(LeftText,TopText);
      OutTextXY(CenterX+X+TextWidth('H'),CenterY-AdjAsp(Y),'37.5%');
      SetFillStyle(InterleaveFill,RandColor);
      PieSlice(CenterX-10,CenterY,135,225,Radius);
      GetTextCoords(180,Radius,X,Y);
      SetTextJustify(RightText,CenterText);
      OutTextXY(CenterX-10+X-TextWidth('H'),CenterY-AdjAsp(Y),'25%');
      SetFillStyle(WideDotFill,RandColor);
      PieSlice(CenterX,CenterY,90,135,Radius);
      GetTextCoords(112,Radius,X,Y);
      SetTextJustify(RightText,BottomText);
      OutTextXY(CenterX+X-TextWidth('H'),CenterY-AdjAsp(Y),'12.5%');
   End;
{----------------------------------}
BEGIN
	Gd:=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
      Halt(1);
   PiePlay;
   Readln;CloseGraph;

END.
