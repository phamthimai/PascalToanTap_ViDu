Program Phep_tinh_so_hoc;
{$I A:\VIDU\SOHOC.PAS}
Var
	so1,so2:Integer;
   ch:Char;
Begin
	Writeln('CAC PHEP TINH SO HOC');
   Writeln('--------------------');
   Write('-Nhap so thu nhat a= ');
   Readln(so1);
   Write('-Nhap so thu hai  b= ');
   Readln(so2);
   Writeln('Phep tinh can thuc hien:');
   Write('Cong (+); Tru (-); Nhan (*); Chia (/)');
   Readln(ch);
   Case ch Of
   	'+'	:Writeln(so1,' + ',so2,' = ',Cong(so1,so2):5);
      '-'	:Writeln(so1,' - ',so2,' = ',Tru(so1,so2):5);
      '*'	:Writeln(so1,' * ',so2,' = ',Nhan(so1,so2):5);
      '/'	:Writeln(so1,' / ',so2,' = ',Chia(so1,so2):5);
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de cham dut');
   Readln
End.