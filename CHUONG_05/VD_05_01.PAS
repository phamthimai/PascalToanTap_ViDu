Program Tinh_Tong;
Var
	so:array[1..5] Of Real;
   tong:Real;
Begin
	Writeln('       TINH TONG CUA 5 SO');
   Writeln('Khong su dung cau lenh lap For...Do');
   Writeln('-----------------------------------');
   Write('-Nhap so thu 1 = ');
   Readln(so[1]);
   Write('-Nhap so thu 2 = ');
   Readln(so[2]);
   Write('-Nhap so thu 3 = ');
   Readln(so[3]);
   Write('-Nhap so thu 4 = ');
   Readln(so[4]);
   Write('-Nhap so thu 5 = ');
   Readln(so[5]);
   tong:=so[1]+so[2]+so[3]+so[4]+so[5];
   Writeln('+Tong cua 5 so = ',tong:0:2);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.