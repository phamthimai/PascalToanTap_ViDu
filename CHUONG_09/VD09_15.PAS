Program Thu_tuc_Val;
Var
	b:String;
	a,c,i,Result:Integer;
Begin
	Writeln(' MINH HOA THU TUC VAL();');
   Writeln('      ------------');
   Write('-Nhap vao mot so nguyen (a) : ');
   Readln(a);
   Write('-Nhap vao mot chuoi so (b)  : ');
   Readln(b);
   Val(b,i,Result);
   c:=a+i;
   Writeln('+Ket qua: ',c);
   Writeln('     Bam phim <Enter> de ket thuc');
   Readln
End.