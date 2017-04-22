Program Lenh_goi_thutuc_va_ham;
Uses Crt;
Var
	n:Integer;
   Function GiaiThua(x:Integer):LongInt;
   Var
   	i:Integer;
      gt:LongInt;
   Begin
   	gt:=1;
      For i:=1 To x Do
      	gt:=gt*i;
      Writeln('+Giai thua cua ',x,' = ',gt);
   End;
BEGIN
	ClrScr;
	Writeln('LENH GOI THU TUC VA HAM');
   Writeln('-----------------------');
	Write('-Nhap so nguyen N= ');
   Readln(n);
   Writeln('+Binh phuong cua ',n,' = ',Sqr(n));;
   Writeln('+Can bac hai cua ',n,' = ',Sqrt(n):0:2);
   GiaiThua(n);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln;
END.