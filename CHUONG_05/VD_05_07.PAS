Program For_phuc;
CONST
	solap=5;
VAR
	i:Byte;
   so,tong:Integer;
   tb:Real;
Begin
	Writeln('TINH TRUNG BINH CONG');
   Writeln('  Lenh For phuc hop');
   Writeln('--------------------');
   tong:=0;
   For i:=1 to solap Do
   	Begin
      	Write('-Nhap so thu ',i:2,'= ');
         Readln(so);
         tong:=tong+so;
      End;
   tb:=tong/solap;
   Writeln('+Trung binh cua 5 so = ',tb:6:2);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.