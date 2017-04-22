Program Tong_binh_phuong;
Var
	i,n,s:Integer;
Begin
	Writeln('DUNG CAU TRUC REPEAT...UNTIL TINH TONG BINH PHUONG');
   Writeln('-----------------------------------------');
   Write('-Nhap N= ');
   Readln(n);
   s:=0;
   i:=1;
   Repeat
   	s:= s + (i * i);
      i:= i + 1;
   Until i > n;
   Writeln;
   Writeln('+Tong binh phuong cua ',n,' so nguyen dau tien= ',s);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.