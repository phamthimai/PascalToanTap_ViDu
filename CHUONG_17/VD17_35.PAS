Program Hinh_Noi;
Uses Crt,Graph;
Const BrightShade = LightGray;
		DarkShade = Black;
Var
	MaxX,MaxY : Integer;
   Wait : Char;
   N : Byte;
{--------------------------------}
	Procedure Swap(Var x,y:Integer);
   Var
   	z : Integer;
   Begin
   	z := x;
      x := y;
      y := z;
   End;
{--------------------------------}
   Function Int2St(N: LongInt): String;
   Var
   	Temp : String;
   Begin
   	Str(N,Temp);
      Int2St := Temp;
   End;
{--------------------------------}
   Procedure EnterGraph(Path: String);
   Var
   	Gd,Gm,Ge : Integer;
   Begin
   	DetectGraph(Gd,Gm);
      If Gd <> VGA Then
      	Begin
         	Writeln('Khong nen chay chuong trinh tren man hinh nay');
            Readln;
            Halt(1);
         End
      Else
      	Begin
         	InitGraph(Gd,Gm,Path);
            Ge := GraphResult;
            If Ge <> GrOk Then
            	Begin
               	Writeln('Loi do hoa: ',GraphErrorMsg(Ge));
                  Halt(1);
               End;
            MaxX := GetMaxX;
            MaxY := GetMaxY;
            SetViewPort(0,0,MaxX,MaxY,ClipOn);
         End;
   End;
{--------------------------------}
   {*Tao mot bang co khung vien toa do x1,y1,x2,y2 mau Color*}
   Procedure Board(x1,y1,x2,y2,Color : Integer);
   Var
   	N,i : Integer;
   Begin
   	If x2 < x1 Then
      	Swap(x1,x2);
      If y2 < y1 Then
      	Swap(y1,y2);
         SetFillStyle(1,Color);
      Bar(x1,y1,x2,y2); {Ve cac khung nen}
      N := (x2-x1) Div 200;
      If N < 2 Then
      	N := 2;
      SetColor(BrightShade); {Ve cac duong bong mau sang}
      For i := 1 To N Div 2 Do
      	Begin
         	Line(x1+i,y1+i,x2-i,y2+i);
            Line(x2-i,y2+i,x2-i,y2-i);
         End;
      For i := 1 To N Do
      	Begin
         	Line(x1+(2*N+i-1),y1+(2*N+i-1),
            		x1+(2*N+i-1),y2-(2*N+i-1));
            Line(x1+(2*N+i-1),y2+(2*N+i-1),
            		x2+(2*N+i-1),y2-(2*N+i-1));
         End;
      SetColor(DarkShade); {Ve cac duong bong mau toi}
      For i := 1 To N Div 2 Do
      	Begin
         	Line(x1+i,y1+i,x2-i,y2-i);
            Line(x1+i,y2-i,x2-i,y2-i);
         End;
      For i := 1 To N Do
      	Begin
         	Line(x1+(2*N+i-1),y1+(2*N+i-1),
            		x2+(2*N+i-1),y1-(2*N+i-1));
            Line(x2+(2*N+i-1),y1+(2*N+i-1),
            		x2+(2*N+i-1),y2-(2*N+i-1));
         End;
   End;

