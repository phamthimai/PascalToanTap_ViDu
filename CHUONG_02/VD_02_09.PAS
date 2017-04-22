Program Toan_tu_quan_he;
Var
	a,b:integer;
   x:Boolean;
Begin
	a:=4;
   b:=6;
   Writeln('TOAN TU QUAN HE');
   Writeln('Cho a = 4 ; b = 6');
   x:=a = b;
   Writeln('4 = 6  ',x);
   x:=a > b;
   Writeln('4 > 6  ',x);
   x:=a >= b;
   Writeln('4 >= 6 ',x);
   x:=a < b;
   Writeln('4 < 6  ',x);
   x:=a <= b;
   Writeln('4 <= 6 ',x);
   x:=a <> b;
   Writeln('4 <> 6 ',x);
   Readln
End.