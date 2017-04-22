Program Lap_phuong;
{$I A:\VIDU\SOHOC.PAS}
Var
	n:Integer;
   tiep:Char;
Begin
	Repeat
		Writeln('LAP PHUONG');
   	Writeln('---------');
   	Write('-Nhap so N= ');
   	Readln(n);
   	Writeln;
   	Writeln('+Lap phuong cua ',n,' = ',Lapphuong(n));
   	Writeln;
      Write('-Thuc hien tiep ? (c/k) ');
      Readln(tiep);
   Until ((tiep='k') Or (tiep='K'));
End.