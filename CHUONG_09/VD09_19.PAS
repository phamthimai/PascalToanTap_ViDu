Program Ham_Pos;
Var
	St1,St2:String;
Begin
	Writeln(' MINH HOA HAM POS();');
   Writeln('  ------------');
   Write('-Nhap vao chuoi St1: ');
   Readln(St1);
   Write('-Nhap vao chuoi St2: ');
   Readln(St2);
   Writeln;
   Writeln('+Chuoi St2 bat dau tu vi tri thu: ',Pos(St2,St1),' cua chuoi St1');
   Writeln;
   Writeln('     Bam phim <Enter> de ket thuc');
   Readln
End.