Program Chu_Co_Bong;
Uses Graph;
Var
	Gd,Gm : Integer;
   Y,Size : Integer;
   CenterX : Word;
{------------------------------}
	Procedure WriteShade(x,y:Word;S:String;Font,Size,Colo1,Colo2: Integer);
   Var
   	h,k : Byte;
   Begin
   	SetTextJustify(CenterText,CenterText);
      SetTextStyle(Font,0,Size);
      If (Size=0) Then
      	SetUserCharSize(19,11,1,1);
      H := TextHeight('M') Div 10;
      If (Size < 4) Then
			H := 2*H;
		SetColor(Colo2);
		For k := H DownTo 1 Do
			OutTextXY(x + k,y+k,S);
		SetColor(Colo1);
		OutTextXY(x,y,S);
   End;
{------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   SetBkColor(GetMaxColor Div 2);
   CenterX := GetMaxX Div 2;
   Y := GetMaxY Div 4;
   WriteShade(CenterX,y,'TURBO PASCAL',DefaultFont,6,4,14);
   Y := GetMaxY Div 2;
   WriteShade(CenterX,y,'VerSion 7.0',DefaultFont,3,4,14);
   Y := 3*(GetMaxY Div 4);
   WriteShade(CenterX,y,'CHU CO BONG CANH',DefaultFont,4,1,14);
   Readln;
   CloseGraph;
END.
