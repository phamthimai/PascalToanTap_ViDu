Program Cau_truc_Case_du;
Var
	kytu:Char;
Begin
	Writeln('SU DUNG CAU TRUC CASE DU');
   Writeln('-------------------');
   Write('-Nhap vao mot ky tu: ');
   Readln(kytu);
   Case kytu Of
  		'0'..'9' : Writeln('Ban vua nhap mot ky so');
    	'A' : Writeln('Ban vua nhap chu A');
      'B' : Writeln('Ban vua nhap chu B');
		'C','D','E': Writeln('Ban vua nhap mot trong cac chu C, D, E')
   Else
   	Begin
			Writeln('Ban vua nhap khong phai la ');
			Writeln('-Mot trong cac ky so tu 0 den 9');
         Writeln('-Mot trong cac chu A,B,C,D,E');
      End;
   End;
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.