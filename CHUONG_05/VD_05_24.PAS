Program Trung_binh_cong;
Const
	sentinel = -1;
Var
	so,tong,tb:Real;
   dem:Byte;
Begin
	Writeln('DUNG REPEAT...UNTIL TINH TRUNG BINH CONG');
   Writeln('----------------------------------------');
   tong:=0;
   dem:=0;
   Writeln('-Nhap cac so (-1 de ngung) ');
   Readln(so);
   if (so=sentinel) Then
   	Writeln('+Khong co so lieu de tinh')
   Else
   	Begin
      	Repeat
         	tong:=tong+so;
            inc(dem);
            Readln(so)
         Until so=sentinel;
      End;
   tb:=tong/dem;
   Writeln;
   Writeln('+Trung binh cua ',dem,' so vua nhap = ',tb:2:2);
   Writeln;
   Writeln('   Bam phim <Enter> de cham dut');
   Readln
End.