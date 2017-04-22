Program Lat_Trang;
Uses Crt,Graph;
Const R : Word = 100;
Type
	ProcType = Procedure;
Var
	Gd,Gm : Integer;
   Page1,Page2 : Word;
   Page : Array[0..4] Of ProcType;
   i : Byte;
   {$F+}
{-------------------------------}
	Procedure PageN0;
   Begin
   	ClearDevice;
      SetColor(Red);
      RecTangle(150,50,450,150);
      SetColor(Yellow);
      SetTextStyle(TriplexFont,HorizDir,6);
      SetTextJustify(CenterText,CenterText);
      OutTextXY(GetMaxX Div 2,GetMaxY Div 2,'Trang 1');
   End;
{-------------------------------}
   Procedure PageN1;
   Begin
   	ClearDevice;
      SetColor(Blue);
      SetTextStyle(TriplexFont,VertDir,6);
      SetTextJustify(CenterText,CenterText);
      OutTextXY(GetMaxX Div 2,GetMaxY Div 2,'Trang 2');
   End;
{-------------------------------}
   Procedure PageN2;
   Begin
   	ClearDevice;
      SetColor(Blue);
      SetFillStyle(SolidFill,Random(GetMaxColor)+1);
      PieSlice(GetMaxX Div 2, GetMaxY Div 2,0,360,100);
      SetColor(Cyan);
      SetTextStyle(DefaultFont,HorizDir,6);
      SetTextJustify(CenterText,CenterText);
      OutTextXY(GetMaxX Div 2,GetMaxY Div 2,'Trang 3');
   End;
{-------------------------------}
   Procedure PageN3;
   Var
   	Color : Integer;
      x,y : Integer;
      Radius : Word;
   Begin
   	ClearDevice;
      X := GetMaxX Div 2;
      Y := 3*(GetMaxY Div 4);
      Radius := GetMaxY Div 2;
      For Color := 0 To GetMaxColor Do
      	Begin
         	SetLineStyle(Solidln,0,ThickWidth);
            SetColor(Color);
            Arc(X,Y,0,180,Radius);
            X := X + 10;
            Radius := Radius + 10;
            SetColor(Magenta);
      		SetTextStyle(SansSerifFont,VertDir,6);
      		SetTextJustify(CenterText,CenterText);
      		OutTextXY(GetMaxX Div 2,GetMaxY Div 2,'Trang 4');
         End;
   End;
{-------------------------------}
	{$F-}
{-------------------------------}
   Procedure Init;
   Var
   	Gd,Gm,GmHi : Integer;
   Begin
   	DetectGraph(Gd,Gm);
      If Not (Gd in [EGA,VGA,HercMono]) Then
      	Begin
         	Writeln('Khong lat trang duoc');
            Halt(1);
         End;
      GetModeRange(Gd,Gm,GmHi);
      InitGraph(Gd,Gm,'C:\BP\BGI');
      SetBkColor(Black);
   End;
{-------------------------------}
BEGIN
	Init;
   Page[0]:=PageN0;
   Page[1]:=PageN1;
   Page[2]:=PageN2;
   Page[3]:=PageN3;
   i := 0;
   Page1 := 0;
   Page2 := 1;
   Page[3];
   Repeat
   	SetVisualPage(Page1);
      SetActivePage(Page2);
      i := i Mod 4;
      Page[i];
      i := i + 1;
      Page1 := 1-Page1;
      Page2 := 1-Page2;
      Delay(1000);
   Until keyPressed;
   CloseGraph;
END.
