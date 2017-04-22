Program Hinh_Thanh;
Uses Crt,Graph;
Const MaxColor = 15;
Var
	Gd,Gm : Integer;
{------------------------------------}
	Function RandColor : Word;
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{------------------------------------}
	{*Ve cac thanh co mau va mau to ngau nhien *}
   Procedure RandBarPlay;
   Var
   	MaxWidth,MaxHeight : Integer;
		ViewInfo : ViewPortType;
		Color : Word;
	Begin
   	GetViewSettings(ViewInfo);
      With ViewInfo Do
      	Begin
         	MaxWidth := x2-x1;
            MaxHeight :=y2-y1;
         End;
      Repeat
      	Color := RandColor;
         SetColor(Color);
         SetFillStyle(Random(CloseDotFill)+1,Color);
         Bar(Random(MaxWidth),Random(MaxHeight),
				Random(MaxWidth), Random(MaxHeight));
      Until KeyPressed;
	End;
{------------------------------------}
BEGIN
	Gd:=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   RandBarPlay;
   CloseGraph;
END.

