Program Pithagore;
Var
	a,b :Integer;
     c:Real;
Begin
	Writeln(' CHUONG TRINH TINH CANH HUYEN TAM GIAC VUONG');
   Writeln('           theo dinh ly Pithagore');
	Write('-Nhap canh a = ');
	Readln(a);
	Write('-Nhap canh b = ');
	Readln(b);
	c := Sqrt((a*a) + (b*b));
	Writeln('*Canh huyen = ',c:6:2);
	Readln
End.