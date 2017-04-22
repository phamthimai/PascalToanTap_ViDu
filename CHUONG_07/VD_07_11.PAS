Program Tinh_Giai_Thua;
TYPE
	So=1..16;
Var
	n,k:So;
   Gt:LongInt;
Begin
	Writeln('TINH GIAI THUA CUA N TU 1 DEN 16');
   Writeln('   Su dung kieu mien con');
   Writeln('--------------------------------');
   Repeat
   	Write('-Nhap so N ( so 0 de ngung): ');
   	Readln(n);
   	Gt:=1;
   	For k:=1 To n Do
   		Gt:=Gt*k;
   	Writeln('            ',n,'! =',Gt);
   Until n=0;
End.