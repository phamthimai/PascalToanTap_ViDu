Program Phep_toan_quan_he;
Var
	x:Boolean;
Begin
	x:=5=5;
	Writeln('5 = 5 -----> ',x);
   x:=3<5;
	Writeln('3 < 5 -----> ',x);
   x:=3<=5;
	Writeln('3 <= 5 -----> ',x);
   x:=3>5;
	Writeln('3 > 5 -----> ',x);
   x:=3>=5;
	Writeln('3 >= 5 -----> ',x);
   x:=3<>5;
	Writeln('3 <> 5 -----> ',x);
   Readln
End.