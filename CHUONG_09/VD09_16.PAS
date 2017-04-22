Program Ham_Concat;
Var
	St,St1,St2,St3:String;
Begin
	Writeln(' MINH HOA HAM CONCAT();');
   Writeln('    ------------');
   Write('-Nhap chuoi 1 : ');
   Readln(St1);
   Write('-Nhap chuoi 2 : ');
   Readln(St2);
   Write('-Nhap chuoi 3 : ');
   Readln(St3);
   Writeln;
   Writeln('+Neu dung ham Concat : ',Concat(St1,' ',St2,' ',St3));
	Writeln;
	Writeln('+Neu dung toan tu (+): ',(St1+' '+St2+' '+St3));
   Writeln;
   Writeln('     Bam phim <Enter> de ket thuc');
   Readln
End.