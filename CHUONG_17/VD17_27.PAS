Program Ve_vong_tron;
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
   Procedure CirclePlay;
   Const NumMax = 100;
   Var
   	MaxRadius : Word;
		Num : Byte;
	Begin
   	MaxRadius := GetMaxY Div 10;
      SetLineStyle(SolidLn,0,Normwidth);
      Num := 1;
      Repeat
      	SetColor(RandColor);
         Circle(Random(GetMaxX),Random(GetMaxY),
            Random(MaxRadius));
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
   CirclePlay;
   CloseGraph;
END.
