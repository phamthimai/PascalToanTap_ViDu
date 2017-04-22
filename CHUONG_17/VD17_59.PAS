Program Vong_Tron_Di_Dong;
Uses Crt,Graph;
Const r : Word = 100;
Var
	Gd,GmLo,GmHi : Integer;
   XMax,Xmin : Integer;
   CenterY,x : Integer;
	Page1,Page2 : Word;
	Right : Boolean;
{---------------------------------}
	Procedure CircleDraw(x : Integer);
   Begin
   	ClearDevice;
      SetLineStyle(Solidln,0,NormWidth);
      SetColor(Yellow);
      Circle(x,CenterY,r);
   End;
{---------------------------------}
   Procedure Init;
   Begin
   	DetectGraph(Gd,GmLo);
      If Not (Gd in[EGA,VGA,HercMono]) Then
      	Begin
         	Writeln('Khong lat trang man hinh duoc');
            Halt(1);
         End;
      GetModeRange(Gd,GMLo,GmHi);
      InitGraph(Gd,GmLo,'C:\BP\BGI');
      If GraphResult <> GrOk Then
      	Halt(1);
      SetBkColor(LightBlue);
   End;
{---------------------------------}
BEGIN
	Init;
   CenterY := GetMaxY Div 2;
   XMin :=R;
   XMax := GetMaxX - R;
   X := XMin;
   Page1 := 0;
   Page2 := 1;
   Right := True;
   Repeat
   	SetVisualPage(Page1);
      SetActivePage(Page2);
      CircleDraw(x);
      If Right Then
      	If X < Xmax Then
         	X := X+10
         Else
         	Begin
            	X := X-10;
               Right := False;
            End
      Else
      	If X > XMin Then
         	X := X-10
         Else
         	Begin
            	X := X + 10;
               Right := True;
            End;
      Page1 := 1-Page1;
      Page2 := 1-Page2;
   Until KeyPressed;
   CloseGraph;
END.
