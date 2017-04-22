Program Giai_Thua;
{$I A:\VIDU\SOHOC.PAS}
Var
	N:Integer;
   tiep:Char;
Begin
	Repeat
		Writeln('TINH GIAI THUA CUA SO N');
   	Writeln('-----------------------');
   	Write('-So N= ');
      Readln(n);
    	Writeln;
   	Writeln('+Giai thua cua ',N,' = ',Giaithua(N));
   	Writeln;
      Write('-Thuc hien tiep ? (c/k) ');
      Readln(tiep);
   Until ((tiep='k') Or (tiep='K'));
End.