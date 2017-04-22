Program Mot_Khong;
LABEL
	Nhaplai;
Var
	i:0..1; {Kieu mien con}
Begin
	Writeln('      SU DUNG LENH RE NHANH GOTO');
  	Writeln('Neu nhap cac so khac 1 va 0 thi nhap lai');
   Writeln('-----------------------------------------');
   Nhaplai:  {Sau ten nhan phai co dau hai cham}
   Write('-Nhap so 1 hoac so 0 ');
   Readln(i);
   If (IOresult <>0) Or Not ((i <=1) And (i >=0)) then
   	Begin
      	Write(#7);
         GoTo nhaplai;
      End;
   Writeln('+Vua nhap so: ',i);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln;
End.