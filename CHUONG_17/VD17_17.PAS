Program Chon_Mode;
Uses Crt, Graph;
Const
	MaxColor = 15;
Var
	Gd,Gm : Integer;
{---------------------------------}
	Function RandColor : Word;
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{---------------------------------}
	Procedure WriteModePlay;
   Const DelayValue = 50;
   Var
   	ViewInfo : ViewPortType;
   	Color : Word;
   	Left,top : Integer;
   	Right,Bottom : Integer;
   	Step : Integer;
   Begin
   	Rectangle(9,9,GetMaxX-9,GetMaxY-9);
      SetViewPort(10,10,GetMaxX-10,GetMaxY-10,ClipOn);
      GetViewSettings(ViewInfo);
      Left := 0;
      Top := 0;
      Right := ViewInfo.x2-ViewInfo.x1;
      Bottom := ViewInfo.y2-ViewInfo.y1;
      Step := Bottom Div 50;
      SetColor(GetMaxColor);
      Line(Left,Top, Right,Bottom);
      Line(Left,Bottom,Right,Top);
      SetWriteMode(XorPut);
      Repeat
			Line(Left,Top, Right,Bottom);
         Line(Left,Bottom,Right,Top);
         Rectangle(Left,Top, Right,Bottom);
         Delay(DelayValue);
         Line(Left,Top, Right,Bottom);
         Line(Left,Bottom,Right,Top);
			Rectangle(Left,Top, Right,Bottom);
         If (Left+Step < Right) And
         	(Top+Step < Bottom) Then
            Begin
            	Inc(Left,Step);
               Inc(Top,Step);
               Dec(Right,Step);
               Dec(Bottom,Step);
            End
         Else
         	Begin
            	Color :=RandColor;
               SetColor(Color);
               Left := 0;
               Top := 0;
               Right :=ViewInfo.x2-ViewInfo.x1;
               Bottom := ViewInfo.y2 - ViewInfo.y1;
            End;
      Until KeyPressed;
      SetWriteMode(CopyPut);
   End;
{---------------------------------}
BEGIN
	Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt;
   WriteModePlay;
   Readln;
   CloseGraph;
END.
