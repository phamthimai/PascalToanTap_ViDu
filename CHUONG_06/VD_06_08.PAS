Program Su_dung_thu_tuc;
Var
	so1,so2,so3,tong,y1,y2:Integer;
   (*-----------------------*)
	Procedure tam_thua(x:Integer;Var y:Integer);
   Begin
   	y:=x*x*x;
   End;
BEGIN
	Writeln('CHUONG TRINH CON LA THU TUC');
   Writeln('---------------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   Write('-Nhap so thu ba  : ');
   Readln(so3);
   tam_thua(so1,y1);
   tam_thua(so2,y2);
   Writeln('+Tam thua cua so thu nhat (',so1,') la: ',y1);
   Writeln('+Tam thua cua so thu hai (',so2,') la: ',y2);
   tam_thua(so1,y1);
	tam_thua(so2,y2);
   tong:=y1+y2;
   Writeln('+Tong tam thua cua 2 so: ',tong);
   If y1 > so3 Then
   	Writeln('Tam thua cua so 1 lon hon so ',so3)
   Else
   	Writeln('+Tam thua cua so 1 nho hon so ',so3);
   Readln
END.