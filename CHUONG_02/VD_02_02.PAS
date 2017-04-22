Program Kieu;
Type
	SoNguyen = Integer;
Var
	so1,so2,tong,hieu:Songuyen;
Begin
	Write('-Nhap so thu nhat : ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   tong:=so1+so2;
   hieu:=so1-so2;
   Writeln('+Tong hai so = ',tong);
   Writeln('+Hieu hai so = ',hieu);
   Readln
End.