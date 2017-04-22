Program Hinh_tron;
Const
	Pi= 3.1415926536E+00;
Var
	r:Integer;
   S1,S2,S3:Real;
Begin
	Write('-Cho biet ban kinh : ');
   Readln(r);
   S1:=3.1416 * r * r;
   S2:=Pi * r * r;
   S3:=Pi *Sqr(r);
   Writeln('+Dien tich hinh tron S1= ',S1:6:2);
   Writeln('+Dien tich hinh tron S2= ',S2:6:2);
   Writeln('+Dien tich hinh tron S3= ',S2:6:2);
   Readln
End.