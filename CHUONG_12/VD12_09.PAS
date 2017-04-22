Program Xuat_Nhap_Bien_Con_Tro;
VAR
	p : ^Integer;
   So,Tong  : Integer;
Begin
	Writeln('XUAT NHAP BIEN CON TRO');
   Writeln('----------------------');
   Writeln;
   Write('-Nhap mot so (kieu con tro)  : ');
   Readln(P^);
   Writeln('+So vua nhap                = ',P^);
   Write('-Nhap mot so (kieu so nguyen): ');
   Readln(So);
   Writeln('+So vua nhap                = ',So);
   Tong:= P^ + So  ;
   Writeln('+Tong 2 so                   : ',Tong);
   Readln
End.