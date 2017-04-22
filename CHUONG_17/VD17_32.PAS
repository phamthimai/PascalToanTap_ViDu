Program Ve_duong;
Uses Crt,Graph;
{----------------------------------}
	Procedure WriteShade(x,y,Attr:Integer;
	          St:String;Horz:Boolean);
   Var
   	N,i,j : Integer;
      Colo  : Integer;
   Begin
   	Colo := GetColor;
      SetColor(DarkGray);
      If Horz Then
      	Begin
         	N :=TextHeight('M') Div 10;
            If N <= 10 Then
            	N := 3*N;
            For i := N DownTo 1 Do
            	OutTextXY(x+i,y+i,St);
               SetColor(attr);
               OutTextXY(x,y,St);
         End
      Else
      	Begin
         	N :=TextHeight('M') Div 5;
            If N <=10 Then
            	N := 2*N;
            For i := N DownTo 1 Do
            	For j := 1 To Length(St) Do
               	OutTextXY(x+i,
                  y+(j-1)*TextHeight('M')+i,St[j]);
               SetColor(Attr);
            	For j := 1 To Length(St) Do
               	OutTextXY(x,y+(j-1)*
                  	TextHeight('M'),St[j]);
         End;
      SetColor(Colo);
   End;
{----------------------------------}
   Procedure WriteShadeChr(x,y,Attr:Integer;Ch:Char);
   Var
   	i,N : Integer;
   Begin
   	N :=TextHeight('M') Div 10;
      If N <=10 Then
      	N :=2*N;
      SetColor(DarkGray);
      For i := N Downto 1 Do
      	OutTextXY(x+i,y+i,Ch);
      SetColor(Attr);
      OutTextXY(x,y,Ch);
   End;
{----------------------------------}
   Procedure WriteSlide(x,y,Attr:Integer;St:String);
   Var
   	Colo:Integer;
      i : Byte;
   Begin
   	Colo := GetColor;
      SetColor(Attr);
      For i := 1 To Length(St) Do
      	WriteShadeChr(x+(i-1)*(TextWidth('M')),
                      y,Attr,St[i]);
      SetColor(Colo);
   End;
{----------------------------------}
   Procedure ColorLine;
   Var
   	i,Colo : Integer;
   Begin
   	Colo :=0;
      i :=0;
      While i <= GetMaxX Do
      	Begin
         	SetColor(Colo);
            Line(GetMaxX,0,i,GetMaxY);
            Inc(i);
            If i Mod ((GetMaxX+1) Div 16)=0 Then
            	If Colo < 8 Then
               	Inc(Colo,8)
               Else
               	Dec(Colo,7);
         End;
   End;
{----------------------------------}
   Procedure Draw(L,Ao:Real);
   Begin
   	LineTo(GetX+Round(L*Cos(Pi*Ao/180)),
      		GetY-Round(L*Sin(Pi*Ao/180)));
   End;
{----------------------------------}
   Procedure Right(Var Ao:Real;Angle : Real);
   Begin
   	Ao := Ao - Angle;
   End;
{----------------------------------}
   Procedure PolySpiral(L,Angle,incr:Real;
                         Color,Num:Integer);
   Var
   	i :Integer;
      Ao : Real;
   Begin
   	Ao :=0;
      MoveTo(GetMaxX Div 4, GetMaxY Div 4);
      SetColor(Color);
      For i := 1 To Num Do
      	Begin
         	Draw(L,Ao);
            Right(Ao,Angle);
            L := L+Incr;
         End;
   End;
{----------------------------------}
   Procedure Title;
   Begin
   	Randomize;
      ColorLine;
      PolySpiral(0.01,89.5,1,DarkGray,300);
      SetTextStyle(0,0,6);
      SetTextJustify(Centertext,CenterText);
      WriteShade(GetMaxX Div 2,3*(GetMaxY Div 4),
                   White,'Chao nam 2000',True);
      SetTextStyle(Triplexfont,0,6);
      WriteShade(2*(GetMaxX Div 10),GetMaxY Div 8,
                   Yellow,'Pascal',False);
		SetTextStyle(GothicFont,0,6);
		WriteSlide(20,GetMaxY-TextHeight('M'),LightGreen,
		              'Graphic-Demo');
		Repeat Until KeyPressed;
   End;
{----------------------------------}
   Procedure EnterGraph(Path:String);
   Var
   	Gd,Gm,Gr:Integer;
   Begin
   	DetectGraph(Gd,Gm);
      InitGraph(Gd,Gm,Path);
      Gr :=GraphResult;
      If Gr <> GrOk Then
      	Begin
         	Writeln('Loi do hoa: ',GraphErrorMsg(Gr));
            Halt(1);
         End;
   End;
{----------------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   Title;
   CloseGraph;
END.