{--------------------------------}
{Ve hop co khung vien tam giac,toa do x1,y1,x2,y2, mau Color}
	Procedure Box(x1,y1,x2,y2,Color :Integer);
   Var
   	i,N : Integer;
   Begin
   	If x2 < x1 Then
      	Swap(x1,x2);
      If y2 < y1 Then
      	Swap(y1,y2);
         SetFillStyle(1,Color);
      Bar(x1,y1,x2,y2); {Ve cac khung nen}
      N := (x2-x1) Div 200;
      If N < 6 Then
      	N := 6;
      SetColor(BrightShade); {Ve cac duong bong mau sang}
      For i := 1 To N Div 2 Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x2-(i-1),y2+(i-1));
            Line(x2-(i-1),y2+(i-1),x2-(i-1),y2-(i-1));
         End;
      For i := (N Div 2)+1 To N Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x1+(i-1),y2-(i-1));
            Line(x1-(i-1),y2-(i-1),x2-(i-1),y2-(i-1));
         End;
      SetColor(DarkShade);
      For i := (N Div 2)+1 To N Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x2-(i-1),y1-(i-1));
            Line(x2-(i-1),y1-(i-1),x2-(i-1),y2-(i-1));
         End;
      For i := 1 To N Div 2 Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x1-(i-1),y2-(i-1));
            Line(x1+(i-1),y2-(i-1),x2-(i-1),y2-(i-1));
         End;
   End;
{--------------------------------}
{Nut bam chu nhat dang loi co toa do x1,y1,x2,y2 mau Color}
	Procedure ButtonPlus(x1,y1,x2,y2,Color : Integer);
   Var
   	i,N :Integer;
   Begin
   	If x2 < x1 Then
      	Swap(x1,x2);
      If y2 < y1 Then
      	Swap(y1,y2);
      SetFillStyle(1,Color);
      Bar(x1,y1,x2,y2); {Ve cac khung nen}
      N := (x2-x1) Div 100;
      If N < 4 Then
      	N := 4;
      SetColor(Darkshade); {Ve cac duong bong mau toi}
      For i := 1 To N  Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x1+(i-1),y2-(i-1));
            Line(x1+(i-1),y2-(i-1),x2-(i-1),y2-(i-1));
         End;
      SetColor(Brightshade); {Ve cac duong bong mau sang}
      For i := 1 To N  Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x2-(i-1),y1+(i-1));
            Line(x2-(i-1),y1+(i-1),x2-(i-1),y2-(i-1));
         End;
      Line(x1+(N-1),y1+(N-1),x1+(N-1),y2-(N-1));
   End;
{--------------------------------}
{Nut bam chu nhat dang lom co toa do x1,y1,x2,y2 mau Color}
	Procedure ButtonMinus(x1,y1,x2,y2,Color : Integer);
   Var
   	i,N :Integer;
   Begin
   	If x2 < x1 Then
      	Swap(x1,x2);
      If y2 < y1 Then
      	Swap(y1,y2);
      SetFillStyle(1,Color);
      Bar(x1,y1,x2,y2); {Ve cac khung nen}
      N := (x2-x1) Div 100;
      If N < 2 Then
      	N := 2;
      SetColor(BrightShade); {Ve cac duong bong mau sang}
      For i := 1 To N  Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x1+(i-1),y2-(i-1));
            Line(x1+(i-1),y2-(i-1),x2-(i-1),y2-(i-1));
         End;
      SetColor(Darkshade); {Ve cac duong bong mau toi}
      For i := 1 To N  Do
      	Begin
         	Line(x1+(i-1),y1+(i-1),x2-(i-1),y1+(i-1));
            Line(x2-(i-1),y1+(i-1),x2-(i-1),y2-(i-1));
         End;
   End;
{--------------------------------}
   Function RandColor : Integer;
   Begin
   	RandColor := Random(MaxColors)+1;
   End;
{--------------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   Board(10,10,MaxX-10,MaxY-10,DarkGray);
   Box(30,30,MaxX-30,MaxY-30,LightBlue);
   ButtonPlus(50,50,(MaxX Div 2)-5,MaxY Div 5,Green);
   ButtonMinus((MaxX Div 2)+5,50,MaxX-50,MaxY Div 5,LightGreen);
   Wait := Readkey;
   Randomize;
   Repeat
   	N := Random(4)+1;
      Case N Of
      	1 : Board(Random(MaxX),Random(MaxY),
         			Random(MaxX),Random(MaxY),RandColor);
         2 : Box(Random(MaxX),Random(MaxY),
         			Random(MaxX),Random(MaxY),RandColor);
         3 : ButtonPlus(Random(MaxX),Random(MaxY),
         			Random(MaxX),Random(MaxY),RandColor);
         4 : ButtonMinus(Random(MaxX),Random(MaxY),
         			Random(MaxX),Random(MaxY),RandColor);
      End;
      Delay(500);
   Until KeyPressed;
   CloseGraph;
END.