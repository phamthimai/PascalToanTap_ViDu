Program Hinh_Ellipse;
Uses Crt,Graph;
Const MaxColor = 15;
Var
	Gd,Gm : Integer;
{--------------------------------}
	Function RandColor : Word;
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{--------------------------------}
   Procedure FillEllipsePlay;
   Const
   	MaxFillStyles = 12; {Patterns 0..11}
   Var
   	MaxRadius : Word;
      FillColor : Integer;
   Begin
   	MaxRadius := GetMaxY Div 10;
      {Dinh duong kinh toi da la 1/10 chieu co man hinh}
      SetLineStyle(SolidLn,0,NormWidth);
      Repeat
      	FillColor := RandColor;
         SetColor(FillColor);
         SetFillStyle(Random(MaxFillStyles),FillColor);
         {Chon kieu to va mau ngau nhien}
         FillEllipse(Random(GetMaxX),Random(GetMaxY),
         				Random(MaxRadius),Random(MaxRadius));
      Until KeyPressed;
   End;
{--------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
      FillEllipsePlay;
      CloseGraph;
END.
{--------------------------------}



