Program Phep_tinh_so_hoc;
{$I A:\VIDU\SOHOC.PAS}
Var
	so1:Integer;
   ch:Char;
Begin
	Writeln('CAC PHEP TINH SO HOC');
   Writeln('--------------------');
   Write('-Nhap so = ');
   Readln(so1);
   Writeln('Phep tinh can thuc hien:');
   Write('Binh phuong (b); Lap phuong (l); giai thua (g): ');
   Readln(ch);
   Case ch Of
   	'b','B':Writeln('+Binh phuong cua ',so1,' = ',Binhphuong(so1):5);
      'l','L':Writeln('+Lap phuong cua ',so1,' = ',Lapphuong(so1):5);
      'g','G':Writeln('+Giai thua cua ',so1,' = ',Giaithua(so1):5);
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de cham dut');
   Readln
End.