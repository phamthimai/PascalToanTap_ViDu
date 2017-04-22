Program So_hoc;
Var
	so1,so2,tong,hieu,tich:Integer;
   thuong:Real;
Begin
	Write('-Nhap so thu nhat = ');
   Readln(so1);
   Write('-Nhap so thu hai = ');
   Readln(so2);
   tong := so1 + so2;
   hieu := so1 - so2;
   tich := so1 * so2;
   thuong := so1 / so2;
   Writeln('*Tong cua hai so ',so1,' va ',so2,' = ',tong);
   Writeln('*Hieu cua hai so ',so1,' va ',so2,' = ',hieu);
   Writeln('*Tich cua hai so ',so1,' va ',so2,' = ',tich);
   Writeln('*Thuong cua hai so ',so1,' va ',so2,' = ',thuong:6:2);
   Readln
End.