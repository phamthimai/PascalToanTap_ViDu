Program bieu_thuc_quan_va_he_logic;
Var
	so1,so2,so3:Integer;
Begin
	Write('-Nhap so thu nhat : ');
   Readln(so1);
   Write('-Nhap so thu hai  : ');
   Readln(so2);
   Write('-Nhap so thu  ba  : ');
   Readln(so3);
   If (so2 > so1) AND (so2 > so3) Then
   	Writeln('*So thu hai la so lon nhat')
	Else
   	Writeln('*So thu hai khong phai la so lon nhat');
   Readln
End.