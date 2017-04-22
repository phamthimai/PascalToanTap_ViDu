Program bieu_thuc_so_hoc;
Var
	a,c,b :integer;
Begin
	a:=20 - 10;
   Writeln('-Bieu thuc a=20-10       = ',a:3);
   b:=(10+5)*10-25;
   Writeln('-Bieu thuc b=(10+5)*10-25= ',b:3);
   b:=(10+5*10)-25;
   Writeln('-Bieu thuc b=(10+5*10)-25= ',b:3);
   c:=18 DIV 4 * 4;
   Writeln('-Bieu thuc c=18 DIV 4 * 4= ',c:3);
   Readln
End.