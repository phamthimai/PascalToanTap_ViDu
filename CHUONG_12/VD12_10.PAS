Program Xuat_Nhap_Bien_Con_Tro;
VAR
	p,q : ^Integer;
   so1,so2,Tong,Hieu,Tich:Integer;
   Thuong : Real;
Begin
	Writeln('XUAT NHAP BIEN CON TRO');
   Writeln('----------------------');
   Writeln;
   Write('-So thu nhat: ');
   Readln(P^);
   so1:=P^;
   Write('-So thu hai : ');
   Readln(Q^);
   so2:=Q^;
   Tong := So1 + So2;
   Hieu := So1 - So2;
   Tich := So1 * So2;
   Thuong :=So1 / So2;
   Writeln('-Tong 2 so = ',Tong);
   Writeln('-Hieu 2 so = ',Hieu);
   Writeln('-Tich 2 so = ',Tich);
   Writeln('-Thuong 2 so = ',Thuong:8:2);
   Readln
End.