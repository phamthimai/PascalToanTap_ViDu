Program Su_dung_ham;
Var
	so1,so2,so3,tong:Integer;
   (*-----------------------*)
	Function tam_thua(x:Integer):LongInt;
   Begin
   	tam_thua:=x*x*x;
   End;
BEGIN
	Writeln('CHUONG TRINH CON LA HAM');
   Writeln('-----------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   Write('-Nhap so thu ba  : ');
   Readln(so3);
   Writeln('+Tam thua cua so thu nhat (',so1,') la: ',tam_thua(so1));
   Writeln('+Tam thua cua so thu hai (',so2,') la: ',tam_thua(so2));
   tong:=tam_thua(so1) + tam_thua(so2);
   Writeln('+Tong tam thua cua 2 so: ',tong);
   If tam_thua(so1) > so3 Then
   	Writeln('Tam thua cua so 1 lon hon so ',so3)
   Else
   	Writeln('+Tam thua cua so 1 nho hon so ',so3);
   Readln
END.