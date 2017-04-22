Program Vong_Tron_Quay;
Uses Crt,Graph;
Var
	Gd,Gm : Integer;
   CenterX,CenterY,x,y :Word;
Begin
	Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt(1);
      CenterX := GetMaxX Div 2;
      CenterY := GetMaxY Div 2;
      y := GetMaxY Div 3;
      Repeat
      	For x := y DownTo 1 Do
         	Begin
            	SetColor(14);
               Ellipse(CenterX,CenterY,0,360,x,y);
               SetColor(0);
               Ellipse(CenterX,CenterY,0,360,x+1,y);
            End;
         For x := 1 To y Do
         	Begin
            	SetColor(14);
               Ellipse(CenterX,CenterY,0,360,x,y);
               SetColor(0);
               Ellipse(CenterX,CenterY,0,360,x-1,y);
            End;
      Until KeyPressed;
   CloseGraph;
End.