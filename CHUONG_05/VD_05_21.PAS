Program Vong_lap_Repeat;
Var
	i:Integer;
   so:Array [1..5] Of Real;
   tong:Real;
Begin
	tong:=0;
   i:=0;
   Repeat
   	Write('-Nhap mot so: ');
      i:=i+1;
      Readln(so[i]);
   Until (i=5) Or (so[i]=0);
   For i:=1 To i Do
   	Tong:=tong+so[i];
   Writeln;
   Writeln('+Tong cua ',i,' so= ',tong:0:2);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.