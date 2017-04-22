Program Da_Giac_Deu;
Uses Graph;
Var
	Gd,Gm : Integer;
   CenterX,CenterY,Step : Word;
   k,n : Integer;
   Arcco : ArcCoordsType;
Begin
	Write('-Muon ve da giac deu bao nheu canh: ');
   Readln(n);
   Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   SetBkColor(Blue);
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   Step := 360 Div N;
   For k := 1 To N Do
   	Begin
      	SetColor(Yellow);
         Arc(CenterX,CenterY,(k-1)*Step,k*Step,CenterY);
         GetArcCoords(ArcCo);
         SetColor(LightMagenta);
         With ArcCo Do
         	Line(Xstart,Ystart,Xend,Yend);
      End;
   Readln;
   CloseGraph;
End.