Program CircleDemo;
Uses Crt,Graph;
Var
	Palette : PaletteType;
   MaxX,MaxY,i,ErrorCode,Gd,Gm:Integer;
   Size : Word;
   P : Pointer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   ErrorCode := GraphResult;
   If ErrorCode <> GrOk Then
   	Begin
      	Writeln('Loi do hoa: ',GraphErrorMsg(ErrorCode));
         Halt;
      End;
   MaxX := GetMaxX;
   MaxY := GetMaxY;
   {*Ve duong tren man hinh *}
   Line(MaxX Div 2,0,MaxX Div 2,MaxY);
   Line(0,MaxY Div 2, MaxX,MaxY Div 2);
   Line(0,0,MaxX,MaxY);
   Line(MaxX,0,0,MaxY);
   {* Ve cac vong tron dong tam*}
   i := MaxY;
   While i > 20 Do
   	Begin
      	Circle(MaxX Div 2, MaxY Div 2,i);
         i := i-10;
      End;
	{*Luu 1 phan cua man hinh *}
   Size := ImageSize(Round(MaxX * 0.25),
   						Round(MaxY * 0.25),
                     Round(MaxX * 0.75),
                     Round(MaxY * 0.75));
   GetMem(P,Size);
   GetImage(Round(MaxX * 0.25),
   			Round(MaxY * 0.25),
            Round(MaxX * 0.75),
            Round(MaxY * 0.75),P^);
   {*Mot phan man hinh nhap nhay *}
   For i := 1 To 6 Do
   	Begin
      	PutImage(Round(MaxX * 0.25),
         			Round(MaxY * 0.25),
                  P^,NotPut);
         GetImage(Round(MaxX * 0.25),
         			Round(MaxY * 0.25),
                  Round(MaxX * 0.75),
                  Round(MaxY * 0.75),P^);
      End;
   GetPalette(Palette);
   {*To cac phan cua hinh anh *}
   Repeat
   	SetFillStyle(Random(9),Random(Palette.Size)+1);
      FloodFill(Random(MaxX),Random(MaxY),White);
   Until KeyPressed;
   Readln;
   CloseGraph;
End.