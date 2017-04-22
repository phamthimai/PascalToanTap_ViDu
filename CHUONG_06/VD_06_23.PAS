Program Giai_thua;
Var
	n,i,gt:Integer;
Begin
	Writeln('TINH N! KHONG DUNG DE QUY');
   Writeln('-------------------------');
   Write('-Nhap N = ');
   Readln(n);
   gt:=1;
   For i:=1 To N Do
   	gt:=gt * i;
	Writeln('+Giai thua cua ',n,' = ',gt);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln
End.