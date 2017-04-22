Program Giai_thua;
Var
	n,i:Integer;
   gt:LongInt;
Begin
	Writeln('DUNG REPEAT ...UNTIL TINH N!');
   Writeln('----------------------------');
   Write('-Nhap N (N < 17)= ');
   Readln(n);
   gt:=1;
   i:=1;
   Repeat
   	gt:=gt*i;
      i:=i+1;
   Until (i>n);
   Writeln;
   Writeln('+Giai thua cua ',n,' = ',gt);
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.