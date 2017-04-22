Program Cau_truc_Case_thieu;
Var
	kytu:Char;
Begin
	Writeln('SU DUNG CAU TRUC CASE THIEU');
   Writeln('-------------------');
   Write('-Nhap vao mot ky tu: ');
   Readln(kytu);
   Case kytu Of
  		'0'..'9' : Writeln('Ban vua nhap mot ky so');
    	'A' : Writeln('Ban vua nhap chu A');
      'B' : Writeln('Ban vua nhap chu B');
		'C','D','E': Writeln('Ban vua nhap mot trong cac chu C, D, E')
   End;
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.