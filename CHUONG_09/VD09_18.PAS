Program Ham_Length;
Var
	St:String;
Begin
	Writeln(' MINH HOA HAM LENGTH();');
   Writeln('    ------------');
   Write('-Nhap vao mot chuoi (go k de ket thuc): ');
   Readln(St);
   While St <> 'k' Do
   	Begin
      	Writeln('+Chuoi nay co: ',length(St),' ky tu');
   		Write('-Nhap vao mot chuoi(go k de ket thuc): ');
   		Readln(St);
   	End;
   Writeln;
   Writeln('     Bam phim <Enter> de ket thuc');
   Readln
End.