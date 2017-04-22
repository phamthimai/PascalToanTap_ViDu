Program Bieu_thuc;
Var
	a,b,c,d,e:Integer;
   x:Real;
Begin
	Write('-Cho a= ');
   Readln(a);
   Write('-Cho b= ');
   Readln(b);
   Write('-Cho c= ');
   Readln(c);
   Write('-Cho d= ');
   Readln(d);
   Write('-Cho e= ');
   Readln(e);
   x:=(a + b) / (c + (d / e));
   Writeln('+Ket qua x = ',x:6:2);
   Readln
End.
