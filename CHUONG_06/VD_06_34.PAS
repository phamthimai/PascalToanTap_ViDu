Program Phep_tru;
{$I A:\VIDU\SOHOC.PAS}
Var
	so1,so2:Integer;
   tiep:Char;
Begin
	Repeat
		Writeln('PHEP TRU');
   	Writeln('---------');
   	Write('-So thu nhat= ');
   	Readln(so1);
   	Write('-So thu hai = ');
   	Readln(so2);
   	Writeln;
   	Writeln('+Ket qua ',so1,' - ',so2,' = ',Tru(so1,so2));
   	Writeln;
      Write('-Thuc hien tiep ? (c/k) ');
      Readln(tiep);
   Until ((tiep='k') Or (tiep='K'));
End.