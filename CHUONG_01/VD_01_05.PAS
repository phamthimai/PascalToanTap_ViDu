Program Phep_Cong;
Var
	so1,so2,so3,tong :Integer;

Begin
	Writeln(' CHUONG TRINH THUC HIEN PHEP CONG SO HOC');
   Writeln('         co toi da 4 ky so');
	Write('-Nhap so thu nhat = ');
	Readln(so1);
	Write('-Nhap so thu hai  = ');
   Readln(so2);
   Write('-Nhap so thu ba   = ');
	Readln(so3);
	tong:= so1+so2+so3;
	Writeln;
   Writeln;
   Writeln('-------------------------------');
   Writeln;
   Writeln('     ',so1:4);
   Writeln('  +  ',so2:4);
   Writeln('     ',so3:4);
   Writeln('     -----');
   Writeln('  = ',tong:5);
	Readln
End.