Program Cau_truc_Case_du;
Var
	so:Integer;
Begin
	Writeln('SU DUNG CAU TRUC CASE DU');
   Writeln('-------------------');
   Write('-Nhap vao mot so: ');
   Readln(so);
   Case so Of
  		0 : Writeln('Ban vua nhap so 0');
    	1 : Writeln('Ban vua nhap so 1');
      2 : Writeln('Ban vua nhap so 2');
		3 : Writeln('Ban vua nhap so 3');
   Else  Writeln('Ban vua nhap so khong phai la cac so 0,1,2,3');
   End;
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.