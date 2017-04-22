Program Phep_toan_ky_tu;
Var
	a,b:Char;
   c:String;
Begin
	a:='A';
   b:='B';
	Writeln('CAC PHEP TOAN TREN KIEU KY TU');
   Writeln('-----------------------------');
   c:=a+b;
   Writeln('-Phep cong ky tu');
   Writeln('a + b -------> ',c);
   c:=a+' '+b;
   Writeln('a+'' ''+b -----> ',c);
   Writeln('-Phep toan quan he');
   Writeln('A = B ---------> ',a=b);
   Writeln('A < B ---------> ',a<b);
   Writeln('A <= B --------> ',a<=b);
   Writeln('A > B ---------> ',a>b);
   Writeln('A >= B --------> ',a>=b);
   Writeln('A <> B --------> ',a<>b);
   Readln
End.