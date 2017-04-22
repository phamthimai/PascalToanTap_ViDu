Program Phep_cong;
{$I A:\VIDU\SOHOC.PAS}
Var
	so1,so2:Integer;
   tiep:Char;
Begin
	Repeat
		Writeln('PHEP CONG');
   	Writeln('---------');
   	Write('-So thu nhat= ');
   	Readln(so1);
   	Write('-So thu hai = ');
   	Readln(so2);
   	Writeln;
   	Writeln('+Ket qua ',so1,' + ',so2,' = ',Cong(so1,so2));
   	Writeln;
      Write('-Thuc hien tiep ? (c/k) ');
      Readln(tiep);
   Until ((tiep='k') Or (tiep='K'));
End.