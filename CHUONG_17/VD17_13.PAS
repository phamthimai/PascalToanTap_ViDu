Program Bau_Troi_Day_Sao;
Uses Graph,Crt;
Const
	MaxColor = 15;
{------------------------------}
	Procedure KhoiDong(Path:String);
   Var
   	Gd,Gm,Gr : Integer;
   Begin
   	DetectGraph(Gd,Gm);
      InitGraph(Gd,Gm,Path);
      Gr := GraphResult;
      If Gr <> GrOk Then
      	Begin
         	Writeln('Loi khoi dong: ',GraphErrorMsg(Gr));
            Halt(1);
         End;

   End;
{------------------------------}
   Function RandColor : Word; {Tao mau ngau nhien}
   Begin
   	RandColor := Random(MaxColor)+1;
   End;
{------------------------------}
	Procedure VeSao; {Ve bau troi day sao hien va tat}
   Const
   	Seed = 1000;
      NumPts = 1200;
      Esc = #27;
   Var
   	i,x,y,Color : Word;
      XMax, YMax : Integer;
      Vi : ViewPortType;
   Begin
   	GetViewSettings(Vi);   {Pham vi cua so}
      With Vi Do
      	Begin
         	XMax := (x2-(x1+1));
            YMax := (Y2-(Y1+1));
         End;
   	Repeat
      	RandSeed := Seed; {Hien ngoi sao}
         i := 0;
         While (Not KeyPressed) And (i < NumPts) Do
         	Begin
            	Inc(i);
               PutPixel(Random(Xmax)+1,Random(YMax)+1,RandColor);
               Delay(50);
            End;
         RandSeed := Seed;  {lam tat cac ngoi sao}
         i := 0;
         While (Not KeyPressed) And (i < NumPts) Do
         	Begin
            	Inc(i);
               X := Random(XMax)+1;
               Y := Random(YMax)+1;
               Color := GetPixel(X,Y);
               if Color = RandColor Then
               	PutPixel(x,y,0);
            End;
      Until KeyPressed;
   End;
{------------------------------}
BEGIN
	KhoiDong('C:\BP\BGI');
   VeSao;
   CloseGraph;
END.