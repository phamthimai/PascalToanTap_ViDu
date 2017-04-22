Program Binh_phuong;
{$I A:\VIDU\SOHOC.PAS}
Var
	n:Integer;
   tiep:Char;
Begin
	Repeat
		Writeln('BINH PHUONG');
   	Writeln('---------');
   	Write('-Nhap so N= ');
   	Readln(n);
   	Writeln;
   	Writeln('+Binh phuong cua ',n,' = ',Binhphuong(n));
   	Writeln;
      Write('-Thuc hien tiep ? (c/k) ');
      Readln(tiep);
   Until ((tiep='k') Or (tiep='K'));
End.