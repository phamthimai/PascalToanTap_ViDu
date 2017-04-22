Program Star;
Uses Points, Graph, Crt;

CONST
	Seed = 1999;
	NumPoints = 2000;
VAR
	GrDriver, GrMode, Color : Integer;
	i, MaxColor : Word;
	XMax, YMax : Integer;
	Vp : ViewPortType;
	M : Point;
BEGIN
	GrDriver :=CGA;
   GrMode := CGAC0;
   InitGraph(GrDriver, GrMode, 'C:\BP\BGI');
   SetBkColor(Blue);
   MaxColor := GetMaxColor;
   Rectangle(0,0,GetMaxX, GetMaxY);
   SetViewport(i,i,GetMaxX-1,GetMaxY-1,ClipOn);
   GetViewSettings(Vp);
   With Vp Do
   	Begin
      	Xmax := (X2 - X1);
         Ymax := (Y2 - Y1);
      End;
   Randomize;
   While Not KeyPressed Do
   	Begin
      	RandSeed := Seed;
         i := 0;
         While (Not KeyPressed) And ( i < NumPoints) Do
         	Begin
            	Inc(i);
               PutPixel(Random(Xmax)+1,Random(Ymax)+1,Random(MaxColor)+1);
            End;
         RandSeed := Seed;
         i := 0;
         While ( Not KeyPressed) And ( i < 2 * NumPoints) Do
         	Begin
            	M.Init(Random(Xmax)+1,Random(Ymax)+1);
               Color := GetPixel(M.X,M.Y);
               If Color = Random(GetMaxColor) + 1 Then
               	M.Hide
               Else
               	M.Show;
               Inc(i);
            End;
      End;
END.