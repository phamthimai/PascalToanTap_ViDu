Program Ham_Copy;
Var
	St:String;
   Pos,Num:Integer;
Begin
	Writeln(' MINH HOA HAM COPY();');
   Writeln('    ------------');
   Write('-Nhap vao mot chuoi         : ');
   Readln(St);
   Write('-Sao chep tu vi tri thu may : ');
   Readln(Pos);
   Write('-So ky tu can sao chep      : ');
   Readln(Num);
   Writeln;
   Writeln('+Ket qua cua ham Copy       : ',Copy(St,Pos,Num));
   Writeln;
   Writeln('     Bam phim <Enter> de ket thuc');
   Readln
End.