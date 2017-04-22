Program Kieu_LongInt;
Var
	a,b:Integer;
   c:Real;
Begin
	a:=1000;
   b:=100;
   c:= LongInt(a) * b / 50;
   Writeln('-Neu a:=1000, b:=100');
   Writeln('-Bieu thuc c:= a * b / 50 la : ',c:10:2);
   Readln
End.