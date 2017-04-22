Program Loang_Mau;
Uses Crt,Graph;
Var
	Pl : PaletteType;
   MaxX,MaxY,
   i,Gd,Gm : Integer;
   Size : Word;
   P : Pointer;
Begin
	Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   MaxX := GetMaxX;
   MaxY := GetMaxY;
   Line(MaxX Div 2,0,MaxX Div 2, MaxY);
   Line(0,MaxY Div 2, MaxX, MaxY Div 2);
   Line(0,0,MaxX,MaxY);
   Line(MaxX,0,0,MaxY);
   i := MaxY;
   While i > 20 Do {ve vong tron co ban kinh cach nhau 1o diem}
   	Begin
      	Circle(MaxX Div 2, MaxY Div 2, i);
         i := i - 10;
      End;
   GetPalette(Pl); {lay bang mau cua man hinh}
   Repeat        {Dinh mau va mau to ngau nhien}
   	SetFillStyle(Random(8),Random(Pl.Size)+1);
      {to mot vung kin co duong vien mau trang}
      FloodFill(Random(MaxX),Random(MaxY),White);
   Until KeyPressed;
   CloseGraph;
End.