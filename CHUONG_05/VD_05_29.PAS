Program Tong_binh_phuong;
Var
	i,n,s:Integer;
Begin
	Writeln('DUNG CAU TRUC FOR TINH TONG BINH PHUONG');
   Writeln('---------------------------------------');
   Write('-Nhap N= ');
   Readln(n);
   For i:=1 To n Do
   	s:=s + (i*i);
   Writeln('+Tong binh phuong cua ',n,' so nguyen dau tien = ',s);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.