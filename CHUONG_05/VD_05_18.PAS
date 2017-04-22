Program Trung_binh_cong;
Var
	so,tong:Integer;
   dem:Byte;
   tb:Real;
Begin
	Writeln('TINH TRUNG BINH CONG');
   Writeln('--------------------');
   so:=1;
   dem:=0;
   tong:=0;
   While so <> 0 Do
   	Begin
      	Write('-Nhap so nguyen (so 0 de ngung): ');
         Readln(so);
         If so <> 0 Then
				tong:=tong+so;
				dem:=dem+1;
      End;
   tb:=tong/(dem-1);
   Writeln;
   Writeln('+Trung binh cong cua ',(dem-1),' so vua nhap la: ',tb:6:2);
   Writeln;
   Writeln('   Bam phim <Enter> de cham dut');
   Readln
End.