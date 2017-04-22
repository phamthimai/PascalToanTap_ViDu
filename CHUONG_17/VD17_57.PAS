Program Luu_hinh;
Uses Graph;
Var
	Gd,Gm : Integer;
   P : Pointer;
   Size, i : Word;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt(1);
   SetColor(Blue);
   SetFillStyle(XhatchFill,Red);
   Bar(50,50,150,150);
   Size :=ImageSize(50,50,150,150);
   GetMem(P,Size);
   GetImage(50,50,150,150,P^);
   Readln;
   ClearDevice;
   For i := 0 To 4 Do
   	Begin
      	PutImage(100+50*i,100+25*i,P^,i);
         Readln;
      End;
   FreeMem(P,Size);
   Readln;
   CloseGraph;
End.