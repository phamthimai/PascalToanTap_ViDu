Program Hinh_Quat_Ellipse_Ngau_nhien;
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
   Procedure SectorPlay; {Ve mot hinh quat ellipse bat ky}
   Const
   	MaxFillStyles = 12; {Pattern 0..11}
   Var
   	MaxRadius : Word;
      FillColor : Integer;
      EndAngle  : Integer;
   Begin
   	MaxRadius := GetMaxY Div 10;
      SetLineStyle(SolidLn,0,NormWidth);
      Repeat
      	FillColor := RandColor;
         SetColor(FillColor);
         SetFillStyle(Random(MaxFillStyles),FillColor);
         EndAngle := Random(360);
         Sector(Random(GetMaxX),Random(GetMaxY),
         		Random(EndAngle),EndAngle,
               Random(MaxRadius),Random(MaxRadius));
      Until KeyPressed;
   End;
{---------------------------------}
BEGIN
	Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt(1);
   SectorPlay;
   CloseGraph;
END.

