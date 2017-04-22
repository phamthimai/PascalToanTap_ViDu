Program Ty_le_Truc;
Uses Graph;
Const
	Xasp : Word = 1;
   Yasp : Word = 1;
Var
	Gd,Gm : Integer;
   CenterX,CenterY,Rad : Integer;
   Ch : Char;
   i : Byte;
Begin
	Gd := CGA;
   Gm := CGAHi;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt;
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   Rad := GetMaxY Div 2;
   For i := 1 To 24 Do
   	Writeln;  {xoa man hinh van ban khong dung Crt}
   Repeat
   	SetAspectRatio(Xasp,Yasp);
      Circle(CenterX,CenterY,Rad);
      Write('Sua lai ty le (Y/N) ');
      Readln(Ch);
      Ch := Upcase(Ch);
      If Ch = 'Y' Then
      	Begin
         	Write('-Nhap ty le X Y: ');
            Readln(Xasp,Yasp);
         End;
      For i := 1 To 24 Do
      	Writeln;
   Until Ch ='N';
   CloseGraph;
End.