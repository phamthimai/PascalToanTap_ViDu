Program Kiem_soat_bien;
Var
	i:Byte;
Begin
	Writeln('KIEM SOAT GIA TRI BIEN');
   Writeln('----------------------');
   Repeat
   	Write('-Nhap so: ');
      Readln(i);
   Until (i >=0) And (i <=9);
   Writeln('Ban da nhap dung gia tri');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.