Program For_long_nhau;
Var
	m,n,i,j:Integer;
   S:LongInt;
Begin
	Writeln('  CAU TRUA FOR LONG NHAU');
   Writeln('Chuong trinh tinh tong tich');
   Writeln('---------------------------');
   Write('-Mhap so M= ');
   Readln(m);
   Write('-Nhap so N= ');
   Readln(n);
   s:=0;
   For i:=1 To M Do
   	For j:=1 To N Do
      	S:=S+i*j;
   Writeln('+Tong tich = ',S);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.