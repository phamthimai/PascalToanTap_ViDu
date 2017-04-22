Program Ve_Cung_Ngau_Nhien;
Uses Crt,Graph;
Const MaxColor = 15;
Var
	Gd,Gm : Integer;
{---------------------------------}
	Function RandColor : Word;
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{---------------------------------}
   Procedure ArcPlay;
   Const NumMax = 100;
   Var
   	MaxRadius,EndAngle : Word;
		ArcInfo : ArcCoordsType;
		Num : Byte;
	Begin
   	MaxRadius := GetMaxY Div 10;
      Num := 1;
      Repeat
      	SetColor(RandColor);
         EndAngle :=Random(360);
         SetLineStyle(SolidLn,0,NormWidth);
         Arc(Random(GetMaxX),Random(GetMaxY),
         	Random(EndAngle),EndAngle,
            Random(MaxRadius));
         GetArcCoords(ArcInfo);
         With ArcInfo Do
         	Begin
            	Line(x,y,Xstart,Ystart);
               Line(x,y,Xend,Yend);
            End;
         If Num > NumMax Then
         	Begin
            	Delay(100);
               ClearDevice;
               Num := 1;
            End
         Else
         	Inc(Num);
         Delay(100);
      Until KeyPressed;
	End;
{---------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   ArcPlay;
   CloseGraph;
END.
